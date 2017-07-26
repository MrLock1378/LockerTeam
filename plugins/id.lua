function run(msg,matches)

 if matches[1] == 'id' or 'ایدی' and msg.reply_to_message_id_ == 0  then
 if is_sudo(msg) then
  rank = '⚜مُـدیـر رُبات⚜'
 elseif is_owner(msg) then
  rank = '💎مُـدیر گروه💎'
 elseif is_mod(msg) then
  rank = '🛡معاون گروه🛡'
 else
  rank = '😑چُـس ممبر😑'
 end
local function getpro(arg, data)

   if data.photos_[0] then
            tdcli.sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, data.photos_[0].sizes_[2].photo_.persistent_id_,'\n⚙ Your Name→ '..msg.from.print_name..'\n⛓\n⛓ Your ID→ '..msg.sender_user_id_..'\n⛓\n⛓ Your UserName↓\n⛓ @'..(msg.from.username or '----')..'\n⛓\n⛓ ID Supergroup↓\n⛓ '..msg.chat_id_..'\n⛓\n⛓ Your Phone↓\n⛓  '..(msg.from.phone or 'I Not Have Your Phone Number!')..'\n⛓\n⚙ Your Rank↓→\n '..rank..'\n',msg.id_,msg.id_)
   else
      tdcli.sendMassage(msg.chat_id_, msg.id_, 1, "You Have'nt Profile Photo!!\n\n● 》 *Supergroup ID➢* `"..msg.chat_id_.."`\n*● 》 Your ID➢* `"..msg.sender_user_id_.."\n*● 》 Your UserName➢* `"..(msg.from.username or "----").."`\n*● 》 Your Phone➢* `"..(msg.from.phone or "I Not Have Your Phone Number!").."`\n*● 》 Your Rank➢* `"..rank.."`", 1, 'md')
   end
   end
   tdcli_function ({
    ID = "GetUserProfilePhotos",
    user_id_ = msg.sender_user_id_,
    offset_ = 0,
    limit_ = 1
  }, getpro, nil)
	end
	
end

return {
patterns = {
"^[/!#](id)$",
"^[/!#](id) (.*)$",
"^(ایدی)$",

},
run = run
}
