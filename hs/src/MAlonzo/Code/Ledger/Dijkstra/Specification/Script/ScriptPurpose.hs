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

module MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.AccountBalanceIntervals
d_AccountBalanceIntervals_38 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_AccountBalanceIntervals_38 = erased
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.Credential
d_Credential_86 a0 = ()
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.Datum
d_Datum_108 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_Datum_108 = erased
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.DirectDeposits
d_DirectDeposits_210 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_DirectDeposits_210 = erased
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.GovProposal
d_GovProposal_254 a0 = ()
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.GovVoter
d_GovVoter_268 a0 = ()
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.THash
d_THash_674 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_THash_674 = erased
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.RewardAddress
d_RewardAddress_808 a0 = ()
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.Slot
d_Slot_884 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_Slot_884 = erased
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.TxOut
d_TxOut_946 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_TxOut_946 = erased
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.UTxO
d_UTxO_956 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_UTxO_956 = erased
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.Value
d_Value_988 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_Value_988 = erased
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.Withdrawals
d_Withdrawals_998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_Withdrawals_998 = erased
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.GovProposal.action
d_action_1414 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1084 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_984
d_action_1414 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1098
      (coe v0)
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.GovProposal.anchor
d_anchor_1416 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1084 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1018
d_anchor_1416 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1108
      (coe v0)
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.GovProposal.deposit
d_deposit_1418 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1084 ->
  Integer
d_deposit_1418 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1104
      (coe v0)
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.GovProposal.policy
d_policy_1420 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1084 ->
  Maybe AgdaAny
d_policy_1420 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_policy_1102
      (coe v0)
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.GovProposal.prevAction
d_prevAction_1422 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1084 ->
  AgdaAny
d_prevAction_1422 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1100
      (coe v0)
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.GovProposal.returnAddr
d_returnAddr_1424 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1084 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_120
d_returnAddr_1424 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1106
      (coe v0)
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.GovVoter.gvCredential
d_gvCredential_1446 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_1006 ->
  AgdaAny
d_gvCredential_1446 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCredential_1014
      (coe v0)
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.GovVoter.gvRole
d_gvRole_1448 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_1006 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_956
d_gvRole_1448 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvRole_1012
      (coe v0)
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.GovernanceActions.GovProposal
d_GovProposal_1518 a0 = ()
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.GovernanceActions.GovVoter
d_GovVoter_1530 a0 = ()
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.RewardAddress.net
d_net_2342 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_120 ->
  AgdaAny
d_net_2342 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_126 (coe v0)
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.RewardAddress.stake
d_stake_2344 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_120 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_2344 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_128 (coe v0)
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.DCert
d_DCert_2704 a0 = ()
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.ScriptPurposeData
d_ScriptPurposeData_3186 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tag_40 ->
  ()
d_ScriptPurposeData_3186 = erased
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.ScriptPurpose
d_ScriptPurpose_3188 a0 = ()
data T_ScriptPurpose_3188
  = C_'10214'_'44'_'10215''738''7510'_3198 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tag_40
                                           AgdaAny
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.ScriptPurpose.tag
d_tag_3194 ::
  T_ScriptPurpose_3188 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tag_40
d_tag_3194 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''738''7510'_3198 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.ScriptPurpose.data′
d_data'8242'_3196 :: T_ScriptPurpose_3188 -> AgdaAny
d_data'8242'_3196 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''738''7510'_3198 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.scriptPurposeDataEquals
d_scriptPurposeDataEquals_3202 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tag_40 ->
  AgdaAny -> AgdaAny -> Bool
d_scriptPurposeDataEquals_3202 v0 v1
  = case coe v1 of
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Spend_42
        -> coe
             MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
             (coe
                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                (coe
                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1436
                   (coe v0))
                (coe
                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1434
                   (coe v0)))
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Mint_44
        -> coe
             MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
             (coe
                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                (coe
                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
                   (coe v0)))
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Cert_46
        -> coe
             MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
             (coe
                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DecEq'45'DCert_2212
                (coe
                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
                   (coe v0)))
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Reward_48
        -> coe
             MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
             (coe
                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_374
                (coe
                   MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                   (coe
                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
                      (coe v0)))
                (coe
                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                   (coe
                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                      (coe
                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
                         (coe v0))))
                (coe
                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                   (coe
                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
                      (coe v0))))
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Vote_50
        -> coe
             MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
             (coe
                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'GovVoter_1396
                (coe
                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
                   (coe v0)))
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Propose_52
        -> coe
             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovProposal_1568
             (coe
                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
                (coe v0))
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Guard_54
        -> coe
             MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
             (coe
                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_316
                (coe
                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                   (coe
                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                      (coe
                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
                         (coe v0))))
                (coe
                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                   (coe
                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
                      (coe v0))))
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Receive_56
        -> coe
             (\ v2 v3 ->
                coe
                  MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1434
                     (coe v0))
                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.scriptPurposeEquals
