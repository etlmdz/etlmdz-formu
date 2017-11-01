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

Topic.create(nombre: "Lenguajes libres: Python, Ruby, Javascript, PHP, etc")
Topic.create(nombre: "Minería de datos, scrapping, APIs")
Topic.create(nombre: "Productividad: shells, editores, window managers, etc")
Topic.create(nombre: "Contenedores, virtualización")
Topic.create(nombre: "Sistemas operativos: GNU/Linux, FreeBSD, etc")
Topic.create(nombre: "Networking: balanceadores, multitenancy")
Topic.create(nombre: "Seguridad y criptografía")
Topic.create(nombre: "Bases de datos")
Topic.create(nombre: "GIT")
Topic.create(nombre: "Monedas digitales")
Topic.create(nombre: "Frameworks web")
Topic.create(nombre: "Hardware libre")
Topic.create(nombre: "Clouds")
Topic.create(nombre: "Data science")
