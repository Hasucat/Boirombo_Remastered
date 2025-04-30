package com.DAO;

import java.util.List;

import com.entity.Request;

public interface RequestDAO {

    public boolean addBookRequest(Request request);
	
	public List<Request> getAllRequests();
	
	public boolean updateRequestStatus(int requestId, String status);
	
}