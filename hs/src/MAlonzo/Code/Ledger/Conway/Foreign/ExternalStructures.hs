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

module MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.FromNat
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Morphism.Structures
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.Convertible.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.HasAdd.Core
import qualified MAlonzo.Code.Class.HasHsType.Core
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.Monoid.Core
import qualified MAlonzo.Code.Class.Semigroup.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.List.Sort
import qualified MAlonzo.Code.Data.List.Sort.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Instances
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Relation.Binary.Lex.NonStrict
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Sum.Relation.Binary.LeftOrder
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.TypeClasses.Hashable
import qualified MAlonzo.Code.Ledger.Conway.Foreign.Script.Base
import qualified MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock
import qualified MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Coin
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base
import qualified MAlonzo.Code.Ledger.Core.Foreign.Crypto.Structure
import qualified MAlonzo.Code.Ledger.Core.Foreign.Epoch
import qualified MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.Ledger.Prelude.HasCoin
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.Qstdlib.Data.List.Relation.Unary.MOf

-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.Dec-isSigned
d_Dec'45'isSigned_68 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_68 ~v0 v1 = du_Dec'45'isSigned_68 v1
du_Dec'45'isSigned_68 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isSigned_68 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.DecEq-Ser
d_DecEq'45'Ser_72 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_72 ~v0 v1 = du_DecEq'45'Ser_72 v1
du_DecEq'45'Ser_72 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Ser_72 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.DecEq-Sig
d_DecEq'45'Sig_74 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_74 ~v0 v1 = du_DecEq'45'Sig_74 v1
du_DecEq'45'Sig_74 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Sig_74 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.DecEq-THash
d_DecEq'45'THash_76 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_76 ~v0 v1 = du_DecEq'45'THash_76 v1
du_DecEq'45'THash_76 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'THash_76 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.THash
d_THash_80 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_THash_80 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.KeyPair
d_KeyPair_82 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_KeyPair_82 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.SKey
d_SKey_84 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_SKey_84 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.Ser
d_Ser_88 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_Ser_88 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.Show-THash
d_Show'45'THash_92 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_92 ~v0 v1 = du_Show'45'THash_92 v1
du_Show'45'THash_92 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'THash_92 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.Sig
d_Sig_94 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_Sig_94 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.T-Hashable
d_T'45'Hashable_96 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_96 ~v0 v1 = du_T'45'Hashable_96 v1
du_T'45'Hashable_96 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_T'45'Hashable_96 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.VKey
d_VKey_98 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_VKey_98 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.isKeyPair
d_isKeyPair_102 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  AgdaAny -> AgdaAny -> ()
d_isKeyPair_102 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.isSigned
d_isSigned_104 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_104 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.isSigned-correct
d_isSigned'45'correct_106 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_106 ~v0 v1 = du_isSigned'45'correct_106 v1
du_isSigned'45'correct_106 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_isSigned'45'correct_106 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_isSigned'45'correct_132
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.sign
d_sign_112 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_sign_112 ~v0 v1 = du_sign_112 v1
du_sign_112 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_sign_112 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.Dec-evalTimelock
d_Dec'45'evalTimelock_174 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.T_Timelock_110 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.d_Dec'45'evalTimelock_168
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d___12
         (coe v0))
      (coe MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.du___14)
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-HSTimelock
d_DecEq'45'HSTimelock_176 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSTimelock_176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_DecEq'45'HSTimelock_320
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-Timelock
d_DecEq'45'Timelock_178 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.d_DecEq'45'Timelock_124
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d___12
         (coe v0))
      (coe MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.du___14)
-- Ledger.Conway.Foreign.ExternalStructures._.HSP1ScriptStructure
d_HSP1ScriptStructure_180 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_110
d_HSP1ScriptStructure_180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_HSP1ScriptStructure_322
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HSP2ScriptStructure
d_HSP2ScriptStructure_182 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134
d_HSP2ScriptStructure_182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_HSP2ScriptStructure_344
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HSPlutusScript
d_HSPlutusScript_184 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HSScriptStructure
d_HSScriptStructure_188 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286
d_HSScriptStructure_188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_HSScriptStructure_374
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HSTimelock
d_HSTimelock_190 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.Hashable-HSTimelock
d_Hashable'45'HSTimelock_194 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'HSTimelock_194 ~v0 = du_Hashable'45'HSTimelock_194
du_Hashable'45'HSTimelock_194 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_Hashable'45'HSTimelock_194
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.du_Hashable'45'HSTimelock_318
-- Ledger.Conway.Foreign.ExternalStructures._.Timelock
d_Timelock_210 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.evalTimelock
d_evalTimelock_224 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HSPlutusScript.psScriptHash
d_psScriptHash_228 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328 ->
  Integer
d_psScriptHash_228 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_psScriptHash_336
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HSPlutusScript.psScriptLanguage
d_psScriptLanguage_230 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_psScriptLanguage_230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_psScriptLanguage_340
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HSPlutusScript.psScriptSize
d_psScriptSize_232 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328 ->
  Integer
d_psScriptSize_232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_psScriptSize_338
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HSTimelock.timelock
d_timelock_236 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.T_Timelock_110
d_timelock_236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_timelock_310
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HSTimelock.tlScriptHash
d_tlScriptHash_238 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302 ->
  Integer
d_tlScriptHash_238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_tlScriptHash_312
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HSTimelock.tlScriptSize
d_tlScriptSize_240 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302 ->
  Integer
d_tlScriptSize_240 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_tlScriptSize_314
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.Base.Convert-HSLanguage
d_Convert'45'HSLanguage_272 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Convert'45'HSLanguage_272 ~v0 = du_Convert'45'HSLanguage_272
du_Convert'45'HSLanguage_272 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
du_Convert'45'HSLanguage_272
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.d_Convert'45'HSLanguage_20
-- Ledger.Conway.Foreign.ExternalStructures._.Base.DecEq-HSLanguage
d_DecEq'45'HSLanguage_274 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSLanguage_274 ~v0 = du_DecEq'45'HSLanguage_274
du_DecEq'45'HSLanguage_274 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'HSLanguage_274
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.d_DecEq'45'HSLanguage_22
-- Ledger.Conway.Foreign.ExternalStructures._.Base.HSLanguage
d_HSLanguage_276 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.Base.HsType-HSLanguage
d_HsType'45'HSLanguage_278 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsType'45'HSLanguage_278 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Base.Show-HSLanguage
d_Show'45'HSLanguage_288 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'HSLanguage_288 ~v0 = du_Show'45'HSLanguage_288
du_Show'45'HSLanguage_288 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'HSLanguage_288
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.d_Show'45'HSLanguage_24
-- Ledger.Conway.Foreign.ExternalStructures._
d___296 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d___296 v0
  = coe
      MAlonzo.Code.Ledger.Core.Foreign.Crypto.Structure.d_HSCryptoStructure_36
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._
d___302 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286
d___302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_HSScriptStructure_374
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.Dec-isSigned
d_Dec'45'isSigned_306 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_306 v0
  = let v1 = d___296 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.DecEq-ScriptHash
d_DecEq'45'ScriptHash_308 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_308 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
      (coe d___296 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.DecEq-Ser
d_DecEq'45'Ser_310 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_310 v0
  = let v1 = d___296 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.DecEq-Sig
d_DecEq'45'Sig_312 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_312 v0
  = let v1 = d___296 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.DecEq-THash
d_DecEq'45'THash_314 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_314 v0
  = let v1 = d___296 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.DecEq-VRF
d_DecEq'45'VRF_316 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VRF_316 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_240
      (coe d___296 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.THash
d_THash_318 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_318 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.KeyPair
d_KeyPair_320 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_KeyPair_320 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.SKey
d_SKey_322 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_SKey_322 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.ScriptHash
d_ScriptHash_324 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptHash_324 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.Ser
d_Ser_326 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Ser_326 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.Show-ScriptHash
d_Show'45'ScriptHash_328 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_328 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_226
      (coe d___296 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.Show-THash
d_Show'45'THash_330 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_330 v0
  = let v1 = d___296 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.Sig
d_Sig_332 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Sig_332 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.T-Hashable
d_T'45'Hashable_334 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_334 v0
  = let v1 = d___296 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.VKey
d_VKey_336 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKey_336 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.VRF
d_VRF_338 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VRF_338 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.isKeyPair
d_isKeyPair_340 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 -> ()
d_isKeyPair_340 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.isSigned
d_isSigned_342 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer -> Integer -> ()
d_isSigned_342 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.isSigned-correct
d_isSigned'45'correct_344 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_344 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.khs
d_khs_346 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_346 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
      (coe d___296 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.pkk
d_pkk_348 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_348 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
      (coe d___296 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.sign
d_sign_350 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d_sign_350 v0
  = let v1 = d___296 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.GovParams
d_GovParams_366 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.PParams
d_PParams_390 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.paramsWellFormed
d_paramsWellFormed_412 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  ()
d_paramsWellFormed_412 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_420 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1474 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1506
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovParams.ppUpd
d_ppUpd_426 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1474 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1440
d_ppUpd_426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1492
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.Emax
d_Emax_456 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_Emax_456 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_404
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.a
d_a_458 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_a_458 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_376 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.a0
d_a0_460 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_460 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_408 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.b
d_b_462 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_b_462 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_378 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.ccMaxTermLength
d_ccMaxTermLength_464 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_ccMaxTermLength_464 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_420
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.ccMinSize
d_ccMinSize_466 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_ccMinSize_466 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_418
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_468 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_coinsPerUTxOByte_468 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_388
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.collateralPercentage
d_collateralPercentage_470 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_collateralPercentage_470 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_410
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.costmdlsAssoc
d_costmdlsAssoc_474 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_442
d_costmdlsAssoc_474 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdlsAssoc_412
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.drepActivity
d_drepActivity_476 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_drepActivity_476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_428
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.drepDeposit
d_drepDeposit_478 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_drepDeposit_478 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_426
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.drepThresholds
d_drepThresholds_480 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_220
d_drepThresholds_480 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_416
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.govActionDeposit
d_govActionDeposit_482 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_govActionDeposit_482 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_424
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.govActionLifetime
d_govActionLifetime_484 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_govActionLifetime_484 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_422
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.keyDeposit
d_keyDeposit_486 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_keyDeposit_486 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_380
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxBlockExUnits
d_maxBlockExUnits_488 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_488 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_368
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxBlockSize
d_maxBlockSize_490 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_maxBlockSize_490 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_360
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxCollateralInputs
d_maxCollateralInputs_492 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_maxCollateralInputs_492 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_372
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxHeaderSize
d_maxHeaderSize_494 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_maxHeaderSize_494 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_364
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_496 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_maxRefScriptSizePerBlock_496 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_396
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_498 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_maxRefScriptSizePerTx_498 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_394
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxTxExUnits
d_maxTxExUnits_500 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_500 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_366
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxTxSize
d_maxTxSize_502 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_maxTxSize_502 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_362
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxValSize
d_maxValSize_504 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_maxValSize_504 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_370
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_506 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_506 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_392
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.minUTxOValue
d_minUTxOValue_508 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_minUTxOValue_508 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_402
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.monetaryExpansion
d_monetaryExpansion_510 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_510 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_384
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.nopt
d_nopt_512 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_nopt_512 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_406
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.poolDeposit
d_poolDeposit_514 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_poolDeposit_514 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_382
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.poolThresholds
d_poolThresholds_516 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_264
d_poolThresholds_516 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_414
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.prices
d_prices_518 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_518 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_390
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.pv
d_pv_520 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_520 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_374 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_522 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_522 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_400
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.refScriptCostStride
d_refScriptCostStride_524 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_398
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.treasuryCut
d_treasuryCut_526 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_386
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsDiff.UpdateT
d_UpdateT_530 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1440 ->
  ()
d_UpdateT_530 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsDiff.applyUpdate
d_applyUpdate_532 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1440 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
d_applyUpdate_532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1456
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsDiff.ppWF?
d_ppWF'63'_534 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1440 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1464
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsDiff.updateGroups
d_updateGroups_538 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1440 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_208]
d_updateGroups_538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1458
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_546 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamsUpdate_1438
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'46'extendedlambda0_382
         (coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8))
      (coe d___302 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_548 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_552 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
d_applyPParamsUpdate_552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_applyPParamsUpdate_1280
      (coe d___302 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_574 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_Emax_574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_718
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.a
d_a_576 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_a_576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_688 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.a0
d_a0_578 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_716 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.b
d_b_580 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_b_580 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_690 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_582 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_ccMaxTermLength_582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_740
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_584 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_ccMinSize_584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_738
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_586 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_coinsPerUTxOByte_586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_700
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_588 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_collateralPercentage_588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_722
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_590 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_442
d_costmdls_590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_724
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_592 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_drepActivity_592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_736
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_594 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_drepDeposit_594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_734
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_596 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_220
d_drepThresholds_596 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_726
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_598 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_govActionDeposit_598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_732
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_600 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_govActionLifetime_600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_730
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_602 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_keyDeposit_602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_692
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_604 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_684
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_606 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_maxBlockSize_606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_672
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_608 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_maxCollateralInputs_608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_680
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_610 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_maxHeaderSize_610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_676
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_612 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_708
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_614 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_maxRefScriptSizePerTx_614 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_706
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_616 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_682
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_618 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_maxTxSize_618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_674
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_620 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_maxValSize_620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_678
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_622 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_704
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_624 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_minUTxOValue_624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_714
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_626 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_696
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_628 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_nopt_628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_720
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_630 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_poolDeposit_630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_694
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_632 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_264
d_poolThresholds_632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_728
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.prices
d_prices_634 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_702
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.pv
d_pv_636 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_686 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_638 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_712
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_640 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_640 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_710
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_642 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_698
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures.HsGovParams
d_HsGovParams_644 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1474
d_HsGovParams_644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_1508
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_1472
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_applyPParamsUpdate_1280
            (coe d___302 (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiedUpdateGroups_1210)
         (\ v1 -> coe du_ppWF_654 (coe v1)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamsUpdate_1438
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'46'extendedlambda0_382
            (coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8))
         (coe d___302 (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.ppWF
d_ppWF_654 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF_654 ~v0 v1 = du_ppWF_654 v1
du_ppWF_654 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_ppWF_654 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
              (coe
                 MAlonzo.Code.Class.Decidable.Core.d_dec_16
                 (coe
                    MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                    (coe
                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                       (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe (0 :: Integer)))
                    (coe
                       MAlonzo.Code.Axiom.Set.du_fromList_456
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_672
                             (coe v0))
                          (coe
                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_674
                                (coe v0))
                             (coe
                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_676
                                   (coe v0))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_678
                                      (coe v0))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_700
                                         (coe v0))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_694
                                            (coe v0))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_722
                                               (coe v0))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_740
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_730
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_732
                                                        (coe v0))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_734
                                                           (coe v0))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
              (coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)) in
    coe
      (case coe v1 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v2 v3
           -> if coe v2
                then coe
                       seq (coe v3)
                       (coe
                          MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                          (coe
                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                             (coe v2)
                             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)))
                else coe
                       seq (coe v3)
                       (coe
                          MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                          (coe
                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                             (coe v2)
                             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Foreign.ExternalStructures._._.trustMe
d_trustMe_670
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Conway.Foreign.ExternalStructures._._.trustMe"
-- Ledger.Conway.Foreign.ExternalStructures._._.trustMe
d_trustMe_680
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Conway.Foreign.ExternalStructures._._.trustMe"
-- Ledger.Conway.Foreign.ExternalStructures.HSTransactionStructure
d_HSTransactionStructure_690 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24
d_HSTransactionStructure_690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3830
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_isHashableSet'45'ℕ_34
      MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8
      (MAlonzo.Code.Ledger.Core.Foreign.Crypto.Structure.d_HSCryptoStructure_36
         (coe v0))
      (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'46'extendedlambda0_382
         (coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8))
      (MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_HSScriptStructure_374
         (coe v0))
      (d_HsGovParams_644 (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Coin.du_Coin'45'TokenAlgebra_132)
      (\ v1 -> v1)
      (coe
         MAlonzo.Code.Interface.TypeClasses.Hashable.C_constructor_20
         (coe (\ v1 -> 0 :: Integer)))
-- Ledger.Conway.Foreign.ExternalStructures._._+ᵉ_
d__'43''7497'__696 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d__'43''7497'__696 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__104
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1824
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._._+ᵉ'_
d__'43''7497'''__698 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d__'43''7497'''__698 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__106
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1824
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._._∙_
d__'8729'__700 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d__'8729'__700 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2584
                  (coe v1)))))
-- Ledger.Conway.Foreign.ExternalStructures._._≈_
d__'8776'__702 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> ()
d__'8776'__702 = erased
-- Ledger.Conway.Foreign.ExternalStructures._._≤ᵗ_
d__'8804''7511'__704 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> ()
d__'8804''7511'__704 = erased
-- Ledger.Conway.Foreign.ExternalStructures._._≥ᵉ_
d__'8805''7497'__706 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8805''7497'__706 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_708 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_708 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.==-GovAction
d_'61''61''45'GovAction_710 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_906 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_906 ->
  Bool
d_'61''61''45'GovAction_710 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovAction_976
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2702
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.==-GovActionData
d_'61''61''45'GovActionData_712 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_872 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_712 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovActionData_958
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2702
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.==-GovProposal
d_'61''61''45'GovProposal_714 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1120 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1120 ->
  Bool
d_'61''61''45'GovProposal_714 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovProposal_1360
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2702
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.==-Set
d_'61''61''45'Set_716 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_716 ~v0 = du_'61''61''45'Set_716
du_'61''61''45'Set_716 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
du_'61''61''45'Set_716 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_'61''61''45'Set_946
      v1 v2 v3
-- Ledger.Conway.Foreign.ExternalStructures._.THash
d_THash_718 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_718 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Acnt
d_Acnt_720 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.ActiveSlotCoeff
d_ActiveSlotCoeff_724 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_724 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_340
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1390
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.Addr
d_Addr_726 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Addr_726 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Anchor
d_Anchor_730 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.AttrSizeOf
d_AttrSizeOf_734 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_218 ->
  AgdaAny -> Integer
d_AttrSizeOf_734 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_226
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.AuxiliaryData
d_AuxiliaryData_736 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_AuxiliaryData_736 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.BaseAddr
d_BaseAddr_738 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.BootstrapAddr
d_BootstrapAddr_742 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.CCMaxTermLengthOf
d_CCMaxTermLengthOf_748 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_458 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_466
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.CostModel
d_CostModel_752 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_CostModel_752 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Credential
d_Credential_754 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.CredentialOf
d_CredentialOf_756 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_756 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DCertsOf
d_DCertsOf_758 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3574 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1372]
d_DCertsOf_758 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DCertsOf_3582
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DReps
d_DReps_762 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_DReps_762 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.DRepsOf
d_DRepsOf_764 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1478 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_764 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1486
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.T
d_T_766 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_T_766 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.THash
d_THash_768 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_768 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Dataʰ
d_Data'688'_770 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_770 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.Datum
d_Datum_772 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Datum_772 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Dec-isScript
d_Dec'45'isScript_774 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_774 ~v0 = du_Dec'45'isScript_774
du_Dec'45'isScript_774 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_774
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_332
-- Ledger.Conway.Foreign.ExternalStructures._.Dec-isSigned
d_Dec'45'isSigned_776 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_776 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1432
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v2))))
-- Ledger.Conway.Foreign.ExternalStructures._.Dec-isVKey
d_Dec'45'isVKey_778 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_778 ~v0 = du_Dec'45'isVKey_778
du_Dec'45'isVKey_778 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_778
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_318
-- Ledger.Conway.Foreign.ExternalStructures._.Dec-validP1Script
d_Dec'45'validP1Script_780 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_780 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_126
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_312
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_782 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_782 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_280
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.Dec-≤ᵗ
d_Dec'45''8804''7511'_784 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_784 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2584
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEQ-Prices
d_DecEQ'45'Prices_786 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_786 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_250
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-Anchor
d_DecEq'45'Anchor_788 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_788 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'Anchor_1252
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2702
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_790 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_790 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_370
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1390
               (coe v1)))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1432
                  (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1432
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_792 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_792 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_372
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1390
               (coe v1)))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1432
                  (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1432
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-CostModel
d_DecEq'45'CostModel_794 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_794 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_236
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-Credential
d_DecEq'45'Credential_796 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_796 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_316
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1432
                  (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1432
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_798 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_798 ~v0 = du_DecEq'45'DrepThresholds_798
du_DecEq'45'DrepThresholds_798 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_798
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'DrepThresholds_584
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-Epoch
d_DecEq'45'Epoch_800 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_800 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_82
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1824
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-ExUnits
d_DecEq'45'ExUnits_802 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_802 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_248
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-GovActionType
d_DecEq'45'GovActionType_804 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_804 ~v0 = du_DecEq'45'GovActionType_804
du_DecEq'45'GovActionType_804 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_804
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovActionType_940
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-GovRole
d_DecEq'45'GovRole_806 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_806 ~v0 = du_DecEq'45'GovRole_806
du_DecEq'45'GovRole_806 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_806
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_1246
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-GovVoter
d_DecEq'45'GovVoter_808 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_808 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'GovVoter_1254
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2702
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-Ix
d_DecEq'45'Ix_810 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_810 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1372
      (coe d_HSTransactionStructure_690 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-LangDepView
d_DecEq'45'LangDepView_812 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_812 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_238
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-Language
d_DecEq'45'Language_814 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_814 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_234
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_816 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_816 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_DecEq'45'LanguageCostModels_450
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-NeedsHash
d_DecEq'45'NeedsHash_818 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_872 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_818 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1358
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2702
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-Netw
d_DecEq'45'Netw_820 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_820 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1390
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-P1Script
d_DecEq'45'P1Script_822 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_822 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_130
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_312
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_824 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_824 ~v0 = du_DecEq'45'PParamGroup_824
du_DecEq'45'PParamGroup_824 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_824
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamGroup_590
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-PParams
d_DecEq'45'PParams_826 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_826 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParams_588
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1824
            (coe v1))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_828 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_828 ~v0 = du_DecEq'45'PoolThresholds_828
du_DecEq'45'PoolThresholds_828 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_828
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PoolThresholds_586
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-RewardAddress
d_DecEq'45'RewardAddress_830 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_830 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_374
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1390
               (coe v1)))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1432
                  (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1432
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_832 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_832 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1432
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-Ser
d_DecEq'45'Ser_834 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_834 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1432
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v2))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-Sig
d_DecEq'45'Sig_836 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_836 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1432
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v2))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-Slot
d_DecEq'45'Slot_838 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_838 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_90
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1824
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-T
d_DecEq'45'T_840 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_840 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1376
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-T
d_DecEq'45'T_842 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_842 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
               (coe v2))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-THash
