class SearchData
  attr_reader :totalHits

  def initialize(data)
    @totalHits = data[:totalHits]
  end
end