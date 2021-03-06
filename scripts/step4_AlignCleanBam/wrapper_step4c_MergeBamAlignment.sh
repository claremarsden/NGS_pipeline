#!/bin/bash

QSUB=/u/systems/UGE8.0.1vm/bin/lx-amd64/qsub

# Uncomment the line below and fill in the name of the individuals.
# individuals_array = ( )

for i in "${individuals_array[@]}"
do

$QSUB -N ${i}MergeBamAlignment step4c_PicardMergeBamAlignment.sh ${i} ../../analyses/step4_AlignCleanBam ../../analyses/step2_FastqToSam ../../analyses/step4_AlignCleanBam
sleep 4h

done
