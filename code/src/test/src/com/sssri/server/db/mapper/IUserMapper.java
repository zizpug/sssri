package com.sssri.server.db.mapper;

import org.apache.ibatis.annotations.Select;

import com.sssri.server.db.model.User;

/**
 * @author xumj
 *
 */
public interface IUserMapper {
	
	/**
	 * 根据用户id查询用户信息
	 * @param id
	 * @return
	 */
	@Select("select * from user where id = #{id}")
	public User selectUserByID(int id);
	
	@Select("select * from user where userid = #{userid}")
	public User selectUserByUserid(String userid);
	
	/**
	 * 根据用户姓名查询用户信息
	 * @param name
	 * @return
	 */
	@Select("select * from user where userid like #{name}")
	public User selectUserByName(String name);
	
	/**
	 * @param id
	 * @param name
	 * @return
	 */
	@Select("select * from user where id=#{id} and userName=#{userName}")
	public User selectUser(User user);
	
}
