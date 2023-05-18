def decode_char(mcode)
  morsecode = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
                '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
                '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
                '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
                '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
                '--..' => 'Z', '-----' => '0', '.----' => '1', '..---' => '2', '...--' => '3',
                '....-' => '4', '.....' => '5', '-....' => '6', '--...' => '7', '---..' => '8',
                '----.' => '9', '.-.-.-' => '.', '--..--' => ',', '..--..' => '?' }
  morsecode[mcode]
end

def decode_word(mword)
  letters = mword.split
  words = ''
  letters.each do |letter|
    words += decode_char(letter)
  end
  print "#{words} "
end

def decode_message(message)
    words = message.split('  ')
    words.each do |word|
        decode_word(word)
    end
end
decode_message("      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
