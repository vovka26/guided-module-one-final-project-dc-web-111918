require_relative "../config/environment.rb"

require "spec_helper"

describe "Cli" do
  # RSpec::Mocks.configuration.allow_message_expectations_on_nil
  let(:cli) {Cli.new}

  it "sets user's input to user_name attribute" do
    allow($stdin).to receive(:gets).and_return('user name')
    cli.user_name = $stdin.gets
    expect(cli.user_name).to eq("user name")
  end


end
