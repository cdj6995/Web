package kr.ac.kopo.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;



public class InsertMain01 {
	 public static void main(String[] args) {

         Connection conn = null;
         Statement stmt = null;
         try {
             Class.forName("oracle.jdbc.driver.OracleDriver");
             System.out.println("드라이버 로딩 성공");

             String url = "jdbc:oracle:thin:@cdj6995_medium?TNS_ADMIN=C:/Users/DA/Desktop/Oracle_Cloud/Wallet_cdj6995";
             String user = "ADMIN";
             String password = "Ejrwo2260341022";

             conn = DriverManager.getConnection(url, user, password);
             System.out.println("conn : " + conn);

             stmt = conn.createStatement();
             String sql = "insert into hi ";
             sql += " values ('봉쥬~ㄹ')";

             //4단계
             int cnt = stmt.executeUpdate(sql);
             System.out.println("총 " + cnt + "개 행이 삽입되었습니다");

         } catch (Exception e) {
             e.printStackTrace();
         } finally {
             if (stmt != null) {
                 try {
                 stmt.close();
                 } catch (Exception e) {
                     e.printStackTrace();
                 }
             }
             if (conn != null) {
                 try {
                     conn.close();
                 } catch (Exception e) {
                     e.printStackTrace();
                 }
             }
         }
     }

}
