# Make Vi mode transitions faster (KEYTIMEOUT is in hundredths of a second)
export KEYTIMEOUT=1

WORDCHARS=${WORDCHARS//\/[&.;]}			# Don't consider certain characters part of the word
