#!/bin/bash

set_common_vars() {

version="test"
case $1 in
	"run3lim")
        config="run3_2022_preEE_hlep_rare_limited"
        datasets='h_ggf_htt'
        processes='h_ggf_htt'
    ;;
    "run3")
        config="run3_2022_preEE_nano_tau_v12"
        #Datasets to use
        data='data_mu_c,data_mu_d,data_mu_e,'
        bkg_ewk='wj_incl,ww,wz,zz,wj, dy_incl,'
        bkg_top='st_t_bbarq,st_tbar_bq,'`
        `'st_t_wminus_to_lnu2q,st_t_wminus_to_2l2nu,'`
        `'st_tbar_wplus_to_lnu2q,st_tbar_wplus_to_2l2nu,'
        bkg_ttbar='tt_sl,tt_dl,tt_fh'
        datasets="$data$bkg_ewk$bkg_top$bkg_ttbar"
        processes="dy_z2mumu,dy_z2tautau,vv,tt,st,wj,data"
    ;;
    *)
    echo "Unknown run argument!"
    exit
esac
}
