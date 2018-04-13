package com.hgjs.modules;

/**
 * TbClass entity. @author MyEclipse Persistence Tools
 */

public class TbClass implements java.io.Serializable {

	// Fields

	private Integer id;
	private String classTitle;
	private String classImg;

	// Constructors

	/** default constructor */
	public TbClass() {
	}

	/** minimal constructor */
	public TbClass(String classTitle) {
		this.classTitle = classTitle;
	}

	/** full constructor */
	public TbClass(String classTitle, String classImg) {
		this.classTitle = classTitle;
		this.classImg = classImg;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getClassTitle() {
		return this.classTitle;
	}

	public void setClassTitle(String classTitle) {
		this.classTitle = classTitle;
	}

	public String getClassImg() {
		return this.classImg;
	}

	public void setClassImg(String classImg) {
		this.classImg = classImg;
	}

}