/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lab3.model;

/**
 *
 * @author wsuetholz
 */
public class CalculatorService {
    
    public double calculateRectangleArea ( double length, double width ) {
	return (length * width);
    }
    
    public double calculateCircleArea ( double radius ) {
	return (Math.PI * (radius * radius));
    }
    
    public double calculateTriangleArea ( double baselength, double height ) {
	return ((baselength * height)/2);
    }
    
}
