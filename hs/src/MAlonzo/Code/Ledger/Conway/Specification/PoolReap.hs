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

module MAlonzo.Code.Ledger.Conway.Specification.PoolReap where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- _.Acnt
d_Acnt_36 a0 = ()
-- _.Credential
d_Credential_70 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_112 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_112 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_316
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1432
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1432
            (coe v0)))
-- _.Epoch
d_Epoch_186 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Epoch_186 = erased
-- _.Acnt.reserves
d_reserves_900 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_190 ->
  Integer
d_reserves_900 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_198
      (coe v0)
-- _.Acnt.treasury
d_treasury_902 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_190 ->
  Integer
d_treasury_902 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_196
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.UTxOState
d_UTxOState_2080 a0 a1 = ()
-- Ledger.Conway.Specification.PoolReap._.UTxOState.deposits
d_deposits_2186 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2524 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2538
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.UTxOState.donations
d_donations_2188 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2524 ->
  Integer
d_donations_2188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2540
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.UTxOState.fees
d_fees_2190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2524 ->
  Integer
d_fees_2190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2536 (coe v0)
-- Ledger.Conway.Specification.PoolReap._.UTxOState.utxo
d_utxo_2192 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2524 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2534 (coe v0)
-- Ledger.Conway.Specification.PoolReap._.DState
d_DState_2272 a0 a1 = ()
-- Ledger.Conway.Specification.PoolReap._.DStateOf
d_DStateOf_2276 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1516 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1436
d_DStateOf_2276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1524
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2280 v0 ~v1
  = du_DecEq'45'DepositPurpose_2280 v0
du_DecEq'45'DepositPurpose_2280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_2280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1236
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2702
         (coe v0))
-- Ledger.Conway.Specification.PoolReap._.DepositPurpose
d_DepositPurpose_2288 a0 a1 = ()
-- Ledger.Conway.Specification.PoolReap._.HasCast-DState
d_HasCast'45'DState_2320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_2320 ~v0 ~v1 = du_HasCast'45'DState_2320
du_HasCast'45'DState_2320 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DState_2320
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1638
-- Ledger.Conway.Specification.PoolReap._.HasCast-PState
d_HasCast'45'PState_2326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_2326 ~v0 ~v1 = du_HasCast'45'PState_2326
du_HasCast'45'PState_2326 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PState_2326
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'PState_1640
-- Ledger.Conway.Specification.PoolReap._.HasDState
d_HasDState_2338 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.PoolReap._.HasRewards
d_HasRewards_2376 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.PoolReap._.HasRewards-DState
d_HasRewards'45'DState_2382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1304
d_HasRewards'45'DState_2382 ~v0 ~v1 = du_HasRewards'45'DState_2382
du_HasRewards'45'DState_2382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1304
du_HasRewards'45'DState_2382
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'DState_1600
-- Ledger.Conway.Specification.PoolReap._.PState
d_PState_2406 a0 a1 = ()
-- Ledger.Conway.Specification.PoolReap._.RewardsOf
d_RewardsOf_2426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1304 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1312
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.DState.rewards
d_rewards_2542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1448
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.DState.stakeDelegs
d_stakeDelegs_2544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1446
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.DState.voteDelegs
d_voteDelegs_2546 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1444
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.HasDState.DStateOf
d_DStateOf_2582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1516 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1436
d_DStateOf_2582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1524
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.HasRewards.RewardsOf
d_RewardsOf_2606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1304 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1312
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.PState.fPools
d_fPools_2618 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1452 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_2618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1462
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.PState.pools
d_pools_2620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1452 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1460
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.PState.retiring
d_retiring_2622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1452 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1464
      (coe v0)
-- Ledger.Conway.Specification.PoolReap.PoolReapState
d_PoolReapState_2636 a0 a1 = ()
data T_PoolReapState_2636
  = C_'10214'_'44'_'44'_'44'_'10215''7510'_2654 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2524
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_190
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1436
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1452
-- Ledger.Conway.Specification.PoolReap.PoolReapState.utxoSt
d_utxoSt_2646 ::
  T_PoolReapState_2636 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2524
d_utxoSt_2646 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7510'_2654 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.PoolReapState.acnt
d_acnt_2648 ::
  T_PoolReapState_2636 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_190
d_acnt_2648 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7510'_2654 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.PoolReapState.dState
d_dState_2650 ::
  T_PoolReapState_2636 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1436
d_dState_2650 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7510'_2654 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.PoolReapState.pState
d_pState_2652 ::
  T_PoolReapState_2636 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1452
d_pState_2652 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7510'_2654 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.HasCast-PoolReapState
d_HasCast'45'PoolReapState_2656 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PoolReapState_2656 ~v0 ~v1
  = du_HasCast'45'PoolReapState_2656
