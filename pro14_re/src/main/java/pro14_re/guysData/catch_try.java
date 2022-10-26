package pro14_re.guysData;

public class catch_try {
	public static void main(String[] args) {

		try{
			System.out.println(8/0);
		
		}catch(Exception e) {
			System.out.println("error 발생");
			System.out.println("8/0 은 실행가능하지 않습니다.");
			e.printStackTrace();
		}
		
		
		
		try{
			System.out.println(0/8);			
		}catch(Exception e) {
			System.out.println("error 발생");
			e.printStackTrace();
		}		
		
	}
}
