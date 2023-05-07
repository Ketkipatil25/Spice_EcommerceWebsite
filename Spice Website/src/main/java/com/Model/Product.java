package com.Model;



public class Product {
	private int pId;
	private String pName;
	private String pDesc;
	private String pPhoto;
	private double pPrice;
	private int pDiscount;
	private int pQuantity;
	private Category c;
	public Category getC() {
		return c;
	}
	public void setC(Category c) {
		this.c = c;
	}
	private String categoryId;
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Product(int pId, String pName, String pDesc, String pPhoto, double pPrice, int pDiscount, int pQuantity,
			String categoryId) {
		super();
		this.pId = pId;
		this.pName = pName;
		this.pDesc = pDesc;
		this.pPhoto = pPhoto;
		this.pPrice = pPrice;
		this.pDiscount = pDiscount;
		this.pQuantity = pQuantity;
		this.categoryId = categoryId;

	}
	public int getpId() {
		return pId;
	}
	public void setpId(int pId) {
		this.pId = pId;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getpDesc() {
		return pDesc;
	}
	public void setpDesc(String pDesc) {
		this.pDesc = pDesc;
	}
	public String getpPhoto() {
		return pPhoto;
	}
	public void setpPhoto(String pPhoto) {
		this.pPhoto = pPhoto;
	}
	public double getpPrice() {
		return pPrice;
	}
	public void setpPrice(double pPrice) {
		this.pPrice = pPrice;
	}
	public int getpDiscount() {
		return pDiscount;
	}
	public void setpDiscount(int pDiscount) {
		this.pDiscount = pDiscount;
	}
	public int getpQuantity() {
		return pQuantity;
	}
	public void setpQuantity(int pQuantity) {
		this.pQuantity = pQuantity;
	}
	public String getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}
	@Override
	public String toString() {
		return "Product [pId=" + pId + ", pName=" + pName + ", pDesc=" + pDesc + ", pPhoto=" + pPhoto + ", pPrice="
				+ pPrice + ", pDiscount=" + pDiscount + ", pQuantity=" + pQuantity + ", categoryId=" + categoryId
				+ "]";
	}
	
	//calculate price after discount
		public double getpriceAfterApplyingDiscount() {
			int d = (int)((this.getpDiscount()/100.0)*this.getpPrice());
			return this.getpPrice() - d;
		}
	
	
}