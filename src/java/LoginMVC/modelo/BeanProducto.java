package LoginMVC.modelo;

public class BeanProducto {
    private int id;
    private String nombre;
    private String marca;
    private String descripcion;
    private float precio;
    
    public String getNombre() {
        return nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public String getDescripcion() {
        return descripcion;
    }
    
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    public float getPrecio() {
        return precio;
    }
    
    public void setPrecio(float precio) {
        this.precio = precio;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    
    public BeanProducto(int id, String nombre, String marca, String descripcion, float precio) {
        super();
        this.id = id;
        this.nombre = nombre;
        this.marca = marca;
        this.descripcion = descripcion;
        this.precio = precio;
    }
    
    public BeanProducto(){
    }

    @Override
    public String toString() {
        return nombre;
    }
}