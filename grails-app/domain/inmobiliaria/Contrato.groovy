package inmobiliaria

class Contrato {

	Date fecha
	BigDecimal impuesto
	Vendedor vendedor
	Propiedad propiedad
	Comprador comprador
	String descripcion


    static constraints = {
    	descripcion (blank:false , maxSize:50)

    }
}
