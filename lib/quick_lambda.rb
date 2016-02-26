require "quick_lambda/version"

class QuickLambda
  Cell = Class.new

  def initialize
    @expression = [Cell]
  end

  def to_proc
    Proc.new {|*args| self.call(*args)}
  end

  def call(*args)
    arg_pos = -1
    expr =
      @expression.map do |x|
        if x == Cell
          arg_pos += 1
          args[arg_pos]
        else
          x
        end
      end

    ret = expr[0]
    i = 1

    while i < expr.length
      start = i
      tmp   = ret

      begin
        i += 1
        tmp = ret.send(*expr[start..i])
      rescue ArgumentError => e
        retry if e.message =~ /wrong number of arguments/

        e.raise
      end

      i += 1
      ret = tmp
    end

    ret
  end

  def method_missing(*args)
    @expression += args.map{|x| x.is_a?(self.class) ? Cell : x}

    self
  end
end

def _
  QuickLambda.new
end
