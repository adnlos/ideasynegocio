import com.ideasynegocios.seguridad.*

class BootStrap {

    def init = { servletContext ->
    	def rolAdmin = RoleSec.findByAuthority('ROLE_ADMIN') ?: new RoleSec(authority: 'ROLE_ADMIN').save(failOnError: true)
        def rolUser = RoleSec.findByAuthority('ROLE_USER') ?: new RoleSec(authority: 'ROLE_USER').save(failOnError: true)
    }
    def destroy = {
    }
}
