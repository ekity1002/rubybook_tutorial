UNITS = {m: 1.0, ft: 3.28,  in: 39.37}

def convert_length(length, unit_from: :m, unit_to: :m)
    # m単位に治す
    # 目的単位に治す
    (length / UNITS[unit_from] * UNITS[unit_to]).round(2)
end