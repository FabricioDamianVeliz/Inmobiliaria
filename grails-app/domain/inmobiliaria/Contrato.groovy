package inmobiliaria

class Contrato {

	Date fecha;
	BigDecimal impuesto;
	Vendedor vendedor;
	Propiedad propiedad;
	Clientes cliente;
	String descripcion;


    static constraints = {
    	descripcion (blank:false , maxSize:50)

    }
}
