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

module MAlonzo.Code.Ledger.Conway.Conformance.Rewards where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Properties
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

-- Ledger.Conway.Conformance.Rewards._.LState
d_LState_2496 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.LState.certState
d_certState_2528 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2728 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1632
d_certState_2528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2740
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.govSt
d_govSt_2530 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2728 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2738 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.utxoSt
d_utxoSt_2532 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2728 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2524
d_utxoSt_2532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2736
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.BlocksMade
d_BlocksMade_2612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  ()
d_BlocksMade_2612 = erased
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshot
d_HasCast'45'Snapshot_2614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshot_2614 ~v0 ~v1 = du_HasCast'45'Snapshot_2614
du_HasCast'45'Snapshot_2614 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshot_2614
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshot_3088
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshots
d_HasCast'45'Snapshots_2616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshots_2616 ~v0 ~v1 = du_HasCast'45'Snapshots_2616
du_HasCast'45'Snapshots_2616 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshots_2616
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshots_3166
-- Ledger.Conway.Conformance.Rewards._.HasFees-Snapshots
d_HasFees'45'Snapshots_2618 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_50
d_HasFees'45'Snapshots_2618 ~v0 ~v1 = du_HasFees'45'Snapshots_2618
du_HasFees'45'Snapshots_2618 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_50
du_HasFees'45'Snapshots_2618
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasFees'45'Snapshots_3164
-- Ledger.Conway.Conformance.Rewards._.HasPools-Snapshot
d_HasPools'45'Snapshot_2620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1272
d_HasPools'45'Snapshot_2620 ~v0 ~v1 = du_HasPools'45'Snapshot_2620
du_HasPools'45'Snapshot_2620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1272
du_HasPools'45'Snapshot_2620
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasPools'45'Snapshot_3086
-- Ledger.Conway.Conformance.Rewards._.HasSnapshots
d_HasSnapshots_2622 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Rewards._.HasStake-Snapshot
d_HasStake'45'Snapshot_2626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1320
d_HasStake'45'Snapshot_2626 ~v0 ~v1 = du_HasStake'45'Snapshot_2626
du_HasStake'45'Snapshot_2626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1320
du_HasStake'45'Snapshot_2626
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStake'45'Snapshot_3082
-- Ledger.Conway.Conformance.Rewards._.HasStakeDelegs-Snapshot
d_HasStakeDelegs'45'Snapshot_2628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1336
d_HasStakeDelegs'45'Snapshot_2628 ~v0 ~v1
  = du_HasStakeDelegs'45'Snapshot_2628
du_HasStakeDelegs'45'Snapshot_2628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1336
du_HasStakeDelegs'45'Snapshot_2628
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStakeDelegs'45'Snapshot_3084
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate
d_RewardUpdate_2630 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshot
d_Snapshot_2636 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshots
d_Snapshots_2640 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.SnapshotsOf
d_SnapshotsOf_2644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_3148 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3124
d_SnapshotsOf_2644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_3156
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.maxPool
d_maxPool_2646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_maxPool_2646 ~v0 ~v1 = du_maxPool_2646
du_maxPool_2646 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_maxPool_2646
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_maxPool_2760
-- Ledger.Conway.Conformance.Rewards._.mkApparentPerformance
d_mkApparentPerformance_2648 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mkApparentPerformance_2648 ~v0 ~v1
  = du_mkApparentPerformance_2648
du_mkApparentPerformance_2648 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_mkApparentPerformance_2648
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_mkApparentPerformance_2796
-- Ledger.Conway.Conformance.Rewards._.nonZero-1+max0-x
d_nonZero'45'1'43'max0'45'x_2650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'43'max0'45'x_2650 ~v0 ~v1
  = du_nonZero'45'1'43'max0'45'x_2650
