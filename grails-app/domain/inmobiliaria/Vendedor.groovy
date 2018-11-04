package inmobiliaria

class Vendedor extends Clientes{

static hasMany = [vendidas:Propiedad,contratos:Contrato]

  static constraints = {


  }

}
