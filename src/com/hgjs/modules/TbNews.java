package com.hgjs.modules;

/**
 * TbNews entity. @author MyEclipse Persistence Tools
 */

public class TbNews implements java.io.Serializable {

	// Fields

	private Integer id;
	private String title;
	private String content;
	private String date;
	private String author;
	private String class_;
	private Integer click;
	private Integer homePage;

	// Constructors

	/** default constructor */
	public TbNews() {
	}

	/** minimal constructor */
	public TbNews(String title) {
		this.title = title;
	}

	/** full constructor */
	public TbNews(String title, String content, String date, String author,
			String class_, Integer click, Integer homePage) {
		this.title = title;
		this.content = content;
		this.date = date;
		this.author = author;
		this.class_ = class_;
		this.click = click;
		this.homePage = homePage;
	}

	// Property accessors

	public TbNews(Integer id, String title, String date) {
		super();
		this.id = id;
		this.title = title;
		this.date = date;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getDate() {
		return this.date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getAuthor() {
		return this.author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getClass_() {
		return this.class_;
	}

	public void setClass_(String class_) {
		this.class_ = class_;
	}

	public Integer getClick() {
		return this.click;
	}

	public void setClick(Integer click) {
		this.click = click;
	}

	public Integer getHomePage() {
		return this.homePage;
	}

	public void setHomePage(Integer homePage) {
		this.homePage = homePage;
	}

	@Override
	public String toString() {
		return "TbNews [id=" + id + ", title=" + title + ", content=" + content
				+ ", date=" + date + ", author=" + author + ", class_="
				+ class_ + ", click=" + click + ", homePage=" + homePage + "]";
	}

}