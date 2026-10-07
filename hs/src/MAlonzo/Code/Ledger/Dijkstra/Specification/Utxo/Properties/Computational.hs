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

module MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.Properties.Computational where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.ToBool
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.SubLevelTx
d_SubLevelTx_896 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_SubLevelTx_896 = erased
-- _.TopLevelTx
d_TopLevelTx_916 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_TopLevelTx_916 = erased
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._._⊢_⇀⦇_,SUBUTXO⦈_
d__'8866'_'8640''10631'_'44'SUBUTXO'10632'__2644 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2646 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2648 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.SubUTxOEnv
d_SubUTxOEnv_2742 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOEnv
d_UTxOEnv_2754 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOState
d_UTxOState_2758 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.allP2ScriptsWithContext
d_allP2ScriptsWithContext_2764 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3184 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3170 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3736 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allP2ScriptsWithContext_2764 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allP2ScriptsWithContext_3760
      (coe v0) (coe v1)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.SubUTxOEnv.allScripts
d_allScripts_2876 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3202 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allScripts_2876 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3224
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.SubUTxOEnv.isTopLevelValid
d_isTopLevelValid_2878 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3202 ->
  Bool
d_isTopLevelValid_2878 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_isTopLevelValid_3226
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.SubUTxOEnv.pparams
d_pparams_2880 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3202 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_2880 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3218
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.SubUTxOEnv.slot
d_slot_2882 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3202 ->
  AgdaAny
d_slot_2882 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_slot_3216
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.SubUTxOEnv.treasury
d_treasury_2884 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3202 ->
  Integer
d_treasury_2884 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_treasury_3220
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.SubUTxOEnv.utxo₀
d_utxo'8320'_2886 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3202 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo'8320'_2886 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3222
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOEnv.allScripts
d_allScripts_2890 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3170 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allScripts_2890 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3196
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOEnv.legacyMode
d_legacyMode_2892 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3170 ->
  Bool
d_legacyMode_2892 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_legacyMode_3198
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOEnv.pools₀
d_pools'8320'_2894 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools'8320'_2894 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pools'8320'_3194
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOEnv.pparams
d_pparams_2896 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3170 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_2896 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3188
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOEnv.slot
d_slot_2898 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3170 ->
  AgdaAny
d_slot_2898 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_slot_3186
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOEnv.treasury
d_treasury_2900 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3170 ->
  Integer
d_treasury_2900 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_treasury_3190
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOEnv.utxo₀
d_utxo'8320'_2902 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo'8320'_2902 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3192
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOState.donations
d_donations_2906 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3230 ->
  Integer
d_donations_2906 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3242
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOState.fees
d_fees_2908 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3230 ->
  Integer
d_fees_2908 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3240
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOState.utxo
d_utxo_2910 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3230 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2910 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3238
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.evalP2Scripts
d_evalP2Scripts_2934 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3184 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalP2Scripts_2934 v0 ~v1 = du_evalP2Scripts_2934 v0
du_evalP2Scripts_2934 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
du_evalP2Scripts_2934 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_evalP2Scripts_3534
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational.Computational-SUBUTXO
d_Computational'45'SUBUTXO_2958 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3184 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'SUBUTXO_2958 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_3006 (coe v0) (coe v1))
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.go.computeProof-aux
d_computeProof'45'aux_2978 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3184 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3202 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3736 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof'45'aux_2978 v0 ~v1 v2 v3 v4 v5
  = du_computeProof'45'aux_2978 v0 v2 v3 v4 v5
