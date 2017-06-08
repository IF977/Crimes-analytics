Feature: Fazer_comentario
	como usuario (all)
	gostaria de realizar comentarios
	para interagir e contribuir com o crescimento da aplicação
	
	 Background: Fazer comentario
    	Given I am on the home page
    	When I click on the Sobre button
    	And I visit /comments/new link
    	Then I should see Deixe seu comentario aqui

    
    #HAPPY
	Scenario: Fazer comentario Certo
	#	Given I am on the CoffeeHolic page
		When I fill email_comentario input with algo@gmail.com
		And I fill counteudo_comentario input with algo de interessante
		Then I should see the text Coment was successfully created.


	# Examples:
 #    | Email | Conteudo |
 #    | email@gmail.com | conteudo |
 #    | algo@gmail.com | algo de interessante |

	#SAD
	Scenario: Fazer comentario c/email s/conteudo
		When I fill email_comentario input with email@gmail.com
		And I click on the enviar button
		Then I should see the text Conteudo can't be blank
	
	#SAD
	Scenario: Fazer comentario s/conteudo s/email
		When I click on the enviar button
		Then I should see the text Email and Conteudo can't be blank
	
	#SAD
	Scenario: Fazer comentario c/conteudo s/email
		When I fill conteudo_comentario input with conteudo
		Then I should see the text Email can't be blank


