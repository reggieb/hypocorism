Hypocorism
==========

http://en.wikipedia.org/wiki/Hypocorism

A tool for matching English first names with their shortened version.

Usage
-----
To determine if a one version of a person's first name matches another
version, use Hypocorism.match:

    Hypocorism.match('Robert', 'Rob') == true
    Hypocorism.match('Dave', 'David') == true
    Hypocorism.match('Rob', 'David') == false


To find the names that match a given first name, use Hypocorism.variations_of:

    Hypocorism.variations_of('Aaron') == ["Aaron", "Ron", "Ronni", "Ronnie", "Ronny", "Ronney", "Erin", "Ronald"]

However, note that some short names are used across a number of names. So

    Hypocorism.variations_of('Ron')

Will return:

    [
      "Aaron", "Ron", "Ronni", "Ronnie", "Ronny", "Ronney", "Erin", "Ronald",
      "Cameron", "Cam", "Naldo", "Ronaldo", "Roland", "Reginald", "Veronica",
      "Franki", "Frankie", "Franky", "Frankey", "Ronna", "Vonni", "Vonnie",
      "Vonny", "Vonney", "Froni", "Fronie", "Frony", "Froney", "Vicki", "Vickie",
      "Vicky", "Vickey"
    ]

Source data
-----------
This tool use data from this source:

http://cpansearch.perl.org/src/BRIANL/Lingua-EN-Nickname-1.17/nicknames.txt