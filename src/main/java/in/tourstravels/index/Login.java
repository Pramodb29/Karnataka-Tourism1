//package in.tourstravels.index;
//
//import java.util.Scanner;
//
//import in.tourstravels.dao.CustomerDAO;
//import in.tourstravels.dao.CustomerDAOImpl;
//import in.tourstravels.dto.users;
////import in.tourstravels.index.Admin;
////import in.tourstravels.index.App;
//
//
//public class Login {
//
//	public static void login() {
//	
//		Scanner sc=new Scanner(System.in);
//		
//		System.out.println("Enter the mailid:");
//		String mail=sc.next();
//		System.out.println("Enter the password");
//		String password=sc.next();
//		
//		CustomerDAO edao = new CustomerDAOImpl();
//		users u=edao.getCustomer(mail, password);
//		if(u!=null) {
//			if(u.getCid()==1) {
//				System.out.println("Login Successfull! Welcome Back Admin " + u.getFname());
//				Admin.admin(u);
//			}else {
//				System.out.println("Login Successfull Welcome Back " + u.getFname());
//				userApp.options(u);
//			}
//		}
//		else {
//			System.out.println("Failed to Login! Try Again");
//		}
//	}
//}
