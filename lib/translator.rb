require "yaml"

def load_library(path)
  emotions = YAML.load_file(path)
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

load_library(emotions.yml)