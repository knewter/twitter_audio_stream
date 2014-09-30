defmodule TwitterAudioStream do
  use Application

  # See http://elixir-lang.org/docs/stable/elixir/Application.html
  # for more information on OTP Applications
  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    ExTwitter.configure(
       consumer_key: System.get_env("TWITTER_CONSUMER_KEY"),
       consumer_secret: System.get_env("TWITTER_CONSUMER_SECRET"),
       access_token: System.get_env("TWITTER_ACCESS_TOKEN"),
       access_token_secret: System.get_env("TWITTER_ACCESS_SECRET")
    )

    children = [
      # Define workers and child supervisors to be supervised
      # worker(Foo.Worker, [arg1, arg2, arg3])
    ]

    # See http://elixir-lang.org/docs/stable/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: TwitterAudioStream.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
