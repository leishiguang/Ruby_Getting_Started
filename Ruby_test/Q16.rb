puts "chapters 16 Question 1."

def email_analysls ( str_email )
#  if /([A-Za-z0-9_-.])+(?:@)(.)/ =~ str_email
  if /(.*)(?:@)(.*)/ =~ str_email
    p "#{str_email} is a email address."
    p "The account is: #{$1}"
    p "The Web server is: #{$2}"
  else
    p "#{str_email} is not a email address."
  end
end

email_analysls("abc@gmail.com")
email_analysls("abc@gmail")
email_analysls("abc.gmal@gmail.com")

puts "chapters 16 Question 1."


str1 = "正则表达式真难啊，怎么这么难懂！"
str_tmp = str1.gsub(/真难啊/, "真简单啊")
str2 = str_tmp.gsub(/难懂/, "易懂")
p str2

s = "正则表达式真难啊，怎么这么难懂！"
puts s.gsub(/难懂/, "易懂").gsub(/难/, "简单")

def word_capitalize (str)

end