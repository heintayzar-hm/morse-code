# @param {String[]} words
# @return {Integer}
def morse_to_word (morse_code)
   actual_morse_codes = {
  ".-" => "a",
  "-..." => "b",
  "-.-." => "c",
  "-.." => "d",
  "." => "e",
  "..-." => "f",
  "--." => "g",
  "...." => "h",
  ".." => "i",
  ".---" => "j",
  "-.-" => "k",
  ".-.." => "l",
  "--" => "m",
  "-." => "n",
  "---" => "o",
  ".--." => "p",
  "--.-" => "q",
  ".-." => "r",
  "..." => "s",
  "-" => "t",
  "..-" => "u",
  "...-" => "v",
  ".--" => "w",
  "-..-" => "x",
  "-.--" => "y",
  "--.." => "z",
  ".----" => "1",
  "..---" => "2",
  "...--" => "3",
  "....-" => "4",
  "....." => "5",
  "-...." => "6",
  "--..." => "7",
  "---.." => "8",
  "----." => "9",
  "-----" => "0"
}
  output = ""
  morse_code.split(' ').each do |code|
    output += actual_morse_codes[code]
   end
  return output
end
def morse_to_words(morse_codes)
  output = ''
  morse_codes.split("  ").each do |morse_code|
   output += morse_to_word(morse_code)
    output += " "
  end
  return output
end

print morse_to_words(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