d_DecEq'45'THash_844 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_844 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1376
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-THash
d_DecEq'45'THash_846 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_846 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1432
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v2))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-THash
d_DecEq'45'THash_848 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_848 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
               (coe v2))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-TxId
d_DecEq'45'TxId_850 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1374
      (coe d_HSTransactionStructure_690 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-UpdT
d_DecEq'45'UpdT_852 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_852 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1506
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2566
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-VDeleg
d_DecEq'45'VDeleg_854 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_854 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1250
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2702
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-VRF
d_DecEq'45'VRF_856 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VRF_856 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_240
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1432
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-Value
d_DecEq'45'Value_858 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_858 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2584
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-Vote
d_DecEq'45'Vote_860 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_860 ~v0 = du_DecEq'45'Vote_860
du_DecEq'45'Vote_860 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_860
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1248
-- Ledger.Conway.Foreign.ExternalStructures._.DecPo-Slot
d_DecPo'45'Slot_862 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_862 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_88
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1824
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DrepThresholds
d_DrepThresholds_864 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.Epoch
d_Epoch_870 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Epoch_870 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_872 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_872 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_230
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.ExUnits
d_ExUnits_874 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ExUnits_874 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovAction
d_GovAction_876 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActionData
d_GovActionData_880 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_872 ->
  ()
d_GovActionData_880 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovActionID
d_GovActionID_882 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_GovActionID_882 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovActionOf
d_GovActionOf_884 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_920 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_906
d_GovActionOf_884 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_926
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActionState
d_GovActionState_886 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActionType
d_GovActionType_890 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActionTypeOf
d_GovActionTypeOf_892 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_890 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_872
d_GovActionTypeOf_892 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_896
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovParams
d_GovParams_894 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovProposal
d_GovProposal_898 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovProposalsOf
d_GovProposalsOf_902 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3594 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1120]
d_GovProposalsOf_902 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovProposalsOf_3602
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovRole
d_GovRole_904 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovRoleCredential
d_GovRoleCredential_906 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_860 ->
  ()
d_GovRoleCredential_906 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovVote
d_GovVote_908 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovVoter
d_GovVoter_912 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovVoterOf
d_GovVoterOf_916 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1176 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1016
d_GovVoterOf_916 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1184
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovVotes
d_GovVotes_918 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovVotesOf
d_GovVotesOf_922 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovVotes_3614 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1040]
d_GovVotesOf_922 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovVotesOf_3622
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasAttrSize
d_HasAttrSize_926 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasAttrSize-BootstrapAddr
d_HasAttrSize'45'BootstrapAddr_930 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_218
d_HasAttrSize'45'BootstrapAddr_930 ~v0
  = du_HasAttrSize'45'BootstrapAddr_930
du_HasAttrSize'45'BootstrapAddr_930 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_218
du_HasAttrSize'45'BootstrapAddr_930
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasAttrSize'45'BootstrapAddr_242
-- Ledger.Conway.Foreign.ExternalStructures._.HasCCMaxTermLength
d_HasCCMaxTermLength_932 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasCast-Acnt
d_HasCast'45'Acnt_936 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_936 ~v0 = du_HasCast'45'Acnt_936
du_HasCast'45'Acnt_936 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_936
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasCast'45'Acnt_206
-- Ledger.Conway.Foreign.ExternalStructures._.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_938 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_938 ~v0
  = du_HasCast'45'GovAction'45'Sigma_938
du_HasCast'45'GovAction'45'Sigma_938 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_938
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_936
-- Ledger.Conway.Foreign.ExternalStructures._.HasCast-GovVote
d_HasCast'45'GovVote_940 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_940 ~v0 = du_HasCast'45'GovVote_940
du_HasCast'45'GovVote_940 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_940
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovVote_1352
-- Ledger.Conway.Foreign.ExternalStructures._.HasCast-HashProtected
d_HasCast'45'HashProtected_942 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_942 ~v0
  = du_HasCast'45'HashProtected_942
