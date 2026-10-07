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

module MAlonzo.Code.Ledger.Conway.Specification.Chain where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Data.Nat.ListAction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.BlockBody
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.RewardUpdate
import qualified MAlonzo.Code.Ledger.Conway.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

-- _.HasCast-HashProtected
d_HasCast'45'HashProtected_258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_258 ~v0
  = du_HasCast'45'HashProtected_258
du_HasCast'45'HashProtected_258 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1114
-- _.HasPParams
d_HasPParams_336 a0 a1 a2 = ()
-- _.PParamsOf
d_PParamsOf_488 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_438 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
d_PParamsOf_488 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_446
      (coe v0)
-- _.Tx
d_Tx_630 a0 = ()
-- _.HasPParams.PParamsOf
d_PParamsOf_1326 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_438 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
d_PParamsOf_1326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_446
      (coe v0)
-- _.Tx.body
d_body_1962 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3674 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3474
d_body_1962 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3686
      (coe v0)
-- _.Tx.isValid
d_isValid_1964 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3674 ->
  Bool
d_isValid_1964 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3692
      (coe v0)
-- _.Tx.txAD
d_txAD_1966 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3674 ->
  Maybe AgdaAny
d_txAD_1966 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3694
      (coe v0)
-- _.Tx.txsize
d_txsize_1968 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3674 ->
  Integer
d_txsize_1968 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3690
      (coe v0)
-- _.Tx.wits
d_wits_1970 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3674 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3652
d_wits_1970 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3688
      (coe v0)
-- Ledger.Conway.Specification.Chain._._⊢_⇀⦇_,BBODY⦈_
d__'8866'_'8640''10631'_'44'BBODY'10632'__2056 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Chain._.BBodyEnv
d_BBodyEnv_2060 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  ()
d_BBodyEnv_2060 = erased
-- Ledger.Conway.Specification.Chain._.BBodyState
d_BBodyState_2062 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  ()
d_BBodyState_2062 = erased
-- Ledger.Conway.Specification.Chain._.BHBody
d_BHBody_2064 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.BHeader
d_BHeader_2068 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.Block
d_Block_2072 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.incrBlocks
d_incrBlocks_2076 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incrBlocks_2076 v0 ~v1 = du_incrBlocks_2076 v0
du_incrBlocks_2076 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incrBlocks_2076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.du_incrBlocks_2412
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bhash
d_bhash_2084 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2344 ->
  AgdaAny
d_bhash_2084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhash_2362
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bsize
d_bsize_2086 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2344 ->
  Integer
d_bsize_2086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bsize_2358
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bvkcold
d_bvkcold_2088 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2344 ->
  AgdaAny
d_bvkcold_2088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bvkcold_2356
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.hBbsize
d_hBbsize_2090 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2344 ->
  Integer
d_hBbsize_2090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_hBbsize_2364
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.slot
d_slot_2092 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2344 ->
  AgdaAny
d_slot_2092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_slot_2360
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHeader.bhbody
d_bhbody_2096 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2368 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2344
d_bhbody_2096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2374
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHeader.bhsig
d_bhsig_2098 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2368 ->
  AgdaAny
d_bhsig_2098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhsig_2376
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bBodyHash
d_bBodyHash_2102 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2380 ->
  AgdaAny
d_bBodyHash_2102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bBodyHash_2400
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bBodySize
d_bBodySize_2104 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2380 ->
  Integer
d_bBodySize_2104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bBodySize_2398
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bheader
d_bheader_2106 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2368
d_bheader_2106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2394
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.ts
d_ts_2108 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2380 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3674]
d_ts_2108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2396
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.≡-bBodyHash
d_'8801''45'bBodyHash_2110 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_2110 = erased
-- Ledger.Conway.Specification.Chain._.Block.≡-bBodySize
d_'8801''45'bBodySize_2112 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_2112 = erased
-- Ledger.Conway.Specification.Chain._.CertStateOf
d_CertStateOf_2148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1576 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1480
d_CertStateOf_2148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1584
      (coe v0)
