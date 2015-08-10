# encoding: utf-8
require "logstash/outputs/base"
require "logstash/namespace"

# An sieve output that does nothing.
class LogStash::Outputs::Sieve < LogStash::Outputs::Base
  config_name "sieve"

  public
  def register
  end # def register

  public
  def receive(event)
    return "Event received"
  end # def event
end # class LogStash::Outputs::Sieve