du_HasCast'45'HashProtected_942 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_942 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1114
-- Ledger.Conway.Foreign.ExternalStructures._.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_944 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_944 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_944
du_HasCast'45'HashProtected'45'MaybeScriptHash_944 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_944
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1116
-- Ledger.Conway.Foreign.ExternalStructures._.HasCoin-TxOut
d_HasCoin'45'TxOut_946 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_946 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_HasCoin'45'TxOut_3828
      (coe d_HSTransactionStructure_690 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.HasCredential
d_HasCredential_948 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasCredential-RewardAddress
d_HasCredential'45'RewardAddress_952 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RewardAddress_952 ~v0
  = du_HasCredential'45'RewardAddress_952
du_HasCredential'45'RewardAddress_952 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
du_HasCredential'45'RewardAddress_952
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_240
-- Ledger.Conway.Foreign.ExternalStructures._.HasDCerts
d_HasDCerts_954 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasDCerts-Tx
d_HasDCerts'45'Tx_958 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3574
d_HasDCerts'45'Tx_958 ~v0 = du_HasDCerts'45'Tx_958
du_HasDCerts'45'Tx_958 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3574
du_HasDCerts'45'Tx_958
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDCerts'45'Tx_3702
-- Ledger.Conway.Foreign.ExternalStructures._.HasDReps
d_HasDReps_960 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasDonations-Tx
d_HasDonations'45'Tx_964 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_30
d_HasDonations'45'Tx_964 ~v0 = du_HasDonations'45'Tx_964
du_HasDonations'45'Tx_964 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_30
du_HasDonations'45'Tx_964
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDonations'45'Tx_3714
-- Ledger.Conway.Foreign.ExternalStructures._.HasDonations-TxBody
d_HasDonations'45'TxBody_966 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_30
d_HasDonations'45'TxBody_966 ~v0 = du_HasDonations'45'TxBody_966
du_HasDonations'45'TxBody_966 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_30
du_HasDonations'45'TxBody_966
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDonations'45'TxBody_3650
-- Ledger.Conway.Foreign.ExternalStructures._.HasFees-Tx
d_HasFees'45'Tx_968 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_50
d_HasFees'45'Tx_968 ~v0 = du_HasFees'45'Tx_968
du_HasFees'45'Tx_968 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_50
du_HasFees'45'Tx_968
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasFees'45'Tx_3700
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovAction
d_HasGovAction_970 a0 a1 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_974 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_920
d_HasGovAction'45'GovActionState_974 ~v0
  = du_HasGovAction'45'GovActionState_974
du_HasGovAction'45'GovActionState_974 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_920
du_HasGovAction'45'GovActionState_974
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1240
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_976 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_920
d_HasGovAction'45'GovProposal_976 ~v0
  = du_HasGovAction'45'GovProposal_976
du_HasGovAction'45'GovProposal_976 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_920
du_HasGovAction'45'GovProposal_976
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1238
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovActionType
d_HasGovActionType_978 a0 a1 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_982 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_890
d_HasGovActionType'45'GovAction_982 ~v0
  = du_HasGovActionType'45'GovAction_982
du_HasGovActionType'45'GovAction_982 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_890
du_HasGovActionType'45'GovAction_982
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_934
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_984 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_890
d_HasGovActionType'45'GovActionState_984 ~v0
  = du_HasGovActionType'45'GovActionState_984
du_HasGovActionType'45'GovActionState_984 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_890
du_HasGovActionType'45'GovActionState_984
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1244
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_986 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_890
d_HasGovActionType'45'GovProposal_986 ~v0
  = du_HasGovActionType'45'GovProposal_986
du_HasGovActionType'45'GovProposal_986 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_890
du_HasGovActionType'45'GovProposal_986
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1242
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovProposals
d_HasGovProposals_988 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovProposals-Tx
d_HasGovProposals'45'Tx_992 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3594
d_HasGovProposals'45'Tx_992 ~v0 = du_HasGovProposals'45'Tx_992
du_HasGovProposals'45'Tx_992 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3594
du_HasGovProposals'45'Tx_992
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasGovProposals'45'Tx_3704
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovVoter
d_HasGovVoter_994 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_998 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1176
d_HasGovVoter'45'GovVote_998 ~v0 = du_HasGovVoter'45'GovVote_998
du_HasGovVoter'45'GovVote_998 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1176
du_HasGovVoter'45'GovVote_998
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1232
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovVotes
d_HasGovVotes_1000 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovVotes-Tx
d_HasGovVotes'45'Tx_1004 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovVotes_3614
d_HasGovVotes'45'Tx_1004 ~v0 = du_HasGovVotes'45'Tx_1004
du_HasGovVotes'45'Tx_1004 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovVotes_3614
du_HasGovVotes'45'Tx_1004
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasGovVotes'45'Tx_3706
-- Ledger.Conway.Foreign.ExternalStructures._.HasMaybeNetworkId
d_HasMaybeNetworkId_1006 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasNetworkId
d_HasNetworkId_1010 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_1014 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_158
d_HasNetworkId'45'BaseAddr_1014 ~v0
  = du_HasNetworkId'45'BaseAddr_1014
du_HasNetworkId'45'BaseAddr_1014 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_158
du_HasNetworkId'45'BaseAddr_1014
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_234
-- Ledger.Conway.Foreign.ExternalStructures._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_1016 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_158
d_HasNetworkId'45'BootstrapAddr_1016 ~v0
  = du_HasNetworkId'45'BootstrapAddr_1016
du_HasNetworkId'45'BootstrapAddr_1016 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_158
du_HasNetworkId'45'BootstrapAddr_1016
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_236
-- Ledger.Conway.Foreign.ExternalStructures._.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_1018 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_158
d_HasNetworkId'45'RewardAddress_1018 ~v0
  = du_HasNetworkId'45'RewardAddress_1018
du_HasNetworkId'45'RewardAddress_1018 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_158
du_HasNetworkId'45'RewardAddress_1018
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_238
-- Ledger.Conway.Foreign.ExternalStructures._.HasPParams
d_HasPParams_1020 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasPolicy
d_HasPolicy_1024 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_1028 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1216
d_HasPolicy'45'GovProposal_1028 ~v0
  = du_HasPolicy'45'GovProposal_1028
du_HasPolicy'45'GovProposal_1028 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1216
du_HasPolicy'45'GovProposal_1028
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1236
-- Ledger.Conway.Foreign.ExternalStructures._.HasReserves-Acnt
d_HasReserves'45'Acnt_1030 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_70
d_HasReserves'45'Acnt_1030 ~v0 = du_HasReserves'45'Acnt_1030
du_HasReserves'45'Acnt_1030 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_70
du_HasReserves'45'Acnt_1030
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasReserves'45'Acnt_204
-- Ledger.Conway.Foreign.ExternalStructures._.HasRewardAddress
d_HasRewardAddress_1032 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasTreasury-Acnt
d_HasTreasury'45'Acnt_1036 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_90
d_HasTreasury'45'Acnt_1036 ~v0 = du_HasTreasury'45'Acnt_1036
du_HasTreasury'45'Acnt_1036 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_90
du_HasTreasury'45'Acnt_1036
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasTreasury'45'Acnt_202
-- Ledger.Conway.Foreign.ExternalStructures._.HasTxBody
d_HasTxBody_1038 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasTxBody-Tx
d_HasTxBody'45'Tx_1042 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3554
d_HasTxBody'45'Tx_1042 ~v0 = du_HasTxBody'45'Tx_1042
du_HasTxBody'45'Tx_1042 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3554
du_HasTxBody'45'Tx_1042
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasTxBody'45'Tx_3698
-- Ledger.Conway.Foreign.ExternalStructures._.HasTxId
d_HasTxId_1044 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasTxId-Tx
d_HasTxId'45'Tx_1048 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3634
d_HasTxId'45'Tx_1048 ~v0 = du_HasTxId'45'Tx_1048
du_HasTxId'45'Tx_1048 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3634
du_HasTxId'45'Tx_1048
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasTxId'45'Tx_3712
-- Ledger.Conway.Foreign.ExternalStructures._.HasUTxO
d_HasUTxO_1050 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasVote
d_HasVote_1054 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasVote-GovVote
d_HasVote'45'GovVote_1058 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1196
d_HasVote'45'GovVote_1058 ~v0 = du_HasVote'45'GovVote_1058
du_HasVote'45'GovVote_1058 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1196
du_HasVote'45'GovVote_1058
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasVote'45'GovVote_1234
-- Ledger.Conway.Foreign.ExternalStructures._.HasVoteDelegs
d_HasVoteDelegs_1060 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasWithdrawals
d_HasWithdrawals_1064 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasWithdrawals-Tx
d_HasWithdrawals'45'Tx_1068 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_198
d_HasWithdrawals'45'Tx_1068 ~v0 = du_HasWithdrawals'45'Tx_1068
du_HasWithdrawals'45'Tx_1068 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_198
du_HasWithdrawals'45'Tx_1068
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasWithdrawals'45'Tx_3710
-- Ledger.Conway.Foreign.ExternalStructures._.HasWithdrawals-TxBody
d_HasWithdrawals'45'TxBody_1070 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_198
d_HasWithdrawals'45'TxBody_1070 ~v0
  = du_HasWithdrawals'45'TxBody_1070
du_HasWithdrawals'45'TxBody_1070 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_198
du_HasWithdrawals'45'TxBody_1070
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasWithdrawals'45'TxBody_3708
-- Ledger.Conway.Foreign.ExternalStructures._.HashProtected
d_HashProtected_1072 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () -> ()
d_HashProtected_1072 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Hashable-P1Script
d_Hashable'45'P1Script_1074 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_1074 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_128
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_312
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1076 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_1076 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_232
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.Hashable-Script
d_Hashable'45'Script_1078 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_1078 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_410
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.Hashable-ScriptIntegrity
d_Hashable'45'ScriptIntegrity_1080 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'ScriptIntegrity_1080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_Hashable'45'ScriptIntegrity_2700
      (coe d_HSTransactionStructure_690 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.IsBootstrapAddr
d_IsBootstrapAddr_1084 a0 a1 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.IsBootstrapAddr?
d_IsBootstrapAddr'63'_1086 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsBootstrapAddr'63'_1086 ~v0 = du_IsBootstrapAddr'63'_1086
du_IsBootstrapAddr'63'_1086 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsBootstrapAddr'63'_1086
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_346
-- Ledger.Conway.Foreign.ExternalStructures._.IsKeyHashObj
d_IsKeyHashObj_1090 a0 a1 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.IsKeyHashObj?
d_IsKeyHashObj'63'_1092 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsKeyHashObj'63'_1092 ~v0 = du_IsKeyHashObj'63'_1092
du_IsKeyHashObj'63'_1092 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsKeyHashObj'63'_1092
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsKeyHashObj'63'_56
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1094 a0 a1 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1098 a0 a1 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1102 a0 a1 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.Ix
d_Ix_1106 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Ix_1106 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.THash
d_THash_1108 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_1108 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.KeyPair
d_KeyPair_1112 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_KeyPair_1112 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.LangDepView
d_LangDepView_1114 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_LangDepView_1114 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Language
d_Language_1116 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Language_1116 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.LanguageCostModels
d_LanguageCostModels_1118 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.MaxKESEvoᶜ
d_MaxKESEvo'7580'_1122 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_MaxKESEvo'7580'_1122 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxKESEvo'7580'_354
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1390
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_1124 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_MaxLovelaceSupply'7580'_1124 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_348
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1390
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.MaybeNetworkIdOf
d_MaybeNetworkIdOf_1126 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_178 ->
  AgdaAny -> Maybe Integer
d_MaybeNetworkIdOf_1126 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_186
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.MemoryEstimate
d_MemoryEstimate_1128 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_MemoryEstimate_1128 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.NeedsHash
d_NeedsHash_1130 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_872 ->
  ()
d_NeedsHash_1130 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Network
d_Network_1132 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Network_1132 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.NetworkId
d_NetworkId_1136 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_NetworkId_1136 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_352
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1390
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.NetworkIdOf
d_NetworkIdOf_1138 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_158 ->
  AgdaAny -> Integer
d_NetworkIdOf_1138 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_166
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_1144 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_1144 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_362
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1390
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.NonZero-SlotLengthᶜ
d_NonZero'45'SlotLength'7580'_1146 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotLength'7580'_1146 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotLength'7580'_360
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1390
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1148 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1148 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_338
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1390
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.Number-Epoch
d_Number'45'Epoch_1150 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_1150 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_290
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1824
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.P1Script
d_P1Script_1152 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_P1Script_1152 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.P1ScriptStructure
d_P1ScriptStructure_1154 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusScript
d_PlutusScript_1158 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_PlutusScript_1158 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.POSIXTimeRange
d_POSIXTimeRange_1160 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_POSIXTimeRange_1160 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PParamGroup
d_PParamGroup_1162 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.PParams
d_PParams_1164 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsDiff
d_PParamsDiff_1168 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsOf
d_PParamsOf_1172 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_438 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
d_PParamsOf_1172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_446
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.UpdateT
d_UpdateT_1174 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_UpdateT_1174 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure
d_PlutusStructure_1176 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusV1
d_PlutusV1_1180 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV1_1180 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_224
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusV2
d_PlutusV2_1182 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV2_1182 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_226
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusV3
d_PlutusV3_1184 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV3_1184 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_228
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.Policy
d_Policy_1186 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Policy_1186 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PolicyOf
d_PolicyOf_1188 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1216 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_1188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1224
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PoolThresholds
d_PoolThresholds_1190 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_1194 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_1194 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_342
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1390
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.Prices
d_Prices_1196 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Prices_1196 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ProposedPPUpdates
d_ProposedPPUpdates_1198 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ProposedPPUpdates_1198 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Quorum
d_Quorum_1200 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_Quorum_1200 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_350
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1390
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_1202 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_RandomnessStabilisationWindow_1202 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_96
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1824
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_1204 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_RandomnessStabilisationWindow'7580'_1204 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow'7580'_344
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1390
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.RdmrPtr
d_RdmrPtr_1206 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_RdmrPtr_1206 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Redeemer
d_Redeemer_1208 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Redeemer_1208 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.RewardAddress
d_RewardAddress_1210 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.RewardAddressOf
d_RewardAddressOf_1214 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_138 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_120
d_RewardAddressOf_1214 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_146
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.SKey
d_SKey_1218 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_SKey_1218 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Script
d_Script_1222 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Script_1222 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptAddr
d_ScriptAddr_1224 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptAddr_1224 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptBaseAddr
d_ScriptBaseAddr_1226 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptBaseAddr_1226 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1228 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptBootstrapAddr_1228 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptHash
d_ScriptHash_1230 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptHash_1230 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure
d_ScriptStructure_1234 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.Ser
d_Ser_1240 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Ser_1240 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Show-CostModel
d_Show'45'CostModel_1242 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1242 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_242
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.Show-Credential
d_Show'45'Credential_1244 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1244 ~v0 = du_Show'45'Credential_1244
du_Show'45'Credential_1244 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1244 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_386
      v1 v2
-- Ledger.Conway.Foreign.ExternalStructures._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1246 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1246 ~v0
  = du_Show'45'Credential'215'Coin_1246
du_Show'45'Credential'215'Coin_1246 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1246 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_390
      v1 v2
-- Ledger.Conway.Foreign.ExternalStructures._.Show-DrepThresholds
d_Show'45'DrepThresholds_1248 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_1248 ~v0 = du_Show'45'DrepThresholds_1248
du_Show'45'DrepThresholds_1248 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_1248
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'DrepThresholds_592
-- Ledger.Conway.Foreign.ExternalStructures._.Show-Epoch
d_Show'45'Epoch_1250 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_1250 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_84
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1824
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.Show-ExUnits
d_Show'45'ExUnits_1252 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1252 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_252
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.Show-GovRole
d_Show'45'GovRole_1254 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_1254 ~v0 = du_Show'45'GovRole_1254
du_Show'45'GovRole_1254 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_1254
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_Show'45'GovRole_868
-- Ledger.Conway.Foreign.ExternalStructures._.Show-Language
d_Show'45'Language_1256 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_1256 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_240
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.Show-LanguageCostModels
d_Show'45'LanguageCostModels_1258 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_1258 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Show'45'LanguageCostModels_456
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.Show-Network
d_Show'45'Network_1260 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1260 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_334
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1390
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.Show-PParams
d_Show'45'PParams_1262 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_1262 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PParams_596
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1824
            (coe v1))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.Show-PoolThresholds
d_Show'45'PoolThresholds_1264 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_1264 ~v0 = du_Show'45'PoolThresholds_1264
du_Show'45'PoolThresholds_1264 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_1264
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PoolThresholds_594
-- Ledger.Conway.Foreign.ExternalStructures._.Show-Prices
d_Show'45'Prices_1266 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1266 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_254
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.Show-RewardAddress
d_Show'45'RewardAddress_1268 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RewardAddress_1268 ~v0 = du_Show'45'RewardAddress_1268
du_Show'45'RewardAddress_1268 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RewardAddress_1268
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RewardAddress_388
-- Ledger.Conway.Foreign.ExternalStructures._.Show-ScriptHash
d_Show'45'ScriptHash_1270 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1270 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_226
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1432
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.Show-THash
d_Show'45'THash_1272 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1272 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1376
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.Show-THash
d_Show'45'THash_1274 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1274 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1432
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v2))))
-- Ledger.Conway.Foreign.ExternalStructures._.Show-THash
d_Show'45'THash_1276 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1276 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
               (coe v2))))
-- Ledger.Conway.Foreign.ExternalStructures._.Show-VDeleg
d_Show'45'VDeleg_1278 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_1278 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_Show'45'VDeleg_1354
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2702
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.Sig
d_Sig_1280 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Sig_1280 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Slot
d_Slot_1282 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Slot_1282 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.SlotLengthᶜ
d_SlotLength'7580'_1284 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_SlotLength'7580'_1284 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotLength'7580'_358
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1390
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1286 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_SlotsPerEpoch'7580'_1286 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_336
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1390
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.SlotsPerKESPeriodᶜ
d_SlotsPerKESPeriod'7580'_1288 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_SlotsPerKESPeriod'7580'_1288 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerKESPeriod'7580'_356
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1390
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.Slotʳ
d_Slot'691'_1290 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_1290 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_78
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1824
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.StabilityWindow
d_StabilityWindow_1292 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_StabilityWindow_1292 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_98
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1824
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.StabilityWindowᶜ
d_StabilityWindow'7580'_1294 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_StabilityWindow'7580'_1294 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_346
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1390
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.T-Hashable
d_T'45'Hashable_1296 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1296 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1376
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.T-Hashable
d_T'45'Hashable_1298 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1298 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1432
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v2))))
-- Ledger.Conway.Foreign.ExternalStructures._.T-Hashable
d_T'45'Hashable_1300 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1300 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
               (coe v2))))
