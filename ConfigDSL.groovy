job('Avanzado-job-DSL') {
	description('Job DSL de ejecucion y pruebas')
  	scm {
      		git('https://github.com/LuisRuizLemas/Job-In-Team.git', 'main') { node ->
        		node / gitConfigName('LuisRuizLemas')
        		node / gitConfigEmail('luisgjenkins@gmail.com')
      		}
    	} 
  	parameters {
                stringParam('nombre', defaultValue = 'Luis', description = 'Parametro de cadena para el Job Estudiante')
                stringParam('n1', defaultValue = '1', description = 'Parametro de cadena para el numero 1')
                stringParam('n2', defaultValue = '1', description = 'Parametro de cadena para el numero 2')
      		choiceParam('materia', ['Aritmetica', 'Operaciones Basicas'])
                choiceParam('idioma', ['Español', 'Ingles', 'Japones', 'Latin', 'Frances'])
      		booleanParam('Estudiante_Avanzado', false)
    	}
  	triggers {
    		cron('H/7 * * * *')
		githubPush()
    	}
  	steps {
    		shell("bash Estudiante_Avanzado.sh")
    	}
  	publishers {
      		mailer('luisgjenkins@gmail.com', true, true)
		mailer('desarprac@gmail.com', true, true)
      		slackNotifier {
		        notifyAborted(true)
		        notifyEveryFailure(true)
		        notifyNotBuilt(false)
		        notifyUnstable(false)
		        notifyBackToNormal(true)
		        notifySuccess(false)
		        notifyRepeatedFailure(false)
		        startNotification(false)
		        includeTestSummary(false)
		        includeCustomMessage(false)
		        customMessage(null)
		        sendAs(null)
		        commitInfoChoice('NONE')
		        teamDomain(null)
		        authToken(null)
        	}
    	}
}
