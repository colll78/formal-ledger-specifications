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

module MAlonzo.Code.Ledger.Dijkstra.Foreign.Receiving where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Class.Convertible.Core
import qualified MAlonzo.Code.Class.Convertible.Foreign
import qualified MAlonzo.Code.Class.Convertible.Instances
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.Monad.Instances
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Foreign.Haskell.Either
import qualified MAlonzo.Code.Foreign.Haskell.Pair
import qualified MAlonzo.Code.Ledger.Core.Foreign.Address
import qualified MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes
import qualified MAlonzo.Code.Prelude

-- Ledger.Dijkstra.Foreign.Receiving._.ScriptPurpose
d_ScriptPurpose_10 = ()
-- Ledger.Dijkstra.Foreign.Receiving._.ScriptPurposeData
d_ScriptPurposeData_14 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tag_40 ->
  ()
d_ScriptPurposeData_14 = erased
-- Ledger.Dijkstra.Foreign.Receiving._.SubTxInfo
d_SubTxInfo_16 :: ()
d_SubTxInfo_16 = erased
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo
d_TxInfo_18 = ()
-- Ledger.Dijkstra.Foreign.Receiving._.scriptPurposeDataEquals
d_scriptPurposeDataEquals_22 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tag_40 ->
  AgdaAny -> AgdaAny -> Bool
d_scriptPurposeDataEquals_22
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_scriptPurposeDataEquals_3202
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.Receiving._.scriptPurposeEquals
d_scriptPurposeEquals_24 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3188 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3188 ->
  Bool
d_scriptPurposeEquals_24
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_scriptPurposeEquals_3212
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.Receiving._.ScriptPurpose.data′
d_data'8242'_30 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3188 ->
  AgdaAny
d_data'8242'_30 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_data'8242'_3196
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.ScriptPurpose.tag
d_tag_32 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3188 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tag_40
d_tag_32 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_tag_3194
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo.mint
d_mint_36 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3242 ->
  Integer
d_mint_36 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_mint_3280
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo.realizedInputs
d_realizedInputs_38 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_realizedInputs_38 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_realizedInputs_3274
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo.txBalanceIntervals
d_txBalanceIntervals_40 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txBalanceIntervals_40 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txBalanceIntervals_3300
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo.txCerts
d_txCerts_42 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3242 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1478]
d_txCerts_42 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txCerts_3282
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo.txData
d_txData_44 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3242 ->
  [Integer]
d_txData_44 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txData_3292
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo.txDirectDeposits
d_txDirectDeposits_46 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txDirectDeposits_46 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txDirectDeposits_3298
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo.txFee
d_txFee_48 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3242 ->
  Maybe Integer
d_txFee_48 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txFee_3278
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo.txGuards
d_txGuards_50 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3242 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_txGuards_50 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txGuards_3290
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo.txId
d_txId_52 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3242 ->
  Integer
d_txId_52 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txId_3294
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo.txInfoSubTxs
d_txInfoSubTxs_54 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3242 ->
  Maybe
    [MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3242]
d_txInfoSubTxs_54 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txInfoSubTxs_3296
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo.txOuts
d_txOuts_56 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_56 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txOuts_3276
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo.txVldt
d_txVldt_58 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_58 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txVldt_3286
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo.txWithdrawals
d_txWithdrawals_60 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_60 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txWithdrawals_3284
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo.vkKey
d_vkKey_62 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3242 ->
  [Integer]
d_vkKey_62 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_vkKey_3288
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.allCredsNeeded
d_allCredsNeeded_66 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allCredsNeeded_66
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_allCredsNeeded_3612
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.Receiving._.collectP2ScriptsWithContext
d_collectP2ScriptsWithContext_68 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectP2ScriptsWithContext_68
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.d_collectP2ScriptsWithContext_3632
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSAbstractFunctions_3972
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.Receiving._.credentialToP1Script
d_credentialToP1Script_70 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336
d_credentialToP1Script_70
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credentialToP1Script_3554
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.Receiving._.credentialToP2Script
d_credentialToP2Script_72 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364
d_credentialToP2Script_72
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credentialToP2Script_3544
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.Receiving._.credsNeeded
d_credsNeeded_74 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_credsNeeded_74
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3570
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.Receiving._.evalP2Scripts
d_evalP2Scripts_76 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalP2Scripts_76
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_evalP2Scripts_3698
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.Receiving._.getDatumSpend
d_getDatumSpend_78 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
d_getDatumSpend_78 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_getDatumSpend_3442
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
      v1 v2 v3
