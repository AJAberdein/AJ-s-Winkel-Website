package winkel.data;

import java.sql.*;
import java.util.*;

import winkel.business.*;
import java.sql.*;

public class ProductDB {

    public static Product selectProduct(String productCode) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        
        try {
//            String dbURL = "jdbc:mysql://localhost:3306/winkel";
//            String username = "root";
//            String password = "sesame";
//            connection = DriverManager.getConnection(dbURL, username, password);
        
            
            //Create a prepared statement
            String query = "SELECT * FROM Product WHERE ProductCode = ?";
               
            ps = connection.prepareStatement(query);
            ps.setString( 1, productCode);
            rs = ps.executeQuery();
             if (rs.next()) {
                Product p = new Product();
                p.setId(rs.getLong("ProductID"));
                p.setCode(rs.getString("ProductCode"));
                p.setDescription(rs.getString("ProductDescription"));
                p.setPrice(rs.getDouble("ProductPrice"));
                return p;
            } else {
                return null;
            }           
            
            
        } catch (SQLException e) {
                System.err.println(e);
                return null;
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
            
        
        }
        
        
        
    }
    
}
    
 