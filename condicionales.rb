#condicionales
is_authenticated=true

#sintaxis
=begin
  if condicion
elif
else

end
=end
role= :user
if role ==:admin
  puts"Pantalla  de admin"
elsif role ==:superadmin
  puts" Pantalla de superadmin"
else
  puts"Pantalla de login"
end

