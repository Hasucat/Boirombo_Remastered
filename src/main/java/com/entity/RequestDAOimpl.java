package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;
import java.sql.ResultSet;

import com.entity.Request;

public class RequestDAOimpl implements RequestDAO {

	private Connection conn;

	public RequestDAOimpl (Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean addBookRequest(Request request) {
        boolean f = false;
        try {
            String sql = "INSERT INTO request_book (userId, bookName, authorName, description, bookImage) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, request.getUserId());
            ps.setString(2, request.getBookName());
            ps.setString(3, request.getAuthorName());
            ps.setString(4, request.getDescription());
            ps.setString(5, request.getBookImage());
            
            int i=ps.executeUpdate();
            if(i==1) {
            	f=true;
            }
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    @Override
    public List<Request> getAllRequests() {
        List<Request> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM request_book";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Request request = new Request();
                request.setRequestId(rs.getInt("requestId"));
                request.setUserId(rs.getInt("userId"));
                request.setBookName(rs.getString("bookName"));
                request.setAuthorName(rs.getString("authorName"));
                request.setDescription(rs.getString("description"));
                request.setBookImage(rs.getString("bookImage"));
                request.setRequestDate(rs.getString("requestDate"));
                request.setStatus(rs.getString("status"));
                list.add(request);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public boolean updateRequestStatus(int requestId, String status) {
        boolean isUpdated = false;
        try {
            String sql = "UPDATE request_book SET status = ? WHERE requestId = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, status);
            ps.setInt(2, requestId);
            isUpdated = ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return isUpdated;
    }
	
}