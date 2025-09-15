-- server.lua
local webhook = "YOUR_DISCORD_WEBHOOK_URL_HERE" -- Replace with your actual Discord webhook URL

function SendDiscordEmbed()
    local embed = {
        {
            ["title"] = "FiveM Server Medicine Guide",
            ["description"] = "Below is a list of medicines available on our server, including their names and effects.",
            ["color"] = 3447003,
            ["fields"] = {
                { ["name"] = "Tylacare", ["value"] = "General pain reliever and fever reducer", ["inline"] = true },
                { ["name"] = "Flurimax", ["value"] = "Antiviral medication for treating flu", ["inline"] = true },
                { ["name"] = "Dayrelief", ["value"] = "Cold & flu relief medication", ["inline"] = true },
                { ["name"] = "GutGuard", ["value"] = "Relief for stomach discomfort and nausea", ["inline"] = true },
                { ["name"] = "Stopdiaril", ["value"] = "Anti-diarrheal medication", ["inline"] = true },
                { ["name"] = "Triptaril", ["value"] = "Migraine relief medication", ["inline"] = true },
                { ["name"] = "Ibrofenix", ["value"] = "Pain reliever and anti-inflammatory medication", ["inline"] = true },
                { ["name"] = "AllerBlock", ["value"] = "Allergy relief medication", ["inline"] = true },
                { ["name"] = "Clearairin", ["value"] = "24-hour allergy relief medication", ["inline"] = true },
                { ["name"] = "Motionex", ["value"] = "Motion sickness relief medication", ["inline"] = true },
                { ["name"] = "Meklirin", ["value"] = "Treats dizziness and vertigo", ["inline"] = true },
                { ["name"] = "Vironix", ["value"] = "Antiviral medication for COVID-19", ["inline"] = true },
                { ["name"] = "Vaxora", ["value"] = "Provides immunity against COVID-19", ["inline"] = true },
                { ["name"] = "Cycurex", ["value"] = "Antiviral medication", ["inline"] = true },
                { ["name"] = "PainAway", ["value"] = "Pain reliever and fever reducer", ["inline"] = true },
                { ["name"] = "ZithroMed", ["value"] = "Antibiotic medication", ["inline"] = true },
                { ["name"] = "Doxallin", ["value"] = "Antibiotic medication", ["inline"] = true },
                { ["name"] = "Loprexin", ["value"] = "Anti-diarrheal medication", ["inline"] = true }
            },
            ["footer"] = {
                ["text"] = "FiveM Server | Updated September 2025"
            },
            ["timestamp"] = "2025-09-10T14:57:00.000Z"
        }
    }

    PerformHttpRequest(webhook, function(err, text, headers)
        if err == 200 then
            print("Embed sent to Discord successfully!")
        else
            print("Failed to send embed to Discord: " .. err)
        end
    end, "POST", json.encode({embeds = embed}), {["Content-Type"] = "application/json"})
end

-- Example command to trigger the embed
RegisterCommand("postwebhook", function(source, args, rawCommand)  -- command to post the webhook
    SendDiscordEmbed()
end, true) -- Set to true for admin-only access