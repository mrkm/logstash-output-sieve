# encoding: utf-8
require "logstash/outputs/base"
require "logstash/namespace"
require 'logger'


# An sieve output that does nothing.
class LogStash::Outputs::Sieve < LogStash::Outputs::Base
  config_name "sieve"

  public
  def register
    @counter = 0
    log = Logger.new("/home/lafla/plugin_log")
    log.info('register')
    log.info(@counter)
  end # def register

  public
  def receive(event)
    log = Logger.new("/home/lafla/plugin_log")
    log.info('receive')
    log.info(event)
    @counter += 1
    log.info(@counter)
    return "Event received"
  end # def event
end # class LogStash::Outputs::Sieve
