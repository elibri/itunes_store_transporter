require "itunes/store/transporter/command"

module ITunes
  module Store
    module Transporter
      module Command            # :nodoc: all

        ## 
        # Return xml with pending iTunes connect tickets.
        #
        class Tickets < ModeWithoutShortname

          protected
          def mode
            "queryTickets"
          end

          def handle_success(stdout_lines, stderr_lines, options)
            stdout_lines.join("\n")
          end
        end
      end
    end
  end
end
