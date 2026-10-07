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
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Class.Convertible.Core
import qualified MAlonzo.Code.Class.Convertible.Foreign
import qualified MAlonzo.Code.Class.Convertible.Instances
import qualified MAlonzo.Code.Class.DecEq.Instances
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
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_scriptPurposeEquals_3204
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
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3234 ->
  Integer
d_mint_36 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_mint_3272
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo.realizedInputs
d_realizedInputs_38 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3234 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_realizedInputs_38 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_realizedInputs_3266
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo.txBalanceIntervals
d_txBalanceIntervals_40 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3234 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txBalanceIntervals_40 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txBalanceIntervals_3292
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo.txCerts
d_txCerts_42 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3234 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1478]
d_txCerts_42 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txCerts_3274
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo.txData
d_txData_44 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3234 ->
  [Integer]
d_txData_44 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txData_3284
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo.txDirectDeposits
d_txDirectDeposits_46 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3234 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txDirectDeposits_46 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txDirectDeposits_3290
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo.txFee
d_txFee_48 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3234 ->
  Maybe Integer
d_txFee_48 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txFee_3270
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo.txGuards
d_txGuards_50 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3234 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_txGuards_50 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txGuards_3282
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo.txId
d_txId_52 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3234 ->
  Integer
d_txId_52 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txId_3286
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo.txInfoSubTxs
d_txInfoSubTxs_54 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3234 ->
  Maybe
    [MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3234]
d_txInfoSubTxs_54 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txInfoSubTxs_3288
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo.txOuts
d_txOuts_56 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3234 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_56 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txOuts_3268
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo.txVldt
d_txVldt_58 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3234 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_58 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txVldt_3278
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo.txWithdrawals
d_txWithdrawals_60 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3234 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_60 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txWithdrawals_3276
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo.vkKey
d_vkKey_62 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3234 ->
  [Integer]
d_vkKey_62 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_vkKey_3280
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.allCredsNeeded
d_allCredsNeeded_66 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allCredsNeeded_66
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_allCredsNeeded_3558
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
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.d_collectP2ScriptsWithContext_3578
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSAbstractFunctions_3974
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
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credentialToP1Script_3502
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
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credentialToP2Script_3492
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
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3518
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.Receiving._.evalP2Scripts
d_evalP2Scripts_76 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalP2Scripts_76
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_evalP2Scripts_3644
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
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_getDatumSpend_3390
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
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_indexedRdmrs_3382
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSAbstractFunctions_3974
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
      v1 v2
-- Ledger.Dijkstra.Foreign.Receiving._.purposeCredentialEquals
d_purposeCredentialEquals_82 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Bool
d_purposeCredentialEquals_82
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_purposeCredentialEquals_3568
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
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_rdptr_3344
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSAbstractFunctions_3974
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
      v1 v2
-- Ledger.Dijkstra.Foreign.Receiving._.receivingCredentials
d_receivingCredentials_86 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_receivingCredentials_86 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_receivingCredentials_3332
      v1
-- Ledger.Dijkstra.Foreign.Receiving._.receivingKeyHashes
d_receivingKeyHashes_88 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  [Integer]
d_receivingKeyHashes_88 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_receivingKeyHashes_3342
      v1
-- Ledger.Dijkstra.Foreign.Receiving._.receivingScriptHashes
d_receivingScriptHashes_90 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  [Integer]
d_receivingScriptHashes_90 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_receivingScriptHashes_3340
      v1
