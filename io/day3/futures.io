futureResult := URL with("http://google.com/") @fetch
writeln("Wait for the result...")
writeln(futureResult type())
writeln("fetched ", futureResult size, " bytes")
writeln(futureResult type())
