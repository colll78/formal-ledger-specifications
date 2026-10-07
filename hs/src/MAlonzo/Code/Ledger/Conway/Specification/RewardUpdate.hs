{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE EmptyCase #-}
{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}

{-# OPTIONS_GHC -Wno-overlapping-patterns #-}

module MAlonzo.Code.Ledger.Conway.Specification.RewardUpdate where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Class.HasAdd.Core
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ratify
import qualified MAlonzo.Code.Ledger.Conway.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch

-- _.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_MaxLovelaceSupply'7580'_440 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_348
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1390
         (coe v0))
-- _.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_RandomnessStabilisationWindow_518 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_96
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1824
         (coe v0))
-- _.Slot
d_Slot_598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_598 = erased
-- _.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_SlotsPerEpoch'7580'_602 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_336
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1390
         (coe v0))
-- _.addSlot
d_addSlot_698 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_698 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_282
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1824
         (coe v0))
-- _.epoch
d_epoch_716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_716 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_92
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1824
         (coe v0))
-- _.firstSlot
d_firstSlot_720 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_firstSlot_720 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_94
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1824
         (coe v0))
-- Ledger.Conway.Specification.RewardUpdate._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2058 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.RewardUpdate._.EpochState
d_EpochState_2062 a0 a1 = ()
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState
d_NewEpochState_2144 a0 a1 = ()
-- Ledger.Conway.Specification.RewardUpdate._.createRUpd
d_createRUpd_2172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3306 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3030
d_createRUpd_2172 v0 ~v1 = du_createRUpd_2172 v0
du_createRUpd_2172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3306 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3030
du_createRUpd_2172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_createRUpd_3478
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.acnt
d_acnt_2200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3306 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_190
d_acnt_2200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt_3318 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.es
d_es_2202 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3306 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1200
d_es_2202 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3324 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.fut
d_fut_2204 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3306 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1916
d_fut_2204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_fut_3326 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.ls
d_ls_2206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3306 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2984
d_ls_2206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3322 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.ss
d_ss_2208 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3306 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3124
d_ss_2208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ss_3320 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.bcur
d_bcur_2244 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3378 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_2244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3396 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.bprev
d_bprev_2246 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3378 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_2246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3394
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.epochState
d_epochState_2248 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3378 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3306
d_epochState_2248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3398
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.lastEpoch
d_lastEpoch_2250 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3378 ->
  AgdaAny
d_lastEpoch_2250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_lastEpoch_3392
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.pd
d_pd_2252 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3378 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_2252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pd_3402 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.ru
d_ru_2254 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3378 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3030
d_ru_2254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ru_3400 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.BlocksMade
d_BlocksMade_2312 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  ()
d_BlocksMade_2312 = erased
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate
d_RewardUpdate_2330 a0 a1 = ()
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.flowConservation
d_flowConservation_2380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3030 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2380 = erased
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.rs
d_rs_2382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3030 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_3054 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δf
d_Δf_2384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3030 ->
  Integer
d_Δf_2384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_3052 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3030 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2386 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_3062
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δr
d_Δr_2388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3030 ->
  Integer
d_Δr_2388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_3050 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δt
d_Δt_2390 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3030 ->
  Integer
d_Δt_2390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_3048 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2392 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3030 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_3060
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate.RUpdEnv
d_RUpdEnv_2412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  ()
d_RUpdEnv_2412 = erased
-- Ledger.Conway.Specification.RewardUpdate._⊢_⇀⦇_,RUPD⦈_
d__'8866'_'8640''10631'_'44'RUPD'10632'__2414 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'RUPD'10632'__2414
  = C_RUPD'45'Create'45'Reward'45'Update_2424 AgdaAny |
    C_RUPD'45'Reward'45'Update'45'Exists_2434 |
    C_RUPD'45'Reward'45'Too'45'Early_2442
-- Ledger.Conway.Specification.RewardUpdate._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__2444 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'TICK'10632'__2444
  = C_TICK_2454 MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3378
                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
