package com.va.week6.servlet;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import com.va.week6.dao.StudentDao;
import com.va.week6.model.Student;

@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private StudentDao stDao;

    public void init() {
        stDao = new StudentDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String userEmail = request.getParameter("useremail");
        String fullName = request.getParameter("fullname");
        String preferredName = request.getParameter("preferredName");

        if (!password.equals(confirmPassword)) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Passwords do not match.");
            return;
        }

        Student st = new Student();
        st.setUsername(username);
        st.setPassword(password);
        st.setEmail(userEmail);
        st.setFullName(fullName);
        st.setPreferredName(preferredName);

        try {
            stDao.registerStudent(st);
        } catch (Exception e) {
            e.printStackTrace();
        }

        response.sendRedirect("StudentInfo.jsp");
    }
}
