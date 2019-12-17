package com.submit.web.controller.base;

import com.submit.entity.TLogin;
import com.submit.util.LoggerUtil;
import com.submit.util.SessionManagerUtil;
import com.submit.util.Utils;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 * 	基本的功能性代码
 * @author submitX
 *
 */
public class BaseController {
	/**
	 *	操作结构值
	 */
	protected static enum ResultValue {SUCCESS, FAIL, ERROR};
	
	public static final String URL_404 = "open/404";
	public static final String URL_UNAUTHORIZED = "open/unauthorized";
	public static final String URL_LOGIN = "open/login";
	protected Map<String, Object> resultMap = new LinkedHashMap<String, Object>();
	protected final String resultKey = "status";
	/**
	 * 	默认分页都是显示十条数据
	 */
	protected final int pageSize = 10;
	
	
	/**
	 * 	将file文件存储在指定位置，相对目录
	 * @param request
	 * @param file 文件数据
	 * @param name 文件名
	 * @return
	 * @throws IllegalStateException
	 * @throws IOException
	 */
	public String upload(HttpServletRequest request, MultipartFile file, String name) throws IllegalStateException, IOException {
		LoggerUtil.info(BaseController.class, "upload homework id = " + name);
		TLogin login = SessionManagerUtil.getPreviouSessionUser();
		String roleName = SessionManagerUtil.getUserRoleName();
		if (roleName == null) {
			return null;
		}
		StringBuffer url = new StringBuffer();
		if (roleName.equals(Utils.RoleName.ADMIN.toString())) {
			url.append(Utils.getFileByNameInFiles(""));
		} else {
			url.append(Utils.getFilesSaveRootPath()).append(roleName).append("/")
				.append(login.getUserId());
		}
		if (!Files.exists(Paths.get(url.toString()))) {
			Files.createDirectories(Paths.get(url.toString()));
		} 
		String subfix = Utils.getSubfix(file.getOriginalFilename());
		url.append("/").append(name).append(subfix);
		String filePath = url.toString();
		Files.deleteIfExists(Paths.get(filePath));
		File f = new File(filePath);
		file.transferTo(f);
		filePath = roleName.equals(Utils.RoleName.ADMIN.toString()) ? filePath.replace(Utils.getFileByNameInFiles(""), "/") : filePath.replace(Utils.getFilesSaveRootPath(), "/");
		return filePath;
	}
	
}
