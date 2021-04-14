#1/bin/bash
#create a function f1
function f1 {
	echo Hello from $FUNCNAME!  #print function name
	VAR="123"                   #store a value in VAR variable

}

	f2(){                       #create a function f2
	p1=$1			    # p1 set as agrgument using $1
	p2=$2			    # p2 set as argument using $2
	sum=$((${p1} + ${p2}))	    #adding p1 and p2 and store in sum
	echo "${sum}"		    #print sum
	
	} 

	f1                            #call function f1
	echo ${VAR}		      #print VAR variable	

	mySum="$(f2 1 2)"              #create a variable mysum and call a function f2 with value
	echo mySum = $mySum            #print mysum
                                         
	mySum="$(f2 10 -2)"           # create a variable mysum and call a function f2 with value 
	                              # if function is define we can call multiple times

	echo mySum = $mySum            #print mysum
