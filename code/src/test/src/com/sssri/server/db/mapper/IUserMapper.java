package com.sssri.server.db.mapper;

import org.apache.ibatis.annotations.Select;

import com.sssri.server.db.model.User;

/**
 * @author xumj
 *
 */
public interface IUserMapper {
	
	/**
	 * 根据用户工号查询用户信息
	 * @param employee_id
	 * @return
	 */
	@Select("select * from tb_user where Employee_id = #{employee_id}")
	public User selectUserByID(int employee_id);
	
	@Select("select * from tb_user where userid = #{userid}")
	public User selectUserByUserid(String userid);
	
	/**
	 * 根据用户姓名查询用户信息
	 * @param name
	 * @return
	 */
	@Select("select * from tb_user where userid like #{name}")
	public User selectUserByName(String name);
	
	/**
	 * @param id
	 * @param name
	 * @return
	 */
	@Select("select * from tb_user where Employee=#{employee_id} and userName=#{userName}")
	public User selectUser(User user);
	
}
