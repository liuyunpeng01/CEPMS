package com.submit.vo;

import com.submit.entity.TMajor;

import java.io.Serializable;

/**
 * 	页面实现Major专业的VO包装对象
 * @author submitX
 *
 */
public class MajorVO implements Serializable{
	private TMajor major;
	/**
	 * majors所属院系的名称
	 */
	private String facultyName;
	
	public MajorVO(TMajor tMajor, String facultyName) {
		this.major = tMajor;
		this.facultyName = facultyName;
	}
	public TMajor getMajor() {
		return major;
	}
	public void setMajor(TMajor major) {
		this.major = major;
	}
	public String getFacultyName() {
		return facultyName;
	}
	public void setFacultyName(String facultyName) {
		this.facultyName = facultyName;
	}
}
