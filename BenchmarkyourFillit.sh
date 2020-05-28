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

# Tests directory
test_dir="tests/"


# Tests .fillit
invalid_test=("inv1.fillit" "inv2.fillit" "inv3.fillit" "invalid_sample.fillit" "toomuch.fillit" "/dev/urandom" "." " " "*")
super_easy=("valid_sample.fillit" "valid_sample_easy.fillit" "valid_subject_perfect.fillit" "single_square.fillit" "sample_subject1.fillit" "hardcore18.fillit" "benchmark3.fillit" "benchmark4.fillit" "benchmark5.fillit" "benchmark6.fillit" "benchmark7.fillit" "lines.fillit" "lines15.fillit" "lines16.fillit" "lines17.fillit" "lines18.fillit" "lines18bis.fillit" "squareinvert3x3_2tetri.fillit" "twopiecestricky.fillit")
easy=()
medium=()
hardcore=()


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
	git clone $url $folder && cd $folder && make
}


# Display choice
function display_choice() {
	bar="=================================="
	printf "\n\033[38;5;$1m$bar\n\t$opt\n$bar\n\033[0m"
	sleep 1
}


# Display test
function display_test() {
	printf "\n> filename:\033[92m $1 \033[0m\n"
}


# Menu
function menu_exec() {
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
				display_test "testname"
				break
				;;
			"Super easy tests")
				display_choice 46
				break
				;;
			"Easy tests")
				display_choice 118
				break
				;;
			"Medium tests")
				display_choice 202
				break
				;;
			"Hardcore tests")
				display_choice 165
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
#pull_reference
menu_exec


## Functions
#s1=""
#s2=""
#
#ft_compare() {
#	if [ "$s1" == "$s2" ]
#		then
#			printf "\033[32m[OK]\033[0m\n"
#		else
#			printf "\033[31m[KO]\033[0m\n"
#	fi
#}




