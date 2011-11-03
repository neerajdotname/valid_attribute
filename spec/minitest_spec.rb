require 'spec_helper'
require 'minitest/spec'
require 'valid_attribute/minitest'

describe 'MiniTest::Spec' do
  it 'recognizes have_valid matcher' do
    spec = Class.new(MiniTest::Spec).new("A spec")

    spec.have_valid(:name).should be_instance_of(ValidAttribute::Matcher)
  end
end

