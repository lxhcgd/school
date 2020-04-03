/**
  * <p>Title: Goods.java</p>
　 * <p>Description: </p>
　 * <p>Copyright: Copyright (c) 2020</p>
　 * <p>Company: </p>
　 * @author wushewng
　 * @date 2020年4月11日
　 * @version 1.0
 */
package com.icss.vo;

/**
 * <p>Title: Goods</p>
　 * <p>Description: </p>
　 * @author liuxin
　 * @date 2020年4月11日
 */
public class Goods {
	private int goodsid;
	private String name;
	private int goldprice;
	private int price;
	private int num;
	private String img;
	private String info;
	private int teacherid;
	
	/**
	 * @return the teacherid
	 */
	public int getTeacherid() {
		return teacherid;
	}
	/**
	 * @param teacherid the teacherid to set
	 */
	public void setTeacherid(int teacherid) {
		this.teacherid = teacherid;
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
	 * @return the goldprice
	 */
	public int getGoldprice() {
		return goldprice;
	}
	/**
	 * @param goldprice the goldprice to set
	 */
	public void setGoldprice(int goldprice) {
		this.goldprice = goldprice;
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
	 * @return the info
	 */
	public String getInfo() {
		return info;
	}
	/**
	 * @param info the info to set
	 */
	public void setInfo(String info) {
		this.info = info;
	}
	

}
