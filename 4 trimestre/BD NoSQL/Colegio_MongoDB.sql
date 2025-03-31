-- Insert ONE

-- alumnos
  {
   "id_alumno" : 10307894421,
   "nombres" : "Milan",
   "apellido" : "Pineda Rodriguez",
   "direccion" : "Cra 67 # 78-45",
   "telefono" : 6015679902,
   "id_acudiente" : 80830111,
   "parentesco" : "Padre",
   "edad" : 6,
   "pasatiempos" : ["Futbol","Cine"]
  }

-- acudientes
  {
   "id_acudiente" : 80830111,
   "apellido" : "Pineda Uribe",
   "nombres" : "Javier Leonardo"
  }

 {
   "id_acudiente" : 39876382,
   "apellido" : "Rubio Toño",
   "nombres" : "Claudia Lorena"
  }

-- Insert MANY

-- acudientes
[
 {"id_acudiente" : 41789032, "apellido" : "Rodriguez", "nombres" : "Julieth"},
 {"id_acudiente" : 79654112, "apellido" : "Suarez Montes", "nombres" : "Tomas Alejandro"},
 {"id_acudiente" : 9786678, "apellido" : "Mina", "nombres" : "Lonera Maria"}
]


-- alumnos
[
  {"id_alumno" : 10359876612, "nombres" : "Juan Adres", "apellido" : "Torres Rodriguez",
   "direccion" : "Calle 7 # 8-30", "id_acudiente" : 41789032,
   "parentesco" : "Madre", "edad" : 5, "pasatiempos" : ["Video Juegos","Futbol"]},

  {"id_alumno" : 10307894421, "nombres" : "Ana Lucia", "apellido" : "Pineda Rodriguez",
   "direccion" : "Cra 67 # 78-45","telefono" : 6015679902, "id_acudiente" : 80830111,
   "parentesco" : "Padre", "edad" : 6, "pasatiempos" : ["Leer","Juegos de Mesa","Escuchar Musica"]},

  {"id_alumno" : 10159902348, "nombres" : "Matias", "apellido" : "Suarez Santos",
   "direccion" : "Transv 89 # 45-00","telefono" : 6018903456, "id_acudiente" : 79654112,
   "parentesco" : "Abuelo", "edad" : 5, "pasatiempos" : ["Leer","Juegos de Mesa","Escuchar Musica"]}
]


[
  {"id_alumno" : 11071234512, "nombres" : "Daniel Adres", "apellido" : "Mina",
   "direccion" : "Calle 42g sur # 78-90", "id_acudiente" : 9786678,
   "parentesco" : "Madre", "edad" : 5, "pasatiempos" : "Futbol"},

  {"id_alumno" : 11298765531, "nombres" : "Sofia", "apellido" : "Pineda Mora",
   "direccion" : "Transv 78 # 89-11","telefono" : 6012136700, "id_acudiente" : 80830111,
   "parentesco" : "Tio", "edad" : 6, "pasatiempos" : ["Leer","Escuchar Musica"]},

  {"id_alumno" : 10130009871, "nombres" : "Carolina", "apellido" : "Montañez Rubio",
   "direccion" : "Cra 10 sur # 88-20","telefono" : 6017771735, "id_acudiente" : 39876382,
   "parentesco" : "Tia", "edad" : 6, "pasatiempos" : ["Juegos de Mesa","Piano"]},

  {"id_alumno" : 10494567890, "nombres" : "Martin", "apellido" : "Suarez Torres",
   "direccion" : "Transv 89 # 45-00","telefono" : 6018903456, "id_acudiente" : 79654112,
   "parentesco" : "Abuelo", "edad" : 7, "pasatiempos" : "Escuchar Musica"}
]

-- Read - Find / Consulta de registros

-- Consultas

-- Igualdad
{parentesco:'Padre'}  

-- Mayor que
{edad:{$gt:6}}


-- uso de comparativos Or

{ $or: [{pasatiempos:'Escuchar Musica'}, {pasatiempos:'Juegos de Mesa' }] }

-- uso de comparativos and
{ $and: [{pasatiempos:'Escuchar Musica'}, {pasatiempos:'Leer' }] }