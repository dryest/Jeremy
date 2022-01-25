function start (song)
			print("GET OUT OF MY HEAD MAN")
end

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.05 then
        setProperty('health', health- 0.02);
    end
end


function update(elapsed)

    if difficulty == 2 and curStep > 10 then
        if spinLength < 16 then
            spinLength = spinLength + 0.2
        end


        local currentBeat = (songPos / 1000)*(bpm/60)
	for i=0,7,1 do
            local receptor = _G['receptor_'..i]
            receptor.angle = (spinLength / 7) * -math.sin((currentBeat + i*0.25) * math.pi)
	    receptor.x = receptor.defaultX + spinLength * math.sin((currentBeat + i*0.25) * math.pi)
	    receptor.y = receptor.defaultY + spinLength * math.cos((currentBeat + i*0.25) * math.pi)
        end
    end
end

