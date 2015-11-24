package LoginMVC.modelo;

public class BeanDetalleVenta {
    private int idCarrito;
    private int idProducto;
    private double total;
    private int cantidad;
    private BeanProducto bprod;
    private BeanCarrito bcarr;

    public BeanDetalleVenta(int idCarrito, int idProducto, double total, int cantidad, BeanProducto bprod, BeanCarrito bcarr) {
        this.idCarrito = idCarrito;
        this.idProducto = idProducto;
        this.total = total;
        this.cantidad = cantidad;
        this.bprod = bprod;
        this.bcarr = bcarr;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public BeanDetalleVenta() {
    }

    public int getIdCarrito() {
        return idCarrito;
    }   

    public BeanDetalleVenta(int cantidad) {
        this.cantidad = cantidad;
    }

    public void setIdCarrito(int idCarrito) {
        this.idCarrito = idCarrito;
    }

    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public BeanProducto getBprod() {
        return bprod;
    }

    public void setBprod(BeanProducto bprod) {
        this.bprod = bprod;
    }

    public BeanCarrito getBcarr() {
        return bcarr;
    }

    public void setBcarr(BeanCarrito bcarr) {
        this.bcarr = bcarr;
    }
    
    
    
}
