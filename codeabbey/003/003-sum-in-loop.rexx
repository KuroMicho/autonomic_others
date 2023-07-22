pull numlist
sum = 0
DO n = 1 TO WORDS(numlist)
  number = WORD(numlist,n)
  sum = sum + number
END
say sum