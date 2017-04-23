package com.sssri.server.restful;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.ws.rs.Consumes;
import javax.ws.rs.FormParam;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Request;

import org.apache.ibatis.session.SqlSession;

import com.sssri.server.db.DatabaseUtils;
import com.sssri.server.db.mapper.IUserMapper;
import com.sssri.server.db.model.User;

/**
 * 
 * 
 * @author huangjw(mailto:huangjw@primeton.com)
 *
 */
@Path("/user")
@Consumes({"application/json", "application/x-www-form-urlencoded"})
public class UserRestService {

	@Path("/getUserInfo")
	@POST
	@Produces(MediaType.APPLICATION_JSON)
	public User getAllUsersInfo(@FormParam("userid")String userid){
		SqlSession session = null;
		User result = null;
		try{
			session = DatabaseUtils.getSessionFactory().openSession();

			// 数据库表操作
			IUserMapper userDAO = session.getMapper(IUserMapper.class);
//			User result = userDAO.selectUserByID(1);
//			User result2 = userDAO.selectUserByName("设定");
//			User result = session.selectOne("com.sssri.server.db.UserMapper.selectUserByID", 1);
//			result = session.selectList("com.sssri.server.db.UserMapper.selectUserByName", "%设定%");
			result = userDAO.selectUserByUserid(userid);
		} finally {
			if (session != null)
				session.close();
		}
		return result;
	}
	
	/**
	 * 用户登录
	 * @param userid
	 * @param password
	 * @return
	 */
	@Path("/login")
	@POST
	@Produces(MediaType.APPLICATION_JSON)
	public boolean login(@FormParam("userid")String userid, @FormParam("password")String pwd, @Context HttpServletRequest request){
		SqlSession session = null;
		try{
			session = DatabaseUtils.getSessionFactory().openSession();
			HttpSession httpsession=request.getSession();
			// 数据库表操作
			IUserMapper userDAO = session.getMapper(IUserMapper.class);
			User userInfo = userDAO.selectUserByUserid(userid);
			if(userInfo == null){
				return false;
			}
			boolean ret= pwd.equals(userInfo.getPassword());
			if(ret)
			{
				httpsession.setAttribute("login_user", userid);
				httpsession.setMaxInactiveInterval(3600);
				//httpsession.invalidate();退出的时候使用
			}
			return ret;
		} finally {
			if (session != null)
				session.close();
		}
	}
	
}
