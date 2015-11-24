package LoginMVC.modelo;

import java.sql.Timestamp;

public class BeanCarrito {
    private int idCarrito;
    private int idCliente;
    private Timestamp fecha;

    public BeanCarrito(int idCarrito, int idCliente, Timestamp fecha) {
        this.idCarrito = idCarrito;
        this.idCliente = idCliente;
        this.fecha = fecha;
    }

    public BeanCarrito() {
    }
    
    
}
