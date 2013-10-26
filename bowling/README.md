### Challenge

The aim of this kata is to calculate the score of a game of bowling, given a score card. A score card logs the game in the format "ABABABABABABABABABAB", where A is the number of pins knocked down in the first throw, and B is the number of pins knocked down in the second. For instance "36" would indicate that 3 pins were knocked down, then 6. No pins being knocked down is marked with a "-".

If all the pins are knocked down on the second throw, that's a spare, marked with a "/". A spare is worth 10 points plus the score of the next throw. If all the pins are knocked down on the first throw that's a strike. "AB" will be substituted with a single "X". A strike is worth 10 points plus the scores of the next two throws.

**Difficulty**: Medium