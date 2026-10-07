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

module MAlonzo.Code.Ledger.Conway.Specification.BlockBody.Properties.Computational where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set.Sum
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.TypeClasses.Hashable
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.BlockBody
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ledger.Properties.Computational
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Ledger.Conway.Specification.BlockBody.Properties.Computational._._⊢_⇀⦇_,BBODY⦈_
d__'8866'_'8640''10631'_'44'BBODY'10632'__2060 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.BlockBody.Properties.Computational._.BBodyEnv
d_BBodyEnv_2064 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  ()
d_BBodyEnv_2064 = erased
-- Ledger.Conway.Specification.BlockBody.Properties.Computational._.BBodyState
d_BBodyState_2066 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  ()
d_BBodyState_2066 = erased
-- Ledger.Conway.Specification.BlockBody.Properties.Computational._.Block
d_Block_2076 a0 a1 = ()
-- Ledger.Conway.Specification.BlockBody.Properties.Computational._.Block.bBodyHash
d_bBodyHash_2106 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2380 ->
  AgdaAny
d_bBodyHash_2106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bBodyHash_2400
      (coe v0)
-- Ledger.Conway.Specification.BlockBody.Properties.Computational._.Block.bBodySize
d_bBodySize_2108 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2380 ->
  Integer
d_bBodySize_2108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bBodySize_2398
      (coe v0)
-- Ledger.Conway.Specification.BlockBody.Properties.Computational._.Block.bheader
d_bheader_2110 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2368
d_bheader_2110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2394
      (coe v0)
-- Ledger.Conway.Specification.BlockBody.Properties.Computational._.Block.ts
d_ts_2112 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2380 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3674]
d_ts_2112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2396
      (coe v0)
-- Ledger.Conway.Specification.BlockBody.Properties.Computational._.Block.≡-bBodyHash
d_'8801''45'bBodyHash_2114 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_2114 = erased
-- Ledger.Conway.Specification.BlockBody.Properties.Computational._.Block.≡-bBodySize
d_'8801''45'bBodySize_2116 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_2116 = erased
-- Ledger.Conway.Specification.BlockBody.Properties.Computational._.Computational-LEDGER
d_Computational'45'LEDGER_2206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'LEDGER_2206 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.Properties.Computational.d_Computational'45'LEDGER_3006
      (coe v0) (coe v1)
-- Ledger.Conway.Specification.BlockBody.Properties.Computational._.completeness
d_completeness_2404 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2404 = erased
-- Ledger.Conway.Specification.BlockBody.Properties.Computational._.computeProof
d_computeProof_2410 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2410 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Conway.Specification.BlockBody.Properties.Computational.BBODY-computeProof
d_BBODY'45'computeProof_2430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2380 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_BBODY'45'computeProof_2430 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> let v7
                 = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_246
                        (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
                              (coe v0)))
                        (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_368
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1218
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))))
                        (coe
                           MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_932
                           (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_230
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_totExUnits_2490
                              (coe v0))
                           (MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2396
                              (coe v4)))) in
           coe
             (case coe v7 of
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                  -> if coe v8
                       then case coe v9 of
                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v10
                                -> coe
                                     MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                     (coe
                                        MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                                     () erased () erased
                                     (coe
                                        MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
                                        (coe
                                           MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'_776
                                           (coe
                                              MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_740)
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Specification.Ledger.Properties.Computational.d_Computational'45'LEDGER_3006
                                              (coe v0) (coe v1))
                                           (coe
                                              MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_728)
                                           (coe
                                              MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_732))
                                        (coe
                                           MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_3048)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_slot_2360
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2374
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2394
                                                       (coe v4))))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                 (coe
                                                    MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1116)
                                                    (MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1214
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v2))))
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_446
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1244)
                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v2)))
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v2))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Prelude.Base.d_TreasuryOf_98
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasTreasury'45'Acnt_202)
                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                             (coe v2))))))))
                                        v5
                                        (MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2396
                                           (coe v4)))
                                     (\ v11 ->
                                        case coe v11 of
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                                            -> coe
                                                 MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe v12)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.BlockBody.du_incrBlocks_2412
                                                          (coe v0)
                                                          (coe
                                                             MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                             (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1432
                                                                      (coe v0))))
                                                             (MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bvkcold_2356
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2374
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2394
                                                                      (coe v4)))))
                                                          (coe v6)))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.BlockBody.C_BBODY'45'Block'45'Body_2444
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                          erased
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                             erased
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                (coe v10) (coe v13))))))
                                          _ -> MAlonzo.RTE.mazUnreachableError)
                              _ -> MAlonzo.RTE.mazUnreachableError
                       else coe
                              seq (coe v9)
                              (coe
                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                 (coe
                                    MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                    ("\172 (" :: Data.Text.Text)
                                    (coe
                                       MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                       (coe
                                          MAlonzo.Code.Class.Show.Core.d_show_16
                                          (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_252
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_932
                                             (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_230
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_totExUnits_2490
                                                (coe v0))
                                             (MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2396
                                                (coe v4))))
                                       (coe
                                          MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                          (", " :: Data.Text.Text)
                                          (coe
                                             MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                             (coe
                                                MAlonzo.Code.Class.Show.Core.d_show_16
                                                (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_252
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
                                                         (coe v0))))
                                                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_368
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1218
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v2))))))
                                             (")" :: Data.Text.Text))))))
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.Properties.Computational.BBODY-completeness
d_BBODY'45'completeness_2474 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T__'8866'_'8640''10631'_'44'BBODY'10632'__2418 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_BBODY'45'completeness_2474 = erased
-- Ledger.Conway.Specification.BlockBody.Properties.Computational.Computational-BBODY
d_Computational'45'BBODY_2532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'BBODY_2532 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_BBODY'45'computeProof_2430 (coe v0) (coe v1))
