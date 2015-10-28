require "spec_helper"

module Nunes
  describe Datadog do
    it "has a version number" do
      expect(Nunes::Datadog::VERSION).not_to be nil
    end
  end
end
