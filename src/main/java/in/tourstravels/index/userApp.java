package in.tourstravels.index;

import java.util.Scanner;


import in.tourstravels.dto.users;

public class userApp {
	
	public static void options(users e) {
		Scanner sc=new Scanner(System.in);
	
		int i=0;
		do {
			System.out.println("Choose options");
			System.out.println("<1> View Data");
			System.out.println("<2> Apply for Leave");
			System.out.println("<3> View Leave Status");
			System.out.println("<4> Download Payslip");
			System.out.println("<5> Raise a Concern");
			System.out.println("<6> View Raised Concerns");
			System.out.println("<7> Submit Resignation");
			System.out.println("<9> Logout");
			switch(i=sc.nextInt())
			{
			case 1: System.out.println(e);
			break;
			}
		}while(i!=9);
	}

}
