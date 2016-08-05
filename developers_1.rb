#!/usr/bin/env ruby
require 'rubygems'
require 'my_obfuscate'


obfuscator = MyObfuscate.new({
  :companies => {
    :name                      => { :type => :lorem, number: 4 }
  }

})
obfuscator.fail_on_unspecified_columns = false # if you want it to require every column in the table to be in the above definition
obfuscator.globally_kept_columns = %w[id created_at updated_at] # if you set fail_on_unspecified_columns, you may want this as well
obfuscator.obfuscate(STDIN, STDOUT)
