require "yaml"

def load_library(path)
  emoticons = YAML.load_file(path)
  hash = {}
  hash["get_emoticon"] = {}
  hash["get_meaning"] = {}
  emoticons.each { |meaning, signs|
    eng_signs = signs[0]
    jap_signs = signs[1]
    hash["get_meaning"][jap_signs] = meaning
    hash["get_emoticon"][eng_signs] = jap_signs
  }
  hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

puts load_library("./lib/emoticons.yml")