-- Ledger.Conway.Specification.Chain._.DepositsOf
d_DepositsOf_2182 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1220 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1228
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState
d_HasCertState_2218 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasDeposits
d_HasDeposits_2234 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasRewards
d_HasRewards_2266 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasRewards-CertState
d_HasRewards'45'CertState_2270 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1304
d_HasRewards'45'CertState_2270 ~v0 ~v1
  = du_HasRewards'45'CertState_2270
du_HasRewards'45'CertState_2270 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1304
du_HasRewards'45'CertState_2270
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1616
-- Ledger.Conway.Specification.Chain._.RewardsOf
d_RewardsOf_2316 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1304 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2316 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1312
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState.CertStateOf
d_CertStateOf_2468 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1576 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1480
d_CertStateOf_2468 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1584
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasDeposits.DepositsOf
d_DepositsOf_2476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1220 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1228
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasRewards.RewardsOf
d_RewardsOf_2496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1304 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2496 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1312
      (coe v0)
-- Ledger.Conway.Specification.Chain._.EnactStateOf
d_EnactStateOf_2552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1228 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1200
d_EnactStateOf_2552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1236
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEnactState
d_HasEnactState_2556 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasPParams-EnactState
d_HasPParams'45'EnactState_2560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_438
d_HasPParams'45'EnactState_2560 ~v0 ~v1
  = du_HasPParams'45'EnactState_2560
du_HasPParams'45'EnactState_2560 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_438
du_HasPParams'45'EnactState_2560
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1244
-- Ledger.Conway.Specification.Chain._.HasEnactState.EnactStateOf
d_EnactStateOf_2610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1228 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1200
d_EnactStateOf_2610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1236
      (coe v0)
-- Ledger.Conway.Specification.Chain._.EpochStateOf
d_EpochStateOf_2624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3334 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3306
d_EpochStateOf_2624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3342
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEnactState-EpochState
d_HasEnactState'45'EpochState_2644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1228
d_HasEnactState'45'EpochState_2644 ~v0 ~v1
  = du_HasEnactState'45'EpochState_2644
du_HasEnactState'45'EpochState_2644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1228
du_HasEnactState'45'EpochState_2644
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3356
-- Ledger.Conway.Specification.Chain._.HasEpochState
d_HasEpochState_2648 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasEpochState-NewEpochState
d_HasEpochState'45'NewEpochState_2652 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3334
d_HasEpochState'45'NewEpochState_2652 ~v0 ~v1
  = du_HasEpochState'45'NewEpochState_2652
du_HasEpochState'45'NewEpochState_2652 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3334
du_HasEpochState'45'NewEpochState_2652
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3448
-- Ledger.Conway.Specification.Chain._.HasLState-EpochState
d_HasLState'45'EpochState_2658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_3004
d_HasLState'45'EpochState_2658 ~v0 ~v1
  = du_HasLState'45'EpochState_2658
du_HasLState'45'EpochState_2658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_3004
du_HasLState'45'EpochState_2658
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3352
-- Ledger.Conway.Specification.Chain._.HasLastEpoch
d_HasLastEpoch_2662 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasLastEpoch-NewEpochState
d_HasLastEpoch'45'NewEpochState_2666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3430
d_HasLastEpoch'45'NewEpochState_2666 ~v0 ~v1
  = du_HasLastEpoch'45'NewEpochState_2666
