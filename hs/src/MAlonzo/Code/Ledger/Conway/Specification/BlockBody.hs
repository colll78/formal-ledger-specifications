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

module MAlonzo.Code.Ledger.Conway.Specification.BlockBody where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

-- _._≥ᵉ_
d__'8805''7497'__22 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__22 = erased
-- _.Acnt
d_Acnt_36 a0 = ()
-- _.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_260 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_260
du_HasCast'45'HashProtected'45'MaybeScriptHash_260 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_260
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1116
-- _.HasTreasury-Acnt
d_HasTreasury'45'Acnt_352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_90
d_HasTreasury'45'Acnt_352 ~v0 = du_HasTreasury'45'Acnt_352
du_HasTreasury'45'Acnt_352 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_90
du_HasTreasury'45'Acnt_352
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasTreasury'45'Acnt_202
-- _.THash
d_THash_424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_424 = erased
-- _.Sig
d_Sig_596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Sig_596 = erased
-- _.Slot
d_Slot_598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_598 = erased
-- _.Tx
d_Tx_630 a0 = ()
-- _.VKey
d_VKey_664 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_VKey_664 = erased
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
-- Ledger.Conway.Specification.BlockBody._.EnactState
d_EnactState_2076 a0 a1 = ()
-- Ledger.Conway.Specification.BlockBody._.HasPParams-EnactState
d_HasPParams'45'EnactState_2088 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_438
d_HasPParams'45'EnactState_2088 ~v0 ~v1
  = du_HasPParams'45'EnactState_2088
du_HasPParams'45'EnactState_2088 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_438
du_HasPParams'45'EnactState_2088
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1244
-- Ledger.Conway.Specification.BlockBody._.EnactState.cc
d_cc_2126 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1200 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_2126 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1212 (coe v0)
-- Ledger.Conway.Specification.BlockBody._.EnactState.constitution
d_constitution_2128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1200 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1214
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._.EnactState.pparams
d_pparams_2130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1200 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1218
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._.EnactState.pv
d_pv_2132 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1200 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1216 (coe v0)
-- Ledger.Conway.Specification.BlockBody._.EnactState.withdrawals
d_withdrawals_2134 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1200 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_2134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1220
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2958 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2984 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3674] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2984 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2142 = erased
-- Ledger.Conway.Specification.BlockBody._.HasCast-LEnv
d_HasCast'45'LEnv_2148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2148 ~v0 ~v1 = du_HasCast'45'LEnv_2148
du_HasCast'45'LEnv_2148 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2148
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_3048
-- Ledger.Conway.Specification.BlockBody._.LState
d_LState_2192 a0 a1 = ()
-- Ledger.Conway.Specification.BlockBody._.LState.certState
d_certState_2230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2984 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1480
d_certState_2230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2996
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._.LState.govSt
d_govSt_2232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2984 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_2994
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._.LState.utxoSt
d_utxoSt_2234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2984 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2524
d_utxoSt_2234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2992
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._.BlocksMade
d_BlocksMade_2240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  ()
d_BlocksMade_2240 = erased
-- Ledger.Conway.Specification.BlockBody._.totExUnits
d_totExUnits_2342 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3674 ->
  AgdaAny
d_totExUnits_2342 v0 ~v1 = du_totExUnits_2342 v0
du_totExUnits_2342 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3674 ->
  AgdaAny
du_totExUnits_2342 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_totExUnits_2490
      (coe v0)
-- Ledger.Conway.Specification.BlockBody.BHBody
d_BHBody_2344 a0 a1 = ()
data T_BHBody_2344
  = C_constructor_2366 AgdaAny Integer AgdaAny AgdaAny Integer
-- Ledger.Conway.Specification.BlockBody.BHBody.bvkcold
d_bvkcold_2356 :: T_BHBody_2344 -> AgdaAny
d_bvkcold_2356 v0
  = case coe v0 of
      C_constructor_2366 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHBody.bsize
d_bsize_2358 :: T_BHBody_2344 -> Integer
d_bsize_2358 v0
  = case coe v0 of
      C_constructor_2366 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHBody.slot
d_slot_2360 :: T_BHBody_2344 -> AgdaAny
d_slot_2360 v0
  = case coe v0 of
      C_constructor_2366 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHBody.bhash
d_bhash_2362 :: T_BHBody_2344 -> AgdaAny
d_bhash_2362 v0
  = case coe v0 of
      C_constructor_2366 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHBody.hBbsize
d_hBbsize_2364 :: T_BHBody_2344 -> Integer
d_hBbsize_2364 v0
  = case coe v0 of
      C_constructor_2366 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHeader
d_BHeader_2368 a0 a1 = ()
data T_BHeader_2368 = C_constructor_2378 T_BHBody_2344 AgdaAny
-- Ledger.Conway.Specification.BlockBody.BHeader.bhbody
d_bhbody_2374 :: T_BHeader_2368 -> T_BHBody_2344
d_bhbody_2374 v0
  = case coe v0 of
      C_constructor_2378 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHeader.bhsig
d_bhsig_2376 :: T_BHeader_2368 -> AgdaAny
d_bhsig_2376 v0
  = case coe v0 of
      C_constructor_2378 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.Block
d_Block_2380 a0 a1 = ()
data T_Block_2380
  = C_constructor_2406 T_BHeader_2368
                       [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3674]
                       Integer AgdaAny
-- Ledger.Conway.Specification.BlockBody.Block.bheader
d_bheader_2394 :: T_Block_2380 -> T_BHeader_2368
d_bheader_2394 v0
  = case coe v0 of
      C_constructor_2406 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.Block.ts
d_ts_2396 ::
  T_Block_2380 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3674]
d_ts_2396 v0
  = case coe v0 of
      C_constructor_2406 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.Block.bBodySize
d_bBodySize_2398 :: T_Block_2380 -> Integer
d_bBodySize_2398 v0
  = case coe v0 of
      C_constructor_2406 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.Block.bBodyHash
d_bBodyHash_2400 :: T_Block_2380 -> AgdaAny
d_bBodyHash_2400 v0
  = case coe v0 of
      C_constructor_2406 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.Block.≡-bBodySize
d_'8801''45'bBodySize_2402 ::
  T_Block_2380 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_2402 = erased
-- Ledger.Conway.Specification.BlockBody.Block.≡-bBodyHash
d_'8801''45'bBodyHash_2404 ::
  T_Block_2380 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_2404 = erased
-- Ledger.Conway.Specification.BlockBody.BBodyEnv
d_BBodyEnv_2408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  ()
d_BBodyEnv_2408 = erased
-- Ledger.Conway.Specification.BlockBody.BBodyState
d_BBodyState_2410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  ()
d_BBodyState_2410 = erased
-- Ledger.Conway.Specification.BlockBody.incrBlocks
d_incrBlocks_2412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incrBlocks_2412 v0 ~v1 v2 v3 = du_incrBlocks_2412 v0 v2 v3
du_incrBlocks_2412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incrBlocks_2412 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1432
               (coe v0))))
      v2
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_singleton'7504'_836
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe v1) (coe (1 :: Integer)))
-- Ledger.Conway.Specification.BlockBody._⊢_⇀⦇_,BBODY⦈_
d__'8866'_'8640''10631'_'44'BBODY'10632'__2418 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'BBODY'10632'__2418
  = C_BBODY'45'Block'45'Body_2444 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
