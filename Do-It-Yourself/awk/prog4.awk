BEGIN{OFS="\n";
	a = 0
	b = 0
	c = 0
	d = 0
	e = 0}
/Ascend-Data-Rate/{
 if ($3 >= 0 && $3 <= 14400)
	a+=1;
 else if ($3 >= 14401 && $3 <= 19200)
       b+=1;
 else if ($3 >= 19201 && $3 <= 28800)
        c+=1;
 else if ($3 >= 28801 && $3 <= 33600)
        d+=1;
 else if ($3 > 33600)
	e+=1;
}
END {print "0-14400\t\t" a , "14401-19200\t" b , "19201-28800\t" c , 
	"28801-33600\t" d, "above 33600\t"e }