du_HasLastEpoch'45'NewEpochState_2666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3430
du_HasLastEpoch'45'NewEpochState_2666
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_3446
-- Ledger.Conway.Specification.Chain._.HasNewEpochState
d_HasNewEpochState_2668 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.LastEpochOf
d_LastEpochOf_2694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3430 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_2694 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3438
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState
d_NewEpochState_2702 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.NewEpochStateOf
d_NewEpochStateOf_2706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3410 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3378
d_NewEpochStateOf_2706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_NewEpochStateOf_3418
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEpochState.EpochStateOf
d_EpochStateOf_2790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3334 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3306
d_EpochStateOf_2790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3342
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasLastEpoch.LastEpochOf
d_LastEpochOf_2794 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3430 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_2794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3438
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasNewEpochState.NewEpochStateOf
d_NewEpochStateOf_2798 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3410 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3378
d_NewEpochStateOf_2798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_NewEpochStateOf_3418
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.bcur
d_bcur_2802 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3378 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_2802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3396 (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.bprev
d_bprev_2804 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3378 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_2804 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3394
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.epochState
d_epochState_2806 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3378 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3306
d_epochState_2806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3398
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.lastEpoch
d_lastEpoch_2808 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3378 ->
  AgdaAny
d_lastEpoch_2808 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_lastEpoch_3392
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.pd
d_pd_2810 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3378 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_2810 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pd_3402 (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.ru
d_ru_2812 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3378 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3030
d_ru_2812 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ru_3400 (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState-LState
d_HasCertState'45'LState_3020 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1576
d_HasCertState'45'LState_3020 ~v0 ~v1
  = du_HasCertState'45'LState_3020
du_HasCertState'45'LState_3020 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1576
du_HasCertState'45'LState_3020
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_3026
-- Ledger.Conway.Specification.Chain._.HasLState
d_HasLState_3036 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasUTxOState-LState
d_HasUTxOState'45'LState_3048 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2548
d_HasUTxOState'45'LState_3048 ~v0 ~v1
  = du_HasUTxOState'45'LState_3048
du_HasUTxOState'45'LState_3048 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2548
du_HasUTxOState'45'LState_3048
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_3020
-- Ledger.Conway.Specification.Chain._.LState
d_LState_3060 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.LStateOf
d_LStateOf_3064 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_3004 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2984
d_LStateOf_3064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_3012
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasLState.LStateOf
d_LStateOf_3082 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_3004 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2984
d_LStateOf_3082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_3012
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.certState
d_certState_3098 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2984 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1480
d_certState_3098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2996
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.govSt
d_govSt_3100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2984 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_3100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_2994
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.utxoSt
d_utxoSt_3102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2984 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2524
d_utxoSt_3102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2992
      (coe v0)
-- Ledger.Conway.Specification.Chain._._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__3290 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Chain._.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_3332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1220
d_HasDeposits'45'UTxOState_3332 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_3332
du_HasDeposits'45'UTxOState_3332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1220
du_HasDeposits'45'UTxOState_3332
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2570
-- Ledger.Conway.Specification.Chain._.HasUTxOState
d_HasUTxOState_3342 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.UTxOStateOf
d_UTxOStateOf_3366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2548 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2524
d_UTxOStateOf_3366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2556
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_3456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2548 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2524
d_UTxOStateOf_3456 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2556
      (coe v0)
-- Ledger.Conway.Specification.Chain.ChainState
d_ChainState_3506 a0 a1 = ()
newtype T_ChainState_3506
  = C_constructor_3512 MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3378
-- Ledger.Conway.Specification.Chain.ChainState.newEpochState
d_newEpochState_3510 ::
  T_ChainState_3506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3378
d_newEpochState_3510 v0
  = case coe v0 of
      C_constructor_3512 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Chain.HasNewEpochState-ChainState
d_HasNewEpochState'45'ChainState_3514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3410
d_HasNewEpochState'45'ChainState_3514 ~v0 ~v1
  = du_HasNewEpochState'45'ChainState_3514
du_HasNewEpochState'45'ChainState_3514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3410
du_HasNewEpochState'45'ChainState_3514
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3420
      (coe (\ v0 -> d_newEpochState_3510 (coe v0)))
-- Ledger.Conway.Specification.Chain.HasLastEpoch-ChainState
d_HasLastEpoch'45'ChainState_3516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3430
d_HasLastEpoch'45'ChainState_3516 ~v0 ~v1
  = du_HasLastEpoch'45'ChainState_3516
du_HasLastEpoch'45'ChainState_3516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3430
du_HasLastEpoch'45'ChainState_3516
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3440
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3438
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_3446)
              (d_newEpochState_3510 (coe v0))))
-- Ledger.Conway.Specification.Chain.HasEpochState-ChainState
d_HasEpochState'45'ChainState_3518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3334
d_HasEpochState'45'ChainState_3518 ~v0 ~v1
  = du_HasEpochState'45'ChainState_3518
du_HasEpochState'45'ChainState_3518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3334
du_HasEpochState'45'ChainState_3518
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3344
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3342
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3448)
              (d_newEpochState_3510 (coe v0))))
