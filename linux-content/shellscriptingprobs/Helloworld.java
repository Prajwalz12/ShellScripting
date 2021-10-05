public  class Helloworld {

	public static void main(String args[]){
		while(true){
			System.out.println("Hello to Terminal Commands");
			try{
				Thread.sleep(360000);
			}catch(Exception ex){
				System.out.println(ex);
			}
		}
	}
}


