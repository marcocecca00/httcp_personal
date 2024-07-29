#!/bin/bash
source ./common.sh #to access set_common_vars() function
#The following function defines config, processes, version and datasets variables
set_common_vars "$1"
args=(
        --config $config
        --processes $processes
        --version $version
        --datasets $datasets
        --workflow local
        --selector-steps "trigger,met_filter,b_veto,PreTrigObjMatch,PostTrigObjMatch,dilepton_veto,extra_lepton_veto,One_higgs_cand_per_event,has_proper_tau_decay_products"
        --general-settings "yscale=log"
        "${@:2}"
)
law run cf.PlotCutflow "${args[@]}"

# Final cut 
# "trigger,met_filter,b_veto,PreTrigObjMatch,PostTrigObjMatch,dilepton_veto,extra_lepton_veto,One_higgs_cand_per_event,has_proper_tau_decay_products"


# ----------------------------------------------------------- #
# Muon Selection Steps
# ----------------------------------------------------------- #

# good_selection
# "muon_pt_26,muon_eta_2p4,mediumID,muon_dxy_0p045,muon_dz_0p2,muon_iso_0p15"

# good_selection_modify
# "muon_pt_26_good,muon_eta_2p4_good,mediumID_good,muon_dxy_0p045_good,muon_dz_0p2_good,muon_iso_0p15_good"

# single_veto_selections
# Total one: "mu_single_veto"
# "muon_pt_10_single_veto,muon_eta_2p4_single_veto,mediumID_single_veto,muon_dxy_0p045_single_veto,muon_dz_0p2_single_veto,muon_iso_0p3_single_veto"

# double_veto_selections
# Total one: "mu_double_veto"
# "muon_pt_15_double_veto,muon_eta_2p4_double_veto,muon_isGlobal_double_veto,muon_isPF_double_veto,muon_dxy_0p045_double_veto,muon_dz_0p2_double_veto,muon_iso_0p3_double_veto"


# ----------------------------------------------------------- #
# Electron Selection Steps
# ----------------------------------------------------------- #

# good_selection
# "electron_pt_25,electron_eta_2p1,electron_dxy_0p045,electron_dz_0p2,electron_mva_iso_wp80"

# single_veto_selections
# Total one: "e_single_veto"

# double_veto_selections
# Total one: "e_double_veto"


# ----------------------------------------------------------- #
# Tau Selection Steps
# ----------------------------------------------------------- #

# good_selection
# "tau_pt_20,tau_eta_2p3,tau_dz_0p2,DeepTauVSjet,DeepTauVSe,DeepTauVSmu,DecayMode"
