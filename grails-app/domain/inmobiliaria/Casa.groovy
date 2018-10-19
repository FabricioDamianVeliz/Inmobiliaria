package inmobiliaria

class Casa extends Propiedad {
Integer cantDormitorio
Integer cantBanios
String cochera

    static constraints = {

    cantDormitorio(blank:false)
    cantBaños(blank:false)
    cochera (blank :false, inList:['Si','No'])


    }
}
