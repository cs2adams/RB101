# exclusive_or.rb

def xor?(xpr1, xpr2)
  !!((xpr1 && !xpr2) || (!xpr1 && xpr2))
end
