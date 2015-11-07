maxnum=Kernel.pbMessageFreeText(_INTL("Enter a Number"),
                                 _INTL("1337"),
                                 false,6,Graphics.width).to_i
num=rand(maxnum)+1
Kernel.pbMessage("#{num} / #{maxnum}")
Kernel.pbMessage("Edited once")
