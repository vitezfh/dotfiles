#!/bin/bash
# Some special FX for all you leet hackers, just call it from you shell's rc file. Same as you would neofetch, if you use that
RED='\033[0;31m'
NC='\033[0m' # No Color

planet="                .                                            .
     *   .                  .              .        .   *          .
  .         .                     .       .           .      .        .
        o                             .                   .
         .              .                  .           .
          0     .
                 .          .                 ,                ,    ,
 .          \          .                         .
      .      \   ,
   .          o     .                 .                   .            .
     .         \                 ,             .                .
               #\##\#      .                              .        .
             #  #O##\###                .                        .
   .        #*#  #\##\###                       .                     ,
        .   ##*#  #\##\##               .                     .
      .      ##*#  #o##\#         .                             ,       .
          .     *#  #\#     .                    .             .          ,
                      \          .                         .
____^/\___^--____/\____O______________/\/\---/\___________---______________
   /\^   ^  ^    ^                  ^^ ^  '\ ^          ^       ---
         --           -            --  -      -         ---  __       ^
   --  __                      ___--  ^  ^                         --  __
"

moon="                                    *
                       aaaaaaaaaaaaaaaa               *
                   aaaaaaaaaaaaaaaaaaaaaaaa
                aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
              aaaaaaaaaaaaaaaaa           aaaaaa
            aaaaaaaaaaaaaaaa                  aaaa
           aaaaaaaaaaaaa aa                      aa
          aaaaaaaa      aa                         a
          aaaaaaa aa aaaa
    *    aaaaaaaaa     aaa
         aaaaaaaaaaa aaaaaaa                               *
         aaaaaaa    aaaaaaaaaa
         aaaaaa a aaaaaa aaaaaa
          aaaaaaa  aaaaaaa
          aaaaaaaa                                 a
           aaaaaaaaaa                            aa
            aaaaaaaaaaaaaaaa                  aaaa
              aaaaaaaaaaaaaaaaa           aaaaaa        *
  *             aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
                   aaaaaaaaaaaaaaaaaaaaaaaa
                *      aaaaaaaaaaaaaaaa

"
echo
printf "$moon"
sleep 0.25
clear
echo
printf "${RED}$moon"
sleep 0.15
clear
echo
