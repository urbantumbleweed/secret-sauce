require 'spec_helper'

describe Position do
  describe "given a position" do
    before do
      @position = Position.first
      @pages = @position.pages
    end
    describe "#next_page works" do
      describe "when the user has not seen any pages" do
        it "should return the first page of the position" do
          @position.next_page(nil).should == @position.pages[0]
        end
      end
      describe "when the user has seen some pages" do
        it "should return the next consecutive page of the position" do
          @position.next_page(@pages[3]).should == @pages[4]
        end
      end
      describe "when the user has seen all of the pages" do
        it "should return the first page of the position" do
          @position.next_page(@pages.last).should == nil
        end
      end
    end
  end
  describe "#track works" do
    describe "when a user is an national contributor" do
      before do
        @position = Position.find_by_name("National Contributor")
        @editorial_page = Page.find_by_name("Add Video")
        @photo_page = Page.find_by_name("Flickr")
      end
      it "editorial page should return 'editorial'" do
        @position.track(@editorial_page).should == 'editorial'
      end
      it "editorial page should return 'phot'" do
        @position.track(@photo_page).should == 'photo'
      end
    end
  end

end


  