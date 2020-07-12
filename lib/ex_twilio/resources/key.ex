defmodule ExTwilio.Account.Key do
  @moduledoc """
  Represents API Keys resource in the Twilio API.

  - [Twilio docs](https://www.twilio.com/docs/iam/keys/api-key)
  """

  defstruct sid: nil,
            secret: nil,
            friendly_name: nil,
            date_created: nil,
            date_updated: nil

  use ExTwilio.Resource, import: [:stream, :all, :create]

  def parents, do: [:account]
end
