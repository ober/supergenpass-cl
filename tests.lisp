(load "supergenpass.lisp")

(if
    (and
     (string= "oyMqrlvnf0" (sgp-generate "aZ6hsFkQAB" "facebook.com" 10))
     (string= "da9XVof7M0" (sgp-generate "fB0JxUJk3F" "cnn.com" 10))
     (string= "fGHiN8lZxx" (sgp-generate "fWeQm8cIm4" "slashdot.org" 10))
     (string= "sEhpjUR63S" (sgp-generate "fmXLipc0a9" "tumblr.com" 10))
     (string= "qRC0j8PWiG" (sgp-generate "fssqka0uhR" "twitter.com" 10))
     (string= "rKwJk8yOQG" (sgp-generate "et8U4PacDy" "twitter.com" 10))
     (string= "sw3dFkj12E" (sgp-generate "hUyoJKKb8X" "cnn.com" 10))
     (string= "xAYTxp2vDC" (sgp-generate "hxJch45dWd" "slashdot.org" 10))
     (string= "q3U0Svw2q4" (sgp-generate "iSRqWL1NIv" "tumblr.com" 10))
     (string= "d7mlILjHMJ" (sgp-generate "j4fdVHliBW" "twitter.com" 10))
     (string= "aptJNSF8VF" (sgp-generate "lonPN3Slmu" "cnn.com" 10))
     (string= "iDeDdndX2C" (sgp-generate "m0x8y8pQd0" "slashdot.org" 10))
     (string= "j7y4V48Gp6" (sgp-generate "oP9jePVJEt" "tumblr.com" 10))
     (string= "elghLVEnK9" (sgp-generate "odCS62yxVF" "twitter.com" 10))
     (string= "p1hfy8UK9C" (sgp-generate "pC37b4Ed8U" "cnn.com" 10))
     (string= "q9w1KwFirF" (sgp-generate "pLBe2YlyTe" "slashdot.org" 10))
     (string= "jhyc6nMIh8" (sgp-generate "qIW3jgzAVY" "tumblr.com" 10))
     (string= "iOqD952kBv" (sgp-generate "r04PRY4gAq" "twitter.com" 10))
     (string= "vJ02TX3P8F" (sgp-generate "rDL8WCOsmK" "cnn.com" 10))
     (string= "w9HCMcoIa2" (sgp-generate "sh8kMDPyhF" "slashdot.org" 10))
     (string= "w18AZ5n2ON" (sgp-generate "t8HQVPPSwA" "tumblr.com" 10))
     (string= "vaRgN0sbJd" (sgp-generate "tbUkLl20QC" "twitter.com" 10))
     (string= "akElMy91Rx" (sgp-generate "u2262a1TEg" "cnn.com" 10))
     (string= "uh3fW39Spg" (sgp-generate "unxdaQdxQ4" "slashdot.org" 10))
     (string= "w6bVgW3oC0" (sgp-generate "uvphI9ofTX" "tumblr.com" 10))
     (string= "p9PhTOC166" (sgp-generate "vGkM2qMik7" "twitter.com" 10))
     (string= "w8PV7d4x8L" (sgp-generate "vvdsM88uvl" "cnn.com" 10))
     (string= "ee9FRo8jZP" (sgp-generate "wHwt3lz6hr" "slashdot.org" 10))
     (string= "s999eW064I" (sgp-generate "wsjPWFc2wr" "tumblr.com" 10))
     (string= "d58WUKHzV3" (sgp-generate "wwV3EPLpJp" "twitter.com" 10))
     (string= "qZtt7qRlUm" (sgp-generate "xP9Ut9HIVB" "cnn.com" 10))
     (string= "hSsjnotX7B" (sgp-generate "xZj9ucltUq" "slashdot.org" 10))
     (string= "kRROFDvMs8" (sgp-generate "xwz5j3mnM1" "tumblr.com" 10))
     (string= "xwv9miGtrC" (sgp-generate "y5kDzKGHw5" "twitter.com" 10))
     (string= "bbQhkc0Pqh" (sgp-generate "y8h9oZquqc" "cnn.com" 10))
     (string= "ubRPZrdfu5" (sgp-generate "abcdefg" "cnn.com" 10))
     (string= "xaIlcL02A3" (sgp-generate "TheSeasonedSchemer" "slashdot.org" 10))
     (string= "xXuB5haYik" (sgp-generate "ColdAndFluRelief" "flowdock.com" 10))
     (string= "oZ8YbHxSKg" (sgp-generate "LiveLongAndProper" "lisp.org" 10))
    (format t "All Passed")
  (format t "Failures!")))