-- Ledger.Dijkstra.Foreign.Receiving._.indexedRdmrs
d_indexedRdmrs_80 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3188 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_indexedRdmrs_80 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_indexedRdmrs_3434
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSAbstractFunctions_3972
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
      v1 v2
-- Ledger.Dijkstra.Foreign.Receiving._.purposeCredentialEquals
d_purposeCredentialEquals_82 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Bool
d_purposeCredentialEquals_82
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_purposeCredentialEquals_3622
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.Receiving._.rdptr
d_rdptr_84 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3188 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rdptr_84 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_rdptr_3360
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSAbstractFunctions_3972
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
      v1 v2
-- Ledger.Dijkstra.Foreign.Receiving._.receiving-indices-distinct
d_receiving'45'indices'45'distinct_86 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_receiving'45'indices'45'distinct_86 = erased
-- Ledger.Dijkstra.Foreign.Receiving._.receiving-pointer-preserves-index
d_receiving'45'pointer'45'preserves'45'index_88 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_receiving'45'pointer'45'preserves'45'index_88 = erased
-- Ledger.Dijkstra.Foreign.Receiving._.receivingCredentials
d_receivingCredentials_90 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_receivingCredentials_90 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_receivingCredentials_3328
      v1
-- Ledger.Dijkstra.Foreign.Receiving._.receivingKeyHashes
d_receivingKeyHashes_92 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  [Integer]
d_receivingKeyHashes_92 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_receivingKeyHashes_3338
      v1
-- Ledger.Dijkstra.Foreign.Receiving._.receivingOutput
d_receivingOutput_94 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  Integer -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_receivingOutput_94 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_receivingOutput_3350
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
      v1 v2
-- Ledger.Dijkstra.Foreign.Receiving._.receivingOutputs
d_receivingOutputs_96 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_receivingOutputs_96 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_receivingOutputs_3340
      v1
-- Ledger.Dijkstra.Foreign.Receiving._.receivingScriptHashes
d_receivingScriptHashes_98 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  [Integer]
d_receivingScriptHashes_98 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_receivingScriptHashes_3336
      v1
-- Ledger.Dijkstra.Foreign.Receiving._.txInfo
d_txInfo_100 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3242
d_txInfo_100
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_txInfo_3476
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.Receiving._.txInfoForPurpose
d_txInfoForPurpose_102 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3188 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3242
d_txInfoForPurpose_102
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_txInfoForPurpose_3504
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.Receiving._.txOutToDataHash
d_txOutToDataHash_104 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
d_txOutToDataHash_104
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_txOutToDataHash_3540
-- Ledger.Dijkstra.Foreign.Receiving._.txOutToP2Script
d_txOutToP2Script_106 ::
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364
d_txOutToP2Script_106
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_txOutToP2Script_3564
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.Receiving.receiving-script-hashes
receivingScriptHashes ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxTop_292045 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60 Integer
receivingScriptHashes = coe d_receiving'45'script'45'hashes_108
d_receiving'45'script'45'hashes_108 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxTop_292045 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60 Integer
d_receiving'45'script'45'hashes_108 v0
  = coe
      MAlonzo.Code.Class.Convertible.Core.d_to_20
      (coe
         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSSet_80
         (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_receivingScriptHashes_3336
         (coe
            MAlonzo.Code.Class.Convertible.Core.d_from_22
            MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'Tx'45'TxLevelTop_572
            v0))
-- Ledger.Dijkstra.Foreign.Receiving.receiving-key-hashes
receivingKeyHashes ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxTop_292045 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60 Integer
receivingKeyHashes = coe d_receiving'45'key'45'hashes_110
d_receiving'45'key'45'hashes_110 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxTop_292045 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60 Integer
d_receiving'45'key'45'hashes_110 v0
  = coe
      MAlonzo.Code.Class.Convertible.Core.d_to_20
      (coe
         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSSet_80
         (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_receivingKeyHashes_3338
         (coe
            MAlonzo.Code.Class.Convertible.Core.d_from_22
            MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'Tx'45'TxLevelTop_572
            v0))
-- Ledger.Dijkstra.Foreign.Receiving.receiving-outputs
receivingOutputs ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxTop_292045 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () ()
          (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
             () () MAlonzo.Code.Ledger.Core.Foreign.Address.T_BaseAddr_1317
             MAlonzo.Code.Ledger.Core.Foreign.Address.T_BootstrapAddr_3373)
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             () () Integer
             (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
                () ()
                (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                   ()
                   (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                      () () Integer Integer))
                (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                   ()
                   (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                      () ()
                      MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_HSNativeScript_2891
                      MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_HSPlutusScript_3917))))))
