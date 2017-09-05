class Tarea < ApplicationRecord
has_many :comentarios
  #attr_accessible :activo, :descripcion, :prioridad, :titulo
#Validaciones de título
validates :titulo, :presence => {:message => "Usted debe ingresar un título"}, length: {minimum: 2, maximum: 50, :message => "El título debe tener entre 2 y 50 caracteres"}
#Validaciones de descripción
validates :descripcion, :presence => {:message => "Usted debe ingresar una descripción"}, length: {minimum: 2, maximum: 4000, :message => "La descripción debe tener entre 2 y 4000 caracteres"}
#Validaciones de prioridad
validates :prioridad, :presence => {:message => "Usted debe ingresar una prioridad"}, :numericality => {:only_integer => true, :message => "La prioridad debe ser numérica"}
end
