require "spec_helper"
require "statsd"

module Nunes
  module Datadog
    describe Adapter do
      let(:statsd) { Statsd.new }
      subject { Nunes::Datadog::Adapter.new(statsd) }

      it "is a Nunes::Adapter" do
        expect(subject).to be_a(::Nunes::Adapter)
      end

      it "#increment integrates without error" do
        expect {
          subject.increment("yo", 1)
        }.to_not raise_error
      end

      it "#timing integrates without error" do
        expect {
          subject.timing("lo", 3.1416)
        }.to_not raise_error
      end
    end
  end
end
