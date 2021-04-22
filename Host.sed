# Annotated sed script for cleaning MyHost file.

# If the line contains the string, delete the entire line.
/MCP880/d
/LAST COMPILED/d
/DIVISION STANDARDIZED/d
/EVENT:/d
/RETAILER ITEM LIST/d
/PRICES SUBJECT TO MARKET/d
/COST OF GOODS/d
/AD CO-OP FUNDING/d
/PACK\/SIZE\/  PLT/d
/UNIT     QTY ITEM/d
/CONTINUED FROM PREVIOUS/d
/SED ITEM SRP REQUIREMENTS/d
/END OF PRODUCT GROUP/d
/CENTS OFF/d
/OF EVERY EVENT/d
/PER CASE SCAN/d
/RESIDUAL/d
/RETAILER ITEM/d
/THE PRECEDING ITEM/d
/REPORT AND\/OR/d
/1L/d
/>>>>>>/d

# A little aesthetic clean-up 
s/-----------------------------//

# The next line deletes the weird not blank lines.
/                                                              \*\*\*/d

# This deletes the first 8 blank spaces in front of each line.
# It is repeated because I couldn't get it to iterate with s/ {8}//
s/ //
s/ //
s/ //
s/ //
s/ //
s/ //
s/ //
s/ //

# This deletes actual blank lines.
/^$/d
