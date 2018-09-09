package tw.brad.javaee;

public class Brad18 {
	int x, y;
	public Brad18(String x, String y) {
		this.x  = Integer.parseInt(x);
		this.y  = Integer.parseInt(y);
	}
	public int add() {
		return x + y + 2000;
	}
}
