def reformat_languages(languages)
  # your code here
  new_languages = {}
  languagelog=[]
  languages.each do |style1, prog_and_elements|
    prog_and_elements.each do |program, elements|
      if languagelog.include?(program.to_s)
        new_languages[program][:style].push(style1)
      else
        languagelog.push(program.to_s)
        new_languages[program]=elements.merge({style: style1})
      end
    end
  end
  new_languages
end