-- Ledger.Conway.Foreign.ExternalStructures._.T-isHashable
d_T'45'isHashable_1302 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_1302 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
                  (coe v1)))))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra
d_TokenAlgebra_1306 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.Tx
d_Tx_1314 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody
d_TxBody_1318 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.TxBodyOf
d_TxBodyOf_1322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3554 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3474
d_TxBodyOf_1322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxBodyOf_3562
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxId
d_TxId_1324 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxId_1324 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TxIdOf
d_TxIdOf_1326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3634 ->
  AgdaAny -> Integer
d_TxIdOf_1326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxIdOf_3642
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxIn
d_TxIn_1328 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxIn_1328 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TxOut
d_TxOut_1330 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxOut_1330 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TxOutʰ
d_TxOut'688'_1332 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxOut'688'_1332 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TxWitnesses
d_TxWitnesses_1334 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.UTxO
d_UTxO_1338 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_UTxO_1338 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.UTxOOf
d_UTxOOf_1340 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3458 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3466
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.Update
d_Update_1342 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Update_1342 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.VDeleg
d_VDeleg_1346 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.VKey
d_VKey_1348 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKey_1348 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.VKeyAddr
d_VKeyAddr_1350 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKeyAddr_1350 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.VKeyBaseAddr
d_VKeyBaseAddr_1352 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKeyBaseAddr_1352 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1354 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKeyBootstrapAddr_1354 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.VRF
d_VRF_1358 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VRF_1358 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Value
d_Value_1360 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Value_1360 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1362 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_1362 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2584
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.VoteDelegs
d_VoteDelegs_1364 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VoteDelegs_1364 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.VoteDelegsOf
d_VoteDelegsOf_1366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1090 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_1098
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.VoteOf
d_VoteOf_1368 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1196 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_1008
d_VoteOf_1368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1204
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.Withdrawals
d_Withdrawals_1370 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Withdrawals_1370 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.WithdrawalsOf
d_WithdrawalsOf_1372 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_198 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1372 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_206
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.activeDRepsOf
d_activeDRepsOf_1374 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1478 ->
  AgdaAny -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_1374 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (\ v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_activeDRepsOf_1504
           (coe
              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2702
              (coe v1))
           v3 v4 v5)
-- Ledger.Conway.Foreign.ExternalStructures._.activeInEpoch
d_activeInEpoch_1376 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_1376 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.adHashingScheme
d_adHashingScheme_1378 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_adHashingScheme_1378 ~v0 = du_adHashingScheme_1378
du_adHashingScheme_1378 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
du_adHashingScheme_1378
  = coe
      MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_isHashableSet'45'ℕ_34
-- Ledger.Conway.Foreign.ExternalStructures._.addEpoch
d_addEpoch_1380 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_1380 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_284
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1824
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.addSlot
d_addSlot_1382 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_1382 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_282
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1824
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.addValue
d_addValue_1384 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_1384 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2584
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.applyUpdate
d_applyUpdate_1386 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
d_applyUpdate_1386 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1456
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1492
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2566
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.coin
d_coin_1388 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_coin_1388 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2584
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.coin-inject-lemma
d_coin'45'inject'45'lemma_1390 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1390 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1392 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_1392 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2584
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.coin∘inject≗id
d_coin'8728'inject'8791'id_1394 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_1394 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.cryptoStructure
d_cryptoStructure_1396 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_cryptoStructure_1396 v0
  = coe
      MAlonzo.Code.Ledger.Core.Foreign.Crypto.Structure.d_HSCryptoStructure_36
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.e<sucᵉ
d_e'60'suc'7497'_1398 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_e'60'suc'7497'_1398 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_e'60'suc'7497'_124
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1824
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.epoch
d_epoch_1400 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_epoch_1400 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_92
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1824
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.epochStructure
d_epochStructure_1402 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_1402 ~v0 = du_epochStructure_1402
du_epochStructure_1402 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
du_epochStructure_1402
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'46'extendedlambda0_382
      (coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8)
-- Ledger.Conway.Foreign.ExternalStructures._.firstSlot
d_firstSlot_1404 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_firstSlot_1404 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_94
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1824
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.gaData
d_gaData_1406 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_906 ->
  AgdaAny
d_gaData_1406 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_914
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.gaType
d_gaType_1408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_906 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_872
d_gaType_1408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_912
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.getLanguage
d_getLanguage_1410 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_getLanguage_1410 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_getLanguage_438
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.getScriptHash
d_getScriptHash_1412 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  Integer
d_getScriptHash_1412 ~v0 = du_getScriptHash_1412
du_getScriptHash_1412 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  Integer
du_getScriptHash_1412
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_364
-- Ledger.Conway.Foreign.ExternalStructures._.getValue
d_getValue_1414 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue_1414 ~v0 = du_getValue_1414
du_getValue_1414 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_getValue_1414
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue_3716
-- Ledger.Conway.Foreign.ExternalStructures._.getValueʰ
d_getValue'688'_1416 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue'688'_1416 ~v0 = du_getValue'688'_1416
du_getValue'688'_1416 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_getValue'688'_1416
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3732
-- Ledger.Conway.Foreign.ExternalStructures._.globalConstants
d_globalConstants_1418 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_296
d_globalConstants_1418 ~v0 = du_globalConstants_1418
du_globalConstants_1418 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_296
du_globalConstants_1418
  = coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8
-- Ledger.Conway.Foreign.ExternalStructures._.govParams
d_govParams_1420 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1474
d_govParams_1420 v0 = coe d_HsGovParams_644 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.govStructure
d_govStructure_1422 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10
d_govStructure_1422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2702
      (coe d_HSTransactionStructure_690 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.govVoterCredential
d_govVoterCredential_1424 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1016 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_1424 ~v0 = du_govVoterCredential_1424
du_govVoterCredential_1424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1016 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_1424
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_govVoterCredential_1460
-- Ledger.Conway.Foreign.ExternalStructures._.hashRespectsUnion
d_hashRespectsUnion_1426 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_1426 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_332
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.inject
d_inject_1428 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_inject_1428 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2584
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.isBootstrapAddr
d_isBootstrapAddr_1430 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_104
d_isBootstrapAddr_1430 ~v0 = du_isBootstrapAddr_1430
du_isBootstrapAddr_1430 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_104
du_isBootstrapAddr_1430
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr_314
-- Ledger.Conway.Foreign.ExternalStructures._.isGovVoterDRep
d_isGovVoterDRep_1432 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1016 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_1432 ~v0 = du_isGovVoterDRep_1432
du_isGovVoterDRep_1432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1016 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_1432
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_isGovVoterDRep_1456
-- Ledger.Conway.Foreign.ExternalStructures._.isKeyHash
d_isKeyHash_1434 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_1434 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.isKeyHashObj
d_isKeyHashObj_1436 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isKeyHashObj_1436 ~v0 = du_isKeyHashObj_1436
du_isKeyHashObj_1436 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
du_isKeyHashObj_1436
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Conway.Foreign.ExternalStructures._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1438 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_1438 ~v0 = du_isKeyHashObj'7495'_1438
du_isKeyHashObj'7495'_1438 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
du_isKeyHashObj'7495'_1438
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_62
-- Ledger.Conway.Foreign.ExternalStructures._.isKeyPair
d_isKeyPair_1440 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 -> ()
d_isKeyPair_1440 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.isNativeScript
d_isNativeScript_1442 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_1442 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.isP1Script
d_isP1Script_1444 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_1444 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.isP1Script?
d_isP1Script'63'_1446 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_1446 ~v0 = du_isP1Script'63'_1446
du_isP1Script'63'_1446 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_1446
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP1Script'63'_416
-- Ledger.Conway.Foreign.ExternalStructures._.isP2Script
d_isP2Script_1448 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_1448 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.isP2Script?
d_isP2Script'63'_1450 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_1450 ~v0 = du_isP2Script'63'_1450
du_isP2Script'63'_1450 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_1450
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP2Script'63'_430
-- Ledger.Conway.Foreign.ExternalStructures._.isProtected
d_isProtected_1452 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isProtected_1452 ~v0 = du_isProtected_1452
du_isProtected_1452 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isProtected_1452
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isProtected_278
-- Ledger.Conway.Foreign.ExternalStructures._.isScript
d_isScript_1454 a0 a1 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.isScriptAddr
d_isScriptAddr_1456 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1456 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.isScriptObj
d_isScriptObj_1458 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isScriptObj_1458 ~v0 = du_isScriptObj_1458
du_isScriptObj_1458 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
du_isScriptObj_1458
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
-- Ledger.Conway.Foreign.ExternalStructures._.isScriptRewardAddress
d_isScriptRewardAddress_1460 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_120 ->
  ()
d_isScriptRewardAddress_1460 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.isSigned
d_isSigned_1462 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer -> Integer -> ()
d_isSigned_1462 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.isSigned-correct
d_isSigned'45'correct_1464 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_1464 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.isVKey
d_isVKey_1466 a0 a1 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.isVKeyAddr
d_isVKeyAddr_1468 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1468 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.khs
d_khs_1470 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_1470 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1432
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.language
d_language_1472 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_language_1472 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_282
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.languageCostModels
d_languageCostModels_1474 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_442 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_1474 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_446
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.lookupScriptHash
d_lookupScriptHash_1476 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3674 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_1476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_lookupScriptHash_3814
      (coe d_HSTransactionStructure_690 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.monoid
d_monoid_1480 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_1480 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_monoid_1066
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2584
                  (coe v1)))))
-- Ledger.Conway.Foreign.ExternalStructures._.netId
d_netId_1482 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_netId_1482 ~v0 = du_netId_1482
du_netId_1482 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
du_netId_1482
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_270
-- Ledger.Conway.Foreign.ExternalStructures._.p1s
d_p1s_1484 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_110
d_p1s_1484 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_312
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.paramsWF-elim
d_paramsWF'45'elim_1486 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_1486 ~v0 = du_paramsWF'45'elim_1486
du_paramsWF'45'elim_1486 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_1486 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_paramsWF'45'elim_564
      v2
-- Ledger.Conway.Foreign.ExternalStructures._.paramsWellFormed
d_paramsWellFormed_1488 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  ()
d_paramsWellFormed_1488 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.payCred
d_payCred_1490 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_1490 ~v0 = du_payCred_1490
du_payCred_1490 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_payCred_1490
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_266
-- Ledger.Conway.Foreign.ExternalStructures._.pkk
d_pkk_1492 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_1492 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1432
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.policies
d_policies_1494 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> [Integer]
d_policies_1494 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2584
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.positivePParams
d_positivePParams_1496 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  [Integer]
d_positivePParams_1496 ~v0 = du_positivePParams_1496
du_positivePParams_1496 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  [Integer]
du_positivePParams_1496
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_positivePParams_474
-- Ledger.Conway.Foreign.ExternalStructures._.ppUpd
d_ppUpd_1498 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1440
d_ppUpd_1498 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1492
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2566
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.ppWF?
d_ppWF'63'_1500 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1500 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1464
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1492
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2566
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.ppdWellFormed
d_ppdWellFormed_1502 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  ()
d_ppdWellFormed_1502 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.preoEpoch
d_preoEpoch_1504 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_1504 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_114
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1824
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.proposedCC
d_proposedCC_1506 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_906 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_1506 ~v0 = du_proposedCC_1506
du_proposedCC_1506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_906 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_1506
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_proposedCC_1468
-- Ledger.Conway.Foreign.ExternalStructures._.protect
d_protect_1508 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84
d_protect_1508 ~v0 = du_protect_1508
du_protect_1508 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84
du_protect_1508
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_protect_282
-- Ledger.Conway.Foreign.ExternalStructures._.protection-preserves-payment
d_protection'45'preserves'45'payment_1510 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_protection'45'preserves'45'payment_1510 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.protection-preserves-stake
d_protection'45'preserves'45'stake_1512 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_protection'45'preserves'45'stake_1512 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ps
d_ps_1514 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134
d_ps_1514 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.rawMonoid
d_rawMonoid_1516 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_1516 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2584
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
            (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v2))))
-- Ledger.Conway.Foreign.ExternalStructures._.refScripts
d_refScripts_1518 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3674 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_1518 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3756
      (coe d_HSTransactionStructure_690 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.scriptOuts
d_scriptOuts_1520 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_1520 ~v0 = du_scriptOuts_1520
du_scriptOuts_1520 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOuts_1520
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_scriptOuts_3742
-- Ledger.Conway.Foreign.ExternalStructures._.scriptStructure
d_scriptStructure_1522 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286
d_scriptStructure_1522 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_HSScriptStructure_374
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.sign
d_sign_1524 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d_sign_1524 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1432
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v2))))
-- Ledger.Conway.Foreign.ExternalStructures._.size
d_size_1526 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_size_1526 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2584
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.slotsFromDuration
d_slotsFromDuration_1528 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_slotsFromDuration_1528 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_slotsFromDuration_100
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1824
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.stakeCred
d_stakeCred_1530 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_1530 ~v0 = du_stakeCred_1530
du_stakeCred_1530 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_stakeCred_1530
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_268
-- Ledger.Conway.Foreign.ExternalStructures._.sucᵉ
d_suc'7497'_1532 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_suc'7497'_1532 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_102
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1824
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.sumᵛ
d_sum'7515'_1534 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] -> Integer
d_sum'7515'_1534 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2584
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.toP1Script
d_toP1Script_1536 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302
d_toP1Script_1536 ~v0 = du_toP1Script_1536
du_toP1Script_1536 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302
du_toP1Script_1536
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_424
-- Ledger.Conway.Foreign.ExternalStructures._.toP2Script
d_toP2Script_1538 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328
d_toP2Script_1538 ~v0 = du_toP2Script_1538
du_toP2Script_1538 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328
du_toP2Script_1538
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_436
-- Ledger.Conway.Foreign.ExternalStructures._.tokenAlgebra
d_tokenAlgebra_1540 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
d_tokenAlgebra_1540 ~v0 = du_tokenAlgebra_1540
du_tokenAlgebra_1540 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
du_tokenAlgebra_1540
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Coin.du_Coin'45'TokenAlgebra_132
-- Ledger.Conway.Foreign.ExternalStructures._.txInsScript
d_txInsScript_1542 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txInsScript_1542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txInsScript_3750
      (coe d_HSTransactionStructure_690 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.txInsVKey
d_txInsVKey_1544 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txInsVKey_1544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txInsVKey_3736
      (coe d_HSTransactionStructure_690 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.txOutHash
d_txOutHash_1546 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_1546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3722
      (coe d_HSTransactionStructure_690 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.txidBytes
d_txidBytes_1548 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_txidBytes_1548 ~v0 v1 = du_txidBytes_1548 v1
du_txidBytes_1548 :: Integer -> Integer
du_txidBytes_1548 v0 = coe v0
-- Ledger.Conway.Foreign.ExternalStructures._.txscripts
d_txscripts_1550 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3674 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_1550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txscripts_3804
      (coe d_HSTransactionStructure_690 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.updateGroups
d_updateGroups_1552 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_208]
d_updateGroups_1552 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1458
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1492
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2566
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.validP1Script
d_validP1Script_1560 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302 ->
  ()
d_validP1Script_1560 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.validPlutusScript
d_validPlutusScript_1562 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328 ->
  ()
d_validPlutusScript_1562 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ε
d_ε_1564 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_ε_1564 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Class.Monoid.Core.d_ε_20
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2584
                  (coe v1)))))