-- Ledger.Conway.Specification.Chain.HasEnactState-ChainState
d_HasEnactState'45'ChainState_3520 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1228
d_HasEnactState'45'ChainState_3520 ~v0 ~v1
  = du_HasEnactState'45'ChainState_3520
du_HasEnactState'45'ChainState_3520 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1228
du_HasEnactState'45'ChainState_3520
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1238
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1236
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3356)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3342
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3448)
                 (d_newEpochState_3510 (coe v0)))))
-- Ledger.Conway.Specification.Chain.HasLState-ChainState
d_HasLState'45'ChainState_3522 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_3004
d_HasLState'45'ChainState_3522 ~v0 ~v1
  = du_HasLState'45'ChainState_3522
du_HasLState'45'ChainState_3522 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_3004
du_HasLState'45'ChainState_3522
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.C_constructor_3014
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_3012
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3352)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3342
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3448)
                 (d_newEpochState_3510 (coe v0)))))
-- Ledger.Conway.Specification.Chain.HasUTxOState-ChainState
d_HasUTxOState'45'ChainState_3524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2548
d_HasUTxOState'45'ChainState_3524 ~v0 ~v1
  = du_HasUTxOState'45'ChainState_3524
du_HasUTxOState'45'ChainState_3524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2548
du_HasUTxOState'45'ChainState_3524
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_constructor_2558
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2556
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_3020)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_3012
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3352)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3342
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3448)
                    (d_newEpochState_3510 (coe v0))))))
-- Ledger.Conway.Specification.Chain.HasCertState-ChainState
d_HasCertState'45'ChainState_3526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1576
d_HasCertState'45'ChainState_3526 ~v0 ~v1
  = du_HasCertState'45'ChainState_3526
du_HasCertState'45'ChainState_3526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1576
du_HasCertState'45'ChainState_3526
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1586
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1584
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_3026)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_3012
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3352)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3342
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3448)
                    (d_newEpochState_3510 (coe v0))))))
-- Ledger.Conway.Specification.Chain.HasDeposits-ChainState
d_HasDeposits'45'ChainState_3528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1220
d_HasDeposits'45'ChainState_3528 ~v0 ~v1
  = du_HasDeposits'45'ChainState_3528
du_HasDeposits'45'ChainState_3528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1220
du_HasDeposits'45'ChainState_3528
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1230
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1228
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2570)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2556
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_3020)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_3012
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3352)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3342
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3448)
                       (d_newEpochState_3510 (coe v0)))))))
-- Ledger.Conway.Specification.Chain.HasRewards-ChainState
d_HasRewards'45'ChainState_3530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1304
d_HasRewards'45'ChainState_3530 ~v0 ~v1
  = du_HasRewards'45'ChainState_3530
du_HasRewards'45'ChainState_3530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1304
du_HasRewards'45'ChainState_3530
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1314
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1312
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1616)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1584
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_3026)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_3012
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3352)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3342
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3448)
                       (d_newEpochState_3510 (coe v0)))))))
-- Ledger.Conway.Specification.Chain.HasPParams-ChainState
d_HasPParams'45'ChainState_3532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_438
d_HasPParams'45'ChainState_3532 ~v0 ~v1
  = du_HasPParams'45'ChainState_3532
du_HasPParams'45'ChainState_3532 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_438
du_HasPParams'45'ChainState_3532
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_448
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_446
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1244)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1236
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3356)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3342
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3448)
                    (d_newEpochState_3510 (coe v0))))))
-- Ledger.Conway.Specification.Chain.totalRefScriptsSize
d_totalRefScriptsSize_3534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2984 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3674] ->
  Integer
d_totalRefScriptsSize_3534 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Nat.ListAction.d_sum_6
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased
         (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_refScriptsSize_2604
            (coe v0) (coe v1)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2534
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2992
                  (coe v2))))
         v3)
-- Ledger.Conway.Specification.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__3556 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__3556
  = C_CHAIN_3646 MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3378
                 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Chain._.newEpochState
d_newEpochState_3568 ::
  T_ChainState_3506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3378
