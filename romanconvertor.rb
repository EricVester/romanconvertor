TO_ROMAN = {
    1000 => 'M',
    900 => 'CM',
    500 => 'D',
    400 => 'CD',
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
    9 => 'IX',
    5 => 'V',
    4 => 'IV',
    1 => 'I'
}


def fromRoman(romanNumber)
    # Replace the following line with the actual code!
    total = 0
    x = 0
            while x<romanNumber.length
                if  romanNumber[x]!="V" && romanNumber[x]!="I"   && romanNumber[x]!="C" &&
                    romanNumber[x]!="L" && romanNumber[x]!="X" && romanNumber[x]!="D" && romanNumber[x]!="M"
                    raise TypeError
                elsif romanNumber[x]=="C" && romanNumber[x+1]=="M"
                    total += 900
                    x+= 2
                elsif romanNumber[x]=="X" && romanNumber[x+1]=="M"
                    total+=990
                    x+=2
                elsif romanNumber[x]=="M"
                    total+=1000
                    x+=1
                elsif romanNumber[x]=="C" && romanNumber[x+1]=="D"
                    total+=400
                    x+=2
                elsif romanNumber[x]=="D"
                    total+=500
                    x+=1
                elsif romanNumber[x]=="X" && romanNumber[x+1]=="C"
                    total+=90
                    x+=2
                elsif romanNumber[x]=="C"
                    total+=100
                    x+=1
                elsif romanNumber[x]=="L"
                    total+=50
                    x+=1
                elsif romanNumber[x]=="X" && romanNumber[x+1]=="L"
                    total+=40
                    x+=2
                elsif romanNumber[x]=="X"
                    total+=10
                    x+=1
                elsif romanNumber[x]=="I" && romanNumber[x]=="X"
                    total+=9
                    x+=2
                elsif romanNumber[x]=="V"
                    total+=5
                    x+=1
                elsif romanNumber[x]=="I" && romanNumber[x+1]=="V"
                    total+=4
                    x+=2
                elsif romanNumber[x]=="I"
                    total+=1
                    x+=1
                end
            end
            return total
    end


def toRoman(arabicNumber)
    # Replace the following line with the actual code!
    if arabicNumber > 3999 or arabicNumber < 1
        raise RangeError
    end

    roman_number = ""

    while arabicNumber >0
        TO_ROMAN.each do |key,value|
            if arabicNumber >= key
                arabicNumber = arabicNumber-key
                roman_number = roman_number+ value
            end
        end
    end
    return  roman_number
end