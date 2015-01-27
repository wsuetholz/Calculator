/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lab1.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.IllegalFormatException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lab1.model.CalculatorService;

/**
 *
 * @author wsuetholz
 */
public class Calculator extends HttpServlet {
    
    private static final String RESULT_PAGE = "lab1/calculatoroutput.jsp";
    private static final String ERROR_PAGE = "lab1/calculatorerror.jsp";
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {
	boolean goodValues = true;
	String destPage = RESULT_PAGE;
	
	response.setContentType("text/html;charset=UTF-8");
	try (PrintWriter out = response.getWriter()) {
	    /* TODO output your page here. You may use following sample code. */
	    String lengthStr = request.getParameter("length");
	    String widthStr = request.getParameter("width");
	    long length = 0L;
	    try {
		length = Long.parseLong(lengthStr);
	    } catch (NumberFormatException ie) {
		request.setAttribute("errorMessage", "Bad Length: " + ie.getMessage());
		destPage = ERROR_PAGE;
		goodValues = false;
	    }
	    long width = 0L;
	    if (goodValues) {
		try {
		    width = Long.parseLong(widthStr);
		} catch (NumberFormatException ie) {
		    request.setAttribute("errorMessage", "Bad Width: " + ie.getMessage());
		    destPage = ERROR_PAGE;
		    goodValues = false;
		}
	    }

	    if (goodValues) {
		CalculatorService calc = new CalculatorService();
		long area = calc.calculateRectangleArea ( length, width );

		request.setAttribute("area", Long.toString(area));
	    }
	    
	    RequestDispatcher view =
		request.getRequestDispatcher(destPage);
	    view.forward(request, response);
	}
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {
	processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {
	processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
	return "Short description";
    }// </editor-fold>

}
