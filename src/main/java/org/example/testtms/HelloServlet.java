package org.example.testtms;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/save-request")
public class HelloServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("userName");
        String desc = req.getParameter("description");

        if (name == null || name.isEmpty() || desc == null || desc.isEmpty()) {
            req.setAttribute("errorMessage", "Пожалуйста, заполните все поля!");

            req.getRequestDispatcher("saveRequest.jsp").forward(req, resp);
        } else {

            req.getSession().setAttribute("savedName", name);
            req.getSession().setAttribute("savedDesc", desc);

            resp.sendRedirect("success.jsp");
        }
    }
}
