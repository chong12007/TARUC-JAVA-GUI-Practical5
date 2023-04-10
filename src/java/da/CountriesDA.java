package da;

import model.Country;
import java.sql.*;
import java.util.ArrayList;
import javax.swing.JOptionPane;

public class CountriesDA {

    private String host = "jdbc:derby://localhost:1527/CountryDB";
    private String user = "nbuser";
    private String password = "nbpassword";
    private String tableName = "Countries";
    private Connection conn;
    private PreparedStatement stmt;
    private String sqlQueryStr = "SELECT * from " + tableName;
    private String sqlInsertStr = "INSERT INTO " + tableName + " VALUES(?, ?, ?)";
    private ResultSet rs;

    public CountriesDA() {
        createConnection();
    }
    
     private void createConnection() {
        try {
            conn = DriverManager.getConnection(host, user, password);
            System.out.println("***TRACE: Connection established.");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage(), "ERROR", JOptionPane.ERROR_MESSAGE);
        } 
    }

//    private void createConnection() {
//        try {
////            Class.forName("org.apache.derby.jdbc.ClientDriver");
//            conn = DriverManager.getConnection(host, user, password);
//            System.out.println("successfully connect to database");
//            //stmt = conn.prepareStatement(sqlQueryStr);
//        } catch (SQLException ex) {
//            ex.getMessage();
//            System.out.println("failed to connect database");
//        }
//    }

    public Country getCurrentRecord() {
        Country country = null;
        try {
            country = new Country(rs.getString(1), rs.getString(2), rs.getString(3));
        } catch (SQLException ex) {
            ex.getMessage();
        }
        return country;
    }

    public void addRecord(Country country) {
        try {
            PreparedStatement stmt = conn.prepareStatement(sqlInsertStr);
            stmt.setString(1, country.getName());
            stmt.setString(2, country.getOfficialName());
            stmt.setString(3, country.getCapital());
            stmt.executeUpdate();
        } catch (SQLException ex) {
            ex.getMessage();
        }
    }

    public ArrayList<Country> getCountries() {

        ArrayList<Country> countries = new ArrayList<Country>();
        try {
            stmt = conn.prepareStatement(sqlQueryStr);
            rs = stmt.executeQuery();
            while (rs.next()) {
                countries.add(getCurrentRecord());
            }
        } catch (SQLException ex) {
            ex.getMessage();
        }

        return countries;
    }
}
