package com.sn.app.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.validation.constraints.Size;

@Entity
public class Task implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@GeneratedValue
	@Id
	private Long id;
	private String user;

	@Column(columnDefinition = "TEXT")
	private String contents;
	private Date targetDate;
	private boolean done;

	public Task() {
	}

	/**
	 * Constructor
	 * 
	 * @param user
	 * @param contents
	 * @param targetDate
	 * @param done
	 */
	public Task(String user, String contents, Date targetDate, boolean done) {
		super();
		this.user = user;
		this.contents = contents;
		this.targetDate = targetDate;
		this.done = done;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getContents() {
		return contents;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public Date getTargetDate() {
		return targetDate;
	}

	public void setTargetDate(Date targetDate) {
		this.targetDate = targetDate;
	}

	public boolean isDone() {
		return done;
	}

	public void setDone(boolean done) {
		this.done = done;
	}

}
