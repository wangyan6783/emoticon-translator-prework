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

def get_japanese_emoticon(path, emoticon)
  emoticons = load_library(path)
  translator = emoticons["get_emoticon"]
  if translator[emoticon]
    translator[emoticon]
  else
    puts "Sorry, that emoticon was not found"
  end
end

# describe "#get_japanese_emoticon" do

#   it "accepts two arguments, the YAML file path and the emoticon" do
#     expect { get_japanese_emoticon("./lib/emoticons.yml", ":)") }.to_not raise_error
#   end

#   it "calls on #load_library and gives it the argument of the file path" do
#     emoticon_hash = load_library("./lib/emoticons.yml")

#     file_path = "./lib/emoticons.yml"
#     expect(self).to receive(:load_library).with(file_path).and_return(emoticon_hash)
#     answer = get_japanese_emoticon("./lib/emoticons.yml", "=D")
#   end

#   it "returns the Japanese equivalent of an English grinning" do
#     expect(get_japanese_emoticon("./lib/emoticons.yml", "=D")).to eq("(￣ー￣)")
#   end

#   it "returns the Japanese equivalent of an English happy" do
#     expect(get_japanese_emoticon("./lib/emoticons.yml", ":)")).to eq("(＾ｖ＾)")
#   end

#   it "returns the Japanese equivalent of an English sad" do
#     expect(get_japanese_emoticon("./lib/emoticons.yml", ":'(")).to eq("(Ｔ▽Ｔ)")
#   end

#   it "returns an apology message if the argument is not a known emoticon" do
#     sorry_message = "Sorry, that emoticon was not found"
#     expect(get_japanese_emoticon("./lib/emoticons.yml", "$#$%{}*")).to eq(sorry_message)
#   end

# end


# ---------------------
def get_english_meaning
  # code goes here
end

# puts load_library("./lib/emoticons.yml")