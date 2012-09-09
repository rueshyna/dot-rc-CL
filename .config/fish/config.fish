# 2012/08/23
# setup by Rueshyna


#set -x LANG en_US.UTF-8
#set -x LC_ALL en_US.UTF-8

# set srilm path 
set PATH $PATH /home/chaolin/Space/lib/moses/srilm/bin /home/chaolin/Space/lib/moses/srilm/bin/i686-m64

# set English google_web_1t path
function ngram_query_en -d 'query English Google web 1t database'
  set -l GPATH /home/chaolin/Space/lib/Web1T5-Easy-1.1
  eval $GPATH/perl/ngram_query_en.perl $argv[(seq 1 (count $argv))] --vocab=$GPATH/query_en/vocabulary.dat --ngram=$GPATH/query_en/%d-grams.dat
end

# set Chinese google_web_1t path
function ngram_query_ch -d 'query Chinese Google web 1t database'
  set -l GPATH /home/chaolin/Space/lib/Web1T5-Easy-1.1
  eval $GPATH/perl/ngram_query_ch.perl $argv[(seq 1 (count $argv))] --vocab=$GPATH/query_ch/vocabulary.dat --ngram=$GPATH/query_ch/%d-grams.dat
end

#/home/chaolin/Space/lib/Web1T5-Easy-1.1/query_en /home/chaolin/Space/lib/Web1T5-Easy-1.1/perl
function confish
   vim ~/.config/fish/config.fish
end