receivingOutputs = coe d_receiving'45'outputs_112
d_receiving'45'outputs_112 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxTop_292045 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          AgdaAny AgdaAny
          (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
             AgdaAny AgdaAny
             MAlonzo.Code.Ledger.Core.Foreign.Address.T_BaseAddr_1317
             MAlonzo.Code.Ledger.Core.Foreign.Address.T_BootstrapAddr_3373)
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             AgdaAny AgdaAny Integer
             (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
                AgdaAny AgdaAny
                (Maybe
                   (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                      AgdaAny AgdaAny Integer Integer))
                (Maybe
                   (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                      AgdaAny AgdaAny
                      MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_HSNativeScript_2891
                      MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_HSPlutusScript_3917))))))
d_receiving'45'outputs_112 v0
  = coe
      MAlonzo.Code.Class.Convertible.Core.d_to_20
      (coe
         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSSet_80
         (coe
            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
            (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
            (coe
               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
               (coe
                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                  (coe
                     MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_236)
                  (coe
                     MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_240))
               (coe
                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                  (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                  (coe
                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                     (coe
                        MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                        (coe
                           MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                     (coe
                        MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                        (coe
                           MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSNativeScript_18)
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSPlutusScript_22))))))))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_receivingOutputs_3340
         (coe
            MAlonzo.Code.Class.Convertible.Core.d_from_22
            MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'Tx'45'TxLevelTop_572
            v0))
-- Ledger.Dijkstra.Foreign.Receiving.receiving-pointer
receivingPointer ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxTop_292045 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_Tag_21
       Integer)
receivingPointer = coe d_receiving'45'pointer_114
d_receiving'45'pointer_114 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxTop_292045 ->
  Integer ->
  Maybe
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny
       MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_Tag_21 Integer)
