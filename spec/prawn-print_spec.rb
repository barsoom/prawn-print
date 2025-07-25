# encoding: utf-8
require "prawn-print"

# These could use more work...

RSpec.describe Prawn::Print do
  subject(:pdf) { Prawn::Document.new }

  describe "#print" do
    it "should work without arguments" do
      expect {
        pdf.print
      }.not_to raise_error
    end
  end

  describe "#autoprint" do
    it "should work without arguments" do
      expect {
        pdf.autoprint
      }.not_to raise_error
    end

    it "should work with an argument" do
      expect {
        pdf.autoprint("LaserJet")
      }.not_to raise_error
    end
  end
end
