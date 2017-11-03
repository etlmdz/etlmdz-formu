# Desactivado en PRD
# email     = shell.ask "Which email do you want use for logging into admin?"=end
# password  = shell.ask "Tell me the password to use:", :echo => false

# shell.say ""

# account = Account.new(:email => email, :name => "Foo", :surname => "Bar", :password => password, :password_confirmation => password, :role => "admin")

#if account.valid?
  #account.save
  #shell.say "================================================================="
  #shell.say "Account has been successfully created, now you can login with:"
  #shell.say "================================================================="
  #shell.say "   email: #{email}"
  #shell.say "   password: #{?* * password.length}"
  #shell.say "================================================================="
#else
  #shell.say "Sorry, but something went wrong!"
  #shell.say ""
  #account.errors.full_messages.each { |m| shell.say "   - #{m}" }
#end

#shell.say ""

# Para crear el admin en producción, entrar a la consola de Heroku y enviar completos los siguientes valores:
# Account.create(:email => "", :name => "", :surname => "", :password => "", :password_confirmation => "", :role => "admin")

Topic.create(nombre: "Lenguajes libres: Python, Ruby, Javascript, PHP, etc", aprobado: true)
Topic.create(nombre: "Minería de datos, scrapping, APIs", aprobado: true)
Topic.create(nombre: "Productividad: shells, editores, window managers, etc", aprobado: true)
Topic.create(nombre: "Contenedores, virtualización", aprobado: true)
Topic.create(nombre: "Sistemas operativos: GNU/Linux, FreeBSD, etc", aprobado: true)
Topic.create(nombre: "Networking: balanceadores, multitenancy", aprobado: true)
Topic.create(nombre: "Seguridad y criptografía", aprobado: true)
Topic.create(nombre: "Bases de datos", aprobado: true)
Topic.create(nombre: "GIT", aprobado: true)
Topic.create(nombre: "Monedas digitales", aprobado: true)
Topic.create(nombre: "Frameworks web", aprobado: true)
Topic.create(nombre: "Hardware libre", aprobado: true)
Topic.create(nombre: "Clouds", aprobado: true)
Topic.create(nombre: "Data science", aprobado: true)
