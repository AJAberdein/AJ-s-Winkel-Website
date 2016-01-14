package winkel.data;

import java.sql.*;

import winkel.business.*;

public class UserDB {

    public static void insert(User user) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;

        String query
                = "INSERT INTO User (FirstName, LastName, Email, Telephone, "
                + "Address, Suburb, City, Province, PostalCode, Country, "
                + "VisaOrMaster, CardNumber, ExpirationMonth, ExpirationYear) "
                + "VALUES (?, ?, ?, ?,  ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, user.getFirstName());
            ps.setString(2, user.getLastName());
            ps.setString(3, user.getEmail());
            ps.setString(4, user.getTelephone());
            
            ps.setString(5, user.getAddress());
            ps.setString(6, user.getSuburb());
            ps.setString(7, user.getCity());
            ps.setString(8, user.getProvince());
            ps.setString(9, user.getPostalCode());
            ps.setString(10, user.getCountry());
            
            ps.setString(11, user.getVisaOrMaster());
            ps.setString(12, user.getCardNumber());
            ps.setString(13, user.getExpirationMonth());
            ps.setString(14, user.getExpirationYear());
            
            ps.executeUpdate();
            
            //Get the user ID from the last INSERT statement.
            String identityQuery = "SELECT @@IDENTITY AS IDENTITY";
            Statement identityStatement = connection.createStatement();
            ResultSet identityResultSet = identityStatement.executeQuery(identityQuery);
            identityResultSet.next();
            long userID = identityResultSet.getLong("IDENTITY");
            identityResultSet.close();
            identityStatement.close();

            // Set the user ID in the User object
            user.setId(userID);
        } catch (SQLException e) {
            System.err.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }

}