du_nonZero'45'1'43'max0'45'x_2650 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'43'max0'45'x_2650
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'1'43'max0'45'x_2756
-- Ledger.Conway.Conformance.Rewards._.nonZero-1/n
d_nonZero'45'1'47'n_2652 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'47'n_2652 ~v0 v1 = du_nonZero'45'1'47'n_2652 v1
du_nonZero'45'1'47'n_2652 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'47'n_2652 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Properties.du_pos'8658'nonZero_3004
      (coe
         MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe (1 :: Integer))
         (coe v0))
-- Ledger.Conway.Conformance.Rewards._.nonZero-max-1
d_nonZero'45'max'45'1_2654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'max'45'1_2654 ~v0 ~v1 = du_nonZero'45'max'45'1_2654
du_nonZero'45'max'45'1_2654 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'max'45'1_2654
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'max'45'1_2740
-- Ledger.Conway.Conformance.Rewards._.poolStake
d_poolStake_2656 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolStake_2656 v0 ~v1 = du_poolStake_2656 v0
du_poolStake_2656 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_poolStake_2656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_poolStake_2904
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.reward
d_reward_2658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_reward_2658 v0 ~v1 = du_reward_2658 v0
du_reward_2658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_reward_2658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_reward_2960
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardMember
d_rewardMember_2660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1180 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardMember_2660 ~v0 ~v1 = du_rewardMember_2660
du_rewardMember_2660 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1180 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardMember_2660
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardMember_2834
-- Ledger.Conway.Conformance.Rewards._.rewardOnePool
d_rewardOnePool_2662 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewardOnePool_2662 v0 ~v1 = du_rewardOnePool_2662 v0
du_rewardOnePool_2662 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewardOnePool_2662 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOnePool_2854
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardOwners
d_rewardOwners_2664 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1180 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardOwners_2664 ~v0 ~v1 = du_rewardOwners_2664
du_rewardOwners_2664 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1180 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardOwners_2664
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOwners_2814
-- Ledger.Conway.Conformance.Rewards._.stakeDistr
d_stakeDistr_2666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1436 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1452 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3066
d_stakeDistr_2666 v0 ~v1 = du_stakeDistr_2666 v0
du_stakeDistr_2666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1436 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1452 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3066
du_stakeDistr_2666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_stakeDistr_3094
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.uncurryᵐ
d_uncurry'7504'_2668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_uncurry'7504'_2668 ~v0 ~v1 = du_uncurry'7504'_2668
du_uncurry'7504'_2668 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_uncurry'7504'_2668 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_uncurry'7504'_2924
      v3 v4 v5
-- Ledger.Conway.Conformance.Rewards._.HasSnapshots.SnapshotsOf
d_SnapshotsOf_2672 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_3148 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3124
d_SnapshotsOf_2672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_3156
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.flowConservation
d_flowConservation_2676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3030 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2676 = erased
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.rs
d_rs_2678 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3030 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2678 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_3054 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf
d_Δf_2680 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3030 ->
  Integer
d_Δf_2680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_3052 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3030 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_3062
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δr
d_Δr_2684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3030 ->
  Integer
d_Δr_2684 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_3050 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt
d_Δt_2686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3030 ->
  Integer
d_Δt_2686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_3048 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3030 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_3060
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.delegations
d_delegations_2692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3066 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_3076
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.pools
d_pools_2694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3066 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2694 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_3078
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.stake
d_stake_2696 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3066 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2696 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_3074
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.feeSS
d_feeSS_2700 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3124 ->
  Integer
d_feeSS_2700 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_3140
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.go
d_go_2702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3124 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3066
d_go_2702 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3138 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.mark
d_mark_2704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3124 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3066
d_mark_2704 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_3134
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.set
d_set_2706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3124 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3066
d_set_2706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3136
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2718 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2718 = C_SNAP_2760
-- Ledger.Conway.Conformance.Rewards._.certState
d_certState_2722 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_7253 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1632
d_certState_2722 ~v0 ~v1 v2 = du_certState_2722 v2
du_certState_2722 ::
  T_GeneralizeTel_7253 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1632
