/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lab4.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lab4.model.CalculatorService;

/**
 *
 * @author wsuetholz
 */
public class Calculator extends HttpServlet {
    
    private static final String RESULT_PAGE = "lab4/calculator.jsp";
    
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
	    String function = request.getParameter("f");
	    
	    if (function.equalsIgnoreCase("circle")) {
		String radiusStr = request.getParameter("radius");
		double radius = 0.0;
		try {
		    radius = Double.parseDouble(radiusStr);
		} catch (NumberFormatException ie) {
		    request.setAttribute("errorMessage", "Bad Radius: " + ie.getMessage());
		    goodValues = false;
		}

		if (goodValues) {
		    CalculatorService calc = new CalculatorService();
		    double area = calc.calculateCircleArea ( radius );

		    request.setAttribute("circlearea", Double.toString(area));
		    request.setAttribute("radius", Double.toString(radius));
		}
		
	    } else if (function.equalsIgnoreCase("triangle")) {
		String baseLengthStr = request.getParameter("baselength");
		String heightStr = request.getParameter("height");
		double baseLength = 0.0;
		try {
		    baseLength = Double.parseDouble(baseLengthStr);
		} catch (NumberFormatException ie) {
		    request.setAttribute("errorMessage", "Bad BaseLength: " + ie.getMessage());
		    goodValues = false;
		}
		double height = 0.0;
		if (goodValues) {
		    try {
			height = Double.parseDouble(heightStr);
		    } catch (NumberFormatException ie) {
			request.setAttribute("errorMessage", "Bad Height: " + ie.getMessage());
			goodValues = false;
		    }
		}

		if (goodValues) {
		    CalculatorService calc = new CalculatorService();
		    double area = calc.calculateTriangleArea ( baseLength, height );

		    request.setAttribute("trianglearea", Double.toString(area));
		    request.setAttribute("baselength", Double.toString(baseLength));
		    request.setAttribute("height", Double.toString(height));
		}
		
	    } else if (function.equalsIgnoreCase("rectangle")) {
		String lengthStr = request.getParameter("length");
		String widthStr = request.getParameter("width");
		double length = 0.0;
		try {
		    length = Double.parseDouble(lengthStr);
		} catch (NumberFormatException ie) {
		    request.setAttribute("errorMessage", "Bad Length: " + ie.getMessage());
		    goodValues = false;
		}
		double width = 0.0;
		if (goodValues) {
		    try {
			width = Double.parseDouble(widthStr);
		    } catch (NumberFormatException ie) {
			request.setAttribute("errorMessage", "Bad Width: " + ie.getMessage());
			goodValues = false;
		    }
		}

		if (goodValues) {
		    CalculatorService calc = new CalculatorService();
		    double area = calc.calculateRectangleArea ( length, width );

		    request.setAttribute("rectanglearea", Double.toString(area));
		    request.setAttribute("length", Double.toString(length));
		    request.setAttribute("width", Double.toString(width));
		}
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
