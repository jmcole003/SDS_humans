#!/bin/bash

# Generate job files, get results and SEs (permuted)

OUT=/scratch/ukb/data/ 

#Arguments
CHR=$1
NUM=$2  #number of files

# Make file for ML
#chromosome chunks

for i in $(seq 0 $NUM); do
	echo "Rscript /scratch/ukb/scripts/get_boot_pvals_tot.R -m $OUT/chr${CHR}/chr${CHR}_haps_${i}.permuted.t.maxl -b $OUT/chr${CHR}/chr${CHR}_haps_${i}.permuted.t.boot -o $OUT/chr${CHR}/chr${CHR}_haps_${i}.permuted" >> do_getresult_perm_tot_chr${CHR}
done