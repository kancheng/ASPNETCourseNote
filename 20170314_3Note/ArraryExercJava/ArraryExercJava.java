import java.net.*;
import java.io.*;


public class ArraryExercJava{

	public static void main(String[] args) throws Exception {

	    String price = null;
	    int index;

	    String Product[] = new String[20];

	    Product[0] = "2.98";
	    Product[1] = "4.50";
	    Product[2] = "9.98";
	    Product[3] = "4.49";
	    Product[4] = "6.87";

      for (int i = 0; i < Product.length; i++) {
        if (Product[i] == null) continue;
        double value = Double.parseDouble(Product[i]);
        if (value > 1 && value <= 19) {
          System.out.println(value);
        }
      }
    }
}
