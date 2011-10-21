# encoding: utf-8
require "spec_helper"
require "prawn-print"

# These could use more work...

describe Prawn::Print, "#print" do
  it "should work without arguments" do
    pdf = Prawn::Document.new
    lambda { pdf.print }.should_not raise_error
  end
end

describe Prawn::Print, "#autoprint" do
  it "should work without arguments" do
    pdf = Prawn::Document.new
    lambda { pdf.autoprint }.should_not raise_error
  end

  it "should work with an argument" do
    pdf = Prawn::Document.new
    lambda { pdf.autoprint("LaserJet") }.should_not raise_error
  end
end
