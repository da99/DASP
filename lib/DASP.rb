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

  def print
    super t
  end

  def puts
    super t
  end

  private # =======================================

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

