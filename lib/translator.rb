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
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(path, emoticon)
  # code goes here
end

describe "#get_english_meaning" do

  it "accepts two arguments, the YAML file path and the emoticon" do
    expect { get_english_meaning("./lib/emoticons.yml", "(Ｔ▽Ｔ)") }.to_not raise_error
  end

  it "calls on #load_library and gives it the argument of the file path" do
    emoticon_hash = load_library("./lib/emoticons.yml")

    file_path = "./lib/emoticons.yml"
    expect(self).to receive(:load_library).with(file_path).and_return(emoticon_hash)
    answer = get_english_meaning("./lib/emoticons.yml", "=D")
  end

  it "returns the English meaning of the Japanese emoticon (＾ｖ＾)" do
    expect(get_english_meaning("./lib/emoticons.yml", "(＾ｖ＾)")).to eq("happy")
  end

  it "returns the English meaning of the Japanese emoticon (￣ー￣)" do
    expect(get_english_meaning("./lib/emoticons.yml", "(￣ー￣)")).to eq("grinning")
  end

  it "returns the English meaning of the Japanese emoticon (Ｔ▽Ｔ)" do
    expect(get_english_meaning("./lib/emoticons.yml", "(Ｔ▽Ｔ)")).to eq("sad")
  end

  it "returns an apology message if the argument is not a known emoticon" do
    sorry_message = "Sorry, that emoticon was not found"
    expect(get_english_meaning("./lib/emoticons.yml", "$#$%{}*")).to eq(sorry_message)
  end

end


# puts load_library("./lib/emoticons.yml")