-- Ledger.Conway.Foreign.ExternalStructures._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1566 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1566 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ℕEpochStructure
d_ℕEpochStructure_1568 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_1568 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_376
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1390
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.ℕtoEpoch
d_ℕtoEpoch_1570 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_ℕtoEpoch_1570 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_278
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1824
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.≤-predᵉ
d_'8804''45'pred'7497'_1572 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'pred'7497'_1572 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'8804''45'pred'7497'_130
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1824
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.≥ᵉ-Dec
d_'8805''7497''45'Dec_1574 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_1574 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_246
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.Acnt.reserves
d_reserves_1584 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_190 ->
  Integer
d_reserves_1584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_198
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.Acnt.treasury
d_treasury_1586 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_190 ->
  Integer
d_treasury_1586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_196
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.Anchor.hash
d_hash_1590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1028 ->
  Integer
d_hash_1590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_hash_1036
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.Anchor.url
d_url_1592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1028 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_1592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_url_1034
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.BaseAddr.net
d_net_1596 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Integer
d_net_1596 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_94 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.BaseAddr.pay
d_pay_1598 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1598 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_96 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.BaseAddr.protected
d_protected_1600 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Bool
d_protected_1600 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_protected_100
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.BaseAddr.stake
d_stake_1602 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1602 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_98 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.BootstrapAddr.attrsSize
d_attrsSize_1606 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_104 ->
  Integer
d_attrsSize_1606 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_116
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.BootstrapAddr.net
d_net_1608 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_104 ->
  Integer
d_net_1608 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_112 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.BootstrapAddr.pay
d_pay_1610 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_104 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1610 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_114 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DrepThresholds.P1
d_P1_1620 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P1_242 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DrepThresholds.P2a
d_P2a_1622 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2a_244 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DrepThresholds.P2b
d_P2b_1624 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2b_246 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DrepThresholds.P3
d_P3_1626 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P3_248 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DrepThresholds.P4
d_P4_1628 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P4_250 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DrepThresholds.P5a
d_P5a_1630 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5a_252 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DrepThresholds.P5b
d_P5b_1632 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5b_254 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DrepThresholds.P5c
d_P5c_1634 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5c_256 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DrepThresholds.P5d
d_P5d_1636 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5d_258 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DrepThresholds.P6
d_P6_1638 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P6_260 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovAction.gaData
d_gaData_1642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_906 ->
  AgdaAny
d_gaData_1642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_914
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovAction.gaType
d_gaType_1644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_906 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_872
d_gaType_1644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_912
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActionState.action
d_action_1648 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1148 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_906
d_action_1648 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1166
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActionState.expiresIn
d_expiresIn_1650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1148 ->
  Integer
d_expiresIn_1650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_1164
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActionState.prevAction
d_prevAction_1652 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1148 ->
  AgdaAny
d_prevAction_1652 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1168
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActionState.returnAddr
d_returnAddr_1654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1148 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_120
d_returnAddr_1654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1162
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActionState.votes
d_votes_1656 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1148 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1060
d_votes_1656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1160
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.==-GovAction
d_'61''61''45'GovAction_1676 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_906 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_906 ->
  Bool
d_'61''61''45'GovAction_1676 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovAction_976
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2702
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.==-GovActionData
d_'61''61''45'GovActionData_1678 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_872 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_1678 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovActionData_958
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2702
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.==-GovProposal
d_'61''61''45'GovProposal_1680 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1120 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1120 ->
  Bool
d_'61''61''45'GovProposal_1680 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovProposal_1360
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2702
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.==-Set
d_'61''61''45'Set_1682 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_1682 ~v0 = du_'61''61''45'Set_1682
du_'61''61''45'Set_1682 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
du_'61''61''45'Set_1682 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_'61''61''45'Set_946
      v1 v2 v3
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.Anchor
d_Anchor_1684 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.DReps
d_DReps_1694 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_DReps_1694 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.DRepsOf
d_DRepsOf_1696 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1478 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1696 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1486
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.DecEq-Anchor
d_DecEq'45'Anchor_1698 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_1698 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'Anchor_1252
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2702
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.DecEq-GovActionType
d_DecEq'45'GovActionType_1700 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_1700 ~v0 = du_DecEq'45'GovActionType_1700
du_DecEq'45'GovActionType_1700 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_1700
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovActionType_940
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.DecEq-GovRole
d_DecEq'45'GovRole_1702 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_1702 ~v0 = du_DecEq'45'GovRole_1702
du_DecEq'45'GovRole_1702 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_1702
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_1246
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.DecEq-GovVoter
d_DecEq'45'GovVoter_1704 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_1704 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'GovVoter_1254
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2702
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.DecEq-NeedsHash
d_DecEq'45'NeedsHash_1706 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_872 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_1706 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1358
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2702
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.DecEq-VDeleg
d_DecEq'45'VDeleg_1708 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1708 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1250
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2702
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.DecEq-Vote
d_DecEq'45'Vote_1710 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1710 ~v0 = du_DecEq'45'Vote_1710
du_DecEq'45'Vote_1710 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_1710
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1248
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovAction
d_GovAction_1712 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovActionData
d_GovActionData_1716 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_872 ->
  ()
d_GovActionData_1716 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovActionID
d_GovActionID_1718 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_GovActionID_1718 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovActionOf
d_GovActionOf_1720 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_920 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_906
d_GovActionOf_1720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_926
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovActionState
d_GovActionState_1722 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovActionType
d_GovActionType_1726 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovActionTypeOf
d_GovActionTypeOf_1728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_890 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_872
d_GovActionTypeOf_1728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_896
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovProposal
d_GovProposal_1730 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovRole
d_GovRole_1734 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovRoleCredential
d_GovRoleCredential_1736 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_860 ->
  ()
d_GovRoleCredential_1736 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovVote
d_GovVote_1738 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovVoter
d_GovVoter_1742 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovVoterOf
d_GovVoterOf_1746 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1176 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1016
d_GovVoterOf_1746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1184
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovVotes
d_GovVotes_1748 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_1752 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_1752 ~v0
  = du_HasCast'45'GovAction'45'Sigma_1752
du_HasCast'45'GovAction'45'Sigma_1752 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_1752
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_936
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasCast-GovVote
d_HasCast'45'GovVote_1754 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_1754 ~v0 = du_HasCast'45'GovVote_1754
du_HasCast'45'GovVote_1754 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_1754
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovVote_1352
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasCast-HashProtected
d_HasCast'45'HashProtected_1756 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_1756 ~v0
  = du_HasCast'45'HashProtected_1756
du_HasCast'45'HashProtected_1756 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_1756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1114
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_1758 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_1758 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_1758
du_HasCast'45'HashProtected'45'MaybeScriptHash_1758 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_1758
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1116
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasDReps
d_HasDReps_1760 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasGovAction
d_HasGovAction_1764 a0 a1 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_1768 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_920
d_HasGovAction'45'GovActionState_1768 ~v0
  = du_HasGovAction'45'GovActionState_1768
du_HasGovAction'45'GovActionState_1768 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_920
du_HasGovAction'45'GovActionState_1768
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1240
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_1770 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_920
d_HasGovAction'45'GovProposal_1770 ~v0
  = du_HasGovAction'45'GovProposal_1770
du_HasGovAction'45'GovProposal_1770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_920
du_HasGovAction'45'GovProposal_1770
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1238
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasGovActionType
d_HasGovActionType_1772 a0 a1 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_1776 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_890
d_HasGovActionType'45'GovAction_1776 ~v0
  = du_HasGovActionType'45'GovAction_1776
du_HasGovActionType'45'GovAction_1776 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_890
du_HasGovActionType'45'GovAction_1776
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_934
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_1778 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_890
d_HasGovActionType'45'GovActionState_1778 ~v0
  = du_HasGovActionType'45'GovActionState_1778
du_HasGovActionType'45'GovActionState_1778 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_890
du_HasGovActionType'45'GovActionState_1778
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1244
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_1780 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_890
d_HasGovActionType'45'GovProposal_1780 ~v0
  = du_HasGovActionType'45'GovProposal_1780
du_HasGovActionType'45'GovProposal_1780 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_890
du_HasGovActionType'45'GovProposal_1780
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1242
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasGovVoter
d_HasGovVoter_1782 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_1786 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1176
d_HasGovVoter'45'GovVote_1786 ~v0 = du_HasGovVoter'45'GovVote_1786
du_HasGovVoter'45'GovVote_1786 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1176
du_HasGovVoter'45'GovVote_1786
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1232
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasPolicy
d_HasPolicy_1788 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_1792 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1216
d_HasPolicy'45'GovProposal_1792 ~v0
  = du_HasPolicy'45'GovProposal_1792
du_HasPolicy'45'GovProposal_1792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1216
du_HasPolicy'45'GovProposal_1792
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1236
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasVote
d_HasVote_1794 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasVote-GovVote
d_HasVote'45'GovVote_1798 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1196
d_HasVote'45'GovVote_1798 ~v0 = du_HasVote'45'GovVote_1798
du_HasVote'45'GovVote_1798 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1196
du_HasVote'45'GovVote_1798
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasVote'45'GovVote_1234
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasVoteDelegs
d_HasVoteDelegs_1800 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HashProtected
d_HashProtected_1804 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () -> ()
d_HashProtected_1804 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.NeedsHash
d_NeedsHash_1808 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_872 ->
  ()
d_NeedsHash_1808 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.Policy
d_Policy_1814 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Policy_1814 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.PolicyOf
d_PolicyOf_1816 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1216 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_1816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1224
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.Show-GovRole
d_Show'45'GovRole_1820 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_1820 ~v0 = du_Show'45'GovRole_1820
du_Show'45'GovRole_1820 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_1820
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_Show'45'GovRole_868
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.Show-VDeleg
d_Show'45'VDeleg_1822 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_1822 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_Show'45'VDeleg_1354
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2702
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.VDeleg
d_VDeleg_1830 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.Vote
d_Vote_1832 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.VoteDelegs
d_VoteDelegs_1834 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VoteDelegs_1834 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.VoteDelegsOf
d_VoteDelegsOf_1836 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1090 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1836 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_1098
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.VoteOf
d_VoteOf_1838 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1196 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_1008
d_VoteOf_1838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1204
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.activeDRepsOf
d_activeDRepsOf_1842 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1478 ->
  AgdaAny -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_1842 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (\ v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_activeDRepsOf_1504
           (coe
              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2702
              (coe v1))
           v3 v4 v5)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.activeInEpoch
d_activeInEpoch_1844 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_1844 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.gaData
d_gaData_1846 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_906 ->
  AgdaAny
d_gaData_1846 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_914
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.gaType
d_gaType_1848 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_906 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_872
d_gaType_1848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_912
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.govVoterCredential
d_govVoterCredential_1850 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1016 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_1850 ~v0 = du_govVoterCredential_1850
du_govVoterCredential_1850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1016 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_1850
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_govVoterCredential_1460
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.isGovVoterDRep
d_isGovVoterDRep_1852 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1016 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_1852 ~v0 = du_isGovVoterDRep_1852
du_isGovVoterDRep_1852 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1016 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_1852
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_isGovVoterDRep_1456
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.proposedCC
d_proposedCC_1856 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_906 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_1856 ~v0 = du_proposedCC_1856
du_proposedCC_1856 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_906 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_1856
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_proposedCC_1468
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovProposal.action
d_action_1872 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1120 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_906
d_action_1872 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1134
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovProposal.anchor
d_anchor_1874 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1120 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1028
d_anchor_1874 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1144
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovProposal.deposit
d_deposit_1876 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1120 ->
  Integer
d_deposit_1876 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_1140
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovProposal.policy
d_policy_1878 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1120 ->
  Maybe Integer
d_policy_1878 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_1138
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovProposal.prevAction
d_prevAction_1880 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1120 ->
  AgdaAny
d_prevAction_1880 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1136
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovProposal.returnAddr
d_returnAddr_1882 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1120 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_120
d_returnAddr_1882 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1142
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovVote.anchor
d_anchor_1894 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1040 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1028
d_anchor_1894 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1056
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovVote.gid
d_gid_1896 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1040 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gid_1050
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovVote.vote
d_vote_1898 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1040 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_1008
d_vote_1898 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_vote_1054
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovVote.voter
d_voter_1900 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1040 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1016
d_voter_1900 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_1052
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovVoter.gvCredential
d_gvCredential_1904 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1016 ->
  AgdaAny
d_gvCredential_1904 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCredential_1024
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovVoter.gvRole
d_gvRole_1906 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1016 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_860
d_gvRole_1906 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvRole_1022
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovVotes.gvCC
d_gvCC_1910 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1060 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_1910 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCC_1068
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovVotes.gvDRep
d_gvDRep_1912 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1060 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_1912 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvDRep_1070
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovVotes.gvSPO
d_gvSPO_1914 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1060 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_1914 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvSPO_1072
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasDReps.DRepsOf
d_DRepsOf_1918 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1478 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1918 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1486
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasGovAction.GovActionOf
d_GovActionOf_1922 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_920 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_906
d_GovActionOf_1922 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_926
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_1926 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_890 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_872
d_GovActionTypeOf_1926 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_896
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasGovVoter.GovVoterOf
d_GovVoterOf_1930 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1176 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1016
d_GovVoterOf_1930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1184
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasPolicy.PolicyOf
d_PolicyOf_1934 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1216 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_1934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1224
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasVote.VoteOf
d_VoteOf_1938 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1196 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_1008
d_VoteOf_1938 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1204
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_1942 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1090 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1942 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_1098
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1962 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1474 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1962 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1506
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovParams.UpdateT
d_UpdateT_1964 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1474 ->
  ()
d_UpdateT_1964 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovParams.applyUpdate
d_applyUpdate_1966 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1474 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
d_applyUpdate_1966 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1456
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1492
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.GovParams.ppUpd
d_ppUpd_1968 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1474 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1440
d_ppUpd_1968 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1492
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovParams.ppWF?
d_ppWF'63'_1970 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1474 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1970 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1464
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1492
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.GovParams.ppdWellFormed
d_ppdWellFormed_1972 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1474 ->
  AgdaAny -> ()
d_ppdWellFormed_1972 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovParams.updateGroups
d_updateGroups_1974 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1474 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_208]
d_updateGroups_1974 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1458
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1492
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.HasAttrSize.AttrSizeOf
d_AttrSizeOf_1978 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_218 ->
  AgdaAny -> Integer
