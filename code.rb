=begin
maxnum=Kernel.pbMessageFreeText(_INTL("Enter a Number"),
                                 _INTL("1337"),
                                 false,6,Graphics.width).to_i
num=rand(maxnum)+1
Kernel.pbMessage("#{num} / #{maxnum}")
Kernel.pbMessage("Edited once")
=end
poke=$Trainer.party[0]#pbChoosePokemon(1,6)
pid = rand(65536)
pid |= (pid << 16)
pid &= 0xFFFFFFF8 
pid |= rand(8)
pid ^= $Trainer.id
#pid -= pid%25
poke.personalID=pid
poke.calcStats
