do

local function pre_process(msg)
    
    local hash = 'mate:'..msg.to.id
    if redis:get(hash) and msg.fwd_from and not is_momod(msg)  then
	  chat_del_user('chat#id'..msg.to.id,'user#id'..msg.from.id, ok_cb, false)
            return ""
        end
    
        return msg
    end

  


local function run(msg, matches)
    chat_id = msg.to.id
    
    if matches[1] == 'قفل' and is_momod(msg) then
      
            
                    local hash = 'mate:'..msg.to.id
                    redis:set(hash, true)
                    return ""
  elseif matches[1] == 'بازکردن' and is_momod(msg) then
                    local hash = 'mate:'..msg.to.id
                    redis:del(hash)
                    return ""
					end
					if matches[1] == 'وضعیت' then
                    local hash = 'mate:'..msg.to.id
                    if redis:get(hash) then
                    return "🔐 قفل فوروارد فعال است . 🔒"
					else 
					return "🔐 قفل فوروارد باز است . 🔓"

end
end
end
return {
    patterns = {
        '^(قفل) فوروارد$',
        '^(بازکردن) فوروارد$',
		'^فوروارد (وضعیت)$',
    },
    run = run,
    pre_process = pre_process
}
end