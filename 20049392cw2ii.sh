#!/bin/bash

username=$1
userid=$2
secretkey=12345
bandmembers=(JL AY FM DH KC)

# Start function runs the program by taking two parameters as user input.
Start(){
	if [ -z $username ] || [ -z $userid ]
	then
		echo
		echo "========= Invalid Input!! ==========="
		echo " Please enter your firstname and id. "
		echo "====================================="
		echo
	else
		Secretkey
	fi
}

# Secretkey function takes secret key from the user to run the program.
# The program is terminated when the user gives wrong secret key.
Secretkey(){
	a=3
	while [ $a -ge 1 ]
	do 
		echo
		echo -n "Enter the secret key: "
		read -s password
		if [ $password == $secretkey ]
		then
			echo
			echo
			figlet "Welcome to"
			figlet "   Program"
			echo
			echo "======================="
			echo "|    USER ID: $userid     |"
			echo "|   USERNAME: $username   |"
			echo "======================="
			echo
			date '+DATE: %m/%d/%y%nTIME: %H:%M:%S'
			BandName
		else
			echo
			echo
			a=`expr $a - 1`
			if [ $a != 0 ]
			then
				echo "======== Incorrect Key!! ==========="
				echo "      You have $a tries left.       "
				echo "===================================="
				echo
			else
				figlet "Program Terminated!"
				exit
			fi
		fi
	done
}

# BandName function displays the band name options for user.
BandName(){
	echo
	echo "-------------------------------"
	echo "|          Band Name          |"
	echo "-------------------------------"
	echo "|	BEA  | Beatles        |"
	echo "-------------------------------"
	echo "|        AD  | AC/DC          |"
	echo "-------------------------------"
	echo "|        QUE | Queen          |"
	echo "-------------------------------"
	echo "|        BLO | Blondie        |"
	echo "-------------------------------"
	echo "|        NIR | Nirvana        |"
	echo "-------------------------------"
	echo
	CheckBandName
}

# CheckBandName function checks if the user input band name is valid or not.
CheckBandName(){
	echo -n "Guess which band is the best music band (For Eg: - QUE For Queen): "
	read band
	echo 
	bandname=$band
	case $bandname in
	"BEA")
	echo "===== Please Choose Again! ====="
	echo " This is not my favourite band. "
	echo "================================"
	echo
	CheckBandName
	;;
	"AD")
	echo "===== Please Choose Again! ====="
	echo " This is not my favourite band. "
	echo "================================"
	echo
	CheckBandName
	;;
	"QUE")
	echo "===== Please Choose Again! ====="
	echo " This is not my favourite band. "
	echo "================================"
	echo
	CheckBandName
	;;
	"BLO")
	echo "===== Please Choose Again! ====="
	echo " This is not my favourite band. "
	echo "================================"
	echo
	CheckBandName
	;;
	"NIR") echo "============================== Nirvana ========================================"
	echo
	echo " Nirvana was an American rock band formed in Aberdeen, Washington, in 1987."
	echo " Founded by lead singer and guitarist Kurt Cobain and bassist Krist Novoselic,"
	echo " the band went through a succession of drummers, most notably Chad Channing,"
	echo " before recruiting Dave Grohl in 1990."
	echo
	echo "==============================================================================="
	BandMember
	;;
	*)
	echo "=============== Invalid Input!! =================="
	echo " Please choose a valid band code from the option. "
	echo "=================================================="
	echo
	CheckBandName
	esac
}

# BandMember function displays the band member options for the user.
BandMember(){
	echo
    echo "------------------------------"
    echo "|    Five-Star Band Member   |"
    echo "------------------------------"
    echo "|      JL | John Lenon       |"
    echo "------------------------------"
    echo "|      AY | Angus Young      |"
    echo "------------------------------"
    echo "|      FM | Freddie Mercury  |"
    echo "------------------------------"
    echo "|      DH | Debbie Harry     |"
    echo "------------------------------"
    echo "|      KC | Kurt Cobain      |"
	echo "------------------------------"
    echo
	CheckBandMember
}

