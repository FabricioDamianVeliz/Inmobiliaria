package inmobiliaria

class Comprador extends Clientes{
	static hasMany = [contratos: Contrato]
    static constraints = {

    }
}
