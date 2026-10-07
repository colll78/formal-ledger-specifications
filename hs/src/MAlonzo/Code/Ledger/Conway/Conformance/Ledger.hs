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

module MAlonzo.Code.Ledger.Conway.Conformance.Ledger where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Gov
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxow
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- _.Tx
d_Tx_630 a0 = ()
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
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__2142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2972 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__2142 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_2148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  ()
d_GovState_2148 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_2150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_2150 ~v0 ~v1 = du_HasCast'45'GovEnv_2150
du_HasCast'45'GovEnv_2150 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_2150
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_3004
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_2192 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_2212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3474 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2212 v0 ~v1 = du_updateDeposits_2212 v0
du_updateDeposits_2212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3474 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2212 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2998
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_2236 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2524 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2538
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_2238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2524 ->
  Integer
d_donations_2238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2540
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_2240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2524 ->
  Integer
d_fees_2240 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2536 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_2242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2524 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2534 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2246 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1412 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1632 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1372] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1632 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2258 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_2294 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2368 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2368 ~v0 ~v1 = du_HasCast'45'CertEnv_2368
du_HasCast'45'CertEnv_2368 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2368
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1636
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2578 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1632 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1596
d_dState_2578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1640 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2580 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1632 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1616
d_gState_2580 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1644 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2582 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1632 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1452
d_pState_2582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1642 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2704 ~v0 ~v1 = du_HasCast'45'LEnv_2704
du_HasCast'45'LEnv_2704 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2704
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_3048
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2706 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2710 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1200 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2710 ~v0 ~v1 = du_allColdCreds_2710
du_allColdCreds_2710 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1200 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2710
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_3116
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1480 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2712 v0 ~v1 = du_rmOrphanDRepVotes_2712 v0
du_rmOrphanDRepVotes_2712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1480 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_3098
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3474 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2714 ~v0 ~v1 = du_txgov_2714
du_txgov_2714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3474 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2714
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_3052
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2718 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2958 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1200
d_enactState_2718 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2976
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2720 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2958 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
d_pparams_2720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2974
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2722 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2958 ->
  Maybe AgdaAny
d_ppolicy_2722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2972
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2724 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2958 ->
  AgdaAny
d_slot_2724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2970
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2958 ->
  Integer
d_treasury_2726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2978
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2728 a0 a1 = ()
data T_LState_2728
  = C_'10214'_'44'_'44'_'10215''737'_2742 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2524
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1632
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2736 ::
  T_LState_2728 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2524
d_utxoSt_2736 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2742 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2738 ::
  T_LState_2728 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2738 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2742 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2740 ::
  T_LState_2728 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1632
