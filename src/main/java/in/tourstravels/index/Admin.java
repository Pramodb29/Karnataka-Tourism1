//package in.tourstravels.index;
//
//import java.util.Scanner;
//
//import in.tourstravels.dao.CustomerDAO;
//import in.tourstravels.dao.CustomerDAOImpl;
//import in.tourstravels.dto.users;
//
//public class Admin {
//	
//	public static void admin(users e) {
//		Scanner sc=new Scanner(System.in);
//		CustomerDAO cdao=new CustomerDAOImpl();
//		int i=0;
//		do {
//			
//			System.out.println("WelCome Back Admin:" +e.getFname());
//			System.out.println("<1> Add an Employee");
//			System.out.println("<2> View All Employees");
//			System.out.println("<3> Leave Approval");
//			System.out.println("<4> View Employee Concerns");
//			System.out.println("<5> Add salary to employee");
//			System.out.println("<6> Fire Employee");
//			System.out.println("<7> View Resignations");
//			System.out.println("<8> My Account");//not done
//			System.out.println("<9> Logout");
//		
//			switch(i=sc.nextInt()) {
//			case 1:Signup.signup();
//			break;
//			}
//		}while(i!=9);
//	}
//
//}
