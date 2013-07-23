import com.ideasynegocios.seguridad.*

class BootStrap {

    def init = { servletContext ->
    	def rolAdmin = RoleSec.findByAuthority('ROLE_ADMIN') ?: new RoleSec(authority: 'ROLE_ADMIN').save(failOnError: true)
        def rolUser = RoleSec.findByAuthority('ROLE_USER') ?: new RoleSec(authority: 'ROLE_USER').save(failOnError: true)

        if (UserSec.count()==0) {
			def adminUser = new UserSec(username: 'admin', enabled: true, password: 'password', nombre:'administrador', apellidoPaterno:'adminPaterno', apellidoMaterno:'adminMaterno', sexo:'Masculino').save(failOnError: true,flush: true)
			def personalUser = new UserSec(username: 'usuario', enabled: true, password: 'password', nombre:'Usuario', apellidoPaterno:'UsuarioPaterno', apellidoMaterno:'UsuarioMaterno', sexo:'Masculino').save(failOnError: true,flush: true)

			UserSecRoleSec. create adminUser, rolAdmin, true
			UserSecRoleSec. create personalUser, rolUser, true
        	
			assert UserSec.count() == 2
			assert RoleSec.count() == 2
			assert UserSecRoleSec.count() == 2
        }
		

    }
    def destroy = {
    }
}