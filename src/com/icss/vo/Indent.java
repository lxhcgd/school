/**
  * <p>Title: Ident.java</p>
　 * <p>Description: </p>
　 * <p>Copyright: Copyright (c) 2020</p>
　 * <p>Company: </p>
　 * @author wushewng
　 * @date 2020年4月11日
　 * @version 1.0
 */
package com.icss.vo;

/**
 * <p>Title: Ident</p>
　 * <p>Description: </p>
　 * @author liuxin
　 * @date 2020年4月11日
 */
public class Indent {
	private int indentid;
	private String name;
	private int num;
	private int price;
	private String img;
	private int goodsid;
	private String username;
	
	/**
	 * @return the username
	 */
	public String getUsername() {
		return username;
	}
	/**
	 * @param username the username to set
	 */
	public void setUsername(String username) {
		this.username = username;
	}
	/**
	 * @return the indentid
	 */
	public int getIndentid() {
		return indentid;
	}
	/**
	 * @param indentid the indentid to set
	 */
	public void setIndentid(int indentid) {
		this.indentid = indentid;
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return the num
	 */
	public int getNum() {
		return num;
	}
	/**
	 * @param num the num to set
	 */
	public void setNum(int num) {
		this.num = num;
	}
	/**
	 * @return the price
	 */
	public int getPrice() {
		return price;
	}
	/**
	 * @param price the price to set
	 */
	public void setPrice(int price) {
		this.price = price;
	}
	/**
	 * @return the img
	 */
	public String getImg() {
		return img;
	}
	/**
	 * @param img the img to set
	 */
	public void setImg(String img) {
		this.img = img;
	}

	/**
	 * @return the goodsid
	 */
	public int getGoodsid() {
		return goodsid;
	}
	/**
	 * @param goodsid the goodsid to set
	 */
	public void setGoodsid(int goodsid) {
		this.goodsid = goodsid;
	}
	
}
