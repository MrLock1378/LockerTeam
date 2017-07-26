 local function secure(msg, matches)
local LM10 = 374734484 -- ایدی عددی سودو رو بزارین
function get_id(arg, data)
if matches[1] == "share" and msg.from.id == tonumber(LM10) or matches[1] == "شر کن" and msg.from.id == tonumber(LM10) then
if data.last_name_ then
    tdcli.sendContact(arg.chat_id, msg.id_, 0, 1, nil, data.phone_number_, data.first_name_, data.last_name_ , data.id_, dl_cb, nil )
else
tdcli.sendContact(arg.chat_id, msg.id_, 0, 1, nil, data.phone_number_, data.first_name_, '' , data.id_, dl_cb, nil )
end
end
 end
tdcli_function({ ID = 'GetMe'}, get_id, {chat_id=msg.chat_id_})
end

return {
patterns ={
"^[!#/](share)$",
"^(share)$",
"^(شر کن)$",
},
run = secure
}
