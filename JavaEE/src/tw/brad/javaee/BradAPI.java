package tw.brad.javaee;

public class BradAPI {
	public static boolean ckPasswd(String src, String cpasswd) {
		boolean isRight = false;
		if (cpasswd.startsWith("$2a$")) {
			isRight = BCrypt.checkpw(src, cpasswd);
		}
		return isRight;
	}
}
