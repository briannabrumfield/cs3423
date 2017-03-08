BEGIN{OFS="\t";
   a1=0; a2=0; a3=0; a4=0;
   g1=0; g2=0; g3=0; g4=0;
   c1=0; c2=0; c3=0; c4=0;
   d1=0; d2=0; d3=0; d4=0;
   u1=0; u2=0; u3=0; u4=0;
}

$6~/lonestar[^ \t]+/ {
	if ($7~/exit/) {
	   a1+=$9
	   g1+=$11
	}
	if ($7~/times/) {
	   u1+=$13
	}
	if ($8~/utsa\.cs\.2413\.d/) {
	   d1+=$9
	}
	if ($8!~/utsa\.cs\.2413\.d/ && $8~/utsa\.cs\.2413 /) {
	   c1+=$9
	}
}

$6~/runner[^ \t]+/ {
        if ($7~/exit/) {
           a2+=$9
           g2+=$11
        }
        if ($7~/times/) {
           u2+=$13
        }
        if ($8~/utsa\.cs\.2413\.d/) {
           d2+=$9
        }
        if ($8!~/utsa\.cs\.2413\.d/ && $8~/utsa\.cs\.2413 /) {
           c2+=$9
        }
}

$6~/ringer[^ \t]+/ {
        if ($7~/exit/) {
           a3+=$9
           g3+=$11
        }
        if ($7~/times/) {
           u3+=$13
        }
        if ($8~/utsa\.cs\.2413\.d/) {
           d3+=$9
        }
        if ($8!~/utsa\.cs\.2413\.d/ && $8~/utsa\.cs\.2413 /) {
           c3+=$9
        }
}

$6~/ring[^e][^r][^ \t]+/ {
        if ($7~/exit/) {
           a4+=$9
           g4+=$11
        }
        if ($7~/times/) {
           u4+=$13
        }
        if ($8~/utsa\.cs\.2413\.d/) {
           d4+=$9
        }
        if ($8!~/utsa\.cs\.2413\.d/ && $8~/utsa\.cs\.2413/) {
           c4+=$9
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
    print"\t\t\t   News Reader Summary\n\n"
    print "\t\tlonestar\trunner\t\tringer\t\trings\n"
    print "Articles:\t"a1,"\t"a2,"\t"a3,"\t"a4;
    print "Goups:\t\t"g1,"\t"g2,"\t"g3,"\t"g4;
    print "Cs2413:\t\t"c1,"\t"c2,"\t"c3,"\t"c4;
    print "Cs2413.d:\t"d1,"\t"d2,"\t"d3,"\t"d4;
    print "User Time:\t"u1,"\t"u2,"\t"u3,"\t"u4"\n";
    print "Start Time = " st1" "st2" "st3 "\t\tEnd Time = " et1" "et2" "et3
}

