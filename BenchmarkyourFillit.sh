#!/bin/sh
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

# Header
echo ""
echo ""
echo ""
echo "  \033[35m    _____ _____ __    ___               __                  __  "
echo "     / __(_) / (_) /_  / _ )___ ___  ____/ /  __ _  ___ _____/ /__"
echo "    / _// / / / / __/ / _  / -_) _ \\/ __/ _ \\/  ' \\/ _ \`/ __/  \'_/"
echo "   /_/ /_/_/_/_/\__/ /____/\__/_//_/\__/_//_/_/_/_/\_,_/_/ /_/\\_\\    \033[0m"                                                            
echo "              last update \033[96m2018-12\033[0m   version \033[96m0.1\033[0m  script by \033[96mabarthel\033[0m"
echo ""
echo ""
echo ""
sleep 1

# Functions
s1=""
s2=""

ft_compare() {
	if [ "$s1" == "$s2" ]
		then
			echo "\033[32m[OK]\033[0m"
		else
			echo "\033[31m[KO]\033[0m"
	fi
}

# Select Case && Menu
COLUMNS=12
PS3="Please enter your choice: "
options=("Test invalid inputs" "Super easy tests" "Easy tests" "Medium tests" "Hardcore tests" "Quit")
echo "\033[34mMENU\n\033[0m"
select opt in "${options[@]}"
do
	case $opt in

# Invalid Inputs
		"Test invalid inputs")
			echo "\n\033[31m==================================\033[0m"
			echo "\033[31m          INVALID INPUT       \033[0m"
			echo "\033[31m==================================\033[0m"
			sleep 1

			echo "\n> filename: \033[92minv1.fillit\033[0m"
			echo "\033[94merror\033[0m"
			echo "\033[93min 0.003s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			s2="error"
			s1=$(time ./fillit tests/inv1.fillit)
			echo "$s1"
			ft_compare $s1 $s2	

			echo "\n\n------"
			echo "> filename: \033[92minv2.fillit\033[0m"
			echo "\033[94merror\033[0m"
			echo "\033[93min 0.003s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			s2="error"
			s1=$(time ./fillit tests/inv2.fillit)
			echo "$s1"
			ft_compare $s1 $s2	

			echo "\n\n------"
			echo "> filename: \033[92minv3.fillit\033[0m"
			echo "\033[94merror\033[0m"
			echo "\033[93min 0.002s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			s2="error"
			s1=$(time ./fillit tests/inv3.fillit)
			echo "$s1"
			ft_compare $s1 $s2	

			echo "\n\n------"
			echo "> filename: \033[92minvalid_sample.fillit\033[0m"
			echo "\033[94merror\033[0m"
			echo "\033[93min 0.003s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			s2="error"
			s1=$(time ./fillit tests/invalid_sample.fillit)
			echo "$s1"
			ft_compare $s1 $s2	
			
			echo "\n\n------"
			echo "> filename: \033[92mtoomuch.fillit\033[0m"
			echo "\033[94merror\033[0m"
			echo "\033[93min 0.003s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			s2="error"
			s1=$(time ./fillit tests/toomuch.fillit)
			echo "$s1"
			ft_compare $s1 $s2	
			break
			;;

