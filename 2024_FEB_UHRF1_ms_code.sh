#RepliSeq and WGBS data integration
#Clone6 is provided as an example, all samples were processed with the same code

#!/bin/bash
#
#SBATCH --job-name=deeptools
#SBATCH --ntasks=1
#SBATCH --time=128:00:00

#Change to trimmed data directory

cd /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/integration/WGBS_repliseq

source activate /home/rochelle.tiedemann/rothbart-primary/Rochelle/anaconda2/envs/Oasis2

#Launch deeptools
computeMatrix scale-regions -S /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_greater20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_greater20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_greater20_CpGs.bw -R /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/RepliSeq/P1.repliseq.bed --regionBodyLength 5000 --outFileName Clone6_all_CpGs_repliseq_P1_betas_5000.tab --skipZeros --outFileNameMatrix Clone6_all_CpGs_repliseq_P1_betas_5000.tab.gz

source deactivate Oasis2

#!/bin/bash
#
#SBATCH --job-name=deeptools
#SBATCH --ntasks=1
#SBATCH --time=128:00:00

#Change to trimmed data directory

cd /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/integration/WGBS_repliseq

source activate /home/rochelle.tiedemann/rothbart-primary/Rochelle/anaconda2/envs/Oasis2

#Launch deeptools
computeMatrix scale-regions -S /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_greater20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_greater20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_greater20_CpGs.bw -R /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/RepliSeq/P2.repliseq.bed --regionBodyLength 5000 --outFileName Clone6_all_CpGs_repliseq_P2_betas_5000.tab --skipZeros --outFileNameMatrix Clone6_all_CpGs_repliseq_P2_betas_5000.tab.gz

source deactivate Oasis2

#!/bin/bash
#
#SBATCH --job-name=deeptools
#SBATCH --ntasks=1
#SBATCH --time=128:00:00

#Change to trimmed data directory

cd /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/integration/WGBS_repliseq

source activate /home/rochelle.tiedemann/rothbart-primary/Rochelle/anaconda2/envs/Oasis2

#Launch deeptools
computeMatrix scale-regions -S /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_greater20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_greater20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_greater20_CpGs.bw -R /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/RepliSeq/P11.repliseq.bed --regionBodyLength 5000 --outFileName Clone6_all_CpGs_repliseq_P11_betas_5000.tab --skipZeros --outFileNameMatrix Clone6_all_CpGs_repliseq_P11_betas_5000.tab.gz

source deactivate Oasis2

#!/bin/bash
#
#SBATCH --job-name=deeptools
#SBATCH --ntasks=1
#SBATCH --time=128:00:00

#Change to trimmed data directory

cd /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/integration/WGBS_repliseq

source activate /home/rochelle.tiedemann/rothbart-primary/Rochelle/anaconda2/envs/Oasis2

#Launch deeptools
computeMatrix scale-regions -S /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_greater20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_greater20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_greater20_CpGs.bw -R /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/RepliSeq/P12.repliseq.bed --regionBodyLength 5000 --outFileName Clone6_all_CpGs_repliseq_P12_betas_5000.tab --skipZeros --outFileNameMatrix Clone6_all_CpGs_repliseq_P12_betas_5000.tab.gz

source deactivate Oasis2

#!/bin/bash
#
#SBATCH --job-name=deeptools
#SBATCH --ntasks=1
#SBATCH --time=128:00:00

#Change to trimmed data directory

cd /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/integration/WGBS_repliseq

source activate /home/rochelle.tiedemann/rothbart-primary/Rochelle/anaconda2/envs/Oasis2

#Launch deeptools
computeMatrix scale-regions -S /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_greater20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_greater20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_greater20_CpGs.bw -R /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/RepliSeq/P13.repliseq.bed --regionBodyLength 5000 --outFileName Clone6_all_CpGs_repliseq_P13_betas_5000.tab --skipZeros --outFileNameMatrix Clone6_all_CpGs_repliseq_P13_betas_5000.tab.gz

source deactivate Oasis2

#!/bin/bash
#
#SBATCH --job-name=deeptools
#SBATCH --ntasks=1
#SBATCH --time=128:00:00

#Change to trimmed data directory

cd /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/integration/WGBS_repliseq

source activate /home/rochelle.tiedemann/rothbart-primary/Rochelle/anaconda2/envs/Oasis2

#Launch deeptools
computeMatrix scale-regions -S /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_greater20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_greater20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_greater20_CpGs.bw -R /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/RepliSeq/P14.repliseq.bed --regionBodyLength 5000 --outFileName Clone6_all_CpGs_repliseq_P14_betas_5000.tab --skipZeros --outFileNameMatrix Clone6_all_CpGs_repliseq_P14_betas_5000.tab.gz

source deactivate Oasis2

#!/bin/bash
#
#SBATCH --job-name=deeptools
#SBATCH --ntasks=1
#SBATCH --time=128:00:00

#Change to trimmed data directory

cd /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/integration/WGBS_repliseq

source activate /home/rochelle.tiedemann/rothbart-primary/Rochelle/anaconda2/envs/Oasis2

#Launch deeptools
computeMatrix scale-regions -S /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_greater20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_greater20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_greater20_CpGs.bw -R /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/RepliSeq/P15.repliseq.bed --regionBodyLength 5000 --outFileName Clone6_all_CpGs_repliseq_P15_betas_5000.tab --skipZeros --outFileNameMatrix Clone6_all_CpGs_repliseq_P15_betas_5000.tab.gz

source deactivate Oasis2

#!/bin/bash
#
#SBATCH --job-name=deeptools
#SBATCH --ntasks=1
#SBATCH --time=128:00:00

#Change to trimmed data directory

cd /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/integration/WGBS_repliseq

source activate /home/rochelle.tiedemann/rothbart-primary/Rochelle/anaconda2/envs/Oasis2

#Launch deeptools
computeMatrix scale-regions -S /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_greater20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_greater20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_greater20_CpGs.bw -R /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/RepliSeq/P16.repliseq.bed --regionBodyLength 5000 --outFileName Clone6_all_CpGs_repliseq_P16_betas_5000.tab --skipZeros --outFileNameMatrix Clone6_all_CpGs_repliseq_P16_betas_5000.tab.gz

source deactivate Oasis2

#!/bin/bash
#
#SBATCH --job-name=deeptools
#SBATCH --ntasks=1
#SBATCH --time=128:00:00

#Change to trimmed data directory

cd /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/integration/WGBS_repliseq

source activate /home/rochelle.tiedemann/rothbart-primary/Rochelle/anaconda2/envs/Oasis2

#Launch deeptools
computeMatrix scale-regions -S /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_greater20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_greater20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_greater20_CpGs.bw -R /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/RepliSeq/P3.repliseq.bed --regionBodyLength 5000 --outFileName Clone6_all_CpGs_repliseq_P3_betas_5000.tab --skipZeros --outFileNameMatrix Clone6_all_CpGs_repliseq_P3_betas_5000.tab.gz

source deactivate Oasis2

#!/bin/bash
#
#SBATCH --job-name=deeptools
#SBATCH --ntasks=1
#SBATCH --time=128:00:00

#Change to trimmed data directory

cd /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/integration/WGBS_repliseq

source activate /home/rochelle.tiedemann/rothbart-primary/Rochelle/anaconda2/envs/Oasis2