## Invalid Inputs
#			printf "\n> filename: \033[92minv1.fillit\033[0m\n"
#			printf "\033[94merror\033[0m\n"
#			printf "\033[93min 0.003s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			s2="error"
#			s1=$(time ./fillit tests/inv1.fillit)
#			printf "$s1\n"
#			ft_compare $s1 $s2	
#
#			printf "\n\n------\n"
#			printf "> filename: \033[92minv2.fillit\033[0m\n"
#			printf "\033[94merror\033[0m\n"
#			printf "\033[93min 0.003s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			s2="error"
#			s1=$(time ./fillit tests/inv2.fillit)
#			printf "$s1\n"
#			ft_compare $s1 $s2	
#
#			printf "\n\n------\n"
#			printf "> filename: \033[92minv3.fillit\033[0m\n"
#			printf "\033[94merror\033[0m\n"
#			printf "\033[93min 0.002s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			s2="error"
#			s1=$(time ./fillit tests/inv3.fillit)
#			printf "$s1\n"
#			ft_compare $s1 $s2	
#
#			printf "\n\n------\n"
#			printf "> filename: \033[92minvalid_sample.fillit\033[0m\n"
#			printf "\033[94merror\033[0m\n"
#			printf "\033[93min 0.003s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			s2="error"
#			s1=$(time ./fillit tests/invalid_sample.fillit)
#			printf "$s1\n"
#			ft_compare $s1 $s2	
#			
#			printf "\n\n------\n"
#			printf "> filename: \033[92mtoomuch.fillit\033[0m\n"
#			printf "\033[94merror\033[0m\n"
#			printf "\033[93min 0.003s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			s2="error"
#			s1=$(time ./fillit tests/toomuch.fillit)
#			printf "$s1\n"
#			ft_compare $s1 $s2	
#
#			printf "\n\n------\n"
#			printf "> filename: \033[92m/dev/urandom\033[0m\n"
#			printf "\033[94merror\033[0m\n"
#			printf "\033[93min 0.003s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			s2="error"
#			s1=$(time ./fillit /dev/urandom)
#			printf "$s1\n"
#			ft_compare $s1 $s2	
#	
#			printf "\n\n------\n"
#			printf "> argument usage: \033[92m.\033[0m\n"
#			printf "\033[94merror\033[0m\n"
#			printf "\033[93min 0.003s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			s2="error"
#			s1=$(time ./fillit .)
#			printf "$s1\n"
#			ft_compare $s1 $s2	
#			break
#			;;
#
## Valid Inputs Super Easy Tests
#			printf ""
#			printf "\n\n\033[32m=====================================\033[0m\n"
#			printf "\033[32m    VALID INPUT - Super Easy Test    \033[0m\n"
#			printf "\033[32m=====================================\033[0m\n"
#			sleep 1
#
#			printf "\n> filename: \033[92mvalid_sample.fillit\033[0m\n"
#			printf "\033[94mABBBB\nACCC.\nA..C.\nADD..\nDD...\033[0m\n"
#			printf "\033[93min 0.004s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			time ./fillit tests/valid_sample.fillit
#
#			printf "\n\n------\n"
#			printf "> filename: \033[92mvalid_sample_easy.fillit\033[0m\n"
#			printf "\033[94mABCD.\nABCD.\nABCD.\nABCDE\n..EEE\033[0m\n"
#			printf "\033[93min 0.003s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			time ./fillit tests/valid_sample_easy.fillit
#
#			printf "\n\n------\n"
#			printf "> filename: \033[92mvalid_subject_perfect.fillit\033[0m\n"
#			printf "\033[94mDDAA\nCDDA\nCCCA\nBBBB\033[0m\n"
#			printf "\033[93min 0.003s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			time ./fillit tests/valid_subject_perfect.fillit
#
#			printf "\n\n------\n"
#			printf "> filename: \033[92msingle_square.fillit\033[0m\n"
#			printf "\033[94mAA\nAA\033[0m\n"
#			printf "\033[93min 0.003s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			time ./fillit tests/single_square.fillit
#
#			printf "\n\n------\n"
#			printf "> filename: \033[92msample_subject1.fillit\033[0m\n"
#			printf "\033[94mABBBB.\nACCCEE\nAFFCEE\nA.FFGG\nHHHDDG\n.HDD.G\033[0m\n"
#			printf "\033[93min 0.003s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			time ./fillit tests/sample_subject1.fillit
#
#			printf "\n\n------\n"
#			printf "> filename: \033[92mhardcore18.fillit\033[0m\n"
#			printf "\033[94mAAAABBBB.\nCCCCDDDD.\nEEFFFF.M.\nEEGGGG.MM\nHHHHIIIIM\nJJJJKKKK.\nLLLLQNNNN\nOOOOQQPP.\nRRRR.Q.PP\033[0m\n"
#			printf "\033[93min 0.003s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			time ./fillit tests/hardcore18.fillit
#
#			printf "\n\n------\n"
#			printf "> filename: \033[92mfillit benchmark3.fillit\033[0m\n"
#			printf "\033[94m.AA.\nAABB\n.CCB\nCC.B\033[0m\n"
#			printf "\033[93min 0.003s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			time ./fillit tests/benchmark3.fillit
#
#			printf "\n\n------\n"
#			printf "> filename: \033[92mfillit benchmark4.fillit\033[0m\n"
#			printf "\033[94m.AABB\nAACCB\n.CC.B\n.DD..\nDD...\033[0m\n"
#			printf "\033[93min 0.003s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			time ./fillit tests/benchmark4.fillit
#
#			printf "\n\n------\n"
#			printf "> filename: \033[92mfillit benchmark5.fillit\033[0m\n"
#			printf "\033[94m.AABB\nAACCB\n.CC.B\n.DDEE\nDDEE.\033[0m\n"
#			printf "\033[93min 0.003s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			time ./fillit tests/benchmark5.fillit
#
#			printf "\n\n------\n"
#			printf "> filename: \033[92mfillit benchmark6.fillit\033[0m\n"
#			printf "\033[94m.AABB.\nAACCB.\n.CC.B.\n.DDEE.\nDDEEFF\n...FF.\033[0m\n"
#			printf "\033[93min 0.003s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			time ./fillit tests/benchmark6.fillit
#
#			printf "\n\n------\n"
#			printf "> filename: \033[92mbenchmark7.fillit\033[0m\n"
#			printf "\033[94m.AACC.\nAACCBB\n.DDEEB\nDDEE.B\n.FFGG.\nFFGG..\033[0m\n"
#			printf "\033[93min 0.004s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			time ./fillit tests/benchmark7.fillit
#
#			printf "\n\n------\n"
#			printf "> filename: \033[92mlines.fillit\033[0m\n"
#			printf "\033[94mAAAABBBB.\nCCCCDDDD.\nEEEEFFFF.\nGGGGHHHH.\nIIIIJJJJ.\nKKKKLLLL.\nMMMMNNNN.\nOOOOPPPP.\nQQQQRRRR.\033[0m\n"
#			printf "\033[93min 0.004s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			time ./fillit tests/lines.fillit
#
#			printf "\n\n------\n"
#			printf "> filename: \033[92mlines15.fillit\033[0m\n"
#			printf "\033[94mAAAABBBB\nCCCCDDDD\nEEEEFFFF\nGGGGHHHH\nIIIIJJJJ\nKKKKLLLL\nMMMMNNNN\nOOOO....\033[0m\n"
#			printf "\033[93min 0.005s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			time ./fillit tests/lines15.fillit
#
#			printf "\n\n------\n"
#			printf "> filename: \033[92mlines16.fillit\033[0m\n"
#			printf "\033[94mAAAABBBB\nCCCCDDDD\nEEEEFFFF\nGGGGHHHH\nIIIIJJJJ\nKKKKLLLL\nMMMMNNNN\nOOOOPPPP\033[0m\n"
#			printf "\033[93min 0.003s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			time ./fillit tests/lines16.fillit
#
#			printf "\n\n------\n"
#			printf "> filename: \033[92mlines17.fillit\033[0m\n"
#			printf "\033[94mAAAABBBB.\nCCCCDDDD.\nEEEEFFFF.\nGGGGHHHH.\nIIIIJJJJ.\nKKKKLLLL.\nMMMMNNNN.\nOOOOPPPP.\nQQQQ.....\033[0m\n"
#			printf "\033[93min 0.003s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			time ./fillit tests/lines17.fillit
#
#			printf "\n\n------\n"
#			printf "> filename: \033[92mlines18.fillit\033[0m\n"
#			printf "\033[94mAAAABBBB.\nCCCCDDDD.\nEEEEFFFF.\nGGGGHHHH.\nIIIIJJJJ.\nKKKKLLLL.\nMMMMNNNN.\nOOOOPPPP.\nQQQQRRRR.\033[0m\n"
#			printf "\033[93min 0.003s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			time ./fillit tests/lines18.fillit
#
#			printf "\n\n------\n"
#			printf "> filename: \033[92mlines18bis.fillit\033[0m\n"
#			printf "\033[94mAAAABBBBR\nCCCCDDDDR\nEEEEFFFFR\nGGGGHHHHR\nIIIIJJJJ.\nKKKKLLLL.\nMMMMNNNN.\nOOOOPPPP.\nQQQQ.....\033[0m\n"
#			printf "\033[93min 0.003s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			time ./fillit tests/lines18bis.fillit
#			
#			printf "\n\n------\n"
#			printf "> filename: \033[92msquareinvert3x3_2tetri.fillit\033[0m\n"
#			printf "\033[94mBBB\nB.A\nAAA\033[0m\n"
#			printf "\033[93min 0.003s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			time ./fillit tests/squareinvert3x3_2tetri.fillit
#			
#			printf "\n\n------\n"
#			printf "> filename: \033[92mtwopiecestricky.fillit\033[0m\n"
#			printf "\033[94mABB.\nABB.\nA...\nA...\033[0m\n"
#			printf "\033[93min 0.003s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			time ./fillit tests/twopiecestricky.fillit
#			break
#			;;
#
## Valid Inputs Easy Tests
#			printf ""
#			printf "\n\n\033[32m=====================================\033[0m\n"
#			printf "\033[32m       VALID INPUT - Easy Test       \033[0m\n"
#			printf "\033[32m=====================================\033[0m\n"
#			sleep 1
#
#			printf "\n\n> filename: \033[92mbenchmark21.fillit\033[0m\n"
#			printf "\033[94m.AABB.CCDD\nAAEEBCCDD.\n.EE.BFFGG.\n.HH.FFGGJJ\nHHIIIKKJJ.\n.LLIKKMMOO\nLLNNNMMOOQ\n.PPNT.RR.Q\nPPSSTRRUUQ\n.SS.TTUU.Q\033[0m\n"
#			printf "\033[93min 0.003s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			time ./fillit tests/benchmark21.fillit
#			
#			printf "\n\n------\n"
#			printf "> filename: \033[92mvalid_sample2.fillit\033[0m\n"
#			printf "\033[94m.ABBBBE\nAA.CCCE\nFA.DDCE\nFGDDHHE\nFG.KKHH\nFGKKJJJ\n.GIIIIJ\033[0m\n"
#			printf "\033[93min 0.014s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			time ./fillit tests/valid_sample2.fillit
#
#			printf "\n\n------\n"
#			printf "> filename: \033[92mbenchmark8.fillit\033[0m\n"
#			printf "\033[94m.AABB..\nAACCB..\n.CC.BDD\n.EE.DD.\nEEFFGG.\n.FFGGHH\n....HH.\033[0m\n"
#			printf "\033[93min 0.022s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			time ./fillit tests/benchmark8.fillit
#
#			printf "\n\n------\n"
#			printf "> filename: \033[92mbenchmark9.fillit\033[0m\n"
#			printf "\033[94m.AABB..\nAACCB..\n.CC.B..\n.DDEEFF\nDDEEFF.\nIIIGGHH\n.IGGHH.\033[0m\n"
#			printf "\033[93min 0.021s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			time ./fillit tests/benchmark9.fillit
#
#			printf "\n\n------\n"
#			printf "> filename: \033[92mbenchmark10.fillit\033[0m\n"
#			printf "\033[94m.AACCBB\nAACCDDB\n.EEDD.B\nEEFFGG.\n.FFGG..\nIIIHHJJ\n.IHHJJ.\033[0m\n"
#			printf "\033[93min 0.069s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			time ./fillit tests/benchmark10.fillit
#
#			printf "\n\n------\n"
#			printf "> filename: \033[92mbenchmark13.fillit\033[0m\n"
#			printf "\033[94m.AABB.CC\nAADDBCC.\n.DD.B.EE\n.FFGGEE.\nFFGGHHJJ\nIIIHHJJ.\n.IKKLLMM\n.KKLLMM.\033[0m\n"
#			printf "\033[93min 0.086s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			time ./fillit tests/benchmark13.fillit
#
#			printf "\n\n------\n"
#			printf "> filename: \033[92malphabet_valid_sample.fillit\033[0m\n"
#			printf "\033[94mAA..B.CDDDD\n.AABBCC.EGG\nFFFBICEEEGG\nHHFIIIJKK..\nHHL.M.J.KKO\n.LLMM.JJOOO\n.LWMNNNNPPP\nVWWQQ.XRRRP\nVVWQQXX.YRZ\nVSSTTTXYYZZ\nSS.TUUUUY.Z\033[0m\n"
#			printf "\033[93min 0.346s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			time ./fillit tests/alphabet_valid_sample.fillit 
#			break
#			;;
#
## Valid Inputs Medium Tests
#			printf ""
#			printf "\n\n\033[33m=====================================\033[0m\n"
#			printf "\033[33m       VALID INPUT - Medium Tests       \033[0m\n"
#			printf "\033[33m=====================================\033[0m\n"
#			sleep 1
#
#			printf "\n\n> filename: \033[92mbenchmark11.fillit\033[0m\n"
#			printf "\033[94m.AABB.CC\nAADDBCC.\n.DD.BEE.\n.FF.EEGG\nFFHH.GG.\n.HHIIIJJ\n.KK.IJJ.\nKK......\033[0m\n"
#			printf "\033[93min 23.473s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			time ./fillit tests/benchmark11.fillit
#
#			printf "\n\n------\n"
#			printf "> filename: \033[92mbenchmark12.fillit\033[0m\n"
#			printf "\033[94m.AABB.CC\nAADDBCC.\n.DD.BEE.\n.FF.EEGG\nFFHH.GG.\n.HH.III.\n.JJKKILL\nJJKK.LL.\033[0m\n"
#			printf "\033[93min 23.838s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			time ./fillit tests/benchmark12.fillit
#
#			printf "\n\n------\n"
#			printf "> filename: \033[92mperfect_square_valid_sample.fillit\033[0m\n"
#			printf "\033[94mAABBBKEE\nACBKKKEE\nACCCFFJL\nDDDDFFJL\nHGGMNPJL\nHHGMNPJL\nIHGMNPOO\nIIIMNPOO\033[0m\n"
#			printf "\033[93min 1m29.170s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			time ./fillit tests/perfect_square_valid_sample.fillit
#			break
#			;;
#
## Valid Inputs Hardcore Tests
#			printf ""
#			printf "\n\n\033[35m=====================================\033[0m\n"
#			printf "\033[35m\xE2\x98\xA0   VALID INPUT - Hardcore Tests   \xE2\x98\xA0   \033[0m\n"
#			printf "\033[35m=====================================\033[0m\n"
#			sleep 1
#
#			printf "\033[32m\n    Please, make yourself comfortable, this will take a long time... \xE2\x98\x95 \033[0m\n"
#			printf "\n"
#			sleep 1
#
#			printf "\n\n> filename: \033[92mbenchmark14.fillit\033[0m\n"
#			printf "\033[94m.AABB.CC.\nAADDBCCEE\n.DD.B.EE.\n.FFGGHH..\nFFGGHHIII\n.JJKKLLI.\nJJKKLLMM.\nNNN..MM..\n.N.......\033[0m\n"
#			printf "\033[93min n.a. s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			time ./fillit tests/benchmark14.fillit
#
#			printf "\n\n------\n"
#			printf "> filename: \033[92mbenchmark15.fillit\033[0m\n"
#			printf "\033[94m.AABB.CC.\nAADDBCCEE\n.DD.B.EE.\n.FFGGHH..\nFFGGHHIII\n.JJKKLLI.\nJJKKLLMM.\nNNNOOMM..\n.NOO.....\033[0m\n"
#			printf "\033[93min n.a. s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			time ./fillit tests/benchmark15.fillit
#
#			printf "\n\n------\n"
#			printf "> filename: \033[92mbenchmark16.fillit\033[0m\n"
#			printf "\033[94m.AABB.CC.\nAADDBCCEE\n.DD.B.EE.\n.FFGGHH..\nFFGGHHIII\n.JJKKLLI.\nJJKKLLMM.\nNNNOOMMPP\n.NOO..PP.\033[0m\n"
#			printf "\033[93min n.a. s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			time ./fillit tests/benchmark16.fillit
#
#			printf "\n\n------\n"
#			printf "> filename: \033[92mbenchmark17.fillit\033[0m\n"
#			printf "\033[94m.AABB.CC.\nAADDBCCEE\nQDD.B.EE.\nQ.FFGGIII\nQFFGG..I.\nQHHJJKKLL\nHHJJKKLL.\nNNNMMOOPP\n.NMMOOPP.\033[0m\n"
#			printf "\033[93min n.a. s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			time ./fillit tests/benchmark17.fillit
#
#			printf "\n\n------\n"
#			printf "> filename: \033[92mbenchmark22.fillit\033[0m\n"
#			printf "\033[94m.AABB.CCDD\nAAEEBCCDDQ\n.EE.BFFGGQ\n.HH.FFGG.Q\nHHIIIJJKKQ\n.LLIJJKK..\nLLMMOOPPRR\nTMMOOPPRR.\nTNNNSSUUVV\nTTNSSUUVV.\033[0m\n"
#			printf "\033[93min n.a. s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			time ./fillit tests/benchmark22.fillit
#
#			printf "\n\n------\n"
#			printf "> filename: \033[92mbenchmark.fillit\033[0m\n"
#			printf "\033[94m.AACCDDBBQ\nAACCDDEEBQ\n.FFGGEE.BQ\nFFGGHHIIIQ\nNNNHHJJIKK\nTNLLJJ.KK.\nTLLMMOOPP.\nTTMMOOPPRR\n.SSUUVVRR.\nSSUUVVWWWW\033[0m\n"
#			printf "\033[93min n.a. s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			time ./fillit tests/benchmark.fillit
#
#			printf "\n\n------\n"
#			printf "> filename: \033[92mlines19.fillit\033[0m\n"
#			printf "\033[94mAAAABBBB..\nCCCCDDDD..\nEEEEFFFF..\nGGGGHHHH..\nIIIIJJJJ..\nKKKKLLLL..\nMMMMNNNN..\nOOOOPPPP..\nQQQQRRRR..\nSSSS......\033[0m\n"
#			printf "\033[93min n.a. s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			time ./fillit tests/lines19.fillit
#
#			printf "\n\n------\n"
#			printf "> filename: \033[92mlines20.fillit\033[0m\n"
#			printf "\033[94mAAAABBBB..\nCCCCDDDD..\nEEEEFFFF..\nGGGGHHHH..\nIIIIJJJJ..\nKKKKLLLL..\nMMMMNNNN..\nOOOOPPPP..\nQQQQRRRR..\nSSSSTTTT..\033[0m\n"
#			printf "\033[93min n.a. s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			time ./fillit tests/lines20.fillit
#
#			printf "\n\n------\n"
#			printf "> filename: \033[92mlines26.fillit\033[0m\n"
#			printf "\033[94mAAAABBBBCCCC\nDDDDEEEEFFFF\nGGGGHHHHIIII\nJJJJKKKKLLLL\nMMMMNNNNOOOO\nPPPPQQQQRRRR\nSSSSTTTTUUUU\nVVVVWWWWXXXX\nYYYYZZZZ....\n............\n............\n............\033[0m\n"
#			printf "\033[93min n.a. s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			time ./fillit tests/lines26.fillit
#
#			printf "\n\n------\n"
#			printf "> filename: \033[92mbenchmark18.fillit\033[0m\n"
#			printf "\033[94m.AACCDDBB\nAACCDDEEB\n.FFGGEE.B\nFFGGHHJJ.\nIIIHHJJKK\nQILLMMKK.\nQLLMMNNN.\nQ.OOPPNRR\nQOOPP.RR.\033[0m\n"
#			printf "\033[93min n.a. s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			time ./fillit tests/benchmark18.fillit
#
#			printf "\n\n------\n"
#			printf "> filename: \033[92mbenchmark19.fillit\033[0m\n"
#			printf "\033[94m.AABB.CCDD\nAAEEBCCDD.\n.EE.BFFGG.\n.HH.FFGGJJ\nHHIIIKKJJ.\n.LLIKKMMOO\nLLNNNMMOOQ\n.PPNRRSS.Q\nPP.RRSS..Q\n.........Q\033[0m\n"
#			printf "\033[93min n.a. s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			time ./fillit tests/benchmark19.fillit
#
#			printf "\n\n------\n"
#			printf "> filename: \033[92mbenchmark20.fillit\033[0m\n"
#			printf "\033[94m.AABB.CCDD\nAAEEBCCDD.\n.EE.BFFGG.\n.HH.FFGGJJ\nHHIIIKKJJ.\n.LLIKKMMOO\nLLNNNMMOOQ\n.PPNRR.T.Q\nPP.RRSST.Q\n....SS.TTQ\033[0m\n"
#			printf "\033[93min n.a. s\033[0m\n"
#			printf "\n\033[92myours ↙\033[0m\n"
#			time ./fillit tests/benchmark20.fillit
#			break
#			;;
#
## Quit && Else
#
#exit