d_receiving'45'pointer_114 v0
  = coe
      MAlonzo.Code.Class.Convertible.Core.d_to_20
      (coe
         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Fun_34
         (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
         (coe
            MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
            (coe
               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'Tag_10)
               (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
      (\ v1 ->
         coe
           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
           MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18 () erased ()
           erased
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_receivingOutput_3350
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe
                    MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
              (coe
                 MAlonzo.Code.Class.Convertible.Core.d_from_22
                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'Tx'45'TxLevelTop_572
                 v0)
              (coe v1))
           (\ v2 ->
              coe
                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_rdptr_3360
                (coe
                   MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                   (coe
                      MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
                (coe
                   MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSAbstractFunctions_3972
                   (coe
                      MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
                (coe
                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'Tx'45'TxLevelTop_572
                   v0)
                (coe
                   MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.C_'10214'_'44'_'10215''738''7510'_3198
                   (coe
                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Receive_56)
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2)))))
-- Ledger.Dijkstra.Foreign.Receiving.sub-receiving-script-hashes
subReceivingScriptHashes ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxSub_113387 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60 Integer
subReceivingScriptHashes
  = coe d_sub'45'receiving'45'script'45'hashes_122
d_sub'45'receiving'45'script'45'hashes_122 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxSub_113387 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60 Integer
d_sub'45'receiving'45'script'45'hashes_122 v0
  = coe
      MAlonzo.Code.Class.Convertible.Core.d_to_20
      (coe
         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSSet_80
         (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_receivingScriptHashes_3336
         (coe
            MAlonzo.Code.Class.Convertible.Core.d_from_22
            MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'Tx'45'TxLevelSub_278
            v0))
-- Ledger.Dijkstra.Foreign.Receiving.sub-receiving-key-hashes
subReceivingKeyHashes ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxSub_113387 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60 Integer
subReceivingKeyHashes = coe d_sub'45'receiving'45'key'45'hashes_124
d_sub'45'receiving'45'key'45'hashes_124 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxSub_113387 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60 Integer
d_sub'45'receiving'45'key'45'hashes_124 v0
  = coe
      MAlonzo.Code.Class.Convertible.Core.d_to_20
      (coe
         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSSet_80
         (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_receivingKeyHashes_3338
         (coe
            MAlonzo.Code.Class.Convertible.Core.d_from_22
            MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'Tx'45'TxLevelSub_278
            v0))
-- Ledger.Dijkstra.Foreign.Receiving.sub-receiving-outputs
subReceivingOutputs ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxSub_113387 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () ()
          (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
             () () MAlonzo.Code.Ledger.Core.Foreign.Address.T_BaseAddr_1317
             MAlonzo.Code.Ledger.Core.Foreign.Address.T_BootstrapAddr_3373)
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             () () Integer
             (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
                () ()
                (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                   ()
                   (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                      () () Integer Integer))
                (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                   ()
                   (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                      () ()
                      MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_HSNativeScript_2891
                      MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_HSPlutusScript_3917))))))
subReceivingOutputs = coe d_sub'45'receiving'45'outputs_126
d_sub'45'receiving'45'outputs_126 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxSub_113387 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          AgdaAny AgdaAny
          (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
             AgdaAny AgdaAny
             MAlonzo.Code.Ledger.Core.Foreign.Address.T_BaseAddr_1317
             MAlonzo.Code.Ledger.Core.Foreign.Address.T_BootstrapAddr_3373)
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             AgdaAny AgdaAny Integer
             (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
                AgdaAny AgdaAny
                (Maybe
                   (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                      AgdaAny AgdaAny Integer Integer))
                (Maybe
                   (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                      AgdaAny AgdaAny
                      MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_HSNativeScript_2891
                      MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_HSPlutusScript_3917))))))
d_sub'45'receiving'45'outputs_126 v0
  = coe
      MAlonzo.Code.Class.Convertible.Core.d_to_20
      (coe
         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSSet_80
         (coe
            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
            (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
            (coe
               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
               (coe
                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                  (coe
                     MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_236)
                  (coe
                     MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_240))
               (coe
                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                  (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                  (coe
                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                     (coe
                        MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                        (coe
                           MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                     (coe
                        MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                        (coe
                           MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSNativeScript_18)
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSPlutusScript_22))))))))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_receivingOutputs_3340
         (coe
            MAlonzo.Code.Class.Convertible.Core.d_from_22
            MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'Tx'45'TxLevelSub_278
            v0))
-- Ledger.Dijkstra.Foreign.Receiving.sub-receiving-pointer
subReceivingPointer ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxSub_113387 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_Tag_21
       Integer)
subReceivingPointer = coe d_sub'45'receiving'45'pointer_128
d_sub'45'receiving'45'pointer_128 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxSub_113387 ->
  Integer ->
  Maybe
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny
       MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_Tag_21 Integer)
d_sub'45'receiving'45'pointer_128 v0
  = coe
      MAlonzo.Code.Class.Convertible.Core.d_to_20
      (coe
         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Fun_34
         (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
         (coe
            MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
            (coe
               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'Tag_10)
               (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
      (\ v1 ->
         coe
           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
           MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18 () erased ()
           erased
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_receivingOutput_3350
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe
                    MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
              (coe
                 MAlonzo.Code.Class.Convertible.Core.d_from_22
                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'Tx'45'TxLevelSub_278
                 v0)
              (coe v1))
           (\ v2 ->
              coe
                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_rdptr_3360
                (coe
                   MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                   (coe
                      MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
                (coe
                   MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSAbstractFunctions_3972
                   (coe
                      MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
                (coe
                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'Tx'45'TxLevelSub_278
                   v0)
                (coe
                   MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.C_'10214'_'44'_'10215''738''7510'_3198
                   (coe
                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Receive_56)
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2)))))
-- Ledger.Dijkstra.Foreign.Receiving.collecting-script-count
collectingScriptCount ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.T_PParams_12421 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxTop_292045 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
          () () MAlonzo.Code.Ledger.Core.Foreign.Address.T_BaseAddr_1317
          MAlonzo.Code.Ledger.Core.Foreign.Address.T_BootstrapAddr_3373)
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () Integer
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             () ()
             (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                ()
                (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                   () () Integer Integer))
             (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                ()
                (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                   () ()
                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_HSNativeScript_2891
                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_HSPlutusScript_3917))))) ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60
    (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
       () ()
       MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_HSNativeScript_2891
       MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_HSPlutusScript_3917) ->
  Integer
collectingScriptCount = coe d_collecting'45'script'45'count_136
d_collecting'45'script'45'count_136 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.T_PParams_12421 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxTop_292045 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny
       (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
          AgdaAny AgdaAny
          MAlonzo.Code.Ledger.Core.Foreign.Address.T_BaseAddr_1317
          MAlonzo.Code.Ledger.Core.Foreign.Address.T_BootstrapAddr_3373)
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          AgdaAny AgdaAny Integer
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             AgdaAny AgdaAny
             (Maybe
                (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                   AgdaAny AgdaAny Integer Integer))
             (Maybe
                (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                   AgdaAny AgdaAny
                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_HSNativeScript_2891
                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_HSPlutusScript_3917))))) ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60
    (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
       AgdaAny AgdaAny
       MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_HSNativeScript_2891
       MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_HSPlutusScript_3917) ->
  Integer