du_HasCast'45'PoolReapState_2656 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PoolReapState_2656
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
                                 (2636 :: Integer) (5811529314862483242 :: Integer)
                                 "Ledger.Conway.Specification.PoolReap.PoolReapState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (2080 :: Integer) (5811529314862483242 :: Integer)
                                 "Ledger.Conway.Specification.PoolReap._.UTxOState"
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
                                    (2636 :: Integer) (5811529314862483242 :: Integer)
                                    "Ledger.Conway.Specification.PoolReap.PoolReapState"
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
                                    (36 :: Integer) (5811529314862483242 :: Integer) "_.Acnt"
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
                                       (2636 :: Integer) (5811529314862483242 :: Integer)
                                       "Ledger.Conway.Specification.PoolReap.PoolReapState"
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
                                       (2272 :: Integer) (5811529314862483242 :: Integer)
                                       "Ledger.Conway.Specification.PoolReap._.DState"
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
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (2636 :: Integer) (5811529314862483242 :: Integer)
                                          "Ledger.Conway.Specification.PoolReap.PoolReapState"
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
                                          (2406 :: Integer) (5811529314862483242 :: Integer)
                                          "Ledger.Conway.Specification.PoolReap._.PState"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
         (coe C_'10214'_'44'_'44'_'44'_'10215''7510'_2654))
-- Ledger.Conway.Specification.PoolReap.HasDState-PoolReapState
d_HasDState'45'PoolReapState_2658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1516
d_HasDState'45'PoolReapState_2658 ~v0 ~v1
  = du_HasDState'45'PoolReapState_2658
du_HasDState'45'PoolReapState_2658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1516
du_HasDState'45'PoolReapState_2658
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1526
      (coe (\ v0 -> d_dState_2650 (coe v0)))
-- Ledger.Conway.Specification.PoolReap.HasRewards-PoolReapState
d_HasRewards'45'PoolReapState_2660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1304
d_HasRewards'45'PoolReapState_2660 ~v0 ~v1
  = du_HasRewards'45'PoolReapState_2660
du_HasRewards'45'PoolReapState_2660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1304
du_HasRewards'45'PoolReapState_2660
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1314
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1312
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'DState_1600)
              (d_dState_2650 (coe v0))))
-- Ledger.Conway.Specification.PoolReap._⊢_⇀⦇_,POOLREAP⦈_
d__'8866'_'8640''10631'_'44'POOLREAP'10632'__2668 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'POOLREAP'10632'__2668
  = C_POOLREAP_2702 T_PoolReapState_2636
-- Ledger.Conway.Specification.PoolReap._.acnt
d_acnt_2672 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_12245 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_190
d_acnt_2672 ~v0 ~v1 v2 = du_acnt_2672 v2
du_acnt_2672 ::
  T_GeneralizeTel_12245 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_190
du_acnt_2672 v0
  = coe
      d_acnt_2648
      (coe d_'46'generalizedField'45'poolReapState_12241 (coe v0))
-- Ledger.Conway.Specification.PoolReap._.dState
d_dState_2674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_12245 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1436
d_dState_2674 ~v0 ~v1 v2 = du_dState_2674 v2
du_dState_2674 ::
  T_GeneralizeTel_12245 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1436
du_dState_2674 v0
  = coe
      d_dState_2650
      (coe d_'46'generalizedField'45'poolReapState_12241 (coe v0))
-- Ledger.Conway.Specification.PoolReap._.pState
d_pState_2676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_12245 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1452
d_pState_2676 ~v0 ~v1 v2 = du_pState_2676 v2
du_pState_2676 ::
  T_GeneralizeTel_12245 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1452
du_pState_2676 v0
  = coe
      d_pState_2652
      (coe d_'46'generalizedField'45'poolReapState_12241 (coe v0))
-- Ledger.Conway.Specification.PoolReap._.utxoSt
d_utxoSt_2678 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  T_GeneralizeTel_12245 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2524
d_utxoSt_2678 ~v0 ~v1 v2 = du_utxoSt_2678 v2
du_utxoSt_2678 ::
  T_GeneralizeTel_12245 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2524
du_utxoSt_2678 v0
  = coe
      d_utxoSt_2646
      (coe d_'46'generalizedField'45'poolReapState_12241 (coe v0))
-- Ledger.Conway.Specification.PoolReap..generalizedField-poolReapState
d_'46'generalizedField'45'poolReapState_12241 ::
  T_GeneralizeTel_12245 -> T_PoolReapState_2636
d_'46'generalizedField'45'poolReapState_12241 v0
  = case coe v0 of
      C_mkGeneralizeTel_12247 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap..generalizedField-e
d_'46'generalizedField'45'e_12243 ::
  T_GeneralizeTel_12245 -> AgdaAny
d_'46'generalizedField'45'e_12243 v0
  = case coe v0 of
      C_mkGeneralizeTel_12247 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.GeneralizeTel
d_GeneralizeTel_12245 a0 a1 = ()
data T_GeneralizeTel_12245
  = C_mkGeneralizeTel_12247 T_PoolReapState_2636 AgdaAny