#Launch deeptools
computeMatrix scale-regions -S /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_greater20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_greater20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_greater20_CpGs.bw -R /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/RepliSeq/P4.repliseq.bed --regionBodyLength 5000 --outFileName Clone6_all_CpGs_repliseq_P4_betas_5000.tab --skipZeros --outFileNameMatrix Clone6_all_CpGs_repliseq_P4_betas_5000.tab.gz

source deactivate Oasis2

#!/bin/bash
#
#SBATCH --job-name=deeptools
#SBATCH --ntasks=1
#SBATCH --time=128:00:00

#Change to trimmed data directory

cd /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/integration/WGBS_repliseq

source activate /home/rochelle.tiedemann/rothbart-primary/Rochelle/anaconda2/envs/Oasis2

#Launch deeptools
computeMatrix scale-regions -S /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_greater20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_greater20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_greater20_CpGs.bw -R /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/RepliSeq/P5.repliseq.bed --regionBodyLength 5000 --outFileName Clone6_all_CpGs_repliseq_P5_betas_5000.tab --skipZeros --outFileNameMatrix Clone6_all_CpGs_repliseq_P5_betas_5000.tab.gz

source deactivate Oasis2

#!/bin/bash
#
#SBATCH --job-name=deeptools
#SBATCH --ntasks=1
#SBATCH --time=128:00:00

#Change to trimmed data directory

cd /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/integration/WGBS_repliseq

source activate /home/rochelle.tiedemann/rothbart-primary/Rochelle/anaconda2/envs/Oasis2

#Launch deeptools
computeMatrix scale-regions -S /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_greater20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_greater20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_greater20_CpGs.bw -R /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/RepliSeq/P6.repliseq.bed --regionBodyLength 5000 --outFileName Clone6_all_CpGs_repliseq_P6_betas_5000.tab --skipZeros --outFileNameMatrix Clone6_all_CpGs_repliseq_P6_betas_5000.tab.gz

source deactivate Oasis2

#!/bin/bash
#
#SBATCH --job-name=deeptools
#SBATCH --ntasks=1
#SBATCH --time=128:00:00

#Change to trimmed data directory

cd /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/integration/WGBS_repliseq

source activate /home/rochelle.tiedemann/rothbart-primary/Rochelle/anaconda2/envs/Oasis2

#Launch deeptools
computeMatrix scale-regions -S /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_greater20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_greater20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_greater20_CpGs.bw -R /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/RepliSeq/P7.repliseq.bed --regionBodyLength 5000 --outFileName Clone6_all_CpGs_repliseq_P7_betas_5000.tab --skipZeros --outFileNameMatrix Clone6_all_CpGs_repliseq_P7_betas_5000.tab.gz

source deactivate Oasis2

#!/bin/bash
#
#SBATCH --job-name=deeptools
#SBATCH --ntasks=1
#SBATCH --time=128:00:00

#Change to trimmed data directory

cd /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/integration/WGBS_repliseq

source activate /home/rochelle.tiedemann/rothbart-primary/Rochelle/anaconda2/envs/Oasis2

#Launch deeptools
computeMatrix scale-regions -S /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_greater20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_greater20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_greater20_CpGs.bw -R /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/RepliSeq/P8.repliseq.bed --regionBodyLength 5000 --outFileName Clone6_all_CpGs_repliseq_P8_betas_5000.tab --skipZeros --outFileNameMatrix Clone6_all_CpGs_repliseq_P8_betas_5000.tab.gz

source deactivate Oasis2

#!/bin/bash
#
#SBATCH --job-name=deeptools
#SBATCH --ntasks=1
#SBATCH --time=128:00:00

#Change to trimmed data directory

cd /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/integration/WGBS_repliseq

source activate /home/rochelle.tiedemann/rothbart-primary/Rochelle/anaconda2/envs/Oasis2

#Launch deeptools
computeMatrix scale-regions -S /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_greater20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_greater20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_greater20_CpGs.bw -R /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/RepliSeq/P9.repliseq.bed --regionBodyLength 5000 --outFileName Clone6_all_CpGs_repliseq_P9_betas_5000.tab --skipZeros --outFileNameMatrix Clone6_all_CpGs_repliseq_P9_betas_5000.tab.gz

source deactivate Oasis2

#!/bin/bash
#
#SBATCH --job-name=deeptools
#SBATCH --ntasks=1
#SBATCH --time=128:00:00

#Change to trimmed data directory

cd /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/integration/WGBS_repliseq

source activate /home/rochelle.tiedemann/rothbart-primary/Rochelle/anaconda2/envs/Oasis2

#Launch deeptools
computeMatrix scale-regions -S /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_all_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_less20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_NoDox_betas_greater20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D14_betas_greater20_CpGs.bw /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/betas/Clone6_D28_betas_greater20_CpGs.bw -R /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/RepliSeq/P10.repliseq.bed --regionBodyLength 5000 --outFileName Clone6_all_CpGs_repliseq_P10_betas_5000.tab --skipZeros --outFileNameMatrix Clone6_all_CpGs_repliseq_P10_betas_5000.tab.gz

source deactivate Oasis2

#!/bin/bash
#
#SBATCH --job-name=deeptools
#SBATCH --ntasks=1
#SBATCH --time=128:00:00

#Change to trimmed data directory

cd /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/integration/WGBS_repliseq

source activate /home/rochelle.tiedemann/rothbart-primary/Rochelle/anaconda2/envs/Oasis2