d_collecting'45'script'45'count_136 v0
  = coe
      MAlonzo.Code.Class.Convertible.Core.d_to_20
      (coe
         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Fun_34
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'Tx'45'TxLevelTop_572)
         (coe
            MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Fun_34
            (coe
               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_102
               (coe
                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
               (coe
                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                  (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                  (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
               (coe
                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                  (coe
                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                     (coe
                        MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_236)
                     (coe
                        MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_240))
                  (coe
                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                     (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                     (coe
                        MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                        (coe
                           MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                           (coe
                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                        (coe
                           MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                           (coe
                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSNativeScript_18)
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSPlutusScript_22)))))))
            (coe
               MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Fun_34
               (coe
                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSSet_80
                  (coe
                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSNativeScript_18)
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSPlutusScript_22)))
               (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Data.List.Base.du_length_268
           (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.d_collectP2ScriptsWithContext_3632
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe
                    MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSAbstractFunctions_3972
                 (coe
                    MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
              (coe
                 MAlonzo.Code.Class.Convertible.Core.d_from_22
                 MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PParams_26
                 v0)
              (coe v1) (coe v2) (coe v3)))
-- Ledger.Dijkstra.Foreign.Receiving.sub-collecting-script-count
subCollectingScriptCount ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.T_PParams_12421 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxSub_113387 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
          () () MAlonzo.Code.Ledger.Core.Foreign.Address.T_BaseAddr_1317
          MAlonzo.Code.Ledger.Core.Foreign.Address.T_BootstrapAddr_3373)
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () Integer
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             () ()
             (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                ()
                (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                   () () Integer Integer))
             (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                ()
                (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                   () ()
                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_HSNativeScript_2891
                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_HSPlutusScript_3917))))) ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60
    (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
       () ()
       MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_HSNativeScript_2891
       MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_HSPlutusScript_3917) ->
  Integer
subCollectingScriptCount
  = coe d_sub'45'collecting'45'script'45'count_146
d_sub'45'collecting'45'script'45'count_146 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.T_PParams_12421 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxSub_113387 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny
       (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
          AgdaAny AgdaAny
          MAlonzo.Code.Ledger.Core.Foreign.Address.T_BaseAddr_1317
          MAlonzo.Code.Ledger.Core.Foreign.Address.T_BootstrapAddr_3373)
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          AgdaAny AgdaAny Integer
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             AgdaAny AgdaAny
             (Maybe
                (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                   AgdaAny AgdaAny Integer Integer))
             (Maybe
                (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                   AgdaAny AgdaAny
                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_HSNativeScript_2891
                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_HSPlutusScript_3917))))) ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60
    (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
       AgdaAny AgdaAny
       MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_HSNativeScript_2891
       MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_HSPlutusScript_3917) ->
  Integer
