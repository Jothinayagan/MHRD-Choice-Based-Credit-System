
import java.io.PrintStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Scanner;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Admin
 */
public class timeslot {
    public static void main(String[] args) {
        // TODO code application logic here
        PrintStream p=new PrintStream(System.out);
        Scanner s=new Scanner(System.in);
        String sub1,sub2,sub3,sub4,ele1,ele2,ele3;
        String day1[]=new String[7];
         String day2[]=new String[7];
          String day3[]=new String[7];
           String day4[]=new String[7];
            String day5[]=new String[7];
            try{
          Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection cn = DriverManager.getConnection("jdbc:odbc:timetable");
  Statement st = cn.createStatement();
        p.println("______________WELCOME TIMETABLE GENERATION______________");
        p.println("_________________SELECT 8 SUBJECTS______________________");
       p.println("               SUBJECT 1:  ");
        sub1=s.nextLine();
              p.println("               SUBJECT 2:  ");
         sub2=s.nextLine();
               p.println("               SUBJECT 3:  ");
          sub3=s.nextLine(); 
                p.println("               SUBJECT 4:  ");
            sub4=s.nextLine();
                 p.println("               ELECTIVE 1:  ");
             ele1=s.nextLine();
                  p.println("               ELECTIVE 2:  ");
               ele2=s.nextLine();
                   p.println("               ELECTIVE 3:  ");
                ele3=s.nextLine();
          
        day1[0]=sub1; day1[1]=sub2; day1[2]=sub3; day1[3]=sub4; day1[4]=ele1; day1[5]=ele2; day1[6]=ele3;
              day2[0]=sub2; day2[1]=sub3; day2[2]=sub4; day2[3]=sub1; day2[4]="lab"; day2[5]="lab"; day2[6]="lab";
                    day3[0]=sub3; day3[1]=sub4; day3[2]=sub1; day3[3]=sub2; day3[4]=ele2; day3[5]=ele3; day3[6]=ele1;
                          day4[0]=sub4; day4[1]="lab"; day4[2]="lab"; day4[3]="lab"; day4[4]=sub1; day4[5]=sub2; day4[6]=sub3;
                                day5[0]=ele1; day5[1]=ele2; day5[2]=ele3; day5[3]=sub3; day5[4]=sub1; day5[5]=sub2; day5[6]=sub4;
                                      //day1[0]=sub1; day1[1]=sub2; day1[2]=sub3; day1[3]=sub4; day1[4]=ele1; day1[5]=ele2; day1[6]=ele3;
                                      
                                      
                                     
                                      p.println("______________________________TIME TABLE______________________________");
                                      p.printf("\n______________________________________________________________________");
          p.println();
   
        for(int i=0;i<day1.length;i++){
                                           p.printf("%-10s",day1[i]);
                                           
                                      }
          p.printf("\n______________________________________________________________________");
          p.println();
        for(int i=0;i<day2.length;i++){
                                           p.printf("%-10s",day2[i]);
                                            
                                      }
           p.printf("\n______________________________________________________________________");
           p.println();
        for(int i=0;i<day3.length;i++){
                                           p.printf("%-10s",day3[i]);
                                             
                                      }
          p.printf("\n______________________________________________________________________");
          p.println();
        for(int i=0;i<day4.length;i++){
                                           p.printf("%-10s",day4[i]);
                                            
                                      }
           p.printf("\n______________________________________________________________________");
           p.println();
        for(int i=0;i<day5.length;i++){
                                           p.printf("%-10s",day5[i]);
                                             
                                      }
          p.printf("\n______________________________________________________________________");
          p.println();
           
        
        p.printf("\n______________________________________________________________________");
    }
            catch(Exception e){System.out.println(e);}
    }
}
