class Estudante < ActiveRecord::Base
  validates_presence_of :nome, :on => :create, :message => "Você deve informar o nome"

end
