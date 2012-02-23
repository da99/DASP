require 'DASP/version'

class DASP
  
  attr_reader :t, :args

  def initialize target, *args
    @t = target
    @args = args.flatten
  end

  def uniq
    t.uniq
  end
  
  def split_lines
    t
    .gsub("\r", '')
    .split("\n")
    .reject { |s| s.strip.empty? }
  end
  
  def map
    t.map( &(grab.to_sym) )
  end

  def contains 
    pattern = grab
    t.select { |s| s[ pattern ] }
  end

  def index
    t[ Integer(grab) ]
  end
  
  def line
    t[ Integer(grab) - 1 ]
  end

  def print
    super lookup(t)
  end

  def puts
    super lookup(t)
  end

  def cron_log
    "/var/log/syslog"
  end

  def read
    raise ArgumentError, "Not a file: #{t}" unless File.file?(t)
    File.read t
  end

  private # =======================================

  def lookup val, must_exist = false
    case val
    when 'icons_dir'
      "/usr/share/icons/Humanity/places/64"
    else
      raise ArgumentError, "Unknown lookup value: #{val.inspect}" if must_exist
      val
    end
  end

  def grab
    args.shift
  end

  def update val
    @t = val
  end

  def update_using cmd
    @t = public_send(cmd)
  end

end # === DASP

