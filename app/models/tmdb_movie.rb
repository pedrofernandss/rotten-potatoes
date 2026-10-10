require "themoviedb"

class TmdbMovie
  Tmdb::Api.key(ENV['TMDB_API_KEY'])

  def self.find(keyword)
    begin
      Tmdb::Movie.find(keyword)
    rescue Tmdb::InvalidApiKeyError
      raise "Chave da API inválida"
    end
  end
end