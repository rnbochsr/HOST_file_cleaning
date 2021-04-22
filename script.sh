#! /bin/bash

# Call the sed command and run the script file.
sed -f Host.sed *MyHost.txt > tmp1

# Add line numbers.
cat -n tmp1 > tmp2

# Delete the extra spaces at the front and the tab character 
# that the cat -n command inserts.
sed -r 's/ //;s/	/ /;' tmp2 > MH-clean1.txt

# Clean-up the tmp files.
rm tmp1 tmp2

# Proofing only. Comment out or delete this line after script finalized.
# head -n25 MH-clean1