d_newEpochState_3568 v0 = coe d_newEpochState_3510 (coe v0)
-- Ledger.Conway.Specification.Chain._.bheader
d_bheader_3576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_19441 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3378 ->
  T_ChainState_3506 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2368
d_bheader_3576 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_bheader_3576 v3
du_bheader_3576 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2368
du_bheader_3576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2394
      (coe v0)
-- Ledger.Conway.Specification.Chain._.ts
d_ts_3578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_19441 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3378 ->
  T_ChainState_3506 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3674]
d_ts_3578 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_ts_3578 v3
du_ts_3578 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2380 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3674]
du_ts_3578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2396
      (coe v0)
-- Ledger.Conway.Specification.Chain._.bhbody
d_bhbody_3586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_19441 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3378 ->
  T_ChainState_3506 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2344
d_bhbody_3586 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_bhbody_3586 v3
du_bhbody_3586 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2344
du_bhbody_3586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2374
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2394
         (coe v0))
-- Ledger.Conway.Specification.Chain._.slot
d_slot_3600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_19441 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3378 ->
  T_ChainState_3506 -> AgdaAny
d_slot_3600 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_slot_3600 v3
du_slot_3600 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2380 ->
  AgdaAny
du_slot_3600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_slot_2360
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2374
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2394
            (coe v0)))
-- Ledger.Conway.Specification.Chain._.bcur
d_bcur_3604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_19441 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3378 ->
  T_ChainState_3506 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_3604 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_bcur_3604 v4
du_bcur_3604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3378 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_bcur_3604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3396 (coe v0)
-- Ledger.Conway.Specification.Chain._.epochState
d_epochState_3608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_19441 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3378 ->
  T_ChainState_3506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3306
d_epochState_3608 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_epochState_3608 v4
du_epochState_3608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3378 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3306
du_epochState_3608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3398
      (coe v0)
-- Ledger.Conway.Specification.Chain._.acnt
d_acnt_3618 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_19441 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3378 ->
  T_ChainState_3506 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_190
d_acnt_3618 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_acnt_3618 v4
du_acnt_3618 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3378 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_190
du_acnt_3618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt_3318
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3398
         (coe v0))
-- Ledger.Conway.Specification.Chain._.es
d_es_3620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_19441 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3378 ->
  T_ChainState_3506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1200
d_es_3620 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_es_3620 v4
du_es_3620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3378 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1200
du_es_3620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3324
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3398
         (coe v0))
-- Ledger.Conway.Specification.Chain._.ls
d_ls_3624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_19441 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3378 ->
  T_ChainState_3506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2984
d_ls_3624 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_ls_3624 v4
du_ls_3624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3378 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2984
du_ls_3624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3322
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3398
         (coe v0))
-- Ledger.Conway.Specification.Chain._.pparams
d_pparams_3634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_19441 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3378 ->
  T_ChainState_3506 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_3634 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_pparams_3634 v4
du_pparams_3634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3378 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_3634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1218
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3324
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3398
            (coe v0)))
-- Ledger.Conway.Specification.Chain._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_3642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_19441 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3378 ->
  T_ChainState_3506 -> Integer
d_maxRefScriptSizePerBlock_3642 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_maxRefScriptSizePerBlock_3642 v5
du_maxRefScriptSizePerBlock_3642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3378 ->
  Integer
du_maxRefScriptSizePerBlock_3642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_396
      (coe
         MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1114)
         (MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1218
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3324
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3398
                  (coe v0)))))
-- Ledger.Conway.Specification.Chain._⊢_⇀⦇_,CHAINS⦈_
d__'8866'_'8640''10631'_'44'CHAINS'10632'__3648 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_ChainState_3506 ->
  [MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2380] ->
  T_ChainState_3506 -> ()
d__'8866'_'8640''10631'_'44'CHAINS'10632'__3648 = erased
-- Ledger.Conway.Specification.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_19439 ::
  T_GeneralizeTel_19441 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2984
d_'46'generalizedField'45'ls''_19439 v0
  = case coe v0 of
      C_mkGeneralizeTel_19443 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Chain.GeneralizeTel
d_GeneralizeTel_19441 a0 a1 = ()
newtype T_GeneralizeTel_19441
  = C_mkGeneralizeTel_19443 MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2984
