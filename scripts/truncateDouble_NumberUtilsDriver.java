import project.NumberUtils;

/**
	 * Driver for the truncateDouble class that 
	 * truncates the decimal part of a double to keep only 2 decimals.
	 * 
	 * truncateDouble:
	 	* @param value
	 	*		Value to truncate (can be null).
	 	* @return The truncated number or null if the given value was null.
	 */

public class truncateDouble_NumberUtilsDriver{
	public static void main (String[] args){
		if (args[0].equals("null")){
			System.out.println("null");
		}	
		else{
			try{
				System.out.println(NumberUtils.truncateDouble(Double.parseDouble(args[0])));
			}	
			catch(Exception e){
				System.out.println(e);
			}
		}
	}
}
