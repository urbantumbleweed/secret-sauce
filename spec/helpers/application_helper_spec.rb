require "spec_helper"
include Rails.application.routes.url_helpers

describe ApplicationHelper do
  describe "path helper" do
    it "is awesome" do
      helper.track_path_helper(User.first).should == "/editorial/editor-in-chief/editorial_leadership"
    end
  end
end