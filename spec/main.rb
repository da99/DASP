
require File.expand_path('spec/helper')
require 'DASP'
require 'Bacon_Colored'
require 'pry'
require 'Exit_Zero'

def BIN cmd
  Exit_Zero("bundle exec DASP #{cmd}")
end



# ======== Include the tests.
if ARGV.size > 1 && ARGV[1, ARGV.size - 1].detect { |a| File.exists?(a) }
  # Do nothing. Bacon grabs the file.
else
  Dir.glob('spec/tests/*.rb').each { |file|
    require File.expand_path(file.sub('.rb', '')) if File.file?(file)
  }
end
