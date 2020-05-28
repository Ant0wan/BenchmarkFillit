#!/bin/bash
# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    benchmarkingFillit.sh                              :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abarthel <abarthel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/12/30 19:44:21 by abarthel          #+#    #+#              #
#    Updated: 2018/12/31 18:55:00 by abarthel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Time default value. Set to 1 to benchmark time 0 not to time tests
time=0


# Bin name
bin="fillit"


# Tests directory
test_dir="tests/"


# Reference directory
ref_dir="ref/"


# Tests .fillit
invalid_test=("inv1.fillit" "inv2.fillit" "inv3.fillit" "invalid_sample.fillit" "toomuch.fillit" "/dev/urandom" "." " " "test/")

super_easy=("valid_sample.fillit" "valid_sample_easy.fillit" "valid_subject_perfect.fillit" "single_square.fillit" "sample_subject1.fillit" "hardcore18.fillit" "benchmark3.fillit" "benchmark4.fillit" "benchmark5.fillit" "benchmark6.fillit" "benchmark7.fillit" "lines.fillit" "lines15.fillit" "lines16.fillit" "lines17.fillit" "lines18.fillit" "lines18bis.fillit" "squareinvert3x3_2tetri.fillit" "twopiecestricky.fillit")

easy=("benchmark21.fillit" "valid_sample2.fillit" "benchmark8.fillit" "benchmark9.fillit" "benchmark10.fillit" "benchmark13.fillit" "alphabet_valid_sample.fillit")

medium=("benchmark11.fillit" "benchmark12.fillit" "perfect_square_valid_sample.fillit")

hardcore=("benchmark14.fillit" "benchmark15.fillit" "benchmark16.fillit" "benchmark17.fillit" "benchmark22.fillit" "benchmark.fillit" "lines19.fillit" "lines20.fillit" "lines26.fillit" "benchmark18.fillit" "benchmark19.fillit" "benchmark20.fillit")


# Header
function header() {
	local line=("      _____ _____ __    ___               __                  __  " "     / __(_) / (_) /_  / _ )___ ___  ____/ /  __ _  ___ _____/ /__" "    / _// / / / / __/ / _  / -_) _ \\/ __/ _ \\/  ' \\/ _ \`/ __/  \'_/" "   /_/ /_/_/_/_/\__/ /____/\__/_//_/\__/_//_/_/_/_/\_,_/_/ /_/\\_\\    " "\n              last update 2020-05   version 1.1  script by abarthel\n\n")
	local var2=({196..214..6} 251)

	for (( i=0 ; i < ${#line[@]} ; ++i ))
	do
		printf "\033[38;5;${var2[i]}m${line[i]}\033[0m\n"
	done
}


# Pull fillit used for benchmark
function pull_reference() {
	folder="ref/"
	local url="https://github.com/Ant0wan/Fillit"
	git clone $url $folder && cd $folder && CFLAGS="-O3" make &>/dev/null
}


# Display choice
function display_choice() {
	bar="=================================="
	printf "\n\033[38;5;$1m$bar\n\t$opt\n$bar\n\033[0m"
}


# Display test
function display_test() {
	printf "\n> filename:\033[92m $1 \033[0m\n"
}


# Launch test
function launch_tests() {
	for t in $@
	do
		display_test $t
		diff <((time ./$ref_dir$bin $test_dir$t) 2>timeA ) <((time ./$bin $test_dir$t) 2>timeB ) &> diff.log
		if [[ $(cat diff.log) ]]
		then
			cat diff.log
			printf "\033[31m[KO]\033[0m\n"
		else
			printf "\033[32m[OK]\033[0m\n"
		fi
		rm -rf diff.log
		if ((time))
		then
			printf "\nref time:"
			cat timeA && rm timeA
			printf "\nyour time:"
			cat timeB && rm timeB
		fi
	done
}


# Time question
function do_yo_time() {
	printf "\n"
	local answer=''
	read -p "Do you wish to benchmark time as well? [y/n] " answer
	case $answer in
		[Yy1]* )
			printf "\033[38;5;227mExecution time will be benchmarked.\n"
			time=1
	esac
}


# Menu
function menu_exec() {
	printf "\n"
	local COLUMNS=12
	local PS3="
	Please enter your choice: "
	local options=("Test invalid inputs" "Super easy tests" "Easy tests" "Medium tests" "Hardcore tests" "Quit")
	printf "\033[38;5;118mMENU\n\033[0m\n"
	select opt in "${options[@]}"
	do
		case $opt in
			"Test invalid inputs")
				display_choice 160
				launch_tests ${invalid_test[@]}
				break
				;;
			"Super easy tests")
				display_choice 46
				launch_tests ${super_easy[@]}
				break
				;;
			"Easy tests")
				display_choice 118
				launch_tests ${easy[@]}
				break
				;;
			"Medium tests")
				display_choice 202
				launch_tests ${medium[@]}
				break
				;;
			"Hardcore tests")
				display_choice 165
				launch_tests ${hardcore[@]}
				break
				;;
			"Quit")
				break
				;;
			*)
				break
				;;
		esac
	done
	exit
}


# Main execution
header
pull_reference
do_yo_time
menu_exec
