package LoginMVC.modelo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author hackro
 */
public class Consultas extends Conexion{
    
    
    public boolean Autenticacion(String user,String pass) throws SQLException
    {
        Statement st = con.createStatement();
        ResultSet rs = null;
        String Consulta = "Select * from Cliente";
        rs = st.executeQuery(Consulta);
        
            while(rs.next()) {
                if(user.equals(rs.getString("correo")) && pass.equals(rs.getString("contraseña")))
                    return true;
            }
            return false;
    }
    
    public boolean Registro(String nombre, String correo, String pass, String direccion, String pais, String ciudad) throws SQLException{
        Statement st = con.createStatement();
        String Consulta = "Insert into Cliente (`Nombre`,`correo`,`contraseña`,`Direccion`,`Pais`,`Ciudad`) Values ('"+nombre+"','"+correo+"','"+pass+"','"+direccion+"','"+pais+"','"+ciudad+"')";
            try {
                st.executeUpdate(Consulta);
                return true;
            } catch (Exception e) {
                System.out.println(e.getMessage());
                return false;
            }
    }
}
