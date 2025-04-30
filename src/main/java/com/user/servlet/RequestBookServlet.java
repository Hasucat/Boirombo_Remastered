package com.user.servlet;

import com.DAO.RequestDAOimpl;
import com.DB.DBConnect;
import com.entity.Request;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@SuppressWarnings("serial")
@WebServlet("/requestbookbyuser")
@MultipartConfig
public class RequestBookServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            Integer userId = (Integer) req.getSession().getAttribute("userId");
            if (userId == null) {
                resp.sendRedirect("login.jsp");
                return;
            }
            String bookName = req.getParameter("bookName");
            String authorName = req.getParameter("authorName");
            String description = req.getParameter("description");
            Part part = req.getPart("bookImage");
            String fileName = part.getSubmittedFileName();

            Request request = new Request();
            request.setUserId(userId);
            request.setBookName(bookName);
            request.setAuthorName(authorName);
            request.setDescription(description);
            request.setBookImage(fileName);

            RequestDAOimpl dao = new RequestDAOimpl(DBConnect.getConn());
            boolean f = dao.addBookRequest(request);

            HttpSession session = req.getSession();

            if (f) {
                session.setAttribute("Success", "Request has been submitted successfully.");
                resp.sendRedirect("requestbookbyuser.jsp");
            } else {
                session.setAttribute("Failed", "Failed to submit the request. Please try again.");
                resp.sendRedirect("requestbookbyuser.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();

        }
    }
}
