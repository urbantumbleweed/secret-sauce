require 'spec_helper'

describe User do
  describe "given a user" do
    before do
      @user = User.create(first_name: 'Lena', last_name: 'Niznik', email: 'lena2@example.com', password: 'password')
    end
    it "should have the right name" do
      @user.name.should == "Lena Niznik"
    end 

    describe "who is a photographer and has done no pages" do
      before do
        @position = Position.find_by_name('Photographer')
        Status.create(user: @user, position: @position)
      end
      it "should be a photographer" do
        @user.position.name.should == 'Photographer'
      end
      it "last page should be nil" do
        @user.last_page.should === nil
      end

      it "current page should be the position's first page" do
        @user.current_page.should == @position.pages.first
      end

      describe "after viewing a photographer page" do
        before do
          @user.update_completion(@position, @position.pages.first)
        end
        it "last page should be nil" do
          @user.last_page.should === @position.pages.first
        end
        
        it "current page should be the status's last page" do
          @user.current_page.should == @user.status.pages.last
        end
      end

      describe "after viewing all the photographer pages" do
        before do
          @position.pages.all.each do |page|
            @user.update_completion(@position, page)
          end
        end
        it "last page should be nil" do
          @user.last_page.should === @position.pages.last
        end
        
        it "should have finished the tracl" do
          puts @user.status.pages
          puts @user.position.pages
          puts @user.status.pages =~ @user.position.pages
          @user.should be_finished_track
        end

        it "current page should be the status's last page" do
          @user.current_page.should == @position.pages.first
        end

      end

      describe "after viewing an writer page" do
        before do
          @user.update_completion(Position.find_by_name('Writer'), Position.find_by_name("Writer").pages.first)
        end
        it "last page should be nil" do
          @user.last_page.should === nil
        end

        it "current page should be the position's first page" do
          @user.current_page.should == @position.pages.first
        end
      end

    end

 
  end


end
