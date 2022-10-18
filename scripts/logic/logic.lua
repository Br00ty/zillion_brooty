function floppies()
    local count = Tracker:ProviderCountForCode("floppy_req")
    local amt = Tracker:ProviderCountForCode("floppy")
    return (amt >= count)
end

function jump2()
    local opa = Tracker:ProviderCountForCode("opas")
    local opl = Tracker:ProviderCountForCode("opa_level")
    local lvl = (1 + math.floor((opa / opl)))
    if (has("jump_vanilla")) then
        return (
            (has("jj") and (lvl >= 1)) or
            (has("ap") and (lvl >= 1)) or
            (has("ch") and (lvl >= 5))
        )
    elseif (has("jump_balanced")) then
        return (
            (has("jj") and (lvl >= 2)) or
            (has("ap") and (lvl >= 1)) or
            (has("ch") and (lvl >= 4))
        )
    elseif (has("jump_low")) then
        return (
            (has("jj") and (lvl >= 3)) or
            (has("ap") and (lvl >= 2)) or
            (has("ch") and (lvl >= 5))
        )
    elseif (has("jump_restrictive")) then
        return (
            (has("jj") and (lvl >= 5)) or
            (has("ap") and (lvl >= 3)) or
            (has("ch") and (lvl >= 8))
        )
    end
    return false
end

function jump3()
    local opa = Tracker:ProviderCountForCode("opas")
    local opl = Tracker:ProviderCountForCode("opa_level")
    local lvl = (1 + math.floor((opa / opl)))
    if (has("jump_vanilla")) then
        return (
            (has("jj") and (lvl >= 5)) or
            (has("ap") and (lvl >= 1)) or
            (has("ch") and (lvl >= 7))
        )
    elseif (has("jump_balanced")) then
        return (
            (has("jj") and (lvl >= 5)) or
            (has("ap") and (lvl >= 3)) or
            (has("ch") and (lvl >= 7))
        )
    elseif (has("jump_low")) then
        return (
            (has("jj") and (lvl >= 6)) or
            (has("ap") and (lvl >= 2)) or
            (has("ch") and (lvl >= 8))
        )
    elseif (has("jump_restrictive")) then
        return (
            (has("ap") and (lvl >= 6))
        )
    end
    return false
end

function gun2()
    if (has("gun_vanilla")) then
        return (
            (has("jj") and (Tracker:ProviderCountForCode("gun") >= 1)) or
            (has("ap") and (Tracker:ProviderCountForCode("gun") >= 1)) or
            has("ch")
        )
    elseif (has("gun_balanced")) then
        return (
            (has("jj") and (Tracker:ProviderCountForCode("gun") >= 1)) or
            (has("ap") and (Tracker:ProviderCountForCode("gun") >= 2)) or
            has("ch")
        )
    elseif (has("gun_low")) then
        return (
            (has("jj") and (Tracker:ProviderCountForCode("gun") >= 2)) or
            (has("ap") and (Tracker:ProviderCountForCode("gun") >= 4)) or
            (has("ch") and (Tracker:ProviderCountForCode("gun") >= 1))
        )
    elseif (has("gun_restrictive")) then
        return (
            (has("jj") and (Tracker:ProviderCountForCode("gun") >= 2)) or
            (has("ap") and (Tracker:ProviderCountForCode("gun") >= 4)) or
            (has("ch") and (Tracker:ProviderCountForCode("gun") >= 1))
        )
    end
    return false
end

function gun3()
    if (has("jump_vanilla")) then
        return (
            (has("jj") and (Tracker:ProviderCountForCode("gun") >= 2)) or
            (has("ap") and (Tracker:ProviderCountForCode("gun") >= 1)) or
            has("ch")
        )
    elseif (has("jump_balanced")) then
        return (
            (has("jj") and (Tracker:ProviderCountForCode("gun") >= 3)) or
            (has("ap") and (Tracker:ProviderCountForCode("gun") >= 4)) or
            (has("ch") and (Tracker:ProviderCountForCode("gun") >= 2))
        )
    elseif (has("jump_low")) then
        return (
            (has("jj") and (Tracker:ProviderCountForCode("gun") >= 5)) or
            (has("ap") and (Tracker:ProviderCountForCode("gun") >= 6)) or
            (has("ch") and (Tracker:ProviderCountForCode("gun") >= 3))
        )
    elseif (has("jump_restrictive")) then
        return (
            (has("ch") and (Tracker:ProviderCountForCode("gun") >= 3))
        )
    end
    return false
end