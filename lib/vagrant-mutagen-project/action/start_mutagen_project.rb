require_relative '../mutagen'
require_relative '../ssh_config'

module VagrantPlugins
  module MutagenProject
    module Action
      class StartMutagenProject
        include Mutagen
        include SSHConfig

        def initialize(app, env)
          @app = app
          @machine = env[:machine]
          @ui = env[:ui]
        end

        def call(env)
          if enabled?
            add_machine_to_ssh_config
            start_project
          end

          @app.call(env)
        end
      end
    end
  end
end