#Launch deeptools
computeMatrix scale-regions \
-S /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/delta-betas/Clone6_delta_betas_all_CpGs.bw \
/home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/delta-betas/Clone6_delta_beta_values_less20_CpGs.bw \
/home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/delta-betas/Clone6_delta_beta_values_greater20_CpGs.bw \
-R /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/RepliSeq/*.bed \
--regionBodyLength 5000 \
--outFileName Clone6_all_CpGs_repliseq_delta-betas_5000.tab \
--skipZeros \
--outFileNameMatrix Clone6_all_CpGs_repliseq_delta-betas_5000.tab.gz

source deactivate Oasis2

#Histone modification integration with WGBS data
#### H3K36me3 ####

#Clone 3 shUHRF1 knockdown
#Change to directory to output files

cd /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/integration/WGBS_histone_modifications

source activate /home/rochelle.tiedemann/rothbart-primary/Rochelle/anaconda2/envs/Oasis2

#Launch deeptools
computeMatrix reference-point \
-S /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone3/all_CpGs/delta-betas/Clone3_delta_betas_D28_all_CpGs.bw \
/home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone3/all_CpGs/delta-betas/Clone3_delta_beta_values_D28_less20_CpGs.bw \
/home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone3/all_CpGs/delta-betas/Clone3_delta_beta_values_D28_greater20_CpGs.bw \
-R /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/histone_modifications/final_peak_files/H3K36me3_replicated_peaks.bed \
--beforeRegionStartLength 10000 --regionBodyLength 20000 --afterRegionStartLength 10000 \
--outFileName Clone3_all_CpGs_NoDox_H3K36me3_delta-betas_D28.tab \
--skipZeros \
--outFileNameMatrix Clone3_all_CpGs_NoDox_H3K36me3_delta-betas_D28.tab.gz

source deactivate Oasis2

#Clone 6 shUHRF1 knockdown

#Change to directory to output files

cd /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/integration/WGBS_histone_modifications

source activate /home/rochelle.tiedemann/rothbart-primary/Rochelle/anaconda2/envs/Oasis2

#Launch deeptools
computeMatrix reference-point \
-S /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/delta-betas/Clone6_delta_betas_D28_all_CpGs.bw \
/home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/delta-betas/Clone6_delta_beta_values_D28_less20_CpGs.bw \
/home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/delta-betas/Clone6_delta_beta_values_D28_greater20_CpGs.bw \
-R /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/histone_modifications/final_peak_files/H3K36me3_replicated_peaks.bed \
--beforeRegionStartLength 10000 --regionBodyLength 20000 --afterRegionStartLength 10000 \
--outFileName Clone6_all_CpGs_NoDox_H3K36me3_delta-betas_D28.tab \
--skipZeros \
--outFileNameMatrix Clone6_all_CpGs_NoDox_H3K36me3_delta-betas_D28.tab.gz

source deactivate Oasis2

#Clone 9 shUHRF1 knockdown

#Change to directory to output files

cd /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/integration/WGBS_histone_modifications

source activate /home/rochelle.tiedemann/rothbart-primary/Rochelle/anaconda2/envs/Oasis2

#Launch deeptools
computeMatrix reference-point \
-S /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone9/all_CpGs/delta-betas/Clone9_delta_betas_D28_all_CpGs.bw \
/home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone9/all_CpGs/delta-betas/Clone9_delta_beta_values_D28_less20_CpGs.bw \
/home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone9/all_CpGs/delta-betas/Clone9_delta_beta_values_D28_greater20_CpGs.bw \
-R /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/histone_modifications/final_peak_files/H3K36me3_replicated_peaks.bed \
--beforeRegionStartLength 10000 --regionBodyLength 20000 --afterRegionStartLength 10000 \
--outFileName Clone9_all_CpGs_NoDox_shared_H3K36me3_delta-betas_D28.tab \
--skipZeros \
--outFileNameMatrix Clone9_all_CpGs_NoDox_shared_H3K36me3_delta-betas_D28.tab.gz

source deactivate Oasis2

#Bulk R1 shDNMT1 knockdown

#Change to directory to output

cd /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/integration/WGBS_histone_modifications

source activate /home/rochelle.tiedemann/rothbart-primary/Rochelle/anaconda2/envs/Oasis2

#Launch deeptools
computeMatrix reference-point \
-S /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/shDNMT1_R1/all_CpGs/delta-betas/shDNMT1_R1_delta_betas_D28_all_CpGs.bw \
/home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/shDNMT1_R1/all_CpGs/delta-betas/shDNMT1_R1_delta_beta_values_D28_less20_CpGs.bw \
/home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/shDNMT1_R1/all_CpGs/delta-betas/shDNMT1_R1_delta_beta_values_D28_greater20_CpGs.bw \
-R /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/histone_modifications/final_peak_files/H3K36me3_replicated_peaks.bed \
--beforeRegionStartLength 10000 --regionBodyLength 20000 --afterRegionStartLength 10000 \
--outFileName shDNMT1_R1_all_CpGs_NoDox_shared_H3K36me3_delta-betas_D28.tab \
--skipZeros \
--outFileNameMatrix shDNMT1_R1_all_CpGs_NoDox_shared_H3K36me3_delta-betas_D28.tab.gz

source deactivate Oasis2

#Bulk R2 shDNMT1_R2

#Change to directory to output files

cd /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/integration/WGBS_histone_modifications

source activate /home/rochelle.tiedemann/rothbart-primary/Rochelle/anaconda2/envs/Oasis2

#Launch deeptools
computeMatrix reference-point \
-S /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/shDNMT1_R2/all_CpGs/delta-betas/shDNMT1_R2_delta_betas_D28_all_CpGs.bw \
/home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/shDNMT1_R2/all_CpGs/delta-betas/shDNMT1_R2_delta_beta_values_D28_less20_CpGs.bw \
/home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/shDNMT1_R2/all_CpGs/delta-betas/shDNMT1_R2_delta_beta_values_D28_greater20_CpGs.bw \
-R /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/histone_modifications/final_peak_files/H3K36me3_replicated_peaks.bed \
--beforeRegionStartLength 10000 --regionBodyLength 20000 --afterRegionStartLength 10000 \
--outFileName shDNMT1_R2_all_CpGs_NoDox_shared_H3K36me3_delta-betas_D28.tab \
--skipZeros \
--outFileNameMatrix shDNMT1_R2_all_CpGs_NoDox_shared_H3K36me3_delta-betas_D28.tab.gz

source deactivate Oasis2
#### H3K27me3 ####
#Clone 3 shUHRF1 knockdown
#Change to directory to output files

cd /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/integration/WGBS_histone_modifications

source activate /home/rochelle.tiedemann/rothbart-primary/Rochelle/anaconda2/envs/Oasis2

#Launch deeptools
computeMatrix reference-point \
-S /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone3/all_CpGs/delta-betas/Clone3_delta_betas_D28_all_CpGs.bw \
/home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone3/all_CpGs/delta-betas/Clone3_delta_beta_values_D28_less20_CpGs.bw \
/home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone3/all_CpGs/delta-betas/Clone3_delta_beta_values_D28_greater20_CpGs.bw \
-R /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/histone_modifications/final_peak_files/Clone3_NoDox_H3K27me3_shared_peaks_coordinate.bed \
--beforeRegionStartLength 10000 --regionBodyLength 20000 --afterRegionStartLength 10000 \
--outFileName Clone3_all_CpGs_NoDox_H3K27me3_delta-betas_D28.tab \
--skipZeros \
--outFileNameMatrix Clone3_all_CpGs_NoDox_H3K27me3_delta-betas_D28.tab.gz

source deactivate Oasis2

#Clone 6 shUHRF1 knockdown
#Change to directory to output files

cd /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/integration/WGBS_histone_modifications

source activate /home/rochelle.tiedemann/rothbart-primary/Rochelle/anaconda2/envs/Oasis2

#Launch deeptools
computeMatrix reference-point \
-S /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/delta-betas/Clone6_delta_betas_D28_all_CpGs.bw \
/home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/delta-betas/Clone6_delta_beta_values_D28_less20_CpGs.bw \
/home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/delta-betas/Clone6_delta_beta_values_D28_greater20_CpGs.bw \
-R /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/histone_modifications/final_peak_files/Clone6_NoDox_H3K27me3_shared_peaks_coordinate.bed \
--beforeRegionStartLength 10000 --regionBodyLength 20000 --afterRegionStartLength 10000 \
--outFileName Clone6_all_CpGs_NoDox_H3K27me3_delta-betas_D28.tab \
--skipZeros \
--outFileNameMatrix Clone6_all_CpGs_NoDox_H3K27me3_delta-betas_D28.tab.gz

source deactivate Oasis2

#Clone 9 shUHRF1 knockdown

#Change to directory to output files

cd /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/integration/WGBS_histone_modifications

source activate /home/rochelle.tiedemann/rothbart-primary/Rochelle/anaconda2/envs/Oasis2

#Launch deeptools
computeMatrix reference-point \
-S /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone9/all_CpGs/delta-betas/Clone9_delta_betas_D28_all_CpGs.bw \
/home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone9/all_CpGs/delta-betas/Clone9_delta_beta_values_D28_less20_CpGs.bw \
/home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone9/all_CpGs/delta-betas/Clone9_delta_beta_values_D28_greater20_CpGs.bw \
-R /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/histone_modifications/final_peak_files/Clones_H3K27me3_shared_peaks_coordinates.bed \
--beforeRegionStartLength 10000 --regionBodyLength 20000 --afterRegionStartLength 10000 \
--outFileName Clone9_all_CpGs_NoDox_shared_H3K27me3_delta-betas_D28.tab \
--skipZeros \
--outFileNameMatrix Clone9_all_CpGs_NoDox_shared_H3K27me3_delta-betas_D28.tab.gz

source deactivate Oasis2

#Bulk R1 shDNMT knockdown

#Change to directory for output files

cd /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/integration/WGBS_histone_modifications

source activate /home/rochelle.tiedemann/rothbart-primary/Rochelle/anaconda2/envs/Oasis2

#Launch deeptools
computeMatrix reference-point \
-S /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/shDNMT1_R1/all_CpGs/delta-betas/shDNMT1_R1_delta_betas_D28_all_CpGs.bw \
/home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/shDNMT1_R1/all_CpGs/delta-betas/shDNMT1_R1_delta_beta_values_D28_less20_CpGs.bw \
/home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/shDNMT1_R1/all_CpGs/delta-betas/shDNMT1_R1_delta_beta_values_D28_greater20_CpGs.bw \
-R /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/histone_modifications/final_peak_files/Clones_H3K27me3_shared_peaks_coordinates.bed \
--beforeRegionStartLength 10000 --regionBodyLength 20000 --afterRegionStartLength 10000 \
--outFileName shDNMT1_R1_all_CpGs_NoDox_shared_H3K27me3_delta-betas_D28.tab \
--skipZeros \
--outFileNameMatrix shDNMT1_R1_all_CpGs_NoDox_shared_H3K27me3_delta-betas_D28.tab.gz

source deactivate Oasis2

#Bulk R2 shDNMT1 knockdown

#Change to directory to output files

cd /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/integration/WGBS_histone_modifications

source activate /home/rochelle.tiedemann/rothbart-primary/Rochelle/anaconda2/envs/Oasis2

#Launch deeptools
computeMatrix reference-point \
-S /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/shDNMT1_R2/all_CpGs/delta-betas/shDNMT1_R2_delta_betas_D28_all_CpGs.bw \
/home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/shDNMT1_R2/all_CpGs/delta-betas/shDNMT1_R2_delta_beta_values_D28_less20_CpGs.bw \
/home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/shDNMT1_R2/all_CpGs/delta-betas/shDNMT1_R2_delta_beta_values_D28_greater20_CpGs.bw \
-R /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/histone_modifications/final_peak_files/Clones_H3K27me3_shared_peaks_coordinates.bed \
--beforeRegionStartLength 10000 --regionBodyLength 20000 --afterRegionStartLength 10000 \
--outFileName shDNMT1_R2_all_CpGs_NoDox_shared_H3K27me3_delta-betas_D28.tab \
--skipZeros \
--outFileNameMatrix shDNMT1_R2_all_CpGs_NoDox_shared_H3K27me3_delta-betas_D28.tab.gz

source deactivate Oasis2

### H3K9me3 ###
##Clone 3 shUHRF1 knockdown
#Change to directory to output files

cd /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/integration/WGBS_histone_modifications

source activate /home/rochelle.tiedemann/rothbart-primary/Rochelle/anaconda2/envs/Oasis2

#Launch deeptools
computeMatrix reference-point \
-S /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone3/all_CpGs/delta-betas/Clone3_delta_betas_D28_all_CpGs.bw \
/home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone3/all_CpGs/delta-betas/Clone3_delta_beta_values_D28_less20_CpGs.bw \
/home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone3/all_CpGs/delta-betas/Clone3_delta_beta_values_D28_greater20_CpGs.bw \
-R /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/histone_modifications/final_peak_files/Clone3_NoDox_H3K9me3_shared_peaks_coordinate.bed \
--beforeRegionStartLength 10000 --regionBodyLength 20000 --afterRegionStartLength 10000 \
--outFileName Clone3_all_CpGs_NoDox_H3K9me3_delta-betas_D28.tab \
--skipZeros \
--outFileNameMatrix Clone3_all_CpGs_NoDox_H3K9me3_delta-betas_D28.tab.gz

source deactivate Oasis2


##Clone 6 shUHRF1 Knockdown
#Change to directory to output files

cd /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/integration/WGBS_histone_modifications

source activate /home/rochelle.tiedemann/rothbart-primary/Rochelle/anaconda2/envs/Oasis2

#Launch deeptools
computeMatrix reference-point \
-S /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/delta-betas/Clone6_delta_betas_D28_all_CpGs.bw \
/home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/delta-betas/Clone6_delta_beta_values_D28_less20_CpGs.bw \
/home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone6/all_CpGs/delta-betas/Clone6_delta_beta_values_D28_greater20_CpGs.bw \
-R /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/histone_modifications/final_peak_files/Clone6_NoDox_H3K9me3_shared_peaks_coordinate.bed \
--beforeRegionStartLength 10000 --regionBodyLength 20000 --afterRegionStartLength 10000 \
--outFileName Clone6_all_CpGs_NoDox_H3K9me3_delta-betas_D28.tab \
--skipZeros \
--outFileNameMatrix Clone6_all_CpGs_NoDox_H3K9me3_delta-betas_D28.tab.gz

source deactivate Oasis2

##Clone 9 shUHRF1 Knockdown
#Change to directory to output files

cd /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/integration/WGBS_histone_modifications

source activate /home/rochelle.tiedemann/rothbart-primary/Rochelle/anaconda2/envs/Oasis2

#Launch deeptools
computeMatrix reference-point \
-S /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone9/all_CpGs/delta-betas/Clone9_delta_betas_D28_all_CpGs.bw \
/home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone9/all_CpGs/delta-betas/Clone9_delta_beta_values_D28_less20_CpGs.bw \
/home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/Clone9/all_CpGs/delta-betas/Clone9_delta_beta_values_D28_greater20_CpGs.bw \
-R /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/histone_modifications/final_peak_files/Clones_H3K9me3_shared_peaks_coordinates.bed \
--beforeRegionStartLength 10000 --regionBodyLength 20000 --afterRegionStartLength 10000 \
--outFileName Clone9_all_CpGs_NoDox_shared_H3K9me3_delta-betas_D28.tab \
--skipZeros \
--outFileNameMatrix Clone9_all_CpGs_NoDox_shared_H3K9me3_delta-betas_D28.tab.gz

source deactivate Oasis2

##Bulk R1 shDNMT1 Knockdown
#Change to directory to output files

cd /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/integration/WGBS_histone_modifications

source activate /home/rochelle.tiedemann/rothbart-primary/Rochelle/anaconda2/envs/Oasis2

#Launch deeptools
computeMatrix reference-point \
-S /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/shDNMT1_R1/all_CpGs/delta-betas/shDNMT1_R1_delta_betas_D28_all_CpGs.bw \
/home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/shDNMT1_R1/all_CpGs/delta-betas/shDNMT1_R1_delta_beta_values_D28_less20_CpGs.bw \
/home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/shDNMT1_R1/all_CpGs/delta-betas/shDNMT1_R1_delta_beta_values_D28_greater20_CpGs.bw \
-R /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/histone_modifications/final_peak_files/Clones_H3K9me3_shared_peaks_coordinates.bed \
--beforeRegionStartLength 10000 --regionBodyLength 20000 --afterRegionStartLength 10000 \
--outFileName shDNMT1_R1_all_CpGs_NoDox_shared_H3K9me3_delta-betas_D28.tab \
--skipZeros \
--outFileNameMatrix shDNMT1_R1_all_CpGs_NoDox_shared_H3K9me3_delta-betas_D28.tab.gz

source deactivate Oasis2

##Bulk R2 shDNMT1 Knockdown

#Change to directory to output files

cd /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/integration/WGBS_histone_modifications

source activate /home/rochelle.tiedemann/rothbart-primary/Rochelle/anaconda2/envs/Oasis2

#Launch deeptools
computeMatrix reference-point \
-S /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/shDNMT1_R2/all_CpGs/delta-betas/shDNMT1_R2_delta_betas_D28_all_CpGs.bw \
/home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/shDNMT1_R2/all_CpGs/delta-betas/shDNMT1_R2_delta_beta_values_D28_less20_CpGs.bw \
/home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/bigwigs/shDNMT1_R2/all_CpGs/delta-betas/shDNMT1_R2_delta_beta_values_D28_greater20_CpGs.bw \
-R /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/histone_modifications/final_peak_files/Clones_H3K9me3_shared_peaks_coordinates.bed \
--beforeRegionStartLength 10000 --regionBodyLength 20000 --afterRegionStartLength 10000 \
--outFileName shDNMT1_R2_all_CpGs_NoDox_shared_H3K9me3_delta-betas_D28.tab \
--skipZeros \
--outFileNameMatrix shDNMT1_R2_all_CpGs_NoDox_shared_H3K9me3_delta-betas_D28.tab.gz

source deactivate Oasis2


#Code for using jaccard in bedtools for MethylDomain intersections
#Clone6 is provided as example, the same code was used for all samples

#!/bin/bash
#
#SBATCH --job-name=bedtools_jaccard
#SBATCH --ntasks=1
#SBATCH --time=2:00:00


#change to sample specific subdirectory

cd /home/rochelle.tiedemann/rothbart-secondary/Rochelle/20221109_UHRF1_genomics/WGBS/Methyl_domains/Clone6/20231012_Final_calls

#sort files and save

sort -k1,1 -k2,2n Cl6_D14.HMD_called_revised_0.8_2000bp.bed > Cl6_D14.HMD_called_revised_0.8_2000bp.sort.bed
sort -k1,1 -k2,2n Cl6_D28.HMD_called_revised_0.8_2000bp.bed > Cl6_D28.HMD_called_revised_0.8_2000bp.sort.bed
sort -k1,1 -k2,2n Cl6_noDox.HMD_called_revised_0.8_2000bp.bed > Cl6_noDox.HMD_called_revised_0.8_2000bp.sort.bed
sort -k1,1 -k2,2n Cl6_D14_noDox.PMD_called.rm_regions.bed > Cl6_D14_noDox.PMD_called.rm_regions.sort.bed
sort -k1,1 -k2,2n Cl6_D14_noDox.LMR_called.rm_regions.bed > Cl6_D14_noDox.LMR_called.rm_regions.sort.bed
sort -k1,1 -k2,2n Cl6_D14_noDox.UMR_called.rm_regions.bed > Cl6_D14_noDox.UMR_called.rm_regions.sort.bed
sort -k1,1 -k2,2n Cl6_D14_Dox.PMD_called.rm_regions.bed > Cl6_D14_Dox.PMD_called.rm_regions.sort.bed
sort -k1,1 -k2,2n Cl6_D14_Dox.LMR_called.rm_regions.bed > Cl6_D14_Dox.LMR_called.rm_regions.sort.bed
sort -k1,1 -k2,2n Cl6_D14_Dox.UMR_called.rm_regions.bed > Cl6_D14_Dox.UMR_called.rm_regions.sort.bed
sort -k1,1 -k2,2n Cl6_D28.PMD_called.rm_regions.bed > Cl6_D28.PMD_called.rm_regions.sort.bed
sort -k1,1 -k2,2n Cl6_D28.LMR_called.rm_regions.bed > Cl6_D28.LMR_called.rm_regions.sort.bed
sort -k1,1 -k2,2n Cl6_D28.UMR_called.rm_regions.bed > Cl6_D28.UMR_called.rm_regions.sort.bed

#bedtools jaccard
#HMD

/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_noDox.HMD_called_revised_0.8_2000bp.sort.bed -b Cl6_D14.HMD_called_revised_0.8_2000bp.sort.bed > Cl6_noDox_HMD.jaccard.D14_HMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_noDox.HMD_called_revised_0.8_2000bp.sort.bed -b Cl6_D28.HMD_called_revised_0.8_2000bp.sort.bed > Cl6_noDox_HMD.jaccard.D28_HMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_noDox.HMD_called_revised_0.8_2000bp.sort.bed -b Cl6_D14_noDox.PMD_called.rm_regions.sort.bed > Cl6_noDox_HMD.jaccard.noDox_PMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_noDox.HMD_called_revised_0.8_2000bp.sort.bed -b Cl6_D14_noDox.LMR_called.rm_regions.sort.bed > Cl6_noDox_HMD.jaccard.noDox_LMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_noDox.HMD_called_revised_0.8_2000bp.sort.bed -b Cl6_D14_noDox.UMR_called.rm_regions.sort.bed > Cl6_noDox_HMD.jaccard.noDox_UMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_noDox.HMD_called_revised_0.8_2000bp.sort.bed -b Cl6_D14_Dox.PMD_called.rm_regions.sort.bed > Cl6_noDox_HMD.jaccard.D14_PMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_noDox.HMD_called_revised_0.8_2000bp.sort.bed -b Cl6_D14_Dox.LMR_called.rm_regions.sort.bed > Cl6_noDox_HMD.jaccard.D14_LMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_noDox.HMD_called_revised_0.8_2000bp.sort.bed -b Cl6_D14_Dox.UMR_called.rm_regions.sort.bed > Cl6_noDox_HMD.jaccard.D14_UMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_noDox.HMD_called_revised_0.8_2000bp.sort.bed -b Cl6_D28.PMD_called.rm_regions.sort.bed > Cl6_noDox_HMD.jaccard.D28_PMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_noDox.HMD_called_revised_0.8_2000bp.sort.bed -b Cl6_D28.LMR_called.rm_regions.sort.bed > Cl6_noDox_HMD.jaccard.D28_LMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_noDox.HMD_called_revised_0.8_2000bp.sort.bed -b Cl6_D28.UMR_called.rm_regions.sort.bed > Cl6_noDox_HMD.jaccard.D28_UMR.txt

/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14.HMD_called_revised_0.8_2000bp.sort.bed -b Cl6_noDox.HMD_called_revised_0.8_2000bp.sort.bed > Cl6_D14_HMD.jaccard.noDox_HMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14.HMD_called_revised_0.8_2000bp.sort.bed -b Cl6_D28.HMD_called_revised_0.8_2000bp.sort.bed > Cl6_D14_HMD.jaccard.D28_HMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14.HMD_called_revised_0.8_2000bp.sort.bed -b Cl6_D14_noDox.PMD_called.rm_regions.sort.bed > Cl6_D14_HMD.jaccard.noDox_PMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14.HMD_called_revised_0.8_2000bp.sort.bed -b Cl6_D14_noDox.LMR_called.rm_regions.sort.bed > Cl6_D14_HMD.jaccard.noDox_LMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14.HMD_called_revised_0.8_2000bp.sort.bed -b Cl6_D14_noDox.UMR_called.rm_regions.sort.bed > Cl6_D14_HMD.jaccard.noDox_UMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14.HMD_called_revised_0.8_2000bp.sort.bed -b Cl6_D14_Dox.PMD_called.rm_regions.sort.bed > Cl6_D14_HMD.jaccard.D14_PMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14.HMD_called_revised_0.8_2000bp.sort.bed -b Cl6_D14_Dox.LMR_called.rm_regions.sort.bed > Cl6_D14_HMD.jaccard.D14_LMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14.HMD_called_revised_0.8_2000bp.sort.bed -b Cl6_D14_Dox.UMR_called.rm_regions.sort.bed > Cl6_D14_HMD.jaccard.D14_UMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14.HMD_called_revised_0.8_2000bp.sort.bed -b Cl6_D28.PMD_called.rm_regions.sort.bed > Cl6_D14_HMD.jaccard.D28_PMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14.HMD_called_revised_0.8_2000bp.sort.bed -b Cl6_D28.LMR_called.rm_regions.sort.bed > Cl6_D14_HMD.jaccard.D28_LMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14.HMD_called_revised_0.8_2000bp.sort.bed -b Cl6_D28.UMR_called.rm_regions.sort.bed > Cl6_D14_HMD.jaccard.D28_UMR.txt

/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.HMD_called_revised_0.8_2000bp.sort.bed -b Cl6_noDox.HMD_called_revised_0.8_2000bp.sort.bed > Cl6_D28_HMD.jaccard.noDox_HMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.HMD_called_revised_0.8_2000bp.sort.bed -b Cl6_D14.HMD_called_revised_0.8_2000bp.sort.bed > Cl6_D28_HMD.jaccard.D14_HMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.HMD_called_revised_0.8_2000bp.sort.bed -b Cl6_D14_noDox.PMD_called.rm_regions.sort.bed > Cl6_D28_HMD.jaccard.noDox_PMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.HMD_called_revised_0.8_2000bp.sort.bed -b Cl6_D14_noDox.LMR_called.rm_regions.sort.bed > Cl6_D28_HMD.jaccard.noDox_LMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.HMD_called_revised_0.8_2000bp.sort.bed -b Cl6_D14_noDox.UMR_called.rm_regions.sort.bed > Cl6_D28_HMD.jaccard.noDox_UMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.HMD_called_revised_0.8_2000bp.sort.bed -b Cl6_D14_Dox.PMD_called.rm_regions.sort.bed > Cl6_D28_HMD.jaccard.D14_PMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.HMD_called_revised_0.8_2000bp.sort.bed -b Cl6_D14_Dox.LMR_called.rm_regions.sort.bed > Cl6_D28_HMD.jaccard.D14_LMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.HMD_called_revised_0.8_2000bp.sort.bed -b Cl6_D14_Dox.UMR_called.rm_regions.sort.bed > Cl6_D28_HMD.jaccard.D14_UMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.HMD_called_revised_0.8_2000bp.sort.bed -b Cl6_D28.PMD_called.rm_regions.sort.bed > Cl6_D28_HMD.jaccard.D28_PMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.HMD_called_revised_0.8_2000bp.sort.bed -b Cl6_D28.LMR_called.rm_regions.sort.bed > Cl6_D28_HMD.jaccard.D28_LMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.HMD_called_revised_0.8_2000bp.sort.bed -b Cl6_D28.UMR_called.rm_regions.sort.bed > Cl6_D28_HMD.jaccard.D28_UMR.txt

#PMD

/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_noDox.PMD_called.rm_regions.sort.bed -b Cl6_noDox.HMD_called_revised_0.8_2000bp.sort.bed > Cl6_noDox_PMD.jaccard.noDox_HMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_noDox.PMD_called.rm_regions.sort.bed -b Cl6_D14.HMD_called_revised_0.8_2000bp.sort.bed > Cl6_noDox_PMD.jaccard.D14_HMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_noDox.PMD_called.rm_regions.sort.bed -b Cl6_D28.HMD_called_revised_0.8_2000bp.sort.bed > Cl6_noDox_PMD.jaccard.D28_HMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_noDox.PMD_called.rm_regions.sort.bed -b Cl6_D14_noDox.LMR_called.rm_regions.sort.bed > Cl6_noDox_PMD.jaccard.noDox_LMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_noDox.PMD_called.rm_regions.sort.bed -b Cl6_D14_noDox.UMR_called.rm_regions.sort.bed > Cl6_noDox_PMD.jaccard.noDox_UMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_noDox.PMD_called.rm_regions.sort.bed -b Cl6_D14_Dox.PMD_called.rm_regions.sort.bed > Cl6_noDox_PMD.jaccard.D14_PMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_noDox.PMD_called.rm_regions.sort.bed -b Cl6_D14_Dox.LMR_called.rm_regions.sort.bed > Cl6_noDox_PMD.jaccard.D14_LMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_noDox.PMD_called.rm_regions.sort.bed -b Cl6_D14_Dox.UMR_called.rm_regions.sort.bed > Cl6_noDox_PMD.jaccard.D14_UMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_noDox.PMD_called.rm_regions.sort.bed -b Cl6_D28.PMD_called.rm_regions.sort.bed > Cl6_noDox_PMD.jaccard.D28_PMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_noDox.PMD_called.rm_regions.sort.bed -b Cl6_D28.LMR_called.rm_regions.sort.bed > Cl6_noDox_PMD.jaccard.D28_LMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_noDox.PMD_called.rm_regions.sort.bed -b Cl6_D28.UMR_called.rm_regions.sort.bed > Cl6_noDox_PMD.jaccard.D28_UMR.txt

/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_Dox.PMD_called.rm_regions.sort.bed -b Cl6_noDox.HMD_called_revised_0.8_2000bp.sort.bed > Cl6_D14_PMD.jaccard.noDox_HMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_Dox.PMD_called.rm_regions.sort.bed -b Cl6_D14.HMD_called_revised_0.8_2000bp.sort.bed > Cl6_D14_PMD.jaccard.D14_HMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_Dox.PMD_called.rm_regions.sort.bed -b Cl6_D28.HMD_called_revised_0.8_2000bp.sort.bed > Cl6_D14_PMD.jaccard.D28_HMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_Dox.PMD_called.rm_regions.sort.bed -b Cl6_D14_noDox.LMR_called.rm_regions.sort.bed > Cl6_D14_PMD.jaccard.noDox_LMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_Dox.PMD_called.rm_regions.sort.bed -b Cl6_D14_noDox.UMR_called.rm_regions.sort.bed > Cl6_D14_PMD.jaccard.noDox_UMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_Dox.PMD_called.rm_regions.sort.bed -b Cl6_D14_noDox.PMD_called.rm_regions.sort.bed > Cl6_D14_PMD.jaccard.noDox_PMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_Dox.PMD_called.rm_regions.sort.bed -b Cl6_D14_Dox.LMR_called.rm_regions.sort.bed > Cl6_D14_PMD.jaccard.D14_LMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_Dox.PMD_called.rm_regions.sort.bed -b Cl6_D14_Dox.UMR_called.rm_regions.sort.bed > Cl6_D14_PMD.jaccard.D14_UMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_Dox.PMD_called.rm_regions.sort.bed -b Cl6_D28.PMD_called.rm_regions.sort.bed > Cl6_D14_PMD.jaccard.D28_PMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_Dox.PMD_called.rm_regions.sort.bed -b Cl6_D28.LMR_called.rm_regions.sort.bed > Cl6_D14_PMD.jaccard.D28_LMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_Dox.PMD_called.rm_regions.sort.bed -b Cl6_D28.UMR_called.rm_regions.sort.bed > Cl6_D14_PMD.jaccard.D28_UMR.txt

/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.PMD_called.rm_regions.sort.bed -b Cl6_noDox.HMD_called_revised_0.8_2000bp.sort.bed > Cl6_D28_PMD.jaccard.noDox_HMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.PMD_called.rm_regions.sort.bed -b Cl6_D14.HMD_called_revised_0.8_2000bp.sort.bed > Cl6_D28_PMD.jaccard.D14_HMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.PMD_called.rm_regions.sort.bed -b Cl6_D28.HMD_called_revised_0.8_2000bp.sort.bed > Cl6_D28_PMD.jaccard.D28_HMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.PMD_called.rm_regions.sort.bed -b Cl6_D14_noDox.LMR_called.rm_regions.sort.bed > Cl6_D28_PMD.jaccard.noDox_LMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.PMD_called.rm_regions.sort.bed -b Cl6_D14_noDox.UMR_called.rm_regions.sort.bed > Cl6_D28_PMD.jaccard.noDox_UMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.PMD_called.rm_regions.sort.bed -b Cl6_D14_noDox.PMD_called.rm_regions.sort.bed > Cl6_D28_PMD.jaccard.noDox_PMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.PMD_called.rm_regions.sort.bed -b Cl6_D14_Dox.LMR_called.rm_regions.sort.bed > Cl6_D28_PMD.jaccard.D14_LMR.tx
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.PMD_called.rm_regions.sort.bed -b Cl6_D14_Dox.UMR_called.rm_regions.sort.bed > Cl6_D28_PMD.jaccard.D14_UMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.PMD_called.rm_regions.sort.bed -b Cl6_D14_Dox.PMD_called.rm_regions.sort.bed > Cl6_D28_PMD.jaccard.D14_PMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.PMD_called.rm_regions.sort.bed -b Cl6_D28.LMR_called.rm_regions.sort.bed > Cl6_D28_PMD.jaccard.D28_LMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.PMD_called.rm_regions.sort.bed -b Cl6_D28.UMR_called.rm_regions.sort.bed > Cl6_D28_PMD.jaccard.D28_UMR.txt

#UMR

/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_noDox.UMR_called.rm_regions.sort.bed -b Cl6_noDox.HMD_called_revised_0.8_2000bp.sort.bed > Cl6_noDox_UMR.jaccard.noDox_HMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_noDox.UMR_called.rm_regions.sort.bed -b Cl6_D14.HMD_called_revised_0.8_2000bp.sort.bed > Cl6_noDox_UMR.jaccard.D14_HMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_noDox.UMR_called.rm_regions.sort.bed -b Cl6_D28.HMD_called_revised_0.8_2000bp.sort.bed > Cl6_noDox_UMR.jaccard.D28_HMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_noDox.UMR_called.rm_regions.sort.bed -b Cl6_D14_noDox.LMR_called.rm_regions.sort.bed > Cl6_noDox_UMR.jaccard.noDox_LMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_noDox.UMR_called.rm_regions.sort.bed -b Cl6_D14_noDox.PMD_called.rm_regions.sort.bed > Cl6_noDox_UMR.jaccard.noDox_PMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_noDox.UMR_called.rm_regions.sort.bed -b Cl6_D14_Dox.LMR_called.rm_regions.sort.bed > Cl6_noDox_UMR.jaccard.D14_LMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_noDox.UMR_called.rm_regions.sort.bed -b Cl6_D14_Dox.UMR_called.rm_regions.sort.bed > Cl6_noDox_UMR.jaccard.D14_UMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_noDox.UMR_called.rm_regions.sort.bed -b Cl6_D14_Dox.PMD_called.rm_regions.sort.bed > Cl6_noDox_UMR.jaccard.D14_PMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_noDox.UMR_called.rm_regions.sort.bed -b Cl6_D28.LMR_called.rm_regions.sort.bed > Cl6_noDox_UMR.jaccard.D28_LMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_noDox.UMR_called.rm_regions.sort.bed -b Cl6_D28.UMR_called.rm_regions.sort.bed > Cl6_noDox_UMR.jaccard.D28_UMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_noDox.UMR_called.rm_regions.sort.bed -b Cl6_D28.PMD_called.rm_regions.sort.bed > Cl6_noDox_UMR.jaccard.D28_PMD.txt

/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_Dox.UMR_called.rm_regions.sort.bed -b Cl6_noDox.HMD_called_revised_0.8_2000bp.sort.bed > Cl6_D14_UMR.jaccard.noDox_HMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_Dox.UMR_called.rm_regions.sort.bed -b Cl6_D14.HMD_called_revised_0.8_2000bp.sort.bed > Cl6_D14_UMR.jaccard.D14_HMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_Dox.UMR_called.rm_regions.sort.bed -b Cl6_D28.HMD_called_revised_0.8_2000bp.sort.bed > Cl6_D14_UMR.jaccard.D28_HMD.txt 
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_Dox.UMR_called.rm_regions.sort.bed -b Cl6_D14_noDox.LMR_called.rm_regions.sort.bed > Cl6_D14_UMR.jaccard.noDox_LMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_Dox.UMR_called.rm_regions.sort.bed -b Cl6_D14_noDox.PMD_called.rm_regions.sort.bed > Cl6_D14_UMR.jaccard.noDox_PMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_Dox.UMR_called.rm_regions.sort.bed -b Cl6_D14_Dox.LMR_called.rm_regions.sort.bed > Cl6_D14_UMR.jaccard.D14_LMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_Dox.UMR_called.rm_regions.sort.bed -b Cl6_D14_noDox.UMR_called.rm_regions.sort.bed > Cl6_D14_UMR.jaccard.noDox_UMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_Dox.UMR_called.rm_regions.sort.bed -b Cl6_D14_Dox.PMD_called.rm_regions.sort.bed > Cl6_D14_UMR.jaccard.D14_PMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_Dox.UMR_called.rm_regions.sort.bed -b Cl6_D28.LMR_called.rm_regions.sort.bed > Cl6_D14_UMR.jaccard.D28_LMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_Dox.UMR_called.rm_regions.sort.bed -b Cl6_D28.UMR_called.rm_regions.sort.bed > Cl6_D14_UMR.jaccard.D28_UMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_Dox.UMR_called.rm_regions.sort.bed -b Cl6_D28.PMD_called.rm_regions.sort.bed > Cl6_D14_UMR.jaccard.D28_PMD.txt

/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.UMR_called.rm_regions.sort.bed -b Cl6_noDox.HMD_called_revised_0.8_2000bp.sort.bed > Cl6_D28_UMR.jaccard.noDox_HMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.UMR_called.rm_regions.sort.bed -b Cl6_D14.HMD_called_revised_0.8_2000bp.sort.bed > Cl6_D28_UMR.jaccard.D14_HMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.UMR_called.rm_regions.sort.bed -b Cl6_D28.HMD_called_revised_0.8_2000bp.sort.bed > Cl6_D28_UMR.jaccard.D28_HMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.UMR_called.rm_regions.sort.bed -b Cl6_D14_noDox.LMR_called.rm_regions.sort.bed > Cl6_D28_UMR.jaccard.noDox_LMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.UMR_called.rm_regions.sort.bed -b Cl6_D14_noDox.PMD_called.rm_regions.sort.bed > Cl6_D28_UMR.jaccard.noDox_PMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.UMR_called.rm_regions.sort.bed -b Cl6_D14_Dox.LMR_called.rm_regions.sort.bed > Cl6_D28_UMR.jaccard.D14_LMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.UMR_called.rm_regions.sort.bed -b Cl6_D14_noDox.UMR_called.rm_regions.sort.bed > Cl6_D28_UMR.jaccard.noDox_UMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.UMR_called.rm_regions.sort.bed -b Cl6_D14_Dox.PMD_called.rm_regions.sort.bed > Cl6_D28_UMR.jaccard.D14_PMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.UMR_called.rm_regions.sort.bed -b Cl6_D28.LMR_called.rm_regions.sort.bed > Cl6_D28_UMR.jaccard.D28_LMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.UMR_called.rm_regions.sort.bed -b Cl6_D14_Dox.UMR_called.rm_regions.sort.bed > Cl6_D28_UMR.jaccard.D14_UMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.UMR_called.rm_regions.sort.bed -b Cl6_D28.PMD_called.rm_regions.sort.bed > Cl6_D28_UMR.jaccard.D28_PMD.txt

#LMR

/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_noDox.LMR_called.rm_regions.sort.bed -b Cl6_noDox.HMD_called_revised_0.8_2000bp.sort.bed > Cl6_noDox_LMR.jaccard.noDox_HMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_noDox.LMR_called.rm_regions.sort.bed -b Cl6_D14.HMD_called_revised_0.8_2000bp.sort.bed > Cl6_noDox_LMR.jaccard.D14_HMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_noDox.LMR_called.rm_regions.sort.bed -b Cl6_D28.HMD_called_revised_0.8_2000bp.sort.bed > Cl6_noDox_LMR.jaccard.D28_HMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_noDox.LMR_called.rm_regions.sort.bed -b Cl6_D14_noDox.LMR_called.rm_regions.sort.bed > Cl6_noDox_LMR.jaccard.noDox_LMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_noDox.LMR_called.rm_regions.sort.bed -b Cl6_D14_noDox.PMD_called.rm_regions.sort.bed > Cl6_noDox_LMR.jaccard.noDox_PMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_noDox.LMR_called.rm_regions.sort.bed -b Cl6_D14_Dox.LMR_called.rm_regions.sort.bed > Cl6_noDox_LMR.jaccard.D14_LMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_noDox.LMR_called.rm_regions.sort.bed -b Cl6_D14_noDox.UMR_called.rm_regions.sort.bed > Cl6_noDox_LMR.jaccard.noDox_UMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_noDox.LMR_called.rm_regions.sort.bed -b Cl6_D14_Dox.PMD_called.rm_regions.sort.bed > Cl6_noDox_LMR.jaccard.D14_PMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_noDox.LMR_called.rm_regions.sort.bed -b Cl6_D28.LMR_called.rm_regions.sort.bed > Cl6_noDox_LMR.jaccard.D28_LMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_noDox.LMR_called.rm_regions.sort.bed -b Cl6_D14_Dox.UMR_called.rm_regions.sort.bed > Cl6_noDox_LMR.jaccard.D14_UMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_noDox.LMR_called.rm_regions.sort.bed -b Cl6_D28.PMD_called.rm_regions.sort.bed > Cl6_noDox_LMR.jaccard.D28_PMD.txt

/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_Dox.LMR_called.rm_regions.sort.bed -b Cl6_noDox.HMD_called_revised_0.8_2000bp.sort.bed > Cl6_D14_LMR.jaccard.noDox_HMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_Dox.LMR_called.rm_regions.sort.bed -b Cl6_D14.HMD_called_revised_0.8_2000bp.sort.bed > Cl6_D14_LMR.jaccard.D14_HMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_Dox.LMR_called.rm_regions.sort.bed -b Cl6_D28.HMD_called_revised_0.8_2000bp.sort.bed > Cl6_D14_LMR.jaccard.D28_HMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_Dox.LMR_called.rm_regions.sort.bed -b Cl6_D14_noDox.LMR_called.rm_regions.sort.bed > Cl6_D14_LMR.jaccard.noDox_LMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_Dox.LMR_called.rm_regions.sort.bed -b Cl6_D14_noDox.PMD_called.rm_regions.sort.bed > Cl6_D14_LMR.jaccard.noDox_PMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_Dox.LMR_called.rm_regions.sort.bed -b Cl6_D14_Dox.LMR_called.rm_regions.sort.bed > Cl6_D14_LMR.jaccard.D14_LMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_Dox.LMR_called.rm_regions.sort.bed -b Cl6_D14_noDox.UMR_called.rm_regions.sort.bed > Cl6_D14_LMR.jaccard.noDox_UMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_Dox.LMR_called.rm_regions.sort.bed -b Cl6_D14_Dox.PMD_called.rm_regions.sort.bed > Cl6_D14_LMR.jaccard.D14_PMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_Dox.LMR_called.rm_regions.sort.bed -b Cl6_D28.LMR_called.rm_regions.sort.bed > Cl6_D14_LMR.jaccard.D28_LMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_Dox.LMR_called.rm_regions.sort.bed -b Cl6_D14_Dox.UMR_called.rm_regions.sort.bed > Cl6_D14_LMR.jaccard.D14_UMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D14_Dox.LMR_called.rm_regions.sort.bed -b Cl6_D28.PMD_called.rm_regions.sort.bed > Cl6_D14_LMR.jaccard.D28_PMD.txt

/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.LMR_called.rm_regions.sort.bed -b Cl6_noDox.HMD_called_revised_0.8_2000bp.sort.bed > Cl6_D28_LMR.jaccard.noDox_HMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.LMR_called.rm_regions.sort.bed -b Cl6_D14.HMD_called_revised_0.8_2000bp.sort.bed > Cl6_D28_LMR.jaccard.D14_HMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.LMR_called.rm_regions.sort.bed -b Cl6_D28.HMD_called_revised_0.8_2000bp.sort.bed > Cl6_D28_LMR.jaccard.D28_HMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.LMR_called.rm_regions.sort.bed -b Cl6_D14_noDox.LMR_called.rm_regions.sort.bed > Cl6_D28_LMR.jaccard.noDox_LMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.LMR_called.rm_regions.sort.bed -b Cl6_D14_noDox.PMD_called.rm_regions.sort.bed > Cl6_D28_LMR.jaccard.noDox_PMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.LMR_called.rm_regions.sort.bed -b Cl6_D14_Dox.LMR_called.rm_regions.sort.bed > Cl6_D28_LMR.jaccard.D14_LMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.LMR_called.rm_regions.sort.bed -b Cl6_D14_noDox.UMR_called.rm_regions.sort.bed > Cl6_D28_LMR.jaccard.noDox_UMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.LMR_called.rm_regions.sort.bed -b Cl6_D14_Dox.PMD_called.rm_regions.sort.bed > Cl6_D28_LMR.jaccard.D14_PMD.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.LMR_called.rm_regions.sort.bed -b Cl6_D28.LMR_called.rm_regions.sort.bed > Cl6_D28_LMR.jaccard.D28_LMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.LMR_called.rm_regions.sort.bed -b Cl6_D14_Dox.UMR_called.rm_regions.sort.bed > Cl6_D28_LMR.jaccard.D14_UMR.txt
/primary/vari/software/bedtools/default/bin/bedtools jaccard -a Cl6_D28.LMR_called.rm_regions.sort.bed -b Cl6_D28.PMD_called.rm_regions.sort.bed > Cl6_D28_LMR.jaccard.D28_PMD.txt
 
