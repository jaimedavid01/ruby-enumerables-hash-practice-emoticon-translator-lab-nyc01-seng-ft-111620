# require modules here
require 'pry'
require "yaml"

emoticons = YAML.load_file('lib/emoticons.yml')


def load_library(path)
  # code goes here
<<<<<<< HEAD
  emo = {}
  YAML.load_file(path).each do |key,value|
    emo[key] = {:english => value[0], :japanese => value[1]}
  end
  emo
end


def get_japanese_emoticon(path, emoticon)
  # code goes here
load_library(path).each do |key, value|
   if value[:english] == emoticon
     return value[:japanese]
   end
 end

  return  "Sorry, that emoticon was not found"
  end
  
def get_english_meaning(path, emoticon)
  # code goes here
  load_library(path).each do |key, value|
   if value[:japanese] == emoticon
     return key
   end
 end

  return  "Sorry, that emoticon was not found"
  end
  
=======
#   emoti_hash = {
#     "get_meaning" => {}, "get_emoticon" => {}
#   }
#   emoticons = YAML.load_file(path)
  
  
# emoticons.each do |meaning, emo_array|
#     eng = emo_array[0]
#     jap = emo_array[1]
      
#       emoti_hash["get_meaning"][jap] = meaning
#       emoti_hash["get_emoticon"][eng] = jap
#     end
#   puts emoti_hash
# end
emoticons = {"get_meaning" => {}, "get_emoticon" => {}}

YAML.load_file(path).each do |meaning, describe|
  #eng, jan = describe
  eng = emo_array[0]
   jap = emo_array[1]
     emoticons["get_meaning"][jan] = meaning
     emoticons["get_emoticon"][eng] = jan
  end
  emoticons
end

def get_japanese_emoticon(path, emoticon)
  # code goes here
  emoticons = load_library(path)
  result = emoticons["get_emoticon"][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end
  
def get_english_meaning(path, emoticon)
  # code goes here
  emoticons = load_library(path)
  result = emoticons["get_meaning"][emoticon] #the same above but change get_meaning
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end
>>>>>>> a30cfcd48759e7adb25dd4cd357a21ed155a2ddd
