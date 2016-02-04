class Booklist < ActiveRecord::Base
  attr_accessible :author, :pages, :title, :year
end
