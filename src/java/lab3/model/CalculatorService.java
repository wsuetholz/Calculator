/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lab3.model;

import java.io.Serializable;

/**
 *
 * @author wsuetholz
 */
public class CalculatorService implements Serializable {
    static final long serialVersionUID = 42L;
    static long idGen = 1;
    private long myId;
    
    public CalculatorService () {
	myId = idGen++;
    }
    
    public double calculateRectangleArea ( double length, double width ) {
	return (length * width);
    }
    
    public double calculateCircleArea ( double radius ) {
	return (Math.PI * (radius * radius));
    }
    
    public double calculateTriangleArea ( double baselength, double height ) {
	return ((baselength * height)/2);
    }

    @Override
    public int hashCode() {
	int hash = 7;
	hash = 71 * hash + (int) (this.myId ^ (this.myId >>> 32));
	return hash;
    }

    @Override
    public boolean equals(Object obj) {
	if (obj == null) {
	    return false;
	}
	if (getClass() != obj.getClass()) {
	    return false;
	}
	final CalculatorService other = (CalculatorService) obj;
	if (this.myId != other.myId) {
	    return false;
	}
	return true;
    }
    
}