d_sub'45'collecting'45'script'45'count_146 v0
  = coe
      MAlonzo.Code.Class.Convertible.Core.d_to_20
      (coe
         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Fun_34
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'Tx'45'TxLevelSub_278)
         (coe
            MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Fun_34
            (coe
               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_102
               (coe
                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
               (coe
                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                  (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                  (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
               (coe
                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                  (coe
                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                     (coe
                        MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_236)
                     (coe
                        MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_240))
                  (coe
                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                     (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                     (coe
                        MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                        (coe
                           MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                           (coe
                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                        (coe
                           MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                           (coe
                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSNativeScript_18)
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSPlutusScript_22)))))))
            (coe
               MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Fun_34
               (coe
                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSSet_80
                  (coe
                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSNativeScript_18)
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSPlutusScript_22)))
               (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Data.List.Base.du_length_268
           (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.d_collectP2ScriptsWithContext_3632
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe
                    MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSAbstractFunctions_3972
                 (coe
                    MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12)
              (coe
                 MAlonzo.Code.Class.Convertible.Core.d_from_22
                 MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PParams_26
                 v0)
              (coe v1) (coe v2) (coe v3)))
-- Ledger.Dijkstra.Foreign.Receiving.collecting-script-arguments
collectingScriptArguments ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.T_PParams_12421 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxTop_292045 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
          () () MAlonzo.Code.Ledger.Core.Foreign.Address.T_BaseAddr_1317
          MAlonzo.Code.Ledger.Core.Foreign.Address.T_BootstrapAddr_3373)
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () Integer
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             () ()
             (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                ()
                (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                   () () Integer Integer))
             (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                ()
                (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                   () ()
                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_HSNativeScript_2891
                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_HSPlutusScript_3917))))) ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60
    (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
       () ()
       MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_HSNativeScript_2891
       MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_HSPlutusScript_3917) ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () (MAlonzo.Code.Agda.Builtin.List.T_List_10 () Integer)
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () Integer Integer))
collectingScriptArguments
  = coe d_collecting'45'script'45'arguments_156
