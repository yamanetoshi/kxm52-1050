#!/usr/bin/env ruby

require 'rubygems'
require 'serialport'

port_str = "/dev/ttyACM0"
baud_rate = 115200
data_bits = 8
stop_bits = 1
parity = SerialPort::NONE

sp = SerialPort.new(port_str, baud_rate, data_bits, stop_bits, parity)

while true do
  while (i = sp.gets.chomp) do
    puts i
  end
end

sp.close
