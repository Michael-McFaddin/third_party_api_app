class Api::DictionariesController < ApplicationController

  def index
    response = HTTP.get("https://wordsapiv1.p.rapidapi.com/words/incredible/definitions")

    @definitions = response
    render "index.json.jb"
  end

end