d_collecting'45'script'45'arguments_156 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.T_PParams_12421 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxTop_292045 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny
       (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
          AgdaAny AgdaAny
          MAlonzo.Code.Ledger.Core.Foreign.Address.T_BaseAddr_1317
          MAlonzo.Code.Ledger.Core.Foreign.Address.T_BootstrapAddr_3373)
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          AgdaAny AgdaAny Integer
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             AgdaAny AgdaAny
             (Maybe
                (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                   AgdaAny AgdaAny Integer Integer))
             (Maybe
                (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                   AgdaAny AgdaAny
                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_HSNativeScript_2891
                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_HSPlutusScript_3917))))) ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60
    (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
       AgdaAny AgdaAny
       MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_HSNativeScript_2891
       MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_HSPlutusScript_3917) ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny [Integer]
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer Integer)]
d_collecting'45'script'45'arguments_156 v0
  = coe
      MAlonzo.Code.Class.Convertible.Core.d_to_20
      (coe
         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Fun_34
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'Tx'45'TxLevelTop_572)
         (coe
            MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Fun_34
            (coe
               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_102
               (coe
                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
               (coe
                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                  (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                  (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
               (coe
                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                  (coe
                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                     (coe
                        MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_236)
                     (coe
                        MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_240))
                  (coe
                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                     (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                     (coe
                        MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                        (coe
                           MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                           (coe
                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                        (coe
                           MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                           (coe
                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSNativeScript_18)
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSPlutusScript_22)))))))
            (coe
               MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Fun_34
               (coe
                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSSet_80
                  (coe
                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSNativeScript_18)
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSPlutusScript_22)))
               (coe
                  MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                  (coe
                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                     (coe
                        MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                        (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                     (coe
                        MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                        (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))))))
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Class.Functor.Core.du_fmap_22
           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
           () erased
           (\ v4 ->
              coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))))
           (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.d_collectP2ScriptsWithContext_3632
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe
                    MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSAbstractFunctions_3972
                 (coe
                    MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
              (coe
                 MAlonzo.Code.Class.Convertible.Core.d_from_22
                 MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PParams_26
                 v0)
              (coe v1) (coe v2) (coe v3)))
-- Ledger.Dijkstra.Foreign.Receiving.sub-collecting-script-arguments
subCollectingScriptArguments ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.T_PParams_12421 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxSub_113387 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
          () () MAlonzo.Code.Ledger.Core.Foreign.Address.T_BaseAddr_1317
          MAlonzo.Code.Ledger.Core.Foreign.Address.T_BootstrapAddr_3373)
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () Integer
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             () ()
             (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                ()
                (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                   () () Integer Integer))
             (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                ()
                (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                   () ()
                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_HSNativeScript_2891
                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_HSPlutusScript_3917))))) ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60
    (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
       () ()
       MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_HSNativeScript_2891
       MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_HSPlutusScript_3917) ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () (MAlonzo.Code.Agda.Builtin.List.T_List_10 () Integer)
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () Integer Integer))
subCollectingScriptArguments
  = coe d_sub'45'collecting'45'script'45'arguments_172
d_sub'45'collecting'45'script'45'arguments_172 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.T_PParams_12421 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxSub_113387 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny
       (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
          AgdaAny AgdaAny
          MAlonzo.Code.Ledger.Core.Foreign.Address.T_BaseAddr_1317
          MAlonzo.Code.Ledger.Core.Foreign.Address.T_BootstrapAddr_3373)
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          AgdaAny AgdaAny Integer
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             AgdaAny AgdaAny
             (Maybe
                (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                   AgdaAny AgdaAny Integer Integer))
             (Maybe
                (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                   AgdaAny AgdaAny
                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_HSNativeScript_2891
                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_HSPlutusScript_3917))))) ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60
    (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
       AgdaAny AgdaAny
       MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_HSNativeScript_2891
       MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_HSPlutusScript_3917) ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny [Integer]
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer Integer)]
d_sub'45'collecting'45'script'45'arguments_172 v0
  = coe
      MAlonzo.Code.Class.Convertible.Core.d_to_20
      (coe
         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Fun_34
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'Tx'45'TxLevelSub_278)
         (coe
            MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Fun_34
            (coe
               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_102
               (coe
                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
               (coe
                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                  (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                  (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
               (coe
                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                  (coe
                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                     (coe
                        MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_236)
                     (coe
                        MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_240))
                  (coe
                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                     (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                     (coe
                        MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                        (coe
                           MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                           (coe
                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                        (coe
                           MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                           (coe
                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSNativeScript_18)
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSPlutusScript_22)))))))
            (coe
               MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Fun_34
               (coe
                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSSet_80
                  (coe
                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSNativeScript_18)
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSPlutusScript_22)))
               (coe
                  MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                  (coe
                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                     (coe
                        MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                        (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                     (coe
                        MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                        (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))))))
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Class.Functor.Core.du_fmap_22
           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
           () erased
           (\ v4 ->
              coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))))
           (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.d_collectP2ScriptsWithContext_3632
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe
                    MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSAbstractFunctions_3972
                 (coe
                    MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12)
              (coe
                 MAlonzo.Code.Class.Convertible.Core.d_from_22
                 MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PParams_26
                 v0)
              (coe v1) (coe v2) (coe v3)))
