
require File.expand_path('spec/helper')
require 'DASP'
require 'Bacon_Colored'
require 'pry'
require 'Exit_0'

def BIN cmd, *args
  Exit_0("bundle exec DASP #{cmd}", *args)
end

def capture_stdout
  orig = $stdout
  str = StringIO.new
  $stdout = str
  yield
  str.rewind
  str.readlines.join("\n")
ensure 
  $stdout = orig
end


# ======== Include the tests.
if ARGV.size > 1 && ARGV[1, ARGV.size - 1].detect { |a| File.exists?(a) }
  # Do nothing. Bacon grabs the file.
else
  Dir.glob('spec/tests/*.rb').each { |file|
    require File.expand_path(file.sub('.rb', '')) if File.file?(file)
  }
end