du_certState_2722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2740
      (coe d_'46'generalizedField'45'lstate_7243 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.utxoSt
d_utxoSt_2726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_7253 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2524
d_utxoSt_2726 ~v0 ~v1 v2 = du_utxoSt_2726 v2
du_utxoSt_2726 ::
  T_GeneralizeTel_7253 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2524
du_utxoSt_2726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2736
      (coe d_'46'generalizedField'45'lstate_7243 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.fees
d_fees_2734 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_7253 -> Integer
d_fees_2734 ~v0 ~v1 v2 = du_fees_2734 v2
du_fees_2734 :: T_GeneralizeTel_7253 -> Integer
du_fees_2734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2536
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2736
         (coe d_'46'generalizedField'45'lstate_7243 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.utxo
d_utxo_2736 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_7253 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2736 ~v0 ~v1 v2 = du_utxo_2736 v2
du_utxo_2736 ::
  T_GeneralizeTel_7253 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2534
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2736
         (coe d_'46'generalizedField'45'lstate_7243 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.dState
d_dState_2740 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_7253 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1596
d_dState_2740 ~v0 ~v1 v2 = du_dState_2740 v2
du_dState_2740 ::
  T_GeneralizeTel_7253 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1596
du_dState_2740 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1640
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2740
         (coe d_'46'generalizedField'45'lstate_7243 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.pState
d_pState_2744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_7253 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1452
d_pState_2744 ~v0 ~v1 v2 = du_pState_2744 v2
du_pState_2744 ::
  T_GeneralizeTel_7253 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1452
du_pState_2744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1642
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2740
         (coe d_'46'generalizedField'45'lstate_7243 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.rewards
d_rewards_2754 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_7253 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2754 ~v0 ~v1 v2 = du_rewards_2754 v2
du_rewards_2754 ::
  T_GeneralizeTel_7253 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1610
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1640
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2740
            (coe d_'46'generalizedField'45'lstate_7243 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.stakeDelegs
d_stakeDelegs_2756 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_7253 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2756 ~v0 ~v1 v2 = du_stakeDelegs_2756 v2
du_stakeDelegs_2756 ::
  T_GeneralizeTel_7253 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_2756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1608
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1640
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2740
            (coe d_'46'generalizedField'45'lstate_7243 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.voteDelegs
d_voteDelegs_2758 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_7253 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2758 ~v0 ~v1 v2 = du_voteDelegs_2758 v2
du_voteDelegs_2758 ::
  T_GeneralizeTel_7253 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_2758 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1606
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1640
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2740
            (coe d_'46'generalizedField'45'lstate_7243 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__5765 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Rewards..generalizedField-lstate
d_'46'generalizedField'45'lstate_7243 ::
  T_GeneralizeTel_7253 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2728
d_'46'generalizedField'45'lstate_7243 v0
  = case coe v0 of
      C_mkGeneralizeTel_7255 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-mark
d_'46'generalizedField'45'mark_7245 ::
  T_GeneralizeTel_7253 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3066
d_'46'generalizedField'45'mark_7245 v0
  = case coe v0 of
      C_mkGeneralizeTel_7255 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-set
d_'46'generalizedField'45'set_7247 ::
  T_GeneralizeTel_7253 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3066
d_'46'generalizedField'45'set_7247 v0
  = case coe v0 of
      C_mkGeneralizeTel_7255 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-go
d_'46'generalizedField'45'go_7249 ::
  T_GeneralizeTel_7253 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3066
d_'46'generalizedField'45'go_7249 v0
  = case coe v0 of
      C_mkGeneralizeTel_7255 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_7251 ::
  T_GeneralizeTel_7253 -> Integer
d_'46'generalizedField'45'feeSS_7251 v0
  = case coe v0 of
      C_mkGeneralizeTel_7255 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards.GeneralizeTel
d_GeneralizeTel_7253 a0 a1 = ()
data T_GeneralizeTel_7253
  = C_mkGeneralizeTel_7255 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2728
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3066
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3066
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3066
                           Integer
