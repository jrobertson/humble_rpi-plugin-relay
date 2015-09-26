#!/usr/bin/env ruby

# file: humble_rpi-plugin-relay.rb

require 'rpi'


class HumbleRPiPluginRelay

  def initialize(settings: {}, variables: {})

    @gpio_pins = settings[:pins]
    
  end
  
  def on_relay_message(message)
            
    r = message.match(/(\d+)\s*(on|off)\s*([\d\.]+)?/)

    if r then
      index, state, seconds, raw_duration = r.captures
      duration = raw_duration ? raw_duration.to_f : nil

      a = case state

        when 'on'
          [:on, duration]

        when 'off'
          [:off]

      end

      @relay[index.to_i].send(*a)
    end
  end

  def start()

    @relay = RPi.new(@gpio_pins).pins  if @gpio_pins.any?    
    
  end
  
  alias on_start start
  
  def on_exit()
    @relay.on_exit
  end
    
end
