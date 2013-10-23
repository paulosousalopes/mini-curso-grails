package encoinfo

class Participante {
	String nome
	String email
	Integer idade

    

    static constraints = {
    	nome nullable: false, blank: false
    	email nullable: false, blank: false
    }
}
