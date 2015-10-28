require "nunes"

module Nunes
  module Datadog
    class Adapter < ::Nunes::Adapter
      def increment(metric, value = 1)
        @client.count prepare(metric), value
      end
    end
  end
end