d_AttrSizeOf_1978 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_226
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_1982 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_458 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_1982 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_466
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasCredential.CredentialOf
d_CredentialOf_1986 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_1986 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasDCerts.DCertsOf
d_DCertsOf_1990 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3574 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1372]
d_DCertsOf_1990 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DCertsOf_3582
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovProposals.GovProposalsOf
d_GovProposalsOf_1994 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3594 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1120]
d_GovProposalsOf_1994 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovProposalsOf_3602
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovVotes.GovVotesOf
d_GovVotesOf_1998 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovVotes_3614 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1040]
d_GovVotesOf_1998 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovVotesOf_3622
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasMaybeNetworkId.MaybeNetworkIdOf
d_MaybeNetworkIdOf_2002 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_178 ->
  AgdaAny -> Maybe Integer
d_MaybeNetworkIdOf_2002 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_186
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_2006 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_158 ->
  AgdaAny -> Integer
d_NetworkIdOf_2006 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_166
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasPParams.PParamsOf
d_PParamsOf_2010 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_438 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
d_PParamsOf_2010 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_446
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasRewardAddress.RewardAddressOf
d_RewardAddressOf_2014 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_138 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_120
d_RewardAddressOf_2014 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_146
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasTxBody.TxBodyOf
d_TxBodyOf_2018 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3554 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3474
d_TxBodyOf_2018 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxBodyOf_3562
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasTxId.TxIdOf
d_TxIdOf_2022 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3634 ->
  AgdaAny -> Integer
d_TxIdOf_2022 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxIdOf_3642
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasUTxO.UTxOOf
d_UTxOOf_2026 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3458 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_2026 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3466
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_2030 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_198 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_2030 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_206
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidHomomorphism.homo
d_homo_2042 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2042 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2044 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2044 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2046 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2046 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2048 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2048 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidHomomorphism.cong
d_cong_2050 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2050 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidIsomorphism.homo
d_homo_2054 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2054 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidIsomorphism.injective
d_injective_2056 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_2056 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2058 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2058 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2060 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_2060 ~v0 = du_isMagmaIsomorphism_2060
du_isMagmaIsomorphism_2060 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_2060 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2062 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2062 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2062 v2
du_isMagmaMonomorphism_2062 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2062 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2064 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2064 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2066 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_2066 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2068 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2068 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
               (coe v0))))
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_2070 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_2070 ~v0 ~v1 v2 = du_isRelIsomorphism_2070 v2
du_isRelIsomorphism_2070 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_2070 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2072 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2072 ~v0 ~v1 v2 = du_isRelMonomorphism_2072 v2
du_isRelMonomorphism_2072 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2072 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidIsomorphism.surjective
d_surjective_2074 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2074 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2076 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2076 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidIsomorphism.cong
d_cong_2078 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2078 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidMonomorphism.homo
d_homo_2082 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2082 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidMonomorphism.injective
d_injective_2084 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_2084 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2086 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2086 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2088 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2088 ~v0 = du_isMagmaMonomorphism_2088
du_isMagmaMonomorphism_2088 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2088 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2090 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2090 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2092 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2092 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2094 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2094 ~v0 ~v1 v2 = du_isRelMonomorphism_2094 v2
du_isRelMonomorphism_2094 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2094 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2096 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2096 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidMonomorphism.cong
d_cong_2098 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2098 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.LanguageCostModels.languageCostModels
d_languageCostModels_2102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_442 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_446
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2106 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_110 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_126
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_110 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_130
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_110 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_128
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.P1ScriptStructure.P1Script
d_P1Script_2112 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_110 ->
  ()
d_P1Script_2112 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.P1ScriptStructure.validP1Script
d_validP1Script_2114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_110 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2114 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.Emax
d_Emax_2130 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_Emax_2130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_404
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.a
d_a_2132 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_a_2132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_376 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.a0
d_a0_2134 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_408 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.b
d_b_2136 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_b_2136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_378 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.ccMaxTermLength
d_ccMaxTermLength_2138 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_ccMaxTermLength_2138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_420
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.ccMinSize
d_ccMinSize_2140 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_ccMinSize_2140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_418
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2142 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_coinsPerUTxOByte_2142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_388
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.collateralPercentage
d_collateralPercentage_2144 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_collateralPercentage_2144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_410
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.costmdls
d_costmdls_2146 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_2146 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.du_costmdls_430
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.costmdlsAssoc
d_costmdlsAssoc_2148 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_442
d_costmdlsAssoc_2148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdlsAssoc_412
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.drepActivity
d_drepActivity_2150 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_drepActivity_2150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_428
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.drepDeposit
d_drepDeposit_2152 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_drepDeposit_2152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_426
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.drepThresholds
d_drepThresholds_2154 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_220
d_drepThresholds_2154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_416
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.govActionDeposit
d_govActionDeposit_2156 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_govActionDeposit_2156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_424
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.govActionLifetime
d_govActionLifetime_2158 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_govActionLifetime_2158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_422
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.keyDeposit
d_keyDeposit_2160 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_keyDeposit_2160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_380
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxBlockExUnits
d_maxBlockExUnits_2162 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_2162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_368
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxBlockSize
d_maxBlockSize_2164 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_maxBlockSize_2164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_360
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxCollateralInputs
d_maxCollateralInputs_2166 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_maxCollateralInputs_2166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_372
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxHeaderSize
d_maxHeaderSize_2168 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_maxHeaderSize_2168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_364
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2170 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_maxRefScriptSizePerBlock_2170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_396
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2172 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_maxRefScriptSizePerTx_2172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_394
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxTxExUnits
d_maxTxExUnits_2174 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_2174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_366
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxTxSize
d_maxTxSize_2176 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_maxTxSize_2176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_362
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxValSize
d_maxValSize_2178 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_maxValSize_2178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_370
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2180 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_392
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.minUTxOValue
d_minUTxOValue_2182 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_minUTxOValue_2182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_402
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.monetaryExpansion
d_monetaryExpansion_2184 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_384
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.nopt
d_nopt_2186 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_nopt_2186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_406
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.poolDeposit
d_poolDeposit_2188 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_poolDeposit_2188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_382
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.poolThresholds
d_poolThresholds_2190 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_264
d_poolThresholds_2190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_414
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.prices
d_prices_2192 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_2192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_390
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.pv
d_pv_2194 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_374 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2196 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_400
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.refScriptCostStride
d_refScriptCostStride_2198 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_398
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.treasuryCut
d_treasuryCut_2200 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_386
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsDiff.UpdateT
d_UpdateT_2204 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1440 ->
  ()
d_UpdateT_2204 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsDiff.applyUpdate
d_applyUpdate_2206 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1440 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
d_applyUpdate_2206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1456
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsDiff.ppWF?
d_ppWF'63'_2208 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1440 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1464
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_2210 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1440 ->
  AgdaAny -> ()
d_ppdWellFormed_2210 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsDiff.updateGroups
d_updateGroups_2212 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1440 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_208]
d_updateGroups_2212 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1458
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate._?↗_
d__'63''8599'__2216 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__2216 ~v0 = du__'63''8599'__2216
du__'63''8599'__2216 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__2216 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du__'63''8599'__1226
      v1 v2
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate._∪ˡᶜᵐ_
d__'8746''737''7580''7504'__2218 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_442 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_442 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_442
d__'8746''737''7580''7504'__2218 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Script.Base.C_mkLanguageCostModels_448
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                 (coe
                    MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_234
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
                             (coe v1))))
                    (coe
                       MAlonzo.Code.Data.List.Base.du__'43''43'__32
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_446
                          (coe v2))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_446
                          (coe v3)))))))
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_2220 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_2220 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamsUpdate_1438
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1824
            (coe v1))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_2222 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_2226 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
d_applyPParamsUpdate_2226 v0
  = let v1 = d_HSTransactionStructure_690 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.du_applyPParamsUpdate_1280
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2096
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_2228 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_208]
d_modifiedUpdateGroups_2228 ~v0 = du_modifiedUpdateGroups_2228
du_modifiedUpdateGroups_2228 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_208]
du_modifiedUpdateGroups_2228
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiedUpdateGroups_1210
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_2230 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Bool
d_modifiesEconomicGroup_2230 ~v0 = du_modifiesEconomicGroup_2230
du_modifiesEconomicGroup_2230 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Bool
du_modifiesEconomicGroup_2230
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesEconomicGroup_906
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_2232 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Bool
d_modifiesGovernanceGroup_2232 ~v0
  = du_modifiesGovernanceGroup_2232
