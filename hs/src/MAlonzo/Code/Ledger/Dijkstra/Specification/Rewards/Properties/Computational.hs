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

module MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.Properties.Computational where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Prelude.Base

-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._.LedgerState
d_LedgerState_2764 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._.LedgerState.certState
d_certState_2818 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3974 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1594
d_certState_2818 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3986
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._.LedgerState.govSt
d_govSt_2820 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3974 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2820 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3984
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._.LedgerState.utxoSt
d_utxoSt_2822 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3974 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3332
d_utxoSt_2822 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3982
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2846 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._.Snapshots
d_Snapshots_2876 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._.Snapshots.feeSS
d_feeSS_2940 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_4008 ->
  Integer
d_feeSS_2940 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_feeSS_4024
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._.Snapshots.go
d_go_2942 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_4008 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3950
d_go_2942 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_go_4022
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._.Snapshots.mark
d_mark_2944 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_4008 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3950
d_mark_2944 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_mark_4018
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._.Snapshots.set
d_set_2946 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_4008 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3950
d_set_2946 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_set_4020
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._.completeness
d_completeness_2950 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2950 = erased
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._.computeProof
d_computeProof_2956 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2956 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._._.SNAP-total
d_SNAP'45'total_2982 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3286 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_4008 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3974 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_SNAP'45'total_2982 v0 ~v1 v2 v3 = du_SNAP'45'total_2982 v0 v2 v3
du_SNAP'45'total_2982 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_4008 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3974 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_SNAP'45'total_2982 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Product.Base.du_'45''44'__92
      (coe
         MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.du_HasCast'45'Snapshots_4050)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.du_stakeDistr_3978
               (coe v0)
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3862
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxO'45'LedgerState_4012)
                  v2)
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1870
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_4022)
                  v2)
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PStateOf_1890
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPState'45'LedgerState_4024)
                  v2))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_mark_4018
                  (coe v1))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_set_4020
                     (coe v1))
                  (coe
                     MAlonzo.Code.Ledger.Prelude.Base.d_FeesOf_58
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasFees'45'LedgerState_4030)
                     v2)))))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.C_SNAP_4066)
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._._.SNAP-complete
d_SNAP'45'complete_2986 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3286 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_4008 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3974 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_4008 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__4062 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_SNAP'45'complete_2986 = erased
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._.SNAP-deterministic-≡
d_SNAP'45'deterministic'45''8801'_2998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3286 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_4008 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3974 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3974 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_4008 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_4008 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__4062 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__4062 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_SNAP'45'deterministic'45''8801'_2998 = erased
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational.Computational-SNAP
d_Computational'45'SNAP_3000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3286 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'SNAP_3000 v0 ~v1
  = du_Computational'45'SNAP_3000 v0
du_Computational'45'SNAP_3000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'SNAP_3000 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Interface.ComputationalRelation.C_success_42
           (coe du_SNAP'45'total_2982 (coe v0) (coe v2) (coe v1)))
