package tw.brad.beans;

import java.io.Serializable;

/*
 * Java Bean
 * (x)1. public class
 * (X)2. implements Serializable
 * 3. all fields not a public => private
 * 4. default constructor
 * 5. getter & setter => getXxx(), setXxx()
 */
//public class Member implements Serializable {
public class Member {
	private String id, name;
	
	public Member() {
	}
	public Member(String id, String name) {
		this.id = id; this.name = name;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {return this.id;}
	public String getName() {return this.name;}
	
	@Override
	public String toString() {
		return name + id;
	}
}
