require 'pry'

def languages
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}
end

def reformat_languages(languages)
  # your code here
  newhash = {}
  languages.each do |type, langs|
    langs.each do |lang, data|
      if newhash.has_key? [lang]
        if newhash[lang].has_key? :style
          newhash[lang][:style].push(type)
        end
      else
        langs[lang][:style] = [type]
        newhash[lang] = data
      end
    end
  end
  newhash
end

puts reformat_languages(languages)
