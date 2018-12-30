# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    benchmarkingFillit.sh                              :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abarthel <abarthel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/12/30 19:44:21 by abarthel          #+#    #+#              #
#    Updated: 2018/12/30 20:36:41 by abarthel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash
echo "==> INVALID < ==\n"

echo "inv1.fillit"
echo "error"
echo "in 0.003s"
time ./fillit inv1.fillit

echo "inv2.fillit"
echo "error"
echo "in 0.003s"
time ./fillit inv2.fillit

echo "inv3.fillit"
echo "error"
echo "in 0.002s"
time ./fillit inv3.fillit

echo "invalid_sample.fillit"
echo "error"
echo "in 0.003s"
time ./fillit invalid_sample.fillit

echo "====> VALID <===\n"

echo "valid_sample.fillit"
echo "BBBB\nACCC.\nA..C.\nADD..\nDD..."
echo "in 0.004s"
time ./fillit valid_sample.fillit

echo "valid_sample2.fillit"
echo ".ABBBBE\nAA.CCCE\nFA.DDCE\nFGDDHHE\nFG.KKHH\nFGKKJJJ\n.GIIIIJ"
echo "in 0.016s"
time ./fillit valid_sample2.fillit

echo "valid_sample_easy.fillit"
echo "ABCD.\nABCD.\nABCD.\nABCDE\n..EEE"
echo "in 0.003s"
time ./fillit valid_sample_easy.fillit

echo "valid_subject_perfect.fillit"
echo "DDAA\nCDDA\nCCCA\nBBBB"
echo "in 0.003s"
time ./fillit valid_subject_perfect.fillit

echo "single_square.fillit"
echo "AA\nAA"
echo "in 0.003s"
time ./fillit single_square.fillit

echo "sample_subject1.fillit"
echo "ABBBB.\nACCCEE\nAFFCEE\nA.FFGG\nHHHDDG\n.HDD.G"
echo "in 0.003s"
time ./fillit sample_subject1.fillit

echo "perfect_square_valid_sample.fillit"
echo "AABBBKEE\nACBKKKEE\nACCCFFJL\nDDDDFFJL\nHGGMNPJL\nHHGMNPJL\nIHGMNPOO\nIIIMNPOO"
echo "in 1m40.741s"
time ./fillit perfect_square_valid_sample.fillit

echo "lines.fillit"
echo "AAAABBBB.\nCCCCDDDD.\nEEEEFFFF.\nGGGGHHHH.\nIIIIJJJJ.\nKKKKLLLL.\nMMMMNNNN.\nOOOOPPPP.\nQQQQRRRR."
echo "in 0.004s"
time ./fillit lines.fillit

echo "lines15.fillit"
echo "AAAABBBB\nCCCCDDDD\nEEEEFFFF\nGGGGHHHH\nIIIIJJJJ\nKKKKLLLL\nMMMMNNNN\nOOOO...."
echo "in 0.005s"
time ./fillit lines15.fillit


echo "lines16.fillit"
echo "AAAABBBB\nCCCCDDDD\nEEEEFFFF\nGGGGHHHH\nIIIIJJJJ\nKKKKLLLL\nMMMMNNNN\nOOOOPPPP"
echo "in 0.003s"
time ./fillit lines16.fillit

echo "lines17.fillit"
echo "AAAABBBB.\nCCCCDDDD.\nEEEEFFFF.\nGGGGHHHH.\nIIIIJJJJ.\nKKKKLLLL.\nMMMMNNNN.\nOOOOPPPP.\nQQQQ....."
echo "in 0.003s"
time ./fillit lines17.fillit

echo "lines18.fillit"
echo "AAAABBBB.\nCCCCDDDD.\nEEEEFFFF.\nGGGGHHHH.\nIIIIJJJJ.\nKKKKLLLL.\nMMMMNNNN.\nOOOOPPPP.\nQQQQRRRR."
echo "in 0.003s"
time ./fillit lines18.fillit

echo "lines18bis.fillit"
echo "AAAABBBBR\nCCCCDDDDR\nEEEEFFFFR\nGGGGHHHHR\nIIIIJJJJ.\nKKKKLLLL.\nMMMMNNNN.\nOOOOPPPP.\nQQQQ....."
echo "in 0.003s"
time ./fillit lines18bis.fillit

echo "lines19.fillit"
echo ""
echo "in s"
time ./fillit lines19.fillit

echo "lines20.fillit"
echo ""
echo "in s"
time ./fillit lines20.fillit

echo "lines26.fillit"
echo ""
echo "in s"
time ./fillit lines26.fillit