-- Ledger.Dijkstra.Foreign.Receiving._.txInfo
d_txInfo_92 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3234
d_txInfo_92
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_txInfo_3424
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.Receiving._.txInfoForPurpose
d_txInfoForPurpose_94 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3188 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3234
d_txInfoForPurpose_94
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_txInfoForPurpose_3452
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.Receiving._.txOutToDataHash
d_txOutToDataHash_96 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
d_txOutToDataHash_96
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_txOutToDataHash_3488
-- Ledger.Dijkstra.Foreign.Receiving._.txOutToP2Script
d_txOutToP2Script_98 ::
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364
d_txOutToP2Script_98
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_txOutToP2Script_3512
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.Receiving.receiving-script-hashes
receivingScriptHashes ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxTop_292045 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60 Integer
receivingScriptHashes = coe d_receiving'45'script'45'hashes_100
d_receiving'45'script'45'hashes_100 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxTop_292045 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60 Integer
d_receiving'45'script'45'hashes_100 v0
  = coe
      MAlonzo.Code.Class.Convertible.Core.d_to_20
      (coe
         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSSet_80
         (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_receivingScriptHashes_3340
         (coe
            MAlonzo.Code.Class.Convertible.Core.d_from_22
            MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'Tx'45'TxLevelTop_572
            v0))
-- Ledger.Dijkstra.Foreign.Receiving.receiving-key-hashes
receivingKeyHashes ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxTop_292045 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60 Integer
receivingKeyHashes = coe d_receiving'45'key'45'hashes_102
d_receiving'45'key'45'hashes_102 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxTop_292045 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60 Integer
d_receiving'45'key'45'hashes_102 v0
  = coe
      MAlonzo.Code.Class.Convertible.Core.d_to_20
      (coe
         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSSet_80
         (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_receivingKeyHashes_3342
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
receivingPointer = coe d_receiving'45'pointer_104
d_receiving'45'pointer_104 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxTop_292045 ->
  Integer ->
  Maybe
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny
       MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_Tag_21 Integer)
d_receiving'45'pointer_104 v0
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
           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_rdptr_3344
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
              (coe
                 MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSAbstractFunctions_3974
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
              (coe v1)))
-- Ledger.Dijkstra.Foreign.Receiving.sub-receiving-script-hashes
subReceivingScriptHashes ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxSub_113387 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60 Integer
subReceivingScriptHashes
  = coe d_sub'45'receiving'45'script'45'hashes_110
d_sub'45'receiving'45'script'45'hashes_110 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxSub_113387 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60 Integer
d_sub'45'receiving'45'script'45'hashes_110 v0
  = coe
      MAlonzo.Code.Class.Convertible.Core.d_to_20
      (coe
         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSSet_80
         (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_receivingScriptHashes_3340
         (coe
            MAlonzo.Code.Class.Convertible.Core.d_from_22
            MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'Tx'45'TxLevelSub_278
            v0))
-- Ledger.Dijkstra.Foreign.Receiving.sub-receiving-key-hashes
subReceivingKeyHashes ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxSub_113387 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60 Integer
subReceivingKeyHashes = coe d_sub'45'receiving'45'key'45'hashes_112
d_sub'45'receiving'45'key'45'hashes_112 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxSub_113387 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60 Integer
d_sub'45'receiving'45'key'45'hashes_112 v0
  = coe
      MAlonzo.Code.Class.Convertible.Core.d_to_20
      (coe
         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSSet_80
         (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_receivingKeyHashes_3342
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
subReceivingPointer = coe d_sub'45'receiving'45'pointer_114
d_sub'45'receiving'45'pointer_114 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxSub_113387 ->
  Integer ->
  Maybe
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny
       MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_Tag_21 Integer)
d_sub'45'receiving'45'pointer_114 v0
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
           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_rdptr_3344
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
              (coe
                 MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSAbstractFunctions_3974
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
              (coe v1)))
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
collectingScriptCount = coe d_collecting'45'script'45'count_120
d_collecting'45'script'45'count_120 ::
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
d_collecting'45'script'45'count_120 v0
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
           (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.d_collectP2ScriptsWithContext_3578
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe
                    MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSAbstractFunctions_3974
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
  = coe d_sub'45'collecting'45'script'45'count_130
d_sub'45'collecting'45'script'45'count_130 ::
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
d_sub'45'collecting'45'script'45'count_130 v0
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
           (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.d_collectP2ScriptsWithContext_3578
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe
                    MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSAbstractFunctions_3974
                 (coe
                    MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12)
              (coe
                 MAlonzo.Code.Class.Convertible.Core.d_from_22
                 MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PParams_26
                 v0)
              (coe v1) (coe v2) (coe v3)))
