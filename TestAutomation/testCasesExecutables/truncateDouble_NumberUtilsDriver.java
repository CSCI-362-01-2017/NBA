import project.src.NumberUtils;


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