# Valid Inputs Super Easy Tests
		"Super easy tests")	
			echo ""
			echo "\n\n\033[32m=====================================\033[0m"
			echo "\033[32m    VALID INPUT - Super Easy Test    \033[0m"
			echo "\033[32m=====================================\033[0m"
			sleep 1

			echo "\n> filename: \033[92mvalid_sample.fillit\033[0m"
			echo "\033[94mABBBB\nACCC.\nA..C.\nADD..\nDD...\033[0m"
			echo "\033[93min 0.004s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			time ./fillit tests/valid_sample.fillit

			echo "\n\n------"
			echo "> filename: \033[92mvalid_sample_easy.fillit\033[0m"
			echo "\033[94mABCD.\nABCD.\nABCD.\nABCDE\n..EEE\033[0m"
			echo "\033[93min 0.003s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			time ./fillit tests/valid_sample_easy.fillit

			echo "\n\n------"
			echo "> filename: \033[92mvalid_subject_perfect.fillit\033[0m"
			echo "\033[94mDDAA\nCDDA\nCCCA\nBBBB\033[0m"
			echo "\033[93min 0.003s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			time ./fillit tests/valid_subject_perfect.fillit

			echo "\n\n------"
			echo "> filename: \033[92msingle_square.fillit\033[0m"
			echo "\033[94mAA\nAA\033[0m"
			echo "\033[93min 0.003s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			time ./fillit tests/single_square.fillit

			echo "\n\n------"
			echo "> filename: \033[92msample_subject1.fillit\033[0m"
			echo "\033[94mABBBB.\nACCCEE\nAFFCEE\nA.FFGG\nHHHDDG\n.HDD.G\033[0m"
			echo "\033[93min 0.003s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			time ./fillit tests/sample_subject1.fillit

			echo "\n\n------"
			echo "> filename: \033[92mhardcore18.fillit\033[0m"
			echo "\033[94mAAAABBBB.\nCCCCDDDD.\nEEFFFF.M.\nEEGGGG.MM\nHHHHIIIIM\nJJJJKKKK.\nLLLLQNNNN\nOOOOQQPP.\nRRRR.Q.PP\033[0m"
			echo "\033[93min 0.003s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			time ./fillit tests/hardcore18.fillit

			echo "\n\n------"
			echo "> filename: \033[92mfillit benchmark3.fillit\033[0m"
			echo "\033[94m.AA.\nAABB\n.CCB\nCC.B\033[0m"
			echo "\033[93min 0.003s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			time ./fillit tests/benchmark3.fillit

			echo "\n\n------"
			echo "> filename: \033[92mfillit benchmark4.fillit\033[0m"
			echo "\033[94m.AABB\nAACCB\n.CC.B\n.DD..\nDD...\033[0m"
			echo "\033[93min 0.003s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			time ./fillit tests/benchmark4.fillit

			echo "\n\n------"
			echo "> filename: \033[92mfillit benchmark5.fillit\033[0m"
			echo "\033[94m.AABB\nAACCB\n.CC.B\n.DDEE\nDDEE.\033[0m"
			echo "\033[93min 0.003s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			time ./fillit tests/benchmark5.fillit

			echo "\n\n------"
			echo "> filename: \033[92mfillit benchmark6.fillit\033[0m"
			echo "\033[94m.AABB.\nAACCB.\n.CC.B.\n.DDEE.\nDDEEFF\n...FF.\033[0m"
			echo "\033[93min 0.003s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			time ./fillit tests/benchmark6.fillit

			echo "\n\n------"
			echo "> filename: \033[92mbenchmark7.fillit\033[0m"
			echo "\033[94m.AACC.\nAACCBB\n.DDEEB\nDDEE.B\n.FFGG.\nFFGG..\033[0m"
			echo "\033[93min 0.004s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			time ./fillit tests/benchmark7.fillit

			echo "\n\n------"
			echo "> filename: \033[92mlines.fillit\033[0m"
			echo "\033[94mAAAABBBB.\nCCCCDDDD.\nEEEEFFFF.\nGGGGHHHH.\nIIIIJJJJ.\nKKKKLLLL.\nMMMMNNNN.\nOOOOPPPP.\nQQQQRRRR.\033[0m"
			echo "\033[93min 0.004s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			time ./fillit tests/lines.fillit

			echo "\n\n------"
			echo "> filename: \033[92mlines15.fillit\033[0m"
			echo "\033[94mAAAABBBB\nCCCCDDDD\nEEEEFFFF\nGGGGHHHH\nIIIIJJJJ\nKKKKLLLL\nMMMMNNNN\nOOOO....\033[0m"
			echo "\033[93min 0.005s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			time ./fillit tests/lines15.fillit

			echo "\n\n------"
			echo "> filename: \033[92mlines16.fillit\033[0m"
			echo "\033[94mAAAABBBB\nCCCCDDDD\nEEEEFFFF\nGGGGHHHH\nIIIIJJJJ\nKKKKLLLL\nMMMMNNNN\nOOOOPPPP\033[0m"
			echo "\033[93min 0.003s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			time ./fillit tests/lines16.fillit

			echo "\n\n------"
			echo "> filename: \033[92mlines17.fillit\033[0m"
			echo "\033[94mAAAABBBB.\nCCCCDDDD.\nEEEEFFFF.\nGGGGHHHH.\nIIIIJJJJ.\nKKKKLLLL.\nMMMMNNNN.\nOOOOPPPP.\nQQQQ.....\033[0m"
			echo "\033[93min 0.003s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			time ./fillit tests/lines17.fillit

			echo "\n\n------"
			echo "> filename: \033[92mlines18.fillit\033[0m"
			echo "\033[94mAAAABBBB.\nCCCCDDDD.\nEEEEFFFF.\nGGGGHHHH.\nIIIIJJJJ.\nKKKKLLLL.\nMMMMNNNN.\nOOOOPPPP.\nQQQQRRRR.\033[0m"
			echo "\033[93min 0.003s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			time ./fillit tests/lines18.fillit

			echo "\n\n------"
			echo "> filename: \033[92mlines18bis.fillit\033[0m"
			echo "\033[94mAAAABBBBR\nCCCCDDDDR\nEEEEFFFFR\nGGGGHHHHR\nIIIIJJJJ.\nKKKKLLLL.\nMMMMNNNN.\nOOOOPPPP.\nQQQQ.....\033[0m"
			echo "\033[93min 0.003s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			time ./fillit tests/lines18bis.fillit
			
			echo "\n\n------"
			echo "> filename: \033[92msquareinvert3x3_2tetri.fillit\033[0m"
			echo "\033[94mBBB\nB.A\nAAA\033[0m"
			echo "\033[93min 0.003s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			time ./fillit tests/squareinvert3x3_2tetri.fillit
			
			echo "\n\n------"
			echo "> filename: \033[92mtwopiecestricky.fillit\033[0m"
			echo "\033[94mABB.\nABB.\nA...\nA...\033[0m"
			echo "\033[93min 0.003s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			time ./fillit tests/twopiecestricky.fillit
			break
			;;

