package LoginMVC.modelo;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author hackro
 */
public class Consultas extends Conexion{
    public boolean Autenticacion(String user,String pass) throws SQLException
    {
        Statement st = getConexion().createStatement();
        ResultSet rs = null;
        String Consulta = "Select * from clientes";
        rs = st.executeQuery(Consulta);
        
            while(rs.next()) {
                if(user.equals(rs.getString("Emailcliente")) && pass.equals(rs.getString("Contraseña")))
                    return true;
            }
            return false;
    }
    
    public boolean Registro(String nombre, String correo, String pass, String direccion, String pais, String ciudad) throws SQLException{
        Statement st = getConexion().createStatement();
        String Consulta = "Insert into clientes (`Nombre`,`Emailcliente`,`Contraseña`,`Direccion`,`Pais`,`Estado`) Values ('"+nombre+"','"+correo+"','"+pass+"','"+direccion+"','"+pais+"','"+ciudad+"')";
            try {
                st.executeUpdate(Consulta);
                return true;
            } catch (Exception e) {
                System.out.println(e.getMessage());
                return false;
            }
    }
    
    public static ArrayList<BeanProducto> consultarProducto() throws SQLException {
        ArrayList<BeanProducto> lista = new ArrayList<>();
        Statement st = null;
        ResultSet rs = null;
        try{
            String Consulta = "Select * from producto";
            st = getConexion().createStatement();
            rs=st.executeQuery(Consulta);
            while(rs.next()){
                BeanProducto bproducto = new BeanProducto(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getFloat(5));
                lista.add(bproducto);
            }
        } catch(SQLException se){}
        return lista;
    }
    
    public static BeanProducto mostrarProducto(int cod){
        BeanProducto bprod = new BeanProducto();
        Statement st = null;
        ResultSet rs = null;
        try {
            String Consulta = "Select * from producto WHERE Idproducto = '"+cod+"'";
            st = getConexion().createStatement();
            rs = st.executeQuery(Consulta);
            while(rs.next()){
                bprod.setId(rs.getInt(1));
                bprod.setNombre(rs.getString(2));
                bprod.setMarca(rs.getString(3));
                bprod.setDescripcion(rs.getString(4));
                bprod.setPrecio(rs.getFloat(5));
            }
        } catch (Exception e) {}
        return bprod;
    }
    
    public static void main(String[] args) throws SQLException {
        ArrayList<BeanProducto> lista = consultarProducto();
        BeanProducto bproduc = lista.get(0);
        System.out.println(bproduc.getNombre());
    }
}
