import project.src.NumberUtils;


public class truncate_NumberUtilsDriver{
	public static void main (String[] args){
		String[] inputs = args[0].split("[,]");
		try{
			if(inputs.length==1){
				System.out.println(NumberUtils.truncate(Double.parseDouble(inputs[0]), 2));
			}
			else{
				System.out.println(NumberUtils.truncate(Double.parseDouble(inputs[0]), Integer.parseInt(inputs[1])));
			}

		}
		catch(Exception e){
			System.out.println(e);
		}
	}
}