# Valid Inputs Easy Tests
		"Easy tests")
			echo ""
			echo "\n\n\033[32m=====================================\033[0m"
			echo "\033[32m       VALID INPUT - Easy Test       \033[0m"
			echo "\033[32m=====================================\033[0m"
			sleep 1

			echo "\n\n> filename: \033[92mbenchmark21.fillit\033[0m"
			echo "\033[94m.AABB.CCDD\nAAEEBCCDD.\n.EE.BFFGG.\n.HH.FFGGJJ\nHHIIIKKJJ.\n.LLIKKMMOO\nLLNNNMMOOQ\n.PPNT.RR.Q\nPPSSTRRUUQ\n.SS.TTUU.Q\033[0m"
			echo "\033[93min 0.003s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			time ./fillit tests/benchmark21.fillit
			
			echo "\n\n------"
			echo "> filename: \033[92mvalid_sample2.fillit\033[0m"
			echo "\033[94m.ABBBBE\nAA.CCCE\nFA.DDCE\nFGDDHHE\nFG.KKHH\nFGKKJJJ\n.GIIIIJ\033[0m"
			echo "\033[93min 0.014s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			time ./fillit tests/valid_sample2.fillit

			echo "\n\n------"
			echo "> filename: \033[92mbenchmark8.fillit\033[0m"
			echo "\033[94m.AABB..\nAACCB..\n.CC.BDD\n.EE.DD.\nEEFFGG.\n.FFGGHH\n....HH.\033[0m"
			echo "\033[93min 0.022s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			time ./fillit tests/benchmark8.fillit

			echo "\n\n------"
			echo "> filename: \033[92mbenchmark9.fillit\033[0m"
			echo "\033[94m.AABB..\nAACCB..\n.CC.B..\n.DDEEFF\nDDEEFF.\nIIIGGHH\n.IGGHH.\033[0m"
			echo "\033[93min 0.021s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			time ./fillit tests/benchmark9.fillit

			echo "\n\n------"
			echo "> filename: \033[92mbenchmark10.fillit\033[0m"
			echo "\033[94m.AACCBB\nAACCDDB\n.EEDD.B\nEEFFGG.\n.FFGG..\nIIIHHJJ\n.IHHJJ.\033[0m"
			echo "\033[93min 0.069s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			time ./fillit tests/benchmark10.fillit

			echo "\n\n------"
			echo "> filename: \033[92mbenchmark13.fillit\033[0m"
			echo "\033[94m.AABB.CC\nAADDBCC.\n.DD.B.EE\n.FFGGEE.\nFFGGHHJJ\nIIIHHJJ.\n.IKKLLMM\n.KKLLMM.\033[0m"
			echo "\033[93min 0.086s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			time ./fillit tests/benchmark13.fillit

			echo "\n\n------"
			echo "> filename: \033[92malphabet_valid_sample.fillit\033[0m"
			echo "\033[94mAA..B.CDDDD\n.AABBCC.EGG\nFFFBICEEEGG\nHHFIIIJKK..\nHHL.M.J.KKO\n.LLMM.JJOOO\n.LWMNNNNPPP\nVWWQQ.XRRRP\nVVWQQXX.YRZ\nVSSTTTXYYZZ\nSS.TUUUUY.Z\033[0m"
			echo "\033[93min 0.346s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			time ./fillit tests/alphabet_valid_sample.fillit 
			break
			;;

