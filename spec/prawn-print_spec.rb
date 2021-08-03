# encoding: utf-8
require "spec_helper"
require "prawn-print"

# These could use more work...

describe Prawn::Print, "#print" do
  it "should work without arguments" do
    pdf = Prawn::Document.new
    expect { pdf.print }.not_to raise_error
  end
end

describe Prawn::Print, "#autoprint" do
  it "should work without arguments" do
    pdf = Prawn::Document.new
    expect { pdf.autoprint }.not_to raise_error
  end

  it "should work with an argument" do
    pdf = Prawn::Document.new
    expect { pdf.autoprint("LaserJet") }.not_to raise_error
  end
end
