require "yaml"

def load_library(path)
  emoticons = YAML.load_file(path)
  hash = {}
  hash["get_emoticon"] = {}
  hash["get_meaning"] = {}
  emoticons.each { |meaning, signs|
    eng_signs = signs[1]
    jap_signs = signs[1]
  }
end


it "the keys inside the 'get_meaning' hash are the Japanese emoticons" do
      emoticons = ["☜(⌒▽⌒)☞", "(ΘεΘ;)", "(￣ー￣)", "o_O", "(^_-)"]
      emoticons.each do |japanese_emoticon| 
        expect(result['get_meaning'].keys).to include(japanese_emoticon)
      end
    end

    it "the emoticon keys inside the 'get_meaning' hash point to their meanings" do
      emoticons = {
        "☜(⌒▽⌒)☞" => "angel",
        "(ΘεΘ;)" => "bored",
        "o_O" => "surprised",
        "(^_-)" => "wink"
      }
      emoticons.each do |japanese_emoticon,meaning| 
        expect(result['get_meaning'][japanese_emoticon]).to eq(meaning)
      end
    end

    it "the keys inside the 'get_emoticon' hash are the English emoticons" do
      emoticons = ["O:)", ":'(", ";)", ":$"]
      emoticons.each do |english_emoticon| 
        expect(result['get_emoticon'].keys).to include(english_emoticon)
      end
    end

    it "the emoticon keys inside the 'get_emoticon' hash point to their Japanese equivalents" do
      emoticons = {"O:)" => "☜(⌒▽⌒)☞", ":'(" => "(Ｔ▽Ｔ)", ";)" => "(^_-)"}
      emoticons.each do |english_emoticon,japanese_emoticon| 
        expect(result['get_emoticon'][english_emoticon]).to eq(japanese_emoticon)
      end
    end

  end

end


-------------------------
def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

puts load_library("./lib/emoticons.yml")