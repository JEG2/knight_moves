class String 
  def offset int
    (self[-1,1].ord()+int).chr
  end
end