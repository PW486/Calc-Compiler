import java.io.FileNotFoundException;
import java.io.FileReader;

class Main {
	public static void main(String[] args) throws FileNotFoundException {

		String fileName = "input.txt";  

		parser p = new parser(new scanner(new FileReader(fileName)));
		try {
//			p.parse();
			p.debug_parse();
		}
		catch (Exception e) {
			System.out.println("Caught an exception.");
		}
	}
}