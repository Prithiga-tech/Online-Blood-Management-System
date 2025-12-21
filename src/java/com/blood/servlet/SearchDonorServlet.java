package com.blood.servlet;

import com.blood.dao.DonorDAO;
import com.blood.model.Donor;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class SearchDonorServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String bg = request.getParameter("blood_group");
        String city = request.getParameter("city");
        DonorDAO ddao = new DonorDAO();
        List<Donor> donors = ddao.findByBloodGroupAndCity(bg, city);
        request.setAttribute("donors", donors);
        RequestDispatcher rd = request.getRequestDispatcher("search_results.jsp");
        rd.forward(request, response);
    }
}
