require 'spec_helper'

describe "Movie Pages" do
  before {@movie = Movie.create()}

  describe "edit pages" do
    before {visit movie_edit_path(@movie)}
    it "should have a director field" do

    end
  end

  describe "details pages" do
    before {visit movie_path(@movie)}
    it "should have a 'Find Movies With Same Director' link" do
      expect(page).to have_selector(:link_or_button, 'Find Movies With Same Director')
    end
  end
end
