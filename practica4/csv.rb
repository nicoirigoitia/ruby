require 'csv'

agenda = CSV.open("agenda.csv", "w", headers: true) do |csv|
  csv << [:nombre, :fecha, :email, :tel, :dir]
end
#asi se lee todo el csv
lectura = CSV.read("agenda.csv")
#p lectura

agenda = CSV.open("agenda.csv", "w") do |csv|
  csv << ["pepe","23/10/2020","pepe@pepe","223555","17 293"]
end

lectura = CSV.read("agenda.csv")
p lectura
