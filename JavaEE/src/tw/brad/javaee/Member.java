package tw.brad.javaee;

public class Member {
	private String name, account;
	private int age;
	public Member(String name, String account, int age) {
		this.name = name; this.age = age; this.account = account;
	}
	public String getName() {return name;}
	public String getAccount() {return account;}
	public int getAge() {return age;}
	public void setAge(int age) {this.age = age;}
}