du_modifiesGovernanceGroup_2232 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Bool
du_modifiesGovernanceGroup_2232
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesGovernanceGroup_1058
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_2234 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Bool
d_modifiesNetworkGroup_2234 ~v0 = du_modifiesNetworkGroup_2234
du_modifiesNetworkGroup_2234 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Bool
du_modifiesNetworkGroup_2234
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesNetworkGroup_830
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_2236 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Bool
d_modifiesSecurityGroup_2236 ~v0 = du_modifiesSecurityGroup_2236
du_modifiesSecurityGroup_2236 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Bool
du_modifiesSecurityGroup_2236
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesSecurityGroup_1134
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_2238 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Bool
d_modifiesTechnicalGroup_2238 ~v0 = du_modifiesTechnicalGroup_2238
du_modifiesTechnicalGroup_2238 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Bool
du_modifiesTechnicalGroup_2238
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesTechnicalGroup_982
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_2240 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  ()
d_paramsUpdateWellFormed_2240 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_2242 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_2242 v0
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
            (coe
               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe (0 :: Integer)))
            (coe
               MAlonzo.Code.Axiom.Set.du_fromList_456
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_672
                     (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_674
                        (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_676
                           (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_678
                              (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_700
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_694
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_722
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_740
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_730
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_732
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_734
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
         (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.≡-update
d_'8801''45'update_2244 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_2244 ~v0 = du_'8801''45'update_2244
du_'8801''45'update_2244 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'update_2244 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_'8801''45'update_1240
      v1
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_2248 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_Emax_2248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_718
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.a
d_a_2250 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_a_2250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_688 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.a0
d_a0_2252 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_716 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.b
d_b_2254 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_b_2254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_690 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_2256 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_ccMaxTermLength_2256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_740
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_2258 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_ccMinSize_2258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_738
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2260 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_coinsPerUTxOByte_2260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_700
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2262 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_collateralPercentage_2262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_722
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2264 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_442
d_costmdls_2264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_724
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2266 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_drepActivity_2266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_736
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2268 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_drepDeposit_2268 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_734
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2270 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_220
d_drepThresholds_2270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_726
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2272 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_govActionDeposit_2272 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_732
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2274 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_govActionLifetime_2274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_730
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2276 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_keyDeposit_2276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_692
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2278 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_2278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_684
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2280 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_maxBlockSize_2280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_672
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2282 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_maxCollateralInputs_2282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_680
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2284 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_maxHeaderSize_2284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_676
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2286 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_2286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_708
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2288 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_maxRefScriptSizePerTx_2288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_706
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2290 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_2290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_682
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2292 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_maxTxSize_2292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_674
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2294 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_maxValSize_2294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_678
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2296 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_704
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2298 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_minUTxOValue_2298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_714
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_2300 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2300 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_696
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2302 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_nopt_2302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_720
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2304 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_poolDeposit_2304 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_694
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2306 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_264
d_poolThresholds_2306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_728
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.prices
d_prices_2308 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_2308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_702
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.pv
d_pv_2310 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_686 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_2312 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_712
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_2314 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2314 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_710
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_2316 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2316 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_698
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure._≥ᵉ_
d__'8805''7497'__2320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2320 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.CostModel
d_CostModel_2322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  ()
d_CostModel_2322 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.T
d_T_2324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  ()
d_T_2324 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.THash
d_THash_2326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  ()
d_THash_2326 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.Dataʰ
d_Data'688'_2328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.Datum
d_Datum_2330 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  ()
d_Datum_2330 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_280
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_2334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_250
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_2336 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_236
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_248
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2340 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_238
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_2342 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2342 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_234
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.DecEq-T
d_DecEq'45'T_2344 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2344 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_2346 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2346 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2348 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_230
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.ExUnits
d_ExUnits_2350 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  ()
d_ExUnits_2350 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_232
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.LangDepView
d_LangDepView_2354 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  ()
d_LangDepView_2354 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.Language
d_Language_2356 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  ()
d_Language_2356 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.PlutusScript
d_PlutusScript_2358 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  ()
d_PlutusScript_2358 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.PlutusV1
d_PlutusV1_2360 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  AgdaAny
d_PlutusV1_2360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_224
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.PlutusV2
d_PlutusV2_2362 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  AgdaAny
d_PlutusV2_2362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_226
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.PlutusV3
d_PlutusV3_2364 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  AgdaAny
d_PlutusV3_2364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_228
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.Prices
d_Prices_2366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  ()
d_Prices_2366 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.Redeemer
d_Redeemer_2368 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  ()
d_Redeemer_2368 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_2370 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_242
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_2372 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_252
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.Show-Language
d_Show'45'Language_2374 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_240
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.Show-Prices
d_Show'45'Prices_2376 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_254
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.Show-THash
d_Show'45'THash_2378 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2378 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.T-Hashable
d_T'45'Hashable_2380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2380 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.T-isHashable
d_T'45'isHashable_2382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2382 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.language
d_language_2384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  AgdaAny -> AgdaAny
d_language_2384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_282
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.validPlutusScript
d_validPlutusScript_2386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2386 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_2388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_2388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_246
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PoolThresholds.Q1
d_Q1_2392 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q1_276 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PoolThresholds.Q2a
d_Q2a_2394 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2394 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2a_278 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PoolThresholds.Q2b
d_Q2b_2396 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2396 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2b_280 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PoolThresholds.Q4
d_Q4_2398 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2398 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q4_282 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PoolThresholds.Q5
d_Q5_2400 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_2400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q5_284 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.RewardAddress.net
d_net_2404 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_120 ->
  Integer
d_net_2404 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_126 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.RewardAddress.stake
d_stake_2406 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_120 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_2406 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_128 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure._≥ᵉ_
d__'8805''7497'__2410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2410 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.CostModel
d_CostModel_2412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  ()
d_CostModel_2412 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.T
d_T_2414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  ()
d_T_2414 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.THash
d_THash_2416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  ()
d_THash_2416 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Dataʰ
d_Data'688'_2418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Datum
d_Datum_2420 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  ()
d_Datum_2420 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_126
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_312
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_280
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_2426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_250
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_2428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_236
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2430 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_248
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2432 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_238
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_2434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_234
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_2436 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_2436 ~v0
  = du_DecEq'45'LanguageCostModels_2436
du_DecEq'45'LanguageCostModels_2436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'LanguageCostModels_2436
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_DecEq'45'LanguageCostModels_450
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_130
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_312
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.DecEq-T
d_DecEq'45'T_2440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2440 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_2442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2442 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2444 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2444 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_230
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.ExUnits
d_ExUnits_2446 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  ()
d_ExUnits_2446 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_128
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_312
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2450 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_232
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_2452 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_2452 ~v0 = du_Hashable'45'Script_2452
du_Hashable'45'Script_2452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_Hashable'45'Script_2452
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_410
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.LangDepView
d_LangDepView_2454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  ()
d_LangDepView_2454 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Language
d_Language_2456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  ()
d_Language_2456 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.LanguageCostModels
d_LanguageCostModels_2458 a0 a1 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.P1Script
d_P1Script_2462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  ()
d_P1Script_2462 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.PlutusScript
d_PlutusScript_2464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  ()
d_PlutusScript_2464 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.PlutusV1
d_PlutusV1_2466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  AgdaAny
d_PlutusV1_2466 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_224
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.PlutusV2
d_PlutusV2_2468 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  AgdaAny
d_PlutusV2_2468 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.PlutusV3
d_PlutusV3_2470 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  AgdaAny
d_PlutusV3_2470 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_228
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Prices
d_Prices_2472 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  ()
d_Prices_2472 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Redeemer
d_Redeemer_2474 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  ()
d_Redeemer_2474 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Script
d_Script_2476 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  ()
d_Script_2476 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_2478 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2478 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_242
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_2480 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2480 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_252
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Show-Language
d_Show'45'Language_2482 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2482 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_240
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Show-LanguageCostModels
d_Show'45'LanguageCostModels_2484 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_2484 ~v0
  = du_Show'45'LanguageCostModels_2484
du_Show'45'LanguageCostModels_2484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'LanguageCostModels_2484
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Show'45'LanguageCostModels_456
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Show-Prices
d_Show'45'Prices_2486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2486 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_254
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Show-THash
d_Show'45'THash_2488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2488 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.T-Hashable
d_T'45'Hashable_2490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2490 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.T-isHashable
d_T'45'isHashable_2492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2492 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
            (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.getLanguage
d_getLanguage_2494 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_getLanguage_2494 ~v0 = du_getLanguage_2494
du_getLanguage_2494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_getLanguage_2494
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_getLanguage_438
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_2496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_2496 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_332
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.isNativeScript
d_isNativeScript_2498 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_2498 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.isP1Script
d_isP1Script_2500 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_2500 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.isP1Script?
d_isP1Script'63'_2502 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_2502 ~v0 = du_isP1Script'63'_2502
du_isP1Script'63'_2502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_2502 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP1Script'63'_416
      v1
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.isP2Script
d_isP2Script_2504 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_2504 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.isP2Script?
d_isP2Script'63'_2506 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_2506 ~v0 = du_isP2Script'63'_2506
du_isP2Script'63'_2506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_2506 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP2Script'63'_430
      v1
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.language
d_language_2508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  AgdaAny -> AgdaAny
d_language_2508 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_282
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.languageCostModels
d_languageCostModels_2510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_442 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2510 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_446
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.p1s
d_p1s_2514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_110
d_p1s_2514 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_312
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.ps
d_ps_2516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134
d_ps_2516 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.toP1Script
d_toP1Script_2518 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_2518 ~v0 = du_toP1Script_2518
du_toP1Script_2518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_2518 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_424
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.toP2Script
d_toP2Script_2520 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_2520 ~v0 = du_toP2Script_2520
du_toP2Script_2520 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_2520 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_436
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.validP1Script
d_validP1Script_2522 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2522 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.validPlutusScript
d_validPlutusScript_2524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2524 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_2526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_2526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_246
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.LanguageCostModels.languageCostModels
d_languageCostModels_2530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_442 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_446
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra._∙_
d__'8729'__2534 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2534 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra._≈_
d__'8776'__2536 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__2536 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__2538 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2538 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_2540 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_2542 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2544 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2548 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2552 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.Value
d_Value_2556 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_2556 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2558 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_2558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.addValue
d_addValue_2560 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_2560 ~v0 = du_addValue_2560
du_addValue_2560 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
du_addValue_2560
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.coin
d_coin_2562 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_2562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_2564 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2564 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2566 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_2566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_2568 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_2568 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.inject
d_inject_2570 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_2570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.monoid
d_monoid_2572 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_2572 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.policies
d_policies_2574 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [Integer]
d_policies_2574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.rawMonoid
d_rawMonoid_2576 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_2576 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.size
d_size_2578 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_2578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.sumᵛ
d_sum'7515'_2580 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_2580 ~v0 = du_sum'7515'_2580
du_sum'7515'_2580 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_2580
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.ε
d_ε_2582 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny
d_ε_2582 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_2586 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2586 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2588 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2588 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2590 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2590 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2592 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2592 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_2594 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2594 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_2598 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2598 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_2600 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2600 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2602 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2602 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2604 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_2604 ~v0 = du_isMagmaIsomorphism_2604
du_isMagmaIsomorphism_2604 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_2604 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2606 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2606 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2606 v2
du_isMagmaMonomorphism_2606 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2606 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2608 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2608 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2610 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_2610 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2612 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2612 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
               (coe v0))))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_2614 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_2614 ~v0 ~v1 v2 = du_isRelIsomorphism_2614 v2
du_isRelIsomorphism_2614 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_2614 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2616 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2616 ~v0 ~v1 v2 = du_isRelMonomorphism_2616 v2
du_isRelMonomorphism_2616 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2616 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.surjective
d_surjective_2618 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2618 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2620 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2620 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_2622 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2622 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_2626 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2626 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_2628 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2628 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2630 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2630 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2632 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2632 ~v0 = du_isMagmaMonomorphism_2632
du_isMagmaMonomorphism_2632 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2632 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2634 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2634 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2636 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2636 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2638 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2638 ~v0 ~v1 v2 = du_isRelMonomorphism_2638 v2
du_isRelMonomorphism_2638 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2638 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2640 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2640 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_2642 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2642 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Tx.body
d_body_2646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3674 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3474
d_body_2646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3686
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.Tx.isValid
d_isValid_2648 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3674 ->
  Bool
d_isValid_2648 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3692
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.Tx.txAD
d_txAD_2650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3674 ->
  Maybe Integer
d_txAD_2650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3694
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.Tx.txsize
d_txsize_2652 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3674 ->
  Integer
d_txsize_2652 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3690
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.Tx.wits
d_wits_2654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3674 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3652
d_wits_2654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3688
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.collateralInputs
d_collateralInputs_2658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3474 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_2658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3516
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.currentTreasury
d_currentTreasury_2660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3474 ->
  Maybe Integer
d_currentTreasury_2660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3540
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.mint
d_mint_2662 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3474 ->
  Integer
d_mint_2662 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3542
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.refInputs
d_refInputs_2664 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3474 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2664 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3514
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.reqSignerHashes
d_reqSignerHashes_2666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3474 ->
  [Integer]
d_reqSignerHashes_2666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3544
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_2668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3474 ->
  Maybe Integer
d_scriptIntegrityHash_2668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_3546
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.txADhash
d_txADhash_2670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3474 ->
  Maybe Integer
d_txADhash_2670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3530
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.txCerts
d_txCerts_2672 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3474 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1372]
d_txCerts_2672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3522
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.txDonation
d_txDonation_2674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3474 ->
  Integer
d_txDonation_2674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3532
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.txFee
d_txFee_2676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3474 ->
  Integer
d_txFee_2676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3524
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.txGovProposals
d_txGovProposals_2678 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3474 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1120]
d_txGovProposals_2678 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3536
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.txGovVotes
d_txGovVotes_2680 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3474 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1040]
d_txGovVotes_2680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3534
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.txId
d_txId_2682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3474 ->
  Integer
d_txId_2682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3520
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.txIns
d_txIns_2684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3474 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2684 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3512
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.txNetworkId
d_txNetworkId_2686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3474 ->
  Maybe Integer
d_txNetworkId_2686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3538
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.txOuts
d_txOuts_2688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3474 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3518
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.txVldt
d_txVldt_2690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3474 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3528
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.txWithdrawals
d_txWithdrawals_2692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3474 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3526
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxWitnesses.scripts
d_scripts_2696 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3652 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2696 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3664
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxWitnesses.scriptsP1
d_scriptsP1_2698 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3652 ->
  [MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302]
d_scriptsP1_2698 ~v0 = du_scriptsP1_2698
du_scriptsP1_2698 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3652 ->
  [MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302]
du_scriptsP1_2698
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_scriptsP1_3670
-- Ledger.Conway.Foreign.ExternalStructures._.TxWitnesses.txdats
d_txdats_2700 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3652 ->
  [Integer]
d_txdats_2700 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3666
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxWitnesses.txrdmrs
d_txrdmrs_2702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2702 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3668
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxWitnesses.vkSigs
d_vkSigs_2704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2704 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3662
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2716 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1412 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1480 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1372] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1480 ->
  ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2716 = erased
-- Ledger.Conway.Foreign.ExternalStructures._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__2718 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Foreign.ExternalStructures._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__2720 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Foreign.ExternalStructures._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__2722 a0 a1 a2 a3 a4
  = ()
-- Ledger.Conway.Foreign.ExternalStructures._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__2724 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Foreign.ExternalStructures._._⊢_⇀⦇_,PRE-CERT⦈_
d__'8866'_'8640''10631'_'44'PRE'45'CERT'10632'__2726 a0 a1 a2 a3 a4
  = ()