d_certState_2740 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2742 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2744 ~v0 ~v1 = du_HasCast'45'LState_2744
du_HasCast'45'LState_2744 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2744
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
         (coe
            MAlonzo.Code.Data.List.Base.du_length_268
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (2728 :: Integer) (16262344046643431141 :: Integer)
                                 "Ledger.Conway.Conformance.Ledger.LState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (2192 :: Integer) (16262344046643431141 :: Integer)
                                 "Ledger.Conway.Conformance.Ledger._.UTxOState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (2728 :: Integer) (16262344046643431141 :: Integer)
                                    "Ledger.Conway.Conformance.Ledger.LState"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                           (coe ("r" :: Data.Text.Text))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (2148 :: Integer) (16262344046643431141 :: Integer)
                                    "Ledger.Conway.Conformance.Ledger._.GovState"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (2728 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger.LState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                              (coe ("r" :: Data.Text.Text))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (2294 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2742))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2762 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2762
  = C_LEDGER'45'V_2858 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2524
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2934 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_9541 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1632
d_certState_2766 ~v0 ~v1 v2 = du_certState_2766 v2
du_certState_2766 ::
  T_GeneralizeTel_9541 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1632
du_certState_2766 v0
  = coe
      d_certState_2740 (coe d_'46'generalizedField'45's_9529 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2768 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_9541 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2768 ~v0 ~v1 v2 = du_govSt_2768 v2
du_govSt_2768 ::
  T_GeneralizeTel_9541 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2768 v0
  = coe d_govSt_2738 (coe d_'46'generalizedField'45's_9529 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_9541 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2524
d_utxoSt_2770 ~v0 ~v1 v2 = du_utxoSt_2770 v2
du_utxoSt_2770 ::
  T_GeneralizeTel_9541 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2524
du_utxoSt_2770 v0
  = coe d_utxoSt_2736 (coe d_'46'generalizedField'45's_9529 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txCerts
d_txCerts_2790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_9541 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1372]
d_txCerts_2790 ~v0 ~v1 v2 = du_txCerts_2790 v2
du_txCerts_2790 ::
  T_GeneralizeTel_9541 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1372]
du_txCerts_2790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3522
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3686
         (coe d_'46'generalizedField'45'tx_9531 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txGovVotes
d_txGovVotes_2798 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_9541 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1040]
d_txGovVotes_2798 ~v0 ~v1 v2 = du_txGovVotes_2798 v2
du_txGovVotes_2798 ::
  T_GeneralizeTel_9541 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1040]
du_txGovVotes_2798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3534
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3686
         (coe d_'46'generalizedField'45'tx_9531 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txId
d_txId_2800 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_9541 -> AgdaAny
d_txId_2800 ~v0 ~v1 v2 = du_txId_2800 v2
du_txId_2800 :: T_GeneralizeTel_9541 -> AgdaAny
du_txId_2800 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3520
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3686
         (coe d_'46'generalizedField'45'tx_9531 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txWithdrawals
d_txWithdrawals_2810 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_9541 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2810 ~v0 ~v1 v2 = du_txWithdrawals_2810 v2
du_txWithdrawals_2810 ::
  T_GeneralizeTel_9541 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2810 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3526
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3686
         (coe d_'46'generalizedField'45'tx_9531 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2814 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_9541 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1200
d_enactState_2814 ~v0 ~v1 v2 = du_enactState_2814 v2
du_enactState_2814 ::
  T_GeneralizeTel_9541 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1200
du_enactState_2814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2976
      (coe d_'46'generalizedField'45'Γ_9533 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2816 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_9541 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
d_pparams_2816 ~v0 ~v1 v2 = du_pparams_2816 v2
du_pparams_2816 ::
  T_GeneralizeTel_9541 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
du_pparams_2816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2974
      (coe d_'46'generalizedField'45'Γ_9533 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2818 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_9541 -> Maybe AgdaAny
d_ppolicy_2818 ~v0 ~v1 v2 = du_ppolicy_2818 v2
du_ppolicy_2818 :: T_GeneralizeTel_9541 -> Maybe AgdaAny
du_ppolicy_2818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2972
      (coe d_'46'generalizedField'45'Γ_9533 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2820 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_9541 -> AgdaAny
d_slot_2820 ~v0 ~v1 v2 = du_slot_2820 v2
du_slot_2820 :: T_GeneralizeTel_9541 -> AgdaAny
du_slot_2820 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2970
      (coe d_'46'generalizedField'45'Γ_9533 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_9541 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1596
d_dState_2826 ~v0 ~v1 v2 = du_dState_2826 v2
du_dState_2826 ::
  T_GeneralizeTel_9541 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1596
du_dState_2826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1640
      (coe
         d_certState_2740 (coe d_'46'generalizedField'45's_9529 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2836 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_9541 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2836 ~v0 ~v1 v2 = du_rewards_2836 v2
du_rewards_2836 ::
  T_GeneralizeTel_9541 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2836 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1610
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1640
         (coe
            d_certState_2740 (coe d_'46'generalizedField'45's_9529 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_9541 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
d_pparams_2850 ~v0 ~v1 v2 = du_pparams_2850 v2
du_pparams_2850 ::
  T_GeneralizeTel_9541 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
du_pparams_2850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2974
      (coe d_'46'generalizedField'45'Γ_9533 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_9541 -> AgdaAny
d_slot_2854 ~v0 ~v1 v2 = du_slot_2854 v2
du_slot_2854 :: T_GeneralizeTel_9541 -> AgdaAny
du_slot_2854 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2970
      (coe d_'46'generalizedField'45'Γ_9533 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2856 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_9541 -> Integer
d_treasury_2856 ~v0 ~v1 v2 = du_treasury_2856 v2
du_treasury_2856 :: T_GeneralizeTel_9541 -> Integer
du_treasury_2856 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2978
      (coe d_'46'generalizedField'45'Γ_9533 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2862 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_14711 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1632
d_certState_2862 ~v0 ~v1 v2 = du_certState_2862 v2
du_certState_2862 ::
  T_GeneralizeTel_14711 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1632
du_certState_2862 v0
  = coe
      d_certState_2740 (coe d_'46'generalizedField'45's_14703 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_14711 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2864 ~v0 ~v1 v2 = du_govSt_2864 v2
du_govSt_2864 ::
  T_GeneralizeTel_14711 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2864 v0
  = coe d_govSt_2738 (coe d_'46'generalizedField'45's_14703 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2866 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_14711 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2524
d_utxoSt_2866 ~v0 ~v1 v2 = du_utxoSt_2866 v2
du_utxoSt_2866 ::
  T_GeneralizeTel_14711 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2524
du_utxoSt_2866 v0
  = coe
      d_utxoSt_2736 (coe d_'46'generalizedField'45's_14703 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2926 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_14711 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
d_pparams_2926 ~v0 ~v1 v2 = du_pparams_2926 v2
du_pparams_2926 ::
  T_GeneralizeTel_14711 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
du_pparams_2926 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2974
      (coe d_'46'generalizedField'45'Γ_14707 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2930 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_14711 -> AgdaAny
d_slot_2930 ~v0 ~v1 v2 = du_slot_2930 v2
du_slot_2930 :: T_GeneralizeTel_14711 -> AgdaAny
du_slot_2930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2970
      (coe d_'46'generalizedField'45'Γ_14707 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2932 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_14711 -> Integer
d_treasury_2932 ~v0 ~v1 v2 = du_treasury_2932 v2
du_treasury_2932 :: T_GeneralizeTel_14711 -> Integer
du_treasury_2932 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2978
      (coe d_'46'generalizedField'45'Γ_14707 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2952 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2958 ->
  T_LState_2728 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3674] ->
  T_LState_2728 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2952 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_9529 ::
  T_GeneralizeTel_9541 -> T_LState_2728
d_'46'generalizedField'45's_9529 v0
  = case coe v0 of
      C_mkGeneralizeTel_9543 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_9531 ::
  T_GeneralizeTel_9541 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3674
d_'46'generalizedField'45'tx_9531 v0
  = case coe v0 of
      C_mkGeneralizeTel_9543 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_9533 ::
  T_GeneralizeTel_9541 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2958
d_'46'generalizedField'45'Γ_9533 v0
  = case coe v0 of
      C_mkGeneralizeTel_9543 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_9535 ::
  T_GeneralizeTel_9541 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2524
d_'46'generalizedField'45'utxoSt''_9535 v0
  = case coe v0 of
      C_mkGeneralizeTel_9543 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_9537 ::
  T_GeneralizeTel_9541 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1632
d_'46'generalizedField'45'certState''_9537 v0
  = case coe v0 of
      C_mkGeneralizeTel_9543 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_9539 ::
  T_GeneralizeTel_9541 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_9539 v0
  = case coe v0 of
      C_mkGeneralizeTel_9543 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_9541 a0 a1 = ()
data T_GeneralizeTel_9541
  = C_mkGeneralizeTel_9543 T_LState_2728
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3674
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2958
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2524
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1632
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_14703 ::
  T_GeneralizeTel_14711 -> T_LState_2728
d_'46'generalizedField'45's_14703 v0
  = case coe v0 of
      C_mkGeneralizeTel_14713 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_14705 ::
  T_GeneralizeTel_14711 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3674
d_'46'generalizedField'45'tx_14705 v0
  = case coe v0 of
      C_mkGeneralizeTel_14713 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_14707 ::
  T_GeneralizeTel_14711 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2958
d_'46'generalizedField'45'Γ_14707 v0
  = case coe v0 of
      C_mkGeneralizeTel_14713 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_14709 ::
  T_GeneralizeTel_14711 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2524
d_'46'generalizedField'45'utxoSt''_14709 v0
  = case coe v0 of
      C_mkGeneralizeTel_14713 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_14711 a0 a1 = ()
data T_GeneralizeTel_14711
  = C_mkGeneralizeTel_14713 T_LState_2728
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3674
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2958
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2524
