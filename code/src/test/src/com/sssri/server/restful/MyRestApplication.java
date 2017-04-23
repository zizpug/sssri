package com.sssri.server.restful;

import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import javax.ws.rs.core.Application;

import org.jboss.resteasy.plugins.server.servlet.ResteasyBootstrap;

/**
 * In common use, we register REST service via "{@link ResteasyBootstrap}" listener. In below
 * shows another way, to create a class and extends <code>javax.ws.rs.core.Application</code>,
 * and add your REST service manually.
 * 
 * @author huangjw(huangjw@primeton.com)
 *
 * 
 */
public class MyRestApplication extends Application{

	private Set<Object> singletons = new HashSet<Object>();
	
	public MyRestApplication(){
		singletons.add(new UserRestService());
	}
	
	public Set<Class<?>> getClasses() {
		return super.getClasses();
	}
	
	public Set<Object> getSingletons() {
		Set<Object> superSingle = super.getSingletons();
		if(superSingle.size()>0){
			return superSingle;
		}
		return this.singletons;
	}
	
	public Map<String, Object> getProperties() {
		return super.getProperties();
	}
	
}
