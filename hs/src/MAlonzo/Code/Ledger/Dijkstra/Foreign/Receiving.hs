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
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Foreign.Haskell.Pair
import qualified MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes

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
-- Ledger.Dijkstra.Foreign.Receiving._.ScriptPurpose.data′
d_data'8242'_26 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3100 ->
  AgdaAny
d_data'8242'_26 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_data'8242'_3108
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.ScriptPurpose.tag
d_tag_28 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tag_40
d_tag_28 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_tag_3106
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo.mint
d_mint_32 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3112 ->
  Integer
d_mint_32 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_mint_3150
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo.realizedInputs
d_realizedInputs_34 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3112 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_realizedInputs_34 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_realizedInputs_3144
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo.txBalanceIntervals
d_txBalanceIntervals_36 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3112 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txBalanceIntervals_36 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txBalanceIntervals_3170
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo.txCerts
d_txCerts_38 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3112 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1318]
d_txCerts_38 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txCerts_3152
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo.txData
d_txData_40 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3112 ->
  [Integer]
d_txData_40 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txData_3162
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo.txDirectDeposits
d_txDirectDeposits_42 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3112 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txDirectDeposits_42 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txDirectDeposits_3168
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo.txFee
d_txFee_44 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3112 ->
  Maybe Integer
d_txFee_44 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txFee_3148
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo.txGuards
d_txGuards_46 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3112 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_txGuards_46 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txGuards_3160
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo.txId
d_txId_48 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3112 ->
  Integer
d_txId_48 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txId_3164
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo.txInfoSubTxs
d_txInfoSubTxs_50 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3112 ->
  Maybe
    [MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3112]
d_txInfoSubTxs_50 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txInfoSubTxs_3166
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo.txOuts
d_txOuts_52 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3112 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_52 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txOuts_3146
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo.txVldt
d_txVldt_54 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3112 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_54 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txVldt_3156
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo.txWithdrawals
d_txWithdrawals_56 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3112 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_56 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txWithdrawals_3154
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.TxInfo.vkKey
d_vkKey_58 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3112 ->
  [Integer]
d_vkKey_58 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_vkKey_3158
      (coe v0)
-- Ledger.Dijkstra.Foreign.Receiving._.allCredsNeeded
d_allCredsNeeded_62 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3736 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allCredsNeeded_62
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_allCredsNeeded_3458
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Dijkstra.Foreign.Receiving._.collectP2ScriptsWithContext
d_collectP2ScriptsWithContext_64 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectP2ScriptsWithContext_64
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.d_collectP2ScriptsWithContext_3468
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSAbstractFunctions_3782
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Dijkstra.Foreign.Receiving._.credentialToP1Script
d_credentialToP1Script_66 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336
d_credentialToP1Script_66
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credentialToP1Script_3402
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Dijkstra.Foreign.Receiving._.credentialToP2Script
d_credentialToP2Script_68 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364
d_credentialToP2Script_68
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credentialToP2Script_3392
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Dijkstra.Foreign.Receiving._.credsNeeded
d_credsNeeded_70 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3736 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_credsNeeded_70
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3418
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Dijkstra.Foreign.Receiving._.evalP2Scripts
d_evalP2Scripts_72 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalP2Scripts_72
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_evalP2Scripts_3534
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Dijkstra.Foreign.Receiving._.getDatumSpend
d_getDatumSpend_74 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
d_getDatumSpend_74 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_getDatumSpend_3290
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
      v1 v2 v3
-- Ledger.Dijkstra.Foreign.Receiving._.indexedRdmrs
d_indexedRdmrs_76 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3736 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3100 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_indexedRdmrs_76 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_indexedRdmrs_3282
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSAbstractFunctions_3782
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
      v1 v2
-- Ledger.Dijkstra.Foreign.Receiving._.rdptr
d_rdptr_78 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3736 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3100 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rdptr_78 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_rdptr_3244
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSAbstractFunctions_3782
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
      v1 v2
-- Ledger.Dijkstra.Foreign.Receiving._.receivingCredentials
d_receivingCredentials_80 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3736 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_receivingCredentials_80 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_receivingCredentials_3232
      v1
-- Ledger.Dijkstra.Foreign.Receiving._.receivingKeyHashes
d_receivingKeyHashes_82 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3736 ->
  [Integer]
d_receivingKeyHashes_82 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_receivingKeyHashes_3242
      v1
-- Ledger.Dijkstra.Foreign.Receiving._.receivingScriptHashes
d_receivingScriptHashes_84 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3736 ->
  [Integer]