echo "alphabet_valid_sample.fillit"
echo ""
echo "in s"
time ./fillit alphabet_valid_sample.fillit 

echo "fillit benchmark3.fillit"
echo ".AA.\nAABB\n.CCB\nCC.B"
echo "in 0.003s"
time ./fillit benchmark3.fillit

echo "fillit benchmark4.fillit"
echo ".AABB\nAACCB\n.CC.B\n.DD..\nDD..."
echo "in 0.003s"
time ./fillit benchmark4.fillit

echo "fillit benchmark5.fillit"
echo ".AABB\nAACCB\n.CC.B\n.DDEE\nDDEE."
echo "in 0.003s"
time ./fillit benchmark5.fillit

echo "fillit benchmark6.fillit"
echo ".AABB.\nAACCB.\n.CC.B.\n.DDEE.\nDDEEFF\n...FF."
echo "in 0.003s"
time ./fillit benchmark6.fillit

echo "benchmark7.fillit"
echo ".AACC.\nAACCBB\n.DDEEB\nDDEE.B\n.FFGG.\nFFGG.."
echo "in 0.004s"
time ./fillit benchmark7.fillit

echo "benchmark8.fillit"
echo ".AABB..\nAACCB..\n.CC.BDD\n.EE.DD.\nEEFFGG.\n.FFGGHH\n....HH."
echo "in 0.024s"
time ./fillit benchmark8.fillit

echo "benchmark9.fillit"
echo ".AABB..\nAACCB..\n.CC.B..\n.DDEEFF\nDDEEFF.\nIIIGGHH\n.IGGHH."
echo "in 0.023s"
time ./fillit benchmark9.fillit

echo "benchmark10.fillit"
echo ".AACCBB\nAACCDDB\n.EEDD.B\nEEFFGG.\n.FFGG..\nIIIHHJJ\n.IHHJJ."
echo "in 0.076s"
time ./fillit benchmark10.fillit

echo "benchmark11.fillit"
echo ".AABB.CC\nAADDBCC.\n.DD.BEE.\n.FF.EEGG\nFFHH.GG.\n.HHIIIJJ\n.KK.IJJ.\nKK......"
echo "in 25.760s"
time ./fillit benchmark11.fillit

echo "benchmark12.fillit"
echo ".AABB.CC\nAADDBCC.\n.DD.BEE.\n.FF.EEGG\nFFHH.GG.\n.HH.III.\n.JJKKILL\nJJKK.LL."
echo "in 26.458s"
time ./fillit benchmark12.fillit

echo "benchmark13.fillit"
echo ".AABB.CC\nAADDBCC.\n.DD.B.EE\n.FFGGEE.\nFFGGHHJJ\nIIIHHJJ.\n.IKKLLMM\n.KKLLMM."
echo "in 0.093s"
time ./fillit benchmark13.fillit

echo "benchmark14.fillit"
echo ""
echo "in s"
time ./fillit benchmark14.fillit

echo "benchmark15.fillit"
echo ""
echo "in s"
time ./fillit benchmark15.fillit

echo "benchmark16.fillit"
echo ""
echo "in s"
time ./fillit benchmark16.fillit

echo "benchmark17.fillit"
echo ""
echo "in s"
time ./fillit benchmark17.fillit

echo "benchmark18.fillit"
echo ""
echo "in s"
time ./fillit benchmark18.fillit

echo "benchmark19.fillit"
echo ""
echo "in s"
time ./fillit benchmark19.fillit

echo "benchmark20.fillit"
echo ""
echo "in s"
time ./fillit benchmark20.fillit

echo "benchmark21.fillit"
echo ".AABB.CCDD\nAAEEBCCDD.\n.EE.BFFGG.\n.HH.FFGGJJ\nHHIIIKKJJ.\n.LLIKKMMOO\nLLNNNMMOOQ\n.PPNT.RR.Q\nPPSSTRRUUQ\n.SS.TTUU.Q"
echo "in 0.003s"
time ./fillit benchmark21.fillit

echo "benchmark22.fillit"
echo ""
echo "in s"
time ./fillit benchmark22.fillit

echo "benchmark.fillit"
echo ""
echo "in s"
time ./fillit benchmark.fillit

echo "hardcore18.fillit"
echo "AAAABBBB.\nCCCCDDDD.\nEEFFFF.M.\nEEGGGG.MM\nHHHHIIIIM\nJJJJKKKK.\nLLLLQNNNN\nOOOOQQPP.\nRRRR.Q.PP"
echo "in 0.003s"
time ./fillit hardcore18.fillit

echo "hardcore_valid_sample.fillit"
echo ""
echo "in s"
time ./fillit hardcore_valid_sample.fillit
