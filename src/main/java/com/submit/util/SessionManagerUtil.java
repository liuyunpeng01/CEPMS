package com.submit.util;

import com.submit.entity.TLogin;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;

/**
 * 	session管理工具
 * @author submitX
 *
 */
public class SessionManagerUtil {
	
	/**
	 * 	获取shiro的session
	 * @return
	 */
	public static Session getSession() {
		return SecurityUtils.getSubject().getSession();
	}
	/**
	 * 	获取当前session用户
	 * @return
	 */
	public static TLogin getPreviouSessionUser() {
		return (TLogin) getSession().getAttribute("user");
	}
	
	public static String getUserRoleName() {
		Subject subject = SecurityUtils.getSubject();
		if (subject.hasRole(Utils.RoleName.TEACHER.getChineseName())) {
			return Utils.RoleName.TEACHER.toString();
		} else if (subject.hasRole(Utils.RoleName.STUDENT.getChineseName())) {
			return Utils.RoleName.STUDENT.toString();
		} else if (subject.hasRole(Utils.RoleName.ADMIN.getChineseName())) {
			return Utils.RoleName.ADMIN.toString();
		}
		return null;
	}
	
	public static void addSessionAttribute(String key, Object value) {
		getSession().setAttribute(key, value);
	}
	
	public static Object getSessionAttribute(String key) {
		return getSession().getAttribute(key);
	}
}
