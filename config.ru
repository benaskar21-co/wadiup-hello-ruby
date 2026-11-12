# No Dockerfile: Wadiup detects the Gemfile and runs `bundle exec rackup` on PORT.
require "socket"

run lambda { |_env|
  [200, { "content-type" => "text/plain; charset=utf-8" },
   ["Hello from Wadiup · Ruby #{RUBY_VERSION} · #{Socket.gethostname}\n"]]
}
