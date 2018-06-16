package resercas;

import java.util.Date;
import java.util.Calendar;

public class Calculos {

	
	public static boolean checkFechas(Date in, Date out) {
		int comp = in.compareTo(out); 
		boolean ok = false; 
		if(comp < 0) {
			ok = true;			
		}
		return ok;
	}
	
	public static Date sumarDias(Date in, int dias) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(in);
		cal.add(Calendar.DATE, dias);	
		System.out.println(cal.getTime());
		return cal.getTime();
	}
	public static double obtenerTotal(double precio, int dias) {	
		return precio * dias;
	}
}
