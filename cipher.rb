require 'sinatra'
require 'sinatra/reloader'if development?

get '/' do
def caesar_cipher(text, key)
  ciphered_text = []
  text.chars.each do |letter|
    ciphered_letter = letter
    if letter.match(/^[[:alpha:]]$/)
      key.times do
        if ciphered_letter == 'z'
          ciphered_letter = 'a'
        elsif ciphered_letter == 'Z'
          ciphered_letter = 'A'
        else
          ciphered_letter = ciphered_letter.next
        end
      end
    end
    ciphered_text << ciphered_letter
  end
  ciphered_text.join('')
end
    text = params['text']
    key = params['key']
    cipher = caesar_cipher(text.to_s, key.to_i)
    erb :index, :locals => {:text => text, :key => key, :cipher => cipher}
    end 