du_computeProof'45'aux_2978 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3202 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3736 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_computeProof'45'aux_2978 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v5 v6
        -> if coe v5
             then case coe v6 of
                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v7
                      -> case coe v7 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                             -> case coe v9 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                                    -> case coe v11 of
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                                           -> case coe v13 of
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                                                  -> case coe v15 of
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                                         -> case coe v17 of
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                                                                -> case coe v19 of
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v20 v21
                                                                       -> case coe v21 of
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v22 v23
                                                                              -> case coe v23 of
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v24 v25
                                                                                     -> case coe
                                                                                               v25 of
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v26 v27
                                                                                            -> coe
                                                                                                 seq
                                                                                                 (coe
                                                                                                    v27)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                       (let v28
                                                                                                              = MAlonzo.Code.Class.ToBool.d_ToBool'45'Bool_88 in
                                                                                                        coe
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Class.ToBool.du_if_then_else__38
                                                                                                             (coe
                                                                                                                v28)
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_isTopLevelValid_3226
                                                                                                                (coe
                                                                                                                   v1))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Level.C_lift_20
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                                             (coe
                                                                                                                (\ v29 ->
                                                                                                                   coe
                                                                                                                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasCast'45'UTxOState_3402)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                        (let v30
                                                                                                                               = coe
                                                                                                                                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                   ()
                                                                                                                                   erased
                                                                                                                                   ()
                                                                                                                                   erased
                                                                                                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1386
                                                                                                                                      (coe
                                                                                                                                         v0))
                                                                                                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1384
                                                                                                                                      (coe
                                                                                                                                         v0)) in
                                                                                                                         coe
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1042
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                 erased
                                                                                                                                 v30)
                                                                                                                              (let v31
                                                                                                                                     = coe
                                                                                                                                         MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                         ()
                                                                                                                                         erased
                                                                                                                                         ()
                                                                                                                                         erased
                                                                                                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1386
                                                                                                                                            (coe
                                                                                                                                               v0))
                                                                                                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1384
                                                                                                                                            (coe
                                                                                                                                               v0)) in
                                                                                                                               coe
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                       erased
                                                                                                                                       v31)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3238
                                                                                                                                       (coe
                                                                                                                                          v2))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4128
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4524)
                                                                                                                                       v3)))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_outs_3416
                                                                                                                                 (coe
                                                                                                                                    v3))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3240
                                                                                                                              (coe
                                                                                                                                 v2))
                                                                                                                           (coe
                                                                                                                              addInt
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3242
                                                                                                                                 (coe
                                                                                                                                    v2))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Prelude.Base.d_DonationsOf_28
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDonations'45'Tx_4562)
                                                                                                                                 v3))))))
                                                                                                             (coe
                                                                                                                (\ v29 ->
                                                                                                                   coe
                                                                                                                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasCast'45'UTxOState_3402)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3238
                                                                                                                           (coe
                                                                                                                              v2))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3240
                                                                                                                              (coe
                                                                                                                                 v2))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3242
                                                                                                                              (coe
                                                                                                                                 v2))))))))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_SUBUTXO_3806
                                                                                                          v7)))
                                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             else coe
                    seq (coe v6)
                    (coe
                       MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                       (coe ("SUBUTXO" :: Data.Text.Text)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.go.computeProof
d_computeProof_3006 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3184 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3202 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3736 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_3006 v0 v1 v2 v3 v4
  = coe
      du_computeProof'45'aux_2978 (coe v0) (coe v2) (coe v3) (coe v4)
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_SUBUTXO'45'premises_3808
               (coe v0) (coe v1) (coe v4) (coe v2) (coe v3))))
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.go.completeness
d_completeness_3010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3184 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3202 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3736 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T__'8866'_'8640''10631'_'44'SUBUTXO'10632'__3780 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_3010 = erased
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational.Computational-UTXOS
d_Computational'45'UTXOS_3032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3184 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'UTXOS_3032 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v2 v3 v4 -> coe du_computeProof_3056 (coe v0) (coe v1) v2 v4)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.go.computeProof-aux
d_computeProof'45'aux_3048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3184 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3170 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3736 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof'45'aux_3048 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_computeProof'45'aux_3048 v5
du_computeProof'45'aux_3048 ::
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_computeProof'45'aux_3048 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v1 v2
        -> if coe v1
             then coe
                    seq (coe v2)
                    (coe
                       MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_UTXOS_3776)))
             else coe
                    seq (coe v2)
                    (coe
                       MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                       (coe
                          ("\172\nevalP2Scripts (allP2ScriptsWithContext \915 txTop) \8801\n.TransactionStructure.HasIsValidFlag.IsValidFlagOf\n(TransactionStructure.HasIsValidFlag-Tx txs) txTop"
                           ::
                           Data.Text.Text)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.go.computeProof
d_computeProof_3056 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3184 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3170 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3736 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_3056 v0 v1 v2 ~v3 v4
  = du_computeProof_3056 v0 v1 v2 v4
du_computeProof_3056 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3184 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3170 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3736 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_computeProof_3056 v0 v1 v2 v3
  = coe
      du_computeProof'45'aux_3048
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
            (coe
               MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_evalP2Scripts_3534
               v0
               (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allP2ScriptsWithContext_3760
                  (coe v0) (coe v1) (coe v2) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_isValid_3762
               (coe v3))))
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.go.completeness
d_completeness_3060 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3184 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3170 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3736 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T__'8866'_'8640''10631'_'44'UTXOS'10632'__3774 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_3060 = erased
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational.Computational-UTXO
d_Computational'45'UTXO_3076 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3184 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'UTXO_3076 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_3168 (coe v0) (coe v1))
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.go.computeProof-aux
d_computeProof'45'aux_3118 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3184 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3170 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3736 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof'45'aux_3118 v0 v1 ~v2 v3 v4 v5 v6
  = du_computeProof'45'aux_3118 v0 v1 v3 v4 v5 v6
du_computeProof'45'aux_3118 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3184 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3736 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_computeProof'45'aux_3118 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v6
        -> case coe v4 of
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
               -> if coe v7
                    then case coe v8 of
                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v9
                             -> case coe v9 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                                    -> case coe v11 of
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                                           -> case coe v13 of
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                                                  -> case coe v15 of
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                                         -> case coe v17 of
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                                                                -> case coe v19 of
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v20 v21
                                                                       -> case coe v21 of
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v22 v23
                                                                              -> case coe v23 of
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v24 v25
                                                                                     -> case coe
                                                                                               v25 of
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v26 v27
                                                                                            -> case coe
                                                                                                      v27 of
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v28 v29
                                                                                                   -> case coe
                                                                                                             v29 of
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v30 v31
                                                                                                          -> case coe
                                                                                                                    v31 of
                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v32 v33
                                                                                                                 -> case coe
                                                                                                                           v33 of
                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v34 v35
                                                                                                                        -> case coe
                                                                                                                                  v35 of
                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v36 v37
                                                                                                                               -> case coe
                                                                                                                                         v37 of
                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v38 v39
                                                                                                                                      -> case coe
                                                                                                                                                v39 of
                                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v40 v41
                                                                                                                                             -> case coe
                                                                                                                                                       v41 of
                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v42 v43
                                                                                                                                                    -> coe
                                                                                                                                                         MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                                                                            (let v44
                                                                                                                                                                   = MAlonzo.Code.Class.ToBool.d_ToBool'45'Bool_88 in
                                                                                                                                                             coe
                                                                                                                                                               (coe
                                                                                                                                                                  MAlonzo.Code.Class.ToBool.du_if_then_else__38
                                                                                                                                                                  (coe
                                                                                                                                                                     v44)
                                                                                                                                                                  (coe
                                                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_IsValidFlagOf_4468
                                                                                                                                                                     (coe
                                                                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasIsValidFlag'45'Tx_4482)
                                                                                                                                                                     v3)
                                                                                                                                                                  (coe
                                                                                                                                                                     MAlonzo.Code.Level.C_lift_20
                                                                                                                                                                     (coe
                                                                                                                                                                        MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                                                                                                  (coe
                                                                                                                                                                     (\ v45 ->
                                                                                                                                                                        coe
                                                                                                                                                                          MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasCast'45'UTxOState_3402)
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                             (let v46
                                                                                                                                                                                    = coe
                                                                                                                                                                                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                        ()
                                                                                                                                                                                        erased
                                                                                                                                                                                        ()
                                                                                                                                                                                        erased
                                                                                                                                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1386
                                                                                                                                                                                           (coe
                                                                                                                                                                                              v0))
                                                                                                                                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1384
                                                                                                                                                                                           (coe
                                                                                                                                                                                              v0)) in
                                                                                                                                                                              coe
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1042
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                                                      erased
                                                                                                                                                                                      v46)
                                                                                                                                                                                   (let v47
                                                                                                                                                                                          = coe
                                                                                                                                                                                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                              ()
                                                                                                                                                                                              erased
                                                                                                                                                                                              ()
                                                                                                                                                                                              erased
                                                                                                                                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1386
                                                                                                                                                                                                 (coe
                                                                                                                                                                                                    v0))
                                                                                                                                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1384
                                                                                                                                                                                                 (coe
                                                                                                                                                                                                    v0)) in
                                                                                                                                                                                    coe
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                                                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                                                            erased
                                                                                                                                                                                            v47)
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3238
                                                                                                                                                                                            (coe
                                                                                                                                                                                               v2))
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4128
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4524)
                                                                                                                                                                                            v3)))
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_outs_3416
                                                                                                                                                                                      (coe
                                                                                                                                                                                         v3))))
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                (coe
                                                                                                                                                                                   addInt
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxFeesOf_4004
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxFees'45'TopLevelTx_4490)
                                                                                                                                                                                      v3)
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3240
                                                                                                                                                                                      (coe
                                                                                                                                                                                         v2)))
                                                                                                                                                                                (coe
                                                                                                                                                                                   addInt
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3242
                                                                                                                                                                                      (coe
                                                                                                                                                                                         v2))
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Prelude.Base.d_DonationsOf_28
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDonations'45'Tx_4562)
                                                                                                                                                                                      v3))))))
                                                                                                                                                                  (coe
                                                                                                                                                                     (\ v45 ->
                                                                                                                                                                        coe
                                                                                                                                                                          MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasCast'45'UTxOState_3402)
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                             (let v46
                                                                                                                                                                                    = coe
                                                                                                                                                                                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                        ()
                                                                                                                                                                                        erased
                                                                                                                                                                                        ()
                                                                                                                                                                                        erased
                                                                                                                                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1386
                                                                                                                                                                                           (coe
                                                                                                                                                                                              v0))
                                                                                                                                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1384
                                                                                                                                                                                           (coe
                                                                                                                                                                                              v0)) in
                                                                                                                                                                              coe
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1042
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                                                      erased
                                                                                                                                                                                      v46)
                                                                                                                                                                                   (let v47
                                                                                                                                                                                          = coe
                                                                                                                                                                                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                              ()
                                                                                                                                                                                              erased
                                                                                                                                                                                              ()
                                                                                                                                                                                              erased
                                                                                                                                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1386
                                                                                                                                                                                                 (coe
                                                                                                                                                                                                    v0))
                                                                                                                                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1384
                                                                                                                                                                                                 (coe
                                                                                                                                                                                                    v0)) in
                                                                                                                                                                                    coe
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                                                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                                                            erased
                                                                                                                                                                                            v47)
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3238
                                                                                                                                                                                            (coe
                                                                                                                                                                                               v2))
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CollateralInputsOf_3980
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCollateralInputs'45'TopLevelTx_4488)
                                                                                                                                                                                            v3)))
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_collateralReturnOuts_3594
                                                                                                                                                                                      (coe
                                                                                                                                                                                         v1)
                                                                                                                                                                                      (coe
                                                                                                                                                                                         v3))))
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                (coe
                                                                                                                                                                                   addInt
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_collateralCollected_3608
                                                                                                                                                                                      (coe
                                                                                                                                                                                         v0)
                                                                                                                                                                                      (coe
                                                                                                                                                                                         v3)
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3238
                                                                                                                                                                                         (coe
                                                                                                                                                                                            v2)))
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3240
                                                                                                                                                                                      (coe
                                                                                                                                                                                         v2)))
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3242
                                                                                                                                                                                   (coe
                                                                                                                                                                                      v2))))))))
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_UTXO_3840
                                                                                                                                                               (coe
                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                  (coe
                                                                                                                                                                     v10)
                                                                                                                                                                  (coe
                                                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                     (coe
                                                                                                                                                                        v12)
                                                                                                                                                                     (coe
                                                                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                        (coe
                                                                                                                                                                           v14)
                                                                                                                                                                        (coe
                                                                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                           (coe
                                                                                                                                                                              v16)
                                                                                                                                                                           (coe
                                                                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                              (coe
                                                                                                                                                                                 v18)
                                                                                                                                                                              (coe
                                                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                 (coe
                                                                                                                                                                                    v20)
                                                                                                                                                                                 (coe
                                                                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                    (coe
                                                                                                                                                                                       v22)
                                                                                                                                                                                    (coe
                                                                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                       (coe
                                                                                                                                                                                          v24)
                                                                                                                                                                                       (coe
                                                                                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                          (coe
                                                                                                                                                                                             v26)
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                             (coe
                                                                                                                                                                                                v28)
                                                                                                                                                                                             (coe
                                                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   v30)
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      v32)
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                      (coe
                                                                                                                                                                                                         v34)
                                                                                                                                                                                                      (coe
                                                                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                         (coe
                                                                                                                                                                                                            v36)
                                                                                                                                                                                                         (coe
                                                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                            (coe
                                                                                                                                                                                                               v38)
                                                                                                                                                                                                            (coe
                                                                                                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                  v40)
                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                     v42)
                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                        v43)
                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                           v6))))))))))))))))))))))
                                                                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    else coe
                           seq (coe v8)
                           (coe
                              MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                              (coe ("UTXO" :: Data.Text.Text)))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v6
        -> coe
             MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
             (coe ("UTXO" :: Data.Text.Text))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.go.computeProof
d_computeProof_3168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3184 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3170 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3736 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_3168 v0 v1 v2 v3 v4
  = coe
      du_computeProof'45'aux_3118 (coe v0) (coe v1) (coe v3) (coe v4)
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_UTXO'45'premises_3842
               (coe v0) (coe v1) (coe v4) (coe v2) (coe v3))))
      (coe du_computeProof_3056 (coe v0) (coe v1) (coe v2) (coe v4))
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.go.completeness
d_completeness_3172 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3184 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3170 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3736 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__3810 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_3172 = erased
