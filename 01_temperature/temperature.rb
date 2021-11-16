def ftoc(ftemp)
    ctemp = (ftemp.to_f - 32) * 5 / 9
end

def ctof(ctemp)
    ftemp = ctemp.to_f * 9 / 5 + 32
end