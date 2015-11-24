package LoginMVC.modelo;
import static java.lang.System.out;;
import java.sql.*;

public class Conexion {
    
    public static final String USERNAME = "root";
    public static final String PASSWORD = "";
    public static final String HOST = "localhost";
    public static final String PORT = "3306";
    public static final String DATABASE = "Aplicacion Web";
    public static final String CLASSNAME = "com.mysql.jdbc.Driver";
    public static final String URL = "jdbc:mysql://"+ HOST +":"+PORT+"/"+DATABASE;
    public static String query;
    ResultSet setResult;
    PreparedStatement stmt;
    
       public static Connection getConexion() {
           Connection con = null;
           try {
               Class.forName(CLASSNAME);
               con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
           } catch (Exception e) {
               out.print("Error al conectar");
           }
           return con;
       }
}