d_scriptPurposeEquals_3212 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  T_ScriptPurpose_3188 -> T_ScriptPurpose_3188 -> Bool
d_scriptPurposeEquals_3212 v0 v1 v2
  = case coe v1 of
      C_'10214'_'44'_'10215''738''7510'_3198 v3 v4
        -> case coe v2 of
             C_'10214'_'44'_'10215''738''7510'_3198 v5 v6
               -> let v7
                        = coe
                            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Tag_58
                            v3 v5 in
                  coe
                    (case coe v7 of
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                         -> if coe v8
                              then coe
                                     seq (coe v9) (coe d_scriptPurposeDataEquals_3202 v0 v3 v4 v6)
                              else coe seq (coe v9) (coe v8)
                       _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo
d_TxInfo_3242 a0 = ()
data T_TxInfo_3242
  = C_constructor_3302 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 (Maybe Integer) AgdaAny
                       [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1478]
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 [AgdaAny]
                       [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
                       [AgdaAny] AgdaAny (Maybe [T_TxInfo_3242])
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.SubTxInfo
d_SubTxInfo_3244 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_SubTxInfo_3244 = erased
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.realizedInputs
d_realizedInputs_3274 ::
  T_TxInfo_3242 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_realizedInputs_3274 v0
  = case coe v0 of
      C_constructor_3302 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.txOuts
d_txOuts_3276 ::
  T_TxInfo_3242 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_3276 v0
  = case coe v0 of
      C_constructor_3302 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.txFee
d_txFee_3278 :: T_TxInfo_3242 -> Maybe Integer
d_txFee_3278 v0
  = case coe v0 of
      C_constructor_3302 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.mint
d_mint_3280 :: T_TxInfo_3242 -> AgdaAny
d_mint_3280 v0
  = case coe v0 of
      C_constructor_3302 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.txCerts
d_txCerts_3282 ::
  T_TxInfo_3242 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1478]
d_txCerts_3282 v0
  = case coe v0 of
      C_constructor_3302 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.txWithdrawals
d_txWithdrawals_3284 ::
  T_TxInfo_3242 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_3284 v0
  = case coe v0 of
      C_constructor_3302 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.txVldt
d_txVldt_3286 ::
  T_TxInfo_3242 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_3286 v0
  = case coe v0 of
      C_constructor_3302 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.vkKey
d_vkKey_3288 :: T_TxInfo_3242 -> [AgdaAny]
d_vkKey_3288 v0
  = case coe v0 of
      C_constructor_3302 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.txGuards
d_txGuards_3290 ::
  T_TxInfo_3242 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_txGuards_3290 v0
  = case coe v0 of
      C_constructor_3302 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.txData
d_txData_3292 :: T_TxInfo_3242 -> [AgdaAny]
d_txData_3292 v0
  = case coe v0 of
      C_constructor_3302 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.txId
d_txId_3294 :: T_TxInfo_3242 -> AgdaAny
d_txId_3294 v0
  = case coe v0 of
      C_constructor_3302 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.txInfoSubTxs
d_txInfoSubTxs_3296 :: T_TxInfo_3242 -> Maybe [T_TxInfo_3242]
d_txInfoSubTxs_3296 v0
  = case coe v0 of
      C_constructor_3302 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.txDirectDeposits
d_txDirectDeposits_3298 ::
  T_TxInfo_3242 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txDirectDeposits_3298 v0
  = case coe v0 of
      C_constructor_3302 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.txBalanceIntervals
d_txBalanceIntervals_3300 ::
  T_TxInfo_3242 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txBalanceIntervals_3300 v0
  = case coe v0 of
      C_constructor_3302 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
