require "yaml"

def load_library(path)
  emoticons = YAML.load_file(path)
  hash = {}
  hash["get_emoticon"] = {}
  hash["get_meaning"] = {}
  emoticons
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

puts load_library("./lib/emoticons.yml")