# Valid Inputs Medium Tests
		"Medium tests")
			echo ""
			echo "\n\n\033[33m=====================================\033[0m"
			echo "\033[33m       VALID INPUT - Medium Tests       \033[0m"
			echo "\033[33m=====================================\033[0m"
			sleep 1

			echo "\n\n> filename: \033[92mbenchmark11.fillit\033[0m"
			echo "\033[94m.AABB.CC\nAADDBCC.\n.DD.BEE.\n.FF.EEGG\nFFHH.GG.\n.HHIIIJJ\n.KK.IJJ.\nKK......\033[0m"
			echo "\033[93min 23.473s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			time ./fillit tests/benchmark11.fillit

			echo "\n\n------"
			echo "> filename: \033[92mbenchmark12.fillit\033[0m"
			echo "\033[94m.AABB.CC\nAADDBCC.\n.DD.BEE.\n.FF.EEGG\nFFHH.GG.\n.HH.III.\n.JJKKILL\nJJKK.LL.\033[0m"
			echo "\033[93min 23.838s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			time ./fillit tests/benchmark12.fillit

			echo "\n\n------"
			echo "> filename: \033[92mperfect_square_valid_sample.fillit\033[0m"
			echo "\033[94mAABBBKEE\nACBKKKEE\nACCCFFJL\nDDDDFFJL\nHGGMNPJL\nHHGMNPJL\nIHGMNPOO\nIIIMNPOO\033[0m"
			echo "\033[93min 1m29.170s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			time ./fillit tests/perfect_square_valid_sample.fillit
			break
			;;

# Valid Inputs Hardcore Tests
		"Hardcore tests")
			echo ""
			echo "\n\n\033[35m=====================================\033[0m"
			echo "\033[35m\xE2\x98\xA0   VALID INPUT - Hardcore Tests   \xE2\x98\xA0   \033[0m"
			echo "\033[35m=====================================\033[0m"
			sleep 1

			echo "\033[32m\n    Please, make yourself comfortable, this will take a long time... \xE2\x98\x95 \033[0m"
			echo "\n"
			sleep 1

			echo "\n\n> filename: \033[92mbenchmark14.fillit\033[0m"
			echo "\033[94munknown\033[0m"
			echo "\033[93min n.a. s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			time ./fillit tests/benchmark14.fillit

			echo "\n\n------"
			echo "> filename: \033[92mbenchmark15.fillit\033[0m"
			echo "\033[94munknown\033[0m"
			echo "\033[93min n.a. s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			time ./fillit tests/benchmark15.fillit

			echo "\n\n------"
			echo "> filename: \033[92mbenchmark16.fillit\033[0m"
			echo "\033[94munknown\033[0m"
			echo "\033[93min n.a. s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			time ./fillit tests/benchmark16.fillit

			echo "\n\n------"
			echo "> filename: \033[92mbenchmark17.fillit\033[0m"
			echo "\033[94munknown\033[0m"
			echo "\033[93min n.a. s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			time ./fillit tests/benchmark17.fillit

			echo "\n\n------"
			echo "> filename: \033[92mbenchmark22.fillit\033[0m"
			echo "\033[94munknown\033[0m"
			echo "\033[93min n.a. s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			time ./fillit tests/benchmark22.fillit

			echo "\n\n------"
			echo "> filename: \033[92mbenchmark.fillit\033[0m"
			echo "\033[94munknown\033[0m"
			echo "\033[93min n.a. s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			time ./fillit tests/benchmark.fillit

			echo "\n\n------"
			echo "> filename: \033[92mlines19.fillit\033[0m"
			echo "\033[94munknown\033[0m"
			echo "\033[93min n.a. s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			time ./fillit tests/lines19.fillit

			echo "\n\n------"
			echo "> filename: \033[92mlines20.fillit\033[0m"
			echo "\033[94munknown\033[0m"
			echo "\033[93min n.a. s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			time ./fillit tests/lines20.fillit

			echo "\n\n------"
			echo "> filename: \033[92mlines26.fillit\033[0m"
			echo "\033[94munknown\033[0m"
			echo "\033[93min n.a. s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			time ./fillit tests/lines26.fillit

			echo "\n\n------"
			echo "> filename: \033[92mbenchmark18.fillit\033[0m"
			echo "\033[94munknown\033[0m"
			echo "\033[93min n.a. s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			time ./fillit tests/benchmark18.fillit

			echo "\n\n------"
			echo "> filename: \033[92mbenchmark19.fillit\033[0m"
			echo "\033[94munknown\033[0m"
			echo "\033[93min n.a. s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			time ./fillit tests/benchmark19.fillit

			echo "\n\n------"
			echo "> filename: \033[92mbenchmark20.fillit\033[0m"
			echo "\033[94munknown\033[0m"
			echo "\033[93min n.a. s\033[0m"
			echo "\n\033[92myours ↙\033[0m"
			time ./fillit tests/benchmark20.fillit
			break
			;;

# Quit && Else
		"Quit")
			break
			;;
		*)
			break
			;;
	esac
done

exit

#echo "\n\n> filename: \033[92mhardcore_valid_sample.fillit\033[0m"
#echo "\033[94m\033[0m"
#echo "\033[93min s\033[0m"
#echo "\n\033[92myours ↙\033[0m"
#time ./fillit hardcore_valid_sample.fillit
