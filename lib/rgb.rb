def to_hex(r,g,b)
    [r,g,b].sum('#') do |s|
      s.to_s(16).rjust(2,'0')
    end
end

def to_ints(s)
    r = s[1..2]
    g = s[3..4]
    b = s[5..6]
    ints = []
    [r,g,b].map do |s|
        s.hex
    end
end