d_receivingScriptHashes_84 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_receivingScriptHashes_3240
      v1
-- Ledger.Dijkstra.Foreign.Receiving._.txInfo
d_txInfo_86 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3736 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3112
d_txInfo_86
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_txInfo_3324
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Dijkstra.Foreign.Receiving._.txInfoForPurpose
d_txInfoForPurpose_88 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3736 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3112
d_txInfoForPurpose_88
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_txInfoForPurpose_3352
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Dijkstra.Foreign.Receiving._.txOutToDataHash
d_txOutToDataHash_90 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
d_txOutToDataHash_90
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_txOutToDataHash_3388
-- Ledger.Dijkstra.Foreign.Receiving._.txOutToP2Script
d_txOutToP2Script_92 ::
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364
d_txOutToP2Script_92
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_txOutToP2Script_3412
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Dijkstra.Foreign.Receiving.receiving-script-hashes
receivingScriptHashes ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxTop_292045 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60 Integer
receivingScriptHashes = coe d_receiving'45'script'45'hashes_94
d_receiving'45'script'45'hashes_94 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxTop_292045 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60 Integer
d_receiving'45'script'45'hashes_94 v0
  = coe
      MAlonzo.Code.Class.Convertible.Core.d_to_20
      (coe
         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSSet_80
         (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_receivingScriptHashes_3240
         (coe
            MAlonzo.Code.Class.Convertible.Core.d_from_22
            MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'Tx'45'TxLevelTop_572
            v0))
-- Ledger.Dijkstra.Foreign.Receiving.receiving-key-hashes
receivingKeyHashes ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxTop_292045 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60 Integer
receivingKeyHashes = coe d_receiving'45'key'45'hashes_96
d_receiving'45'key'45'hashes_96 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxTop_292045 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60 Integer
d_receiving'45'key'45'hashes_96 v0
  = coe
      MAlonzo.Code.Class.Convertible.Core.d_to_20
      (coe
         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSSet_80
         (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_receivingKeyHashes_3242
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
receivingPointer = coe d_receiving'45'pointer_98
d_receiving'45'pointer_98 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxTop_292045 ->
  Integer ->
  Maybe
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny
       MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_Tag_21 Integer)
d_receiving'45'pointer_98 v0
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
           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_rdptr_3244
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
              (coe
                 MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSAbstractFunctions_3782
              (coe
                 MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
           (coe
              MAlonzo.Code.Class.Convertible.Core.d_from_22
              MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'Tx'45'TxLevelTop_572
              v0)
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.C_'10214'_'44'_'10215''738''7510'_3110
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Receive_56)
              (coe v1)))
-- Ledger.Dijkstra.Foreign.Receiving.sub-receiving-script-hashes
subReceivingScriptHashes ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxSub_113387 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60 Integer
subReceivingScriptHashes
  = coe d_sub'45'receiving'45'script'45'hashes_104
d_sub'45'receiving'45'script'45'hashes_104 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxSub_113387 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60 Integer
d_sub'45'receiving'45'script'45'hashes_104 v0
  = coe
      MAlonzo.Code.Class.Convertible.Core.d_to_20
      (coe
         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSSet_80
         (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_receivingScriptHashes_3240
         (coe
            MAlonzo.Code.Class.Convertible.Core.d_from_22
            MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'Tx'45'TxLevelSub_278
            v0))
-- Ledger.Dijkstra.Foreign.Receiving.sub-receiving-key-hashes
subReceivingKeyHashes ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxSub_113387 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60 Integer
subReceivingKeyHashes = coe d_sub'45'receiving'45'key'45'hashes_106
d_sub'45'receiving'45'key'45'hashes_106 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxSub_113387 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60 Integer
d_sub'45'receiving'45'key'45'hashes_106 v0
  = coe
      MAlonzo.Code.Class.Convertible.Core.d_to_20
      (coe
         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSSet_80
         (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_receivingKeyHashes_3242
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
subReceivingPointer = coe d_sub'45'receiving'45'pointer_108
d_sub'45'receiving'45'pointer_108 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxSub_113387 ->
  Integer ->
  Maybe
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny
       MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_Tag_21 Integer)
d_sub'45'receiving'45'pointer_108 v0
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
           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_rdptr_3244
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
              (coe
                 MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSAbstractFunctions_3782
              (coe
                 MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
           (coe
              MAlonzo.Code.Class.Convertible.Core.d_from_22
              MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'Tx'45'TxLevelSub_278
              v0)
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.C_'10214'_'44'_'10215''738''7510'_3110
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Receive_56)
              (coe v1)))
