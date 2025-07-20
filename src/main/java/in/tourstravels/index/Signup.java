//package in.tourstravels.index;
//
//import java.util.Scanner;
//
//import in.tourstravels.dao.CustomerDAO;
//import in.tourstravels.dao.CustomerDAOImpl;
//
//import in.tourstravels.dto.users;
//
//public class Signup {
//
//	
//	public static void signup() {
//		Scanner sc=new Scanner(System.in);
//		users u=new users();
//		CustomerDAO cdao=new CustomerDAOImpl();
//		System.out.println("Enter the Fname:");
//		u.setFname(sc.next());
//		System.out.println("Enter the Lname:");
//		u.setLname(sc.next());
//		System.out.println("Enter the PhoneNo:");
//		u.setPhoneno(sc.nextLong());
//		
//		System.out.println("Enter the Email:");
//		u.setEmail(sc.next());
//		
//		System.out.println("Set a new password:");
//		String password=sc.next();
//		System.out.println("Confirm the new password:");
//		String confirmPassword=sc.next();
//		if(password.equals(confirmPassword)) {
//		u.setPassword(confirmPassword);
//		System.out.println("Enter the Address:");
//		u.setAddress(sc.next());
//		boolean res=cdao.insertCustomer(u);
//		if(res) {
//			
//			System.out.println("Data added successfully!");
//			}
//			else {
//			System.out.println("Failed to save data");
//			}
//	}
//			else {
//			System.out.println("Password mismatch!");
//			}
//			}
//}
