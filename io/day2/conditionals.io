#loop("getting dizzy..." println)

i := 1
while(i <= 11, i println; i = i + 1)

for(i, 1, 11, 2, i println)
for(i, 1, 11, i println, "extra")

result := if(true, "this is true", "this is false")
result println

result = if(true) then("this is true") else("this is false")
result println
