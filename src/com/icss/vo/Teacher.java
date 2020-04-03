/**
  * <p>Title: Teacher.java</p>
　 * <p>Description: </p>
　 * <p>Copyright: Copyright (c) 2020</p>
　 * <p>Company: </p>
　 * @author wushewng
　 * @date 2020年4月1日
　 * @version 1.0
 */
package com.icss.vo;

/**
 * <p>Title: Teacher</p>
　 * <p>Description: </p>
　 * @author liuxin
　 * @date 2020年4月1日
 */
public class Teacher {
	private int teacherid;
	private String name;
	private int tcoursenum;
	private String tcoursename;
	private String info;
	private String img;
	private int goodsid;
	
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
	 * @return the tcoursenum
	 */
	public int getTcoursenum() {
		return tcoursenum;
	}
	/**
	 * @param tcoursenum the tcoursenum to set
	 */
	public void setTcoursenum(int tcoursenum) {
		this.tcoursenum = tcoursenum;
	}
	/**
	 * @return the tcoursename
	 */
	public String getTcoursename() {
		return tcoursename;
	}
	/**
	 * @param tcoursename the tcoursename to set
	 */
	public void setTcoursename(String tcoursename) {
		this.tcoursename = tcoursename;
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
	
	
}
