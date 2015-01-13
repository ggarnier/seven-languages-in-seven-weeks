max := 100
answer := Random value(max) ceil

previous_guess := 0
guess := 0

loop(
  guess = File standardInput readLine asNumber()

  if(guess == answer,
    "OK!" println; break,
    if(previous_guess == 0,
      "try again" println,
      if((answer - guess) abs() < (answer - previous_guess) abs(),
        "hotter" println,
        "colder" println
      );
    );

    previous_guess = guess;
  )
)
