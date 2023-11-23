package com.test.mybatis.persistence;

import static org.junit.Assert.assertNotNull;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

import jdk.internal.org.jline.utils.Log;
import lombok.extern.log4j.Log4j;

@Log4j
public class JDBCTest {
   
   @Test
   public void testConnection() {
      
      try {
         
         Class.forName("oracle.jdbc.driver.OracleDriver"); //드라이버 로딩
         
         Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "java1234");
         
         assertNotNull(conn);
         
         System.out.println(conn.isClosed());
         
         log.info(conn.isClosed()); // log
         log.warn("경고 메시지");
         log.error("에러 메시지");
         
      } catch (Exception e) {
         // TODO: handle exception
      }
      
   }
   
}