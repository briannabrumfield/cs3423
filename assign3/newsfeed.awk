BEGIN{i1 = 0; i2 = 0; i3 = 0; j1 = 0; j2 = 0; j3 = 0; c1 = 0; c2 = 0; c3 = 0;
	OFS="\t";
}

{
if($5 ~/swrinde/) {
	if ($4 !~ /\-/) {
	   i1++;
	   if ($4 ~ /c/) c1++;
	}
	if ($4 == "-") j1++;
   }

if($5 ~/news.cais.net/) {
        if ($4 !~ /\-/) {
           i2++;
           if ($4 ~ /c/) c2++;
        }
        if ($4 == "-") j2++;
   }

if($5 ~/\?/) {
        if ($4 !~ /\-/) {
           i3++;
           if ($4 ~ /c/) c3++;
        }
        if ($4 == "-") j3++;
   }
}
NR==1{
 st1 = $1;
 st2 = $2;
 st3 = $3;
}


{NR==NF
 et1 = $1;
 et2 = $2;
 et3 = $3;
}

END{
     print "\t\t      Incoming News Feed Summary\n\n"
     print "\t\taccepted\trejected\tcanceled"
     print "swrinde:",i1,"\t"j1,"\t"c1
     print "news.caise.net:",i2,"\t"j2,"\t"c2
     print "?:\t",i3,"\t"j3,"\t"c3"\n"
     print "Start Time = " st1" "st2" "st3 "\tEnd Time = " et1" "et2" "et3
}

