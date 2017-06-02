import java.io.FileNotFoundException;
import java.io.FileReader;

class Main {
	public static void main(String[] args) throws FileNotFoundException {
		String fileName = "input.txt";
		parser p = new parser(new scanner(new FileReader(fileName)));
		try {
			//p.parse();
			System.out.println(p.debug_parse().value);
		}
		catch (Exception e) {
			System.out.println("Caught an exception.");
		}
	}
}