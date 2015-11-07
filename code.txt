maxnum=Kernel.pbMessageFreeText(_INTL("Enter a Number"),
                                 _INTL("1337"),
                                 false,6,Graphics.width)
num=rand(maxnum)
Kernel.pbMessage("#{num} / #{maxnum}")