# CheckBandMember function checks if the user input band member is valid or not.
CheckBandMember(){
	echo -n "Choose any three band members from the option (For Eg: - JL For John Lenon): "
	read BandMem1 BandMem2 BandMem3 BandMem4
	BandMember1=$BandMem1
	BandMember2=$BandMem2
	BandMember3=$BandMem3
	BandMember4=$BandMem4
	if [ -z $BandMember1 ] || [ -z $BandMember2 ] || [ -z $BandMember3 ]
	then
		echo
		echo "================ Invalid Input!! =================="
		echo " Please choose three band members from the option. "
		echo "==================================================="
		echo
		CheckBandMember
	elif [ ! -z $BandMember4 ]
	then
		echo
		echo "============== Invalid Input!! =================="
		echo "      You can not choose four band members.      "
		echo "================================================="
		echo
		CheckBandMember
	else
		if [ $BandMember1 != ${bandmembers[0]} ] && [ $BandMember1 != ${bandmembers[1]} ] && [ $BandMember1 != ${bandmembers[2]} ] && [ $BandMember1 != ${bandmembers[3]} ] && [ $BandMember1 != ${bandmembers[4]} ]
			then
				echo
				echo "=============================== Invalid Input!! =================================="
				echo " Please choose correct band member from the option (For Eg: - JL For John Lenon). "
				echo "=================================================================================="
				echo
				CheckBandMember
			elif [ $BandMember2 != ${bandmembers[0]} ] && [ $BandMember2 != ${bandmembers[1]} ] && [ $BandMember2 != ${bandmembers[2]} ] && [ $BandMember2 != ${bandmembers[3]} ] && [ $BandMember2 != ${bandmembers[4]} ]
			then
				echo
				echo "=============================== Invalid Input!! =================================="
				echo " Please choose correct band member from the option (For Eg: - JL For John Lenon). "
				echo "=================================================================================="
				echo
				CheckBandMember
			elif [ $BandMember3 != ${bandmembers[0]} ] && [ $BandMember3 != ${bandmembers[1]} ] && [ $BandMember3 != ${bandmembers[2]} ] && [ $BandMember3 != ${bandmembers[3]} ] && [ $BandMember3 != ${bandmembers[4]} ]
			then
				echo
				echo "=============================== Invalid Input!! =================================="
				echo " Please choose correct band member from the option (For Eg: - JL For John Lenon). "
				echo "=================================================================================="
				echo
				CheckBandMember
		else
			if [ $BandMember1 == $BandMember2 ]
			then
				echo
				echo "================= Invalid Input!! ======================"
				echo " First BandMember and Second BandMember cannot be same. "
				echo "========================================================"
				echo
				CheckBandMember
			elif [ $BandMember2 == $BandMember3 ]
			then	
				echo
				echo "================= Invalid Input!! ======================"
				echo " Second BandMember and Third BandMember cannot be same. "
				echo "========================================================"
				echo
				CheckBandMember
			elif [ $BandMember1 == $BandMember3 ]
			then	
				echo
				echo "================= Invalid Input!! ====================="
				echo " First BandMember and Third BandMember cannot be same. "
				echo "======================================================="
				echo
				CheckBandMember
			else
				PS3="Choose any one fivestar-band member from the option (For Eg: 1 for $BandMember1, 2 for $BandMember2 and 3 for $BandMember3): "
				select bandmem in $BandMember1 $BandMember2 $BandMember3
				do
					case $bandmem in
					"JL") echo
					echo "============= Unfortunately! ================"
					echo "    The file for $bandmem does not exist.    "
					echo "============================================="
					BandName
					;;
					"AY") echo
					cat AY
					PlayAgain
					;;
					"FM") echo
					echo "============= Unfortunately! ================"
					echo "    The file for $bandmem does not exist.    "
					echo "============================================="
			    	BandName
					;;
					"DH") echo
					cat DH
					PlayAgain
					;;
					"KC") echo
					cat KC
					PlayAgain
					;;
					*)
					echo
					echo "============================ Invalid Input!! ================================="
					echo " Please choose 1 for $BandMember1, 2 for $BandMember2 and 3 for $BandMember3. "
					echo "=============================================================================="
					BandName
					esac
					break
				done
			fi
		fi
	fi
}

# PlayAgain function allows user to play again.
PlayAgain(){
	echo
	echo -n "Do you want to play again (Yes/No)?:"
	read answer
	case $answer in
	"Yes") BandName
	;;
	"Y") BandName
	;;
	"N") figlet "Program Terminated!"
	exit
	;;
	"No") figlet "Program Terminated!"
	exit
	;;
	*)
	echo
	echo "======== Invalid Input!! =========="
	echo "      Please type Yes or No        "
	echo "==================================="
	PlayAgain
	esac
}

Start $1 $2
