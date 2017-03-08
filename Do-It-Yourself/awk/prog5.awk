BEGIN{OFS="\n"}
/Acct-Input-Packets/{
	sum1+=$3
}
/Acct-Output-Packets/{
	sum2+=$3
}
END{print "Total Input Bandwidth Usage  = "sum1 " packets" , "Total Output Bandwidth Usage = "sum2 " packets"}
