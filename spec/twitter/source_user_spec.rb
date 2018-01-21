require 'helper'

describe Twitter::SourceUser do

  describe "#==" do
    it "returns true when objects IDs are the same" do
      saved_search = Twitter::SourceUser.new(:id => 1, :name => "foo")
      other = Twitter::SourceUser.new(:id => 1, :name => "bar")
      expect(saved_search == other).to be_truthy
    end
    it "returns false when objects IDs are different" do
      saved_search = Twitter::SourceUser.new(:id => 1)
      other = Twitter::SourceUser.new(:id => 2)
      expect(saved_search == other).to be_falsey
    end
    it "returns false when classes are different" do
      saved_search = Twitter::SourceUser.new(:id => 1)
      other = Twitter::Identity.new(:id => 1)
      expect(saved_search == other).to be_falsey
    end
  end

end
