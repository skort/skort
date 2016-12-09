local function run(msg, matches)
local permagbot = [[
📋 راهنمای مدیریتی 📋

➖➖➖➖➖➖ 

🖊 اینفو 
📢 درباره جزئیات گروه
➖➖➖➖➖➖
🖊 ادمین ها 
📢 لیست ادمین های گروه
➖➖➖➖➖➖
🖊 صاحب گروه
📢 نمایش صاحب ربات در گروه
➖➖➖➖➖➖
🖊 مدیران
📢 لیست مدیران رابات
➖➖➖➖➖➖
🖊 ربات ها
📢 لیست ربات های گروه
➖➖➖➖➖➖
🖊 افراد
📢 لیست کاربران گروه 
➖➖➖➖➖➖
🖊 اخراجی ها
📢 لیست افراد اخراج شده از گروه
➖➖➖➖➖➖
🖊 ایدی
📢 دریافت کدتان 
📢 با اضافه کردن ایدی شخص کد شخص را دریافت میکنید .
➖➖➖➖➖➖
🖊 ترفیع
📢 ترفیع کاربر به مدیر ربات 
➖➖➖➖➖➖
🖊 عزل
📢 عزل مدیر 
➖➖➖➖➖➖
🖊 تنظیم قوانین
📢 تنظیم قوانین برای گروه
➖➖➖➖➖➖
🖊 قوانین
📢نمایش قوانین گروه
➖➖➖➖➖➖
🖊 صاحب
📢 ترفیع کاربر به صاحب ربات در گروه
➖➖➖➖➖➖
🖊 لینک گروه
📢 ارسال لینک گروه
➖➖➖➖➖➖
🖊 تنظیم لینک
📢 لینک رو بعد از درست کردن به ربات بدهید .
➖➖➖➖➖➖
🖊 تبدیل
📢 تبدیل گروه به سوپر گروه
➖➖➖➖➖➖
🖊 بلاک
📢 اخراج کاربر و اضافه کردن در لیست بلاک گروه
➖➖➖➖➖➖
🖊 اخراج
📢 اخراج کاربر از گروه 
➖➖➖➖➖➖
🖊 بن
📢 اخراج و بن کردن کاربر
➖➖➖➖➖➖
🖊 رفع بن
📢 خارج کردن کاربر از لیست بن
➖➖➖➖➖➖
🖊 لیست بن
📢 لیست افراد بن شده 
➖➖➖➖➖➖
🖊 مشخصات
📢 مشخصات کاربر 
➖➖➖➖➖➖
🖊 فعالان گروه
📢 لیست فعالان گروه
➖➖➖➖➖➖
🖊 بازنگری
📢 برای اعمال اپدیت های جدید 
➖➖➖➖➖➖
🖊 تنظیم خوش امدگویی
📢 متن را بعد دستور بنویسید 
➖➖➖➖➖➖
🖊 حذف خوش امدگویی
📢 حذف متن خوش امد گویی
➖➖➖➖➖➖
🖊 زمان
📢 نمایش زمان هر منطقه
➖➖➖➖➖➖
🖊 هواشناسی
📢 هواشناسی هر منطقه
➖➖➖➖➖➖
🖊 اینوایت
📢 دعوت کاربر به گروه
➖➖➖➖➖➖
🖊 اخراج با فوروارد
📢 اخراج کاربر با فوروارد کردن پیام هر کاربر
➖➖➖➖➖➖
🏵 @CYRUS_TM🏵
]]
local permagbot1 = [[
📋 راهنمای قفلی 📋

➖➖➖➖➖➖ 

🖊 قفل لینک
🖊 بازکردن لینک
📢 ارسال لینک ممنوع خواهد شد .
➖➖➖➖➖➖
🖊 قفل تگ
🖊 بازکردن تگ
📢 ارسال هشتگ (#) ممنوع خواهد شد .
➖➖➖➖➖➖
🖊 قفل یوزرنیم
🖊 بازکردن یوزرنیم
📢 ارسال یوزرنیم (@) ممنوع خواهد شد.
➖➖➖➖➖➖
🖊 قفل ربات ها
🖊 بازکردن ربات ها 
📢 ورود ربات ممنوع خواهد شد. 
➖➖➖➖➖➖
🖊 قفل دستور
🖊 بازکردن دستور 
📢 کاربران نمیتوانند از دستورات استفاده کنند .
➖➖➖➖➖➖
🖊 قفل اسپم
🖊 بازکردن اسپم 
📢 مطالب طولانی پاک خواهند شد .
➖➖➖➖➖➖
🖊 قفل فلود
🖊 بازکردن فلود 
📢 پست های رگباری ممنوع خواهد شد .
➖➖➖➖➖➖
🖊 حساسیت (5-20)
🖊 مثال : حساسیت 5
📢 حساسیت ضد اسپم  
➖➖➖➖➖➖
🖊 قفل عربی
🖊 بازکردن عربی
📢 تایپ کردن عربی و فارسی ممنوع خواهد شد .
➖➖➖➖➖➖
🖊 قفل اعضا
🖊 بازکردن اعضا
📢 ورود اعضا ممنوع خواهد شد .
➖➖➖➖➖➖
🖊 قفل راستچین
🖊 بازکردن راستچین
📢 تایپ راستچین ممنوع خواهد شد . 
➖➖➖➖➖➖
🖊 قفل متون
🖊 بازکردن متون 
📢 اعلانات ورود و خروج پاک خواهند شد .  
➖➖➖➖➖➖
🖊 قفل استیکر
🖊 بازکردن استیکر
📢 ارسال استیکر ممنوع خواهد شد .
➖➖➖➖➖➖
🖊 قفل فوروارد
🖊 بازکردن فوروارد
📢 فوروارد در گروه ممنوع خواهد شد .
➖➖➖➖➖➖
🖊 قفل سختگیرانه
🖊 بازکردن سختگیرانه 
📢 درصورت رعایت نکردن بجز پیام خود کاربر از گروه ریمو خواهد شد . 
➖➖➖➖➖➖
🖊 قفل اطلاعات شخصی
🖊 بازکردن  اطلاعات شخصی
📢 ارسال اطلاعات شخصی ممنوع خواهد شد .
➖➖➖➖➖➖
🖊 سکوت
🖊 رفع سکوت
📢 کاربر نمیتواند هیچ چیزی بفرستد
➖➖➖➖➖➖
🖊 لیست سکوت
📢 نمایش لیست افراد سکوت خورده 
➖➖➖➖➖➖
🖊 قفل گروه c b a
🖊 بازکردن گروه
📢 گروه برای ساعتی مشخص قفل خواهد شد .
📢 مثال : گروه 1 2 3 = 1 ساعت 2 دقیقه 3 ثانیه
➖➖➖➖➖➖
🖊 قفل صدا
🖊 بازکردن صدا
📢 ارسال صدا ممنوع خواهد شد .
➖➖➖➖➖➖
🖊 قفل عکس
🖊 بازکردن عکس
📢ارسال عکس ممنوع خواهد شد . 
➖➖➖➖➖➖
🖊 قفل فیلم
🖊 بازکردن فیلم
📢 ارسال فیلم ممنوع خواهد شد .
➖➖➖➖➖➖
🖊 قفل گیفت
🖊 بازکردن گیفت
📢 ارسال فایل گیفت ممنوع خواهد شد .
➖➖➖➖➖➖
🖊 قفل فایل
🖊 بازکردن فایل
📢 ارسال فایل ممنوع خواهد شد .
➖➖➖➖➖➖
🖊 قفل متن
🖊 بازکردن متن
📢 ارسال متن ممنوع خواهد شد . 
➖➖➖➖➖➖
🖊 قفل همه
🖊 بازکردن همه
📢 ارسال صدا . عکس . فیلم . گیفت . فایل . متن ممنوع خواهد شد .
➖➖➖➖➖➖
🏵 @CYRUS_TM🏵
]]
local permagbot2 = [[
📋 راهنمای پاکسازی 📋

➖➖➖➖➖➖ 

🖊 حذف دیلیت اکانتی ها
📢 پاک کردن اکانت های دیلیت شده از لیست گروه .
➖➖➖➖➖➖
🖊 پاک کن 5
📢 پاک کردن تعداد مشخص شده از پیام ها (1-200)
📢 توصیه میشود تا حد امکان استفاده نکنید .
➖➖➖➖➖➖
🖊 پاکسازی مدیران
📢 لیست مدیران ربات پاک خواهد شد .
➖➖➖➖➖➖
🖊 پاکسازی قوانین
📢 قوانین گروه پاک خواهد شد . 
➖➖➖➖➖➖
🖊 پاکسازی توضیحات
📢 توضیحات گروه پاک خواهد شد .
➖➖➖➖➖➖
🖊 پاکسازی لیست سکوت
📢 لیست سکوت پاک خواهد شد .
➖➖➖➖➖➖
🖊 پاکسازی ربات ها
📢 ربات ها پاک خواهند شد .
➖➖➖➖➖➖
🏵 @CYRUS_TM🏵
]]

local permagbot3 = [[
🔆 راهنمای ربات 🔆

💫 دستورات و راهنمای کامل ربات 

💎 دستورات مدیریتی ✨
🔮 راهنمای مدیریتی

💎 دستورات قفلی ✨
🔮 راهنمای قفلی

💎 دستورات پاکسازی ✨
🔮 راهنمای پاکسازی

💎 پشتیبانی فنی ✨
🔮 پشتیبانی

💎 مشاهده لیست تنظیمات گروه ✨
🔮 تنظیمات

💎 مشاهده لیست تنظیمات فایلی ✨
🔮 لیست فایلها

➖➖➖➖➖➖
🏵 @CYRUS_TM🏵
]]

local permagbot4 = [[
🔆 پشتیبانی ربات 🔆

💫 لطفا قبل از هر سوال اول کانال ما را کامل مطالعه کنید . 💫

✨ لینک کانال پشتیبانی ✨
🏵 @CYRUS_TM🏵

✨ لینک گروه پشتیبانی ✨
🏵 https://telegram.me/joinchat/DayKVkDVZJhKvu9GvZQrug 🏵

✨ ربات ارتباط با پشتیبانی ✨
🏵 بزودی 🏵
]]
    if matches[1] == 'راهنمای مدیریتی' and is_momod(msg) then
        return permagbot  
  elseif matches[1] == 'راهنمای قفلی' and is_momod(msg) then
		return permagbot1
  elseif matches[1] == 'راهنمای پاکسازی' and is_momod(msg) then
		return permagbot2
  elseif matches[1] == 'help' and is_momod(msg) or matches[1] == 'راهنما' and is_momod(msg) then
		return permagbot3
  elseif matches[1] == 'پشتیبانی' and is_momod(msg) then
		return permagbot4
  end
end

return {
      description = '',
      usage = '',
      patterns = {
    '^(راهنمای مدیریتی)$',
    '^(راهنمای قفلی)$',
	'^(راهنمای پاکسازی)$',
    '^(help)$',
    '^(راهنما)$',
    '^(پشتیبانی)$',
      },
      run = run,
}


