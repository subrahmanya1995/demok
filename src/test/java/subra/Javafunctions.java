package subra;

public class Javafunctions {
	public String nonstaticfunction(String arg) {
		System.out.println("This is a non static function ");
		return "Hello" + arg;
	}

	public static String staticfun(String arg) {
		System.out.println("This is a static function");
		return "I AM static";
	}
}