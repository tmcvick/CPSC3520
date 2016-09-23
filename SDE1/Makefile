EX= output build one two three four five six seven eight nine ten


all: $(EX)

# opens a new terminal of the working directory
# in Mac OSX (DOES NOT WORK FOR WINDOWS/LINUX)

#new:
#	open -a Terminal $(PWD)

output:
	touch prolog1.log

build:
	./build_prolog1.sh

one:
	(echo "File-name: \c";  ls bad_list; echo "File-contents:"; cat bad_list; echo "Prolog parser result:") >> prolog1.log
	./prolog1 < bad_list >> prolog1.log

two:
	(echo "File-name: \c";  ls list; echo "File-contents:"; cat list; echo "Prolog parser result:") >> prolog1.log
	./prolog1 < list >> prolog1.log

three:
	(echo "File-name: \c";  ls longstring; echo "File-contents:"; cat longstring; echo "Prolog parser result:") >> prolog1.log
	./prolog1 < longstring >> prolog1.log

four:
	(echo "File-name: \c";  ls longstringwithquotes; echo "File-contents:"; cat longstringwithquotes; echo "Prolog parser result:") >> prolog1.log
	./prolog1 < longstringwithquotes >> prolog1.log

five:
	(echo "File-name: \c";  ls misplacedquote; echo "File-contents:"; cat misplacedquote; echo "Prolog parser result:") >> prolog1.log
	./prolog1 < misplacedquote >> prolog1.log

six:
	(echo "File-name: \c";  ls three_lines; echo "File-contents:"; cat three_lines; echo "Prolog parser result:") >> prolog1.log
	./prolog1 < three_lines >> prolog1.log

seven:
	(echo "File-name: \c";  ls three_more_lines; echo "File-contents:"; cat three_more_lines; echo "Prolog parser result:") >> prolog1.log
	./prolog1 < three_more_lines >> prolog1.log

eight:
	(echo "File-name: \c";  ls tim; echo "File-contents:"; cat tim; echo "Prolog parser result:") >> prolog1.log
	./prolog1 < tim >> prolog1.log

nine:
	(echo "File-name: \c";  ls tim_bad; echo "File-contents:"; cat tim_bad; echo "Prolog parser result:") >> prolog1.log
	./prolog1 < tim_bad >> prolog1.log

ten:
	(echo "File-name: \c";  ls tim_capital; echo "File-contents:"; cat tim_capital; echo "Prolog parser result:") >> prolog1.log
	./prolog1 < tim_capital >> prolog1.log

# This command will only work on Mac OSX
#file:
#	open prolog1.log

# If you have sublime installed in Linux try this
# make sure to comment the other command that specifies
# open [-file] cause again, it only works on Mac OSX
#file:
#	subl prolog1.log


clean:
	rm -f prolog1.log prolog1.tab.c prolog1.tab.h prolog1 lex.yy.c
