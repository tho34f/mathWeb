package com.thorben.objects;

public class Matrix {
	
	private int rwoNumber;
	private int columnNumber;
	private double[][] values;
	
	public Matrix(int rwoNumber, int columnNumber) {
		this.rwoNumber = rwoNumber;
		this.columnNumber = columnNumber;
		this.values = new double[rwoNumber][columnNumber];
	}
	
	public Matrix(int rwoNumber, int columnNumber, double[][] values) {
		this.rwoNumber = rwoNumber;
		this.columnNumber = columnNumber;
		this.values = values;
	}
	
	public Matrix add(Matrix toAdd) {
		
		double[][] result = new double[this.getRwoNumber()][this.getColumnNumber()];
		for(int i = 0; i < this.getRwoNumber(); i++) {
			for(int j = 0; j < this.getColumnNumber(); j++) {
				result[i][j] = this.getValues()[i][j] + toAdd.getValues()[i][j];
			}
		}
		
		return new Matrix(this.getRwoNumber(), this.getColumnNumber(), result);
	}
	
	public Matrix multipli(Matrix toMultipli) {
		
		if(this.getColumnNumber() != toMultipli.getRwoNumber()) {
			return null;
		}
		
		double[][] result = new double[this.getRwoNumber()][this.getColumnNumber()];
		for(int i = 0; i < this.getRwoNumber(); i++) {
			for(int j = 0; j < toMultipli.getColumnNumber(); j++) {
				for(int k = 0; k < this.getColumnNumber(); k++) {
					result[i][j] += this.getValues()[i][k] * toMultipli.getValues()[k][j];
				}
			}
		}
		
		return new Matrix(this.getRwoNumber(), this.getColumnNumber(), result);
	}
	
	public int getRwoNumber() {
		return rwoNumber;
	}
	public void setRwoNumber(int rwoNumber) {
		this.rwoNumber = rwoNumber;
	}
	public int getColumnNumber() {
		return columnNumber;
	}
	public void setColumnNumber(int columnNumber) {
		this.columnNumber = columnNumber;
	}

	public double[][] getValues() {
		return values;
	}

	public void setValues(double[][] values) {
		this.values = values;
	}
	
	

}
