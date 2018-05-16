library(piecewiseSEM) #for SEM mix model 
setwd("~/Documents/ESSLab/moths_rngsz_toleracnce/")
data_c = read.csv('CCH_species_TT_optima_20180418_YS_4R.csv',header = TRUE)
data1 = data_c[is.na(data_c$elev_mid)==F & is.na(data_c$CTcold_avg)==F
               & is.na(data_c$CThot_avg)==F & is.na(data_c$Weight_avg)==F,]

library(vegan) #standardize
data1$rngsz_std <- decostand(data1$elev_rng,"standardize",na.rm=T)[,1]
data1$CTrng_std <- decostand(data1$CTavg_rng,"standardize",na.rm=T)[,1]
data1$W_length_std <- decostand(data1$W_length_avg,"standardize",na.rm=T)[,1]
data1$mid_Tmax_std <- decostand(data1$elev_mid_HTibTmax,"standardize",na.rm=T)[,1]


dd.Mixmodlist = list(
  lmer(CTrng_std ~ mid_Tmax_std+W_length_std+(1|family/genus),data=data1),
  lmer(rngsz_std ~ CTrng_std+(1|family/genus),data=data1)
)

# Run goodness-of-fit tests
model_sem = sem.fit(dd.Mixmodlist, data=data1)
sem_coef = sem.coefs(dd.Mixmodlist, data=data1)
sem.plot(dd.Mixmodlist,sem_coef)
sem.fit(dd.Mixmodlist, data=data1)
summary(model_sem)
sem.lavaan(dd.Mixmodlist, data=data1, compute.int = TRUE)
