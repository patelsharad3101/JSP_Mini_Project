package com.Model;

public class Order {
private String username;
private String prodcode;
private String prodname;
private Double quantity;
private String paymode;
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getProdcode() {
	return prodcode;
}
public void setProdcode(String prodcode) {
	this.prodcode = prodcode;
}
public String getProdname() {
	return prodname;
}
public void setProdname(String prodname) {
	this.prodname = prodname;
}
public Double getQuantity() {
	return quantity;
}
public void setQuantity(Double quantity) {
	this.quantity = quantity;
}
public String getPaymode() {
	return paymode;
}
public void setPaymode(String paymode) {
	this.paymode = paymode;
}

}
