# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

 "iNvEsTiGaTiOn".swapcase
 "iNvEsTiGaTiOn".swapcase!
# => “InVeStIgAtIoN”

 "zom".insert(1 , "o")
# => “zoom”

"enhance".center(20)
# => "    enhance    "

 "Stop! You’re under arrest!".upcase
 "Stop! You're under arrest!".upcase!
# => "STOP! YOU’RE UNDER ARREST!"

 "the usual".insert(9 , " suspects")
#=> "the usual suspects"

 " suspects".prepend("the usual")
 " suspects".insert(0 , "the usual")
# => "the usual suspects"

"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"


str = "The mystery of the missing first letter"
 str.delete(str[0])

"Elementary,    my   dear        Watson!".squeeze
# => "Elementary, my dear Watson!"

 "z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# It is the integer ordinal of the 1 letter string "z"

"How many times does the letter 'a' appear in this string?".count"a"
# => 4