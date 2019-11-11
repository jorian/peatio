module Peatio
  module Command
    class Inject < Peatio::Command::Base
      class PeatioEvents < Peatio::Command::Base
        option ["-e", "--exchange"], "NAME", "exchange name to inject messages to", default: "peatio.events.ranger"
        def execute
          Peatio::Injectors::PeatioEvents.new.run!(exchange)
        end
      end

      subcommand "peatio_events", "Inject peatio events in mq", PeatioEvents
    end
  end
end