-- Ledger.Conway.Foreign.ExternalStructures._.CCHotKeys
d_CCHotKeys_2728 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_CCHotKeys_2728 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.CCHotKeysOf
d_CCHotKeysOf_2730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1256 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_2730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1264
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.CertEnv
d_CertEnv_2740 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.CertState
d_CertState_2744 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.CertStateOf
d_CertStateOf_2748 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1576 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1480
d_CertStateOf_2748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1584
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DCert
d_DCert_2752 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.DState
d_DState_2762 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.DStateOf
d_DStateOf_2766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1516 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1436
d_DStateOf_2766 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1524
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-DCert
d_DecEq'45'DCert_2768 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DCert_2768 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DCert_1392
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2702
         (coe d_HSTransactionStructure_690 (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2770 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2770 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1236
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2702
         (coe d_HSTransactionStructure_690 (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-StakePoolParams
d_DecEq'45'StakePoolParams_2772 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'StakePoolParams_2772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'StakePoolParams_1390
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2702
         (coe d_HSTransactionStructure_690 (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.DelegEnv
d_DelegEnv_2774 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.DepositPurpose
d_DepositPurpose_2778 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.Deposits
d_Deposits_2780 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Deposits_2780 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.DepositsOf
d_DepositsOf_2782 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1220 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1228
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GState
d_GState_2790 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GStateOf
d_GStateOf_2794 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1556 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1468
d_GStateOf_2794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1564
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasCCHotKeys
d_HasCCHotKeys_2798 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasCCHotKeys-CertState
d_HasCCHotKeys'45'CertState_2802 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1256
d_HasCCHotKeys'45'CertState_2802 ~v0
  = du_HasCCHotKeys'45'CertState_2802
du_HasCCHotKeys'45'CertState_2802 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1256
du_HasCCHotKeys'45'CertState_2802
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'CertState_1620
-- Ledger.Conway.Foreign.ExternalStructures._.HasCCHotKeys-GState
d_HasCCHotKeys'45'GState_2804 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1256
d_HasCCHotKeys'45'GState_2804 ~v0 = du_HasCCHotKeys'45'GState_2804
du_HasCCHotKeys'45'GState_2804 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1256
du_HasCCHotKeys'45'GState_2804
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'GState_1608
-- Ledger.Conway.Foreign.ExternalStructures._.HasCast-CertEnv
d_HasCast'45'CertEnv_2806 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2806 ~v0 = du_HasCast'45'CertEnv_2806
du_HasCast'45'CertEnv_2806 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2806
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1636
-- Ledger.Conway.Foreign.ExternalStructures._.HasCast-CertState
d_HasCast'45'CertState_2808 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertState_2808 ~v0 = du_HasCast'45'CertState_2808
du_HasCast'45'CertState_2808 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertState_2808
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertState_1644
-- Ledger.Conway.Foreign.ExternalStructures._.HasCast-DState
d_HasCast'45'DState_2810 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_2810 ~v0 = du_HasCast'45'DState_2810
du_HasCast'45'DState_2810 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DState_2810
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1638
-- Ledger.Conway.Foreign.ExternalStructures._.HasCast-DelegEnv
d_HasCast'45'DelegEnv_2812 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DelegEnv_2812 ~v0 = du_HasCast'45'DelegEnv_2812
du_HasCast'45'DelegEnv_2812 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DelegEnv_2812
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DelegEnv_1646
-- Ledger.Conway.Foreign.ExternalStructures._.HasCast-GState
d_HasCast'45'GState_2814 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GState_2814 ~v0 = du_HasCast'45'GState_2814
du_HasCast'45'GState_2814 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GState_2814
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'GState_1642
-- Ledger.Conway.Foreign.ExternalStructures._.HasCast-PState
d_HasCast'45'PState_2816 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_2816 ~v0 = du_HasCast'45'PState_2816
du_HasCast'45'PState_2816 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PState_2816
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'PState_1640
-- Ledger.Conway.Foreign.ExternalStructures._.HasCertState
d_HasCertState_2818 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasCoin-CertState
d_HasCoin'45'CertState_2822 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'CertState_2822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_HasCoin'45'CertState_1634
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2702
         (coe d_HSTransactionStructure_690 (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.HasDReps-CertState
d_HasDReps'45'CertState_2824 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1478
d_HasDReps'45'CertState_2824 ~v0 = du_HasDReps'45'CertState_2824
du_HasDReps'45'CertState_2824 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1478
du_HasDReps'45'CertState_2824
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'CertState_1618
-- Ledger.Conway.Foreign.ExternalStructures._.HasDReps-GState
d_HasDReps'45'GState_2826 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1478
d_HasDReps'45'GState_2826 ~v0 = du_HasDReps'45'GState_2826
du_HasDReps'45'GState_2826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1478
du_HasDReps'45'GState_2826
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'GState_1606
-- Ledger.Conway.Foreign.ExternalStructures._.HasDState
d_HasDState_2828 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasDState-CertState
d_HasDState'45'CertState_2832 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1516
d_HasDState'45'CertState_2832 ~v0 = du_HasDState'45'CertState_2832
du_HasDState'45'CertState_2832 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1516
du_HasDState'45'CertState_2832
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDState'45'CertState_1610
-- Ledger.Conway.Foreign.ExternalStructures._.HasDeposits
d_HasDeposits_2834 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasGState
d_HasGState_2838 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasGState-CertState
d_HasGState'45'CertState_2842 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1556
d_HasGState'45'CertState_2842 ~v0 = du_HasGState'45'CertState_2842
du_HasGState'45'CertState_2842 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1556
du_HasGState'45'CertState_2842
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasGState'45'CertState_1614
-- Ledger.Conway.Foreign.ExternalStructures._.HasPParams-CertEnv
d_HasPParams'45'CertEnv_2844 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_438
d_HasPParams'45'CertEnv_2844 ~v0 = du_HasPParams'45'CertEnv_2844
du_HasPParams'45'CertEnv_2844 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_438
du_HasPParams'45'CertEnv_2844
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPParams'45'CertEnv_1592
-- Ledger.Conway.Foreign.ExternalStructures._.HasPState
d_HasPState_2846 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasPState-CertState
d_HasPState'45'CertState_2850 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1536
d_HasPState'45'CertState_2850 ~v0 = du_HasPState'45'CertState_2850
du_HasPState'45'CertState_2850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1536
du_HasPState'45'CertState_2850
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPState'45'CertState_1612
-- Ledger.Conway.Foreign.ExternalStructures._.HasPools
d_HasPools_2852 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasPools-CertState
d_HasPools'45'CertState_2856 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1272
d_HasPools'45'CertState_2856 ~v0 = du_HasPools'45'CertState_2856
du_HasPools'45'CertState_2856 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1272
du_HasPools'45'CertState_2856
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'CertState_1622
-- Ledger.Conway.Foreign.ExternalStructures._.HasPools-PState
d_HasPools'45'PState_2858 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1272
d_HasPools'45'PState_2858 ~v0 = du_HasPools'45'PState_2858
du_HasPools'45'PState_2858 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1272
du_HasPools'45'PState_2858
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'PState_1602
-- Ledger.Conway.Foreign.ExternalStructures._.HasRetiring
d_HasRetiring_2860 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasRetiring-PState
d_HasRetiring'45'PState_2864 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1288
d_HasRetiring'45'PState_2864 ~v0 = du_HasRetiring'45'PState_2864
du_HasRetiring'45'PState_2864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1288
du_HasRetiring'45'PState_2864
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRetiring'45'PState_1604
-- Ledger.Conway.Foreign.ExternalStructures._.HasRewards
d_HasRewards_2866 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasRewards-CertState
d_HasRewards'45'CertState_2870 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1304
d_HasRewards'45'CertState_2870 ~v0
  = du_HasRewards'45'CertState_2870
du_HasRewards'45'CertState_2870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1304
du_HasRewards'45'CertState_2870
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1616
-- Ledger.Conway.Foreign.ExternalStructures._.HasRewards-DState
d_HasRewards'45'DState_2872 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1304
d_HasRewards'45'DState_2872 ~v0 = du_HasRewards'45'DState_2872
du_HasRewards'45'DState_2872 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1304
du_HasRewards'45'DState_2872
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'DState_1600
-- Ledger.Conway.Foreign.ExternalStructures._.HasStake
d_HasStake_2874 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasStakeDelegs
d_HasStakeDelegs_2878 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasStakeDelegs-CertState
d_HasStakeDelegs'45'CertState_2882 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1336
d_HasStakeDelegs'45'CertState_2882 ~v0
  = du_HasStakeDelegs'45'CertState_2882
du_HasStakeDelegs'45'CertState_2882 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1336
du_HasStakeDelegs'45'CertState_2882
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasStakeDelegs'45'CertState_1626
-- Ledger.Conway.Foreign.ExternalStructures._.HasStakeDelegs-DState
d_HasStakeDelegs'45'DState_2884 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1336
d_HasStakeDelegs'45'DState_2884 ~v0
  = du_HasStakeDelegs'45'DState_2884
du_HasStakeDelegs'45'DState_2884 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1336
du_HasStakeDelegs'45'DState_2884
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasStakeDelegs'45'DState_1598
-- Ledger.Conway.Foreign.ExternalStructures._.HasVoteDelegs-CertState
d_HasVoteDelegs'45'CertState_2886 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1090
d_HasVoteDelegs'45'CertState_2886 ~v0
  = du_HasVoteDelegs'45'CertState_2886
du_HasVoteDelegs'45'CertState_2886 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1090
du_HasVoteDelegs'45'CertState_2886
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'CertState_1624
-- Ledger.Conway.Foreign.ExternalStructures._.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_2888 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1090
d_HasVoteDelegs'45'DState_2888 ~v0
  = du_HasVoteDelegs'45'DState_2888
du_HasVoteDelegs'45'DState_2888 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1090
du_HasVoteDelegs'45'DState_2888
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'DState_1596
-- Ledger.Conway.Foreign.ExternalStructures._.HasWithdrawals-CertEnv
d_HasWithdrawals'45'CertEnv_2890 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_198
d_HasWithdrawals'45'CertEnv_2890 ~v0
  = du_HasWithdrawals'45'CertEnv_2890
du_HasWithdrawals'45'CertEnv_2890 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_198
du_HasWithdrawals'45'CertEnv_2890
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasWithdrawals'45'CertEnv_1594
-- Ledger.Conway.Foreign.ExternalStructures._.PState
d_PState_2896 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.PStateOf
d_PStateOf_2900 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1536 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1452
d_PStateOf_2900 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1544
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PoolEnv
d_PoolEnv_2904 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_PoolEnv_2904 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Pools
d_Pools_2906 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Pools_2906 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PoolsOf
d_PoolsOf_2908 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1272 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_2908 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1280
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.Retiring
d_Retiring_2910 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Retiring_2910 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.RetiringOf
d_RetiringOf_2912 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1288 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_2912 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1296
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.Rewards
d_Rewards_2914 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Rewards_2914 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.RewardsOf
d_RewardsOf_2916 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1304 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2916 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1312
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.Stake
d_Stake_2918 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Stake_2918 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.StakeDelegs
d_StakeDelegs_2920 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_StakeDelegs_2920 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.StakeDelegsOf
d_StakeDelegsOf_2922 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1336 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_2922 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1344
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.StakeOf
d_StakeOf_2924 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1320 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_2924 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeOf_1328
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.StakePoolParams
d_StakePoolParams_2926 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.cwitness
d_cwitness_2932 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1372 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_cwitness_2932 ~v0 = du_cwitness_2932
du_cwitness_2932 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1372 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_cwitness_2932
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_cwitness_1394
-- Ledger.Conway.Foreign.ExternalStructures._.isPoolRegistered
d_isPoolRegistered_2940 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1180
d_isPoolRegistered_2940 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_isPoolRegistered_1730
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2702
         (coe d_HSTransactionStructure_690 (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.rewardsBalance
d_rewardsBalance_2950 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1436 ->
  Integer
d_rewardsBalance_2950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardsBalance_1628
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2702
         (coe d_HSTransactionStructure_690 (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.CertEnv.coldCreds
d_coldCreds_2994 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1412 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_coldCreds_2994 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_coldCreds_1432
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.CertEnv.epoch
d_epoch_2996 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1412 ->
  Integer
d_epoch_2996 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_epoch_1424
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.CertEnv.pp
d_pp_2998 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1412 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
d_pp_2998 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pp_1426 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.CertEnv.votes
d_votes_3000 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1412 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1040]
d_votes_3000 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_votes_1428
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.CertEnv.wdrls
d_wdrls_3002 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1412 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_3002 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_wdrls_1430
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.CertState.dState
d_dState_3006 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1480 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1436
d_dState_3006 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1488
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.CertState.gState
d_gState_3008 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1480 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1468
d_gState_3008 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1492
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.CertState.pState
d_pState_3010 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1480 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1452
d_pState_3010 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1490
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DState.rewards
d_rewards_3032 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_3032 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1448
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DState.stakeDelegs
d_stakeDelegs_3034 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_3034 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1446
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DState.voteDelegs
d_voteDelegs_3036 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_3036 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1444
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DelegEnv.delegatees
d_delegatees_3040 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1496 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_delegatees_3040 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_delegatees_1508
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DelegEnv.pools
d_pools_3042 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1496 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_3042 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1506
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DelegEnv.pparams
d_pparams_3044 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1496 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
d_pparams_3044 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pparams_1504
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GState.ccHotKeys
d_ccHotKeys_3058 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1468 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_3058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_ccHotKeys_1476
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GState.dreps
d_dreps_3060 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1468 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_3060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1474
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasCCHotKeys.CCHotKeysOf
d_CCHotKeysOf_3064 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1256 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_3064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1264
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasCertState.CertStateOf
d_CertStateOf_3068 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1576 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1480
d_CertStateOf_3068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1584
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasDState.DStateOf
d_DStateOf_3072 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1516 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1436
d_DStateOf_3072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1524
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasDeposits.DepositsOf
d_DepositsOf_3076 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1220 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_3076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1228
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasGState.GStateOf
d_GStateOf_3080 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1556 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1468
d_GStateOf_3080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1564
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasPState.PStateOf
d_PStateOf_3084 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1536 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1452
d_PStateOf_3084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1544
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasPools.PoolsOf
d_PoolsOf_3088 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1272 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_3088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1280
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasRetiring.RetiringOf
d_RetiringOf_3092 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1288 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_3092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1296
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasRewards.RewardsOf
d_RewardsOf_3096 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1304 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_3096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1312
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasStake.StakeOf
d_StakeOf_3100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1320 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_3100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeOf_1328
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasStakeDelegs.StakeDelegsOf
d_StakeDelegsOf_3104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1336 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_3104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1344
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PState.fPools
d_fPools_3108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1452 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_3108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1462
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PState.pools
d_pools_3110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1452 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_3110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1460
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PState.retiring
d_retiring_3112 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1452 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_3112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1464
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.StakePoolParams.cost
d_cost_3116 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1180 ->
  Integer
d_cost_3116 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_cost_1194 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.StakePoolParams.margin
d_margin_3118 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1180 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_3118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_margin_1196
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.StakePoolParams.owners
d_owners_3120 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1180 ->
  [Integer]
d_owners_3120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_owners_1192
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.StakePoolParams.pledge
d_pledge_3122 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1180 ->
  Integer
d_pledge_3122 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pledge_1198
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.StakePoolParams.rewardAccount
d_rewardAccount_3124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1180 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_rewardAccount_3124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1200
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.AbstractFunctions
d_AbstractFunctions_3128 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.AbstractFunctions.DecEq-UTCTime
d_DecEq'45'UTCTime_3140 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UTCTime_3140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_DecEq'45'UTCTime_2554
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.AbstractFunctions.UTCTime
d_UTCTime_3142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  ()
d_UTCTime_3142 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.AbstractFunctions.epochInfoSlotToUTCTime
d_epochInfoSlotToUTCTime_3144 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  Integer -> Maybe AgdaAny
d_epochInfoSlotToUTCTime_3144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_epochInfoSlotToUTCTime_2568
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.AbstractFunctions.getLanguageView
d_getLanguageView_3146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_getLanguageView_3146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_getLanguageView_2566
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.AbstractFunctions.indexOfImp
d_indexOfImp_3148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_indexOf_2500
d_indexOfImp_3148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_indexOfImp_2560
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.AbstractFunctions.scriptSize
d_scriptSize_3150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_3150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_scriptSize_2562
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.AbstractFunctions.serSize
d_serSize_3152 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  Integer -> Integer
d_serSize_3152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_serSize_2558
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.AbstractFunctions.transVITime
d_transVITime_3154 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_transVITime_3154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_transVITime_2570
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.AbstractFunctions.txscriptfee
d_txscriptfee_3156 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txscriptfee_3156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_txscriptfee_2556
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.AbstractFunctions.valContext
d_valContext_3158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2458 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_ScriptPurpose_2444 ->
  Integer
d_valContext_3158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_valContext_2564
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures.HSAbstractFunctions
d_HSAbstractFunctions_3174 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2530
d_HSAbstractFunctions_3174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.C_constructor_2572
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (\ v1 v2 -> 0 :: Integer) (\ v1 -> 0 :: Integer)
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Abstract.C_constructor_2526
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Data.Maybe.Base.du_map_64
                 (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18)
                 (coe
                    MAlonzo.Code.Data.List.Base.du_findIndex'7495'_928
                    (\ v3 ->
                       coe
                         MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DCert_1392
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2702
                               (coe d_HSTransactionStructure_690 (coe v0))))
                         (coe v3) (coe v1))
                    v2)))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Data.Maybe.Base.du_map_64
                 (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18)
                 (coe
                    MAlonzo.Code.Data.List.Base.du_findIndex'7495'_928
                    (\ v3 ->
                       coe
                         MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
                         (coe
                            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                            (coe
                               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_188
                               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))
                         (coe v3) (coe du_rewardAddressToSOP_3180 (coe v1)))
                    (coe
                       MAlonzo.Code.Data.List.Sort.Base.d_sort_248
                       (coe
                          MAlonzo.Code.Data.List.Sort.du_sortingAlgorithm_138
                          (coe du_DecTotalOrder'45'RewardAddressSOP_3194))
                       (coe
                          MAlonzo.Code.Axiom.Set.du_map_426
                          (MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe du_rewardAddressToSOP_3180)
                          (coe
                             MAlonzo.Code.Class.IsSet.du_dom_586
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v2)))))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Data.Maybe.Base.du_map_64
                 (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18)
                 (coe
                    MAlonzo.Code.Data.List.Base.du_findIndex'7495'_928
                    (\ v3 ->
                       coe
                         MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
                         (coe
                            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                         (coe v3) (coe v1))
                    v2)))
         (coe (\ v1 v2 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
         (coe (\ v1 v2 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Data.Maybe.Base.du_map_64
                 (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18)
                 (coe
                    MAlonzo.Code.Data.List.Base.du_findIndex'7495'_928
                    (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovProposal_1360
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2702
                          (coe d_HSTransactionStructure_690 (coe v0)))
                       (coe v1))
                    v2))))
      (\ v1 ->
         case coe v1 of
           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v2
             -> coe
                  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_tlScriptSize_314
                  (coe v2)
           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v2
             -> coe
                  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_psScriptSize_338
                  (coe v2)
           _ -> MAlonzo.RTE.mazUnreachableError)
      (\ v1 v2 -> 0 :: Integer)
      (\ v1 v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (\ v1 ->
         coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe (0 :: Integer)))
      (\ v1 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
-- Ledger.Conway.Foreign.ExternalStructures._.rewardAddressToSOP
d_rewardAddressToSOP_3180 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_120 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewardAddressToSOP_3180 ~v0 v1 = du_rewardAddressToSOP_3180 v1
du_rewardAddressToSOP_3180 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_120 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewardAddressToSOP_3180 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_130 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v3
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                    (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v3))
             MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v3
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                    (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Foreign.ExternalStructures._.DecTotalOrder-RewardAddressSOP
d_DecTotalOrder'45'RewardAddressSOP_3194 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098
d_DecTotalOrder'45'RewardAddressSOP_3194 ~v0
  = du_DecTotalOrder'45'RewardAddressSOP_3194
du_DecTotalOrder'45'RewardAddressSOP_3194 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098
du_DecTotalOrder'45'RewardAddressSOP_3194
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_1272
      (coe
         MAlonzo.Code.Data.Product.Relation.Binary.Lex.NonStrict.du_'215''45'isDecTotalOrder_334
         (coe
            MAlonzo.Code.Data.Nat.Instances.d_ℕ'45''8804''45'isDecTotalOrder_8)
         (coe
            MAlonzo.Code.Data.Sum.Relation.Binary.LeftOrder.du_'8846''45''60''45'isDecTotalOrder_596
            (coe
               MAlonzo.Code.Data.Nat.Instances.d_ℕ'45''8804''45'isDecTotalOrder_8)
            (coe
               MAlonzo.Code.Data.Nat.Instances.d_ℕ'45''8804''45'isDecTotalOrder_8)))
