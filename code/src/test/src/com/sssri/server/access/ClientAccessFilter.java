package com.sssri.server.access;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;

/**
 * 移动端接入filter, 用来控制token的分发校验
 * 
 * @author huangjw(mailto:huangjw@primeton.com)
 *
 */
public class ClientAccessFilter implements Filter {

	private FilterConfig config;
	
	private ILoginStateChecker clientLoginHandler = null;
	
	private boolean IS_DB_INITED = false;
	
	/**
	 * 需要拦截的URL的通配规则
	 */
	private String[] INCLUDE_PATTERN = null;
	
	/**
	 * 不拦截的URL的通配规则
	 */
	private String[] EXCLUDE_PATTERN = null;
	
	public ClientAccessFilter() {
	}

	public void destroy() {
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) 
			throws IOException, ServletException {
		
		HttpServletRequest hRequest = (HttpServletRequest) request;
		HttpServletResponse hResponse = (HttpServletResponse) response;
		
		String encoding = config.getInitParameter("encoding");
		if(StringUtils.isNotBlank(encoding)){
			hRequest.setCharacterEncoding(encoding);
			hResponse.setCharacterEncoding(encoding);
		}
		
		//初始化数据库记录token，微信用户等信息
		if(IS_DB_INITED == false){
			
		}
		
		boolean isMobile = checkMobile(hRequest.getHeader("User-Agent"));
		if(this.clientLoginHandler!=null && isMobile){
			handleClientRequest(hRequest, hResponse, chain);
		} else {
//			//PC请求，判断用户登录状态
//			HttpSession session = hRequest.getSession();
//			String requestURI = hRequest.getServletPath();
//			
//			
//				if (session == null) {
//					hResponse.sendRedirect("index.html");
//					return;
//				} else {
//					Object user = session.getAttribute("login_user");
//					if (user == null || user.toString().trim().equals("")) {
//						if (requestURI.equals("/login.html")||hRequest.getServletPath().startsWith("resource")) {
//							chain.doFilter(hRequest, hResponse);
//							return;
//						} else {
//							hResponse.sendRedirect("index.html");
//							return;
//						}
//					}
//				} 
//			
			chain.doFilter(hRequest, hResponse);
		}
	}
	
	/**
	 * 处理移动端请求
	 * @param request
	 * @param response
	 * @param chain
	 * @throws ServletException
	 * @throws IOException
	 */
	private void handleClientRequest(HttpServletRequest request, HttpServletResponse response, FilterChain chain) 
			throws ServletException, IOException{
		chain.doFilter(request, response);
	}
	
	protected boolean checkMobile(String agentHeader){
		//目前我们只支持安卓和苹果设备
		//ATTENTION 需要判断是手机浏览器还是客户端
		if(agentHeader.contains("android") || agentHeader.contains("Android")){
			return true;
		}
		if(agentHeader.contains("iPhone") || agentHeader.contains("iphone")|| agentHeader.contains("iPad") || agentHeader.contains("ipad")){
			return true;
		}
		return false;
	}
	
	protected boolean isInIncludes(String servletPath){
		return true;
	}

	protected boolean isInExcludes(String servletPath){
		return false;
	}
	
	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		this.config = fConfig;
		String handleClass = config.getInitParameter(ILoginStateChecker.PARAM_CLASS);
		if(StringUtils.isNotBlank(handleClass)){
			try {
				Class<?> clazz = Class.forName(handleClass);
				clientLoginHandler = (ILoginStateChecker) clazz.newInstance();
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (InstantiationException e) {
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			}
		}
		
		String includeStr = config.getInitParameter("include_url");
		String excludeStr = config.getInitParameter("exclude_url");
		if(StringUtils.isNotBlank(includeStr)){
			INCLUDE_PATTERN = includeStr.split(",");
		}
		if(StringUtils.isNotBlank(excludeStr)){
			EXCLUDE_PATTERN = excludeStr.split(",");
		}
		
	}

	/**
	 * @see #iNCLUDE_PATTERN
	 * @return iNCLUDE_PATTERN
	 */
	public String[] getINCLUDE_PATTERN() {
		return INCLUDE_PATTERN;
	}

	/**
	 * @param iNCLUDE_PATTERN 设置 <code>{@link #iNCLUDE_PATTERN}</code>字段的值
	 * @see #iNCLUDE_PATTERN
	 */
	public void setINCLUDE_PATTERN(String[] iNCLUDE_PATTERN) {
		INCLUDE_PATTERN = iNCLUDE_PATTERN;
	}

	/**
	 * @see #eXCLUDE_PATTERN
	 * @return eXCLUDE_PATTERN
	 */
	public String[] getEXCLUDE_PATTERN() {
		return EXCLUDE_PATTERN;
	}

	/**
	 * @param eXCLUDE_PATTERN 设置 <code>{@link #eXCLUDE_PATTERN}</code>字段的值
	 * @see #eXCLUDE_PATTERN
	 */
	public void setEXCLUDE_PATTERN(String[] eXCLUDE_PATTERN) {
		EXCLUDE_PATTERN = eXCLUDE_PATTERN;
	}

}
