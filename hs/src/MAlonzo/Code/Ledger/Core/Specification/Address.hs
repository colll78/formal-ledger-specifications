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

module MAlonzo.Code.Ledger.Core.Specification.Address where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Class.Show.Instances
import qualified MAlonzo.Code.Data.Bool.Properties
import qualified MAlonzo.Code.Data.Maybe.Properties
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Nat.Show
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.Show

-- Ledger.Core.Specification.Address.Credential
d_Credential_20 a0 a1 a2 a3 a4 a5 = ()
data T_Credential_20
  = C_KeyHashObj_22 AgdaAny | C_ScriptObj_24 AgdaAny
-- Ledger.Core.Specification.Address.HasCredential
d_HasCredential_30 a0 a1 a2 a3 a4 a5 a6 a7 = ()
newtype T_HasCredential_30
  = C_constructor_40 (AgdaAny -> T_Credential_20)
-- Ledger.Core.Specification.Address.HasCredential.CredentialOf
d_CredentialOf_38 ::
  T_HasCredential_30 -> AgdaAny -> T_Credential_20
d_CredentialOf_38 v0
  = case coe v0 of
      C_constructor_40 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address._.CredentialOf
d_CredentialOf_44 ::
  T_HasCredential_30 -> AgdaAny -> T_Credential_20
d_CredentialOf_44 v0 = coe d_CredentialOf_38 (coe v0)
-- Ledger.Core.Specification.Address.isKeyHashObj
d_isKeyHashObj_46 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_Credential_20 -> Maybe AgdaAny
d_isKeyHashObj_46 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isKeyHashObj_46 v6
du_isKeyHashObj_46 :: T_Credential_20 -> Maybe AgdaAny
du_isKeyHashObj_46 v0
  = case coe v0 of
      C_KeyHashObj_22 v1
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      C_ScriptObj_24 v1
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.IsKeyHashObj
d_IsKeyHashObj_50 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsKeyHashObj_50 = C_IsKeyHash_54
-- Ledger.Core.Specification.Address.IsKeyHashObj?
d_IsKeyHashObj'63'_56 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_Credential_20 -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsKeyHashObj'63'_56 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_IsKeyHashObj'63'_56 v6
du_IsKeyHashObj'63'_56 ::
  T_Credential_20 -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsKeyHashObj'63'_56 v0
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (case coe v0 of
         C_KeyHashObj_22 v1
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe C_IsKeyHash_54))
         C_ScriptObj_24 v1
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Core.Specification.Address.isKeyHashObjᵇ
d_isKeyHashObj'7495'_62 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> T_Credential_20 -> Bool
d_isKeyHashObj'7495'_62 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isKeyHashObj'7495'_62 v6
du_isKeyHashObj'7495'_62 :: T_Credential_20 -> Bool
du_isKeyHashObj'7495'_62 v0
  = let v1 = coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8 in
    coe
      (case coe v0 of
         C_KeyHashObj_22 v2 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
         _ -> coe v1)
-- Ledger.Core.Specification.Address.isKeyHash
d_isKeyHash_64 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> T_Credential_20 -> ()
d_isKeyHash_64 = erased
-- Ledger.Core.Specification.Address.isScriptObj
d_isScriptObj_68 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_Credential_20 -> Maybe AgdaAny
d_isScriptObj_68 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_isScriptObj_68 v6
du_isScriptObj_68 :: T_Credential_20 -> Maybe AgdaAny
du_isScriptObj_68 v0
  = case coe v0 of
      C_KeyHashObj_22 v1
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      C_ScriptObj_24 v1
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.isVKey
d_isVKey_72 a0 a1 a2 a3 a4 a5 a6 = ()
data T_isVKey_72 = C_VKeyisVKey_76
-- Ledger.Core.Specification.Address.isScript
d_isScript_78 a0 a1 a2 a3 a4 a5 a6 = ()
data T_isScript_78 = C_SHisScript_82
-- Ledger.Core.Specification.Address.BaseAddr
d_BaseAddr_84 a0 a1 a2 a3 a4 a5 = ()
data T_BaseAddr_84
  = C_constructor_102 AgdaAny T_Credential_20 (Maybe T_Credential_20)
                      Bool
-- Ledger.Core.Specification.Address.BaseAddr.net
d_net_94 :: T_BaseAddr_84 -> AgdaAny
d_net_94 v0
  = case coe v0 of
      C_constructor_102 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.BaseAddr.pay
d_pay_96 :: T_BaseAddr_84 -> T_Credential_20
d_pay_96 v0
  = case coe v0 of
      C_constructor_102 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.BaseAddr.stake
d_stake_98 :: T_BaseAddr_84 -> Maybe T_Credential_20
d_stake_98 v0
  = case coe v0 of
      C_constructor_102 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.BaseAddr.protected
d_protected_100 :: T_BaseAddr_84 -> Bool
d_protected_100 v0
  = case coe v0 of
      C_constructor_102 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.BootstrapAddr
d_BootstrapAddr_104 a0 a1 a2 a3 a4 a5 = ()
data T_BootstrapAddr_104
  = C_constructor_118 AgdaAny T_Credential_20 Integer
-- Ledger.Core.Specification.Address.BootstrapAddr.net
d_net_112 :: T_BootstrapAddr_104 -> AgdaAny
d_net_112 v0
  = case coe v0 of
      C_constructor_118 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.BootstrapAddr.pay
d_pay_114 :: T_BootstrapAddr_104 -> T_Credential_20
d_pay_114 v0
  = case coe v0 of
      C_constructor_118 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.BootstrapAddr.attrsSize
d_attrsSize_116 :: T_BootstrapAddr_104 -> Integer
d_attrsSize_116 v0
  = case coe v0 of
      C_constructor_118 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.RewardAddress
d_RewardAddress_120 a0 a1 a2 a3 a4 a5 = ()
data T_RewardAddress_120
  = C_constructor_130 AgdaAny T_Credential_20
-- Ledger.Core.Specification.Address.RewardAddress.net
d_net_126 :: T_RewardAddress_120 -> AgdaAny
d_net_126 v0
  = case coe v0 of
      C_constructor_130 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.RewardAddress.stake
d_stake_128 :: T_RewardAddress_120 -> T_Credential_20
d_stake_128 v0
  = case coe v0 of
      C_constructor_130 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.Withdrawals
d_Withdrawals_132 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Withdrawals_132 = erased
-- Ledger.Core.Specification.Address.HasRewardAddress
d_HasRewardAddress_138 a0 a1 a2 a3 a4 a5 a6 a7 = ()
newtype T_HasRewardAddress_138
  = C_constructor_148 (AgdaAny -> T_RewardAddress_120)
-- Ledger.Core.Specification.Address.HasRewardAddress.RewardAddressOf
d_RewardAddressOf_146 ::
  T_HasRewardAddress_138 -> AgdaAny -> T_RewardAddress_120
d_RewardAddressOf_146 v0
  = case coe v0 of
      C_constructor_148 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address._.RewardAddressOf
d_RewardAddressOf_152 ::
  T_HasRewardAddress_138 -> AgdaAny -> T_RewardAddress_120
d_RewardAddressOf_152 v0 = coe d_RewardAddressOf_146 (coe v0)
-- Ledger.Core.Specification.Address.HasNetworkId
d_HasNetworkId_158 a0 a1 a2 a3 a4 a5 a6 a7 = ()
newtype T_HasNetworkId_158 = C_constructor_168 (AgdaAny -> AgdaAny)
-- Ledger.Core.Specification.Address.HasNetworkId.NetworkIdOf
d_NetworkIdOf_166 :: T_HasNetworkId_158 -> AgdaAny -> AgdaAny
d_NetworkIdOf_166 v0
  = case coe v0 of
      C_constructor_168 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address._.NetworkIdOf
d_NetworkIdOf_172 :: T_HasNetworkId_158 -> AgdaAny -> AgdaAny
d_NetworkIdOf_172 v0 = coe d_NetworkIdOf_166 (coe v0)
-- Ledger.Core.Specification.Address.HasMaybeNetworkId
d_HasMaybeNetworkId_178 a0 a1 a2 a3 a4 a5 a6 a7 = ()
newtype T_HasMaybeNetworkId_178
  = C_constructor_188 (AgdaAny -> Maybe AgdaAny)
-- Ledger.Core.Specification.Address.HasMaybeNetworkId.MaybeNetworkIdOf
d_MaybeNetworkIdOf_186 ::
  T_HasMaybeNetworkId_178 -> AgdaAny -> Maybe AgdaAny
d_MaybeNetworkIdOf_186 v0
  = case coe v0 of
      C_constructor_188 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address._.MaybeNetworkIdOf
d_MaybeNetworkIdOf_192 ::
  T_HasMaybeNetworkId_178 -> AgdaAny -> Maybe AgdaAny
d_MaybeNetworkIdOf_192 v0 = coe d_MaybeNetworkIdOf_186 (coe v0)
-- Ledger.Core.Specification.Address.HasWithdrawals
d_HasWithdrawals_198 a0 a1 a2 a3 a4 a5 a6 a7 = ()
newtype T_HasWithdrawals_198
  = C_constructor_208 (AgdaAny ->
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Core.Specification.Address.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_206 ::
  T_HasWithdrawals_198 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_206 v0
  = case coe v0 of
      C_constructor_208 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address._.WithdrawalsOf
d_WithdrawalsOf_212 ::
  T_HasWithdrawals_198 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_212 v0 = coe d_WithdrawalsOf_206 (coe v0)
-- Ledger.Core.Specification.Address.HasAttrSize
d_HasAttrSize_218 a0 a1 a2 a3 a4 a5 a6 a7 = ()
newtype T_HasAttrSize_218 = C_constructor_228 (AgdaAny -> Integer)
-- Ledger.Core.Specification.Address.HasAttrSize.AttrSizeOf
d_AttrSizeOf_226 :: T_HasAttrSize_218 -> AgdaAny -> Integer
d_AttrSizeOf_226 v0
  = case coe v0 of
      C_constructor_228 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address._.AttrSizeOf
d_AttrSizeOf_232 :: T_HasAttrSize_218 -> AgdaAny -> Integer
d_AttrSizeOf_232 v0 = coe d_AttrSizeOf_226 (coe v0)
-- Ledger.Core.Specification.Address.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_234 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> T_HasNetworkId_158
d_HasNetworkId'45'BaseAddr_234 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_HasNetworkId'45'BaseAddr_234
du_HasNetworkId'45'BaseAddr_234 :: T_HasNetworkId_158
du_HasNetworkId'45'BaseAddr_234
  = coe C_constructor_168 (coe (\ v0 -> d_net_94 (coe v0)))
-- Ledger.Core.Specification.Address.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_236 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> T_HasNetworkId_158
d_HasNetworkId'45'BootstrapAddr_236 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_HasNetworkId'45'BootstrapAddr_236
du_HasNetworkId'45'BootstrapAddr_236 :: T_HasNetworkId_158
du_HasNetworkId'45'BootstrapAddr_236
  = coe C_constructor_168 (coe (\ v0 -> d_net_112 (coe v0)))
-- Ledger.Core.Specification.Address.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_238 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> T_HasNetworkId_158
d_HasNetworkId'45'RewardAddress_238 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_HasNetworkId'45'RewardAddress_238
du_HasNetworkId'45'RewardAddress_238 :: T_HasNetworkId_158
du_HasNetworkId'45'RewardAddress_238
  = coe C_constructor_168 (coe (\ v0 -> d_net_126 (coe v0)))
-- Ledger.Core.Specification.Address.HasCredential-RewardAddress
d_HasCredential'45'RewardAddress_240 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> T_HasCredential_30
d_HasCredential'45'RewardAddress_240 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_HasCredential'45'RewardAddress_240
du_HasCredential'45'RewardAddress_240 :: T_HasCredential_30
du_HasCredential'45'RewardAddress_240
  = coe C_constructor_40 (coe (\ v0 -> d_stake_128 (coe v0)))
-- Ledger.Core.Specification.Address.HasAttrSize-BootstrapAddr
d_HasAttrSize'45'BootstrapAddr_242 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> T_HasAttrSize_218
d_HasAttrSize'45'BootstrapAddr_242 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_HasAttrSize'45'BootstrapAddr_242
du_HasAttrSize'45'BootstrapAddr_242 :: T_HasAttrSize_218
du_HasAttrSize'45'BootstrapAddr_242
  = coe C_constructor_228 (coe (\ v0 -> d_attrsSize_116 (coe v0)))
-- Ledger.Core.Specification.Address.VKeyBaseAddr
d_VKeyBaseAddr_244 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBaseAddr_244 = erased
-- Ledger.Core.Specification.Address.VKeyBootstrapAddr
d_VKeyBootstrapAddr_248 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBootstrapAddr_248 = erased
-- Ledger.Core.Specification.Address.ScriptBaseAddr
d_ScriptBaseAddr_252 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBaseAddr_252 = erased
-- Ledger.Core.Specification.Address.ScriptBootstrapAddr
d_ScriptBootstrapAddr_256 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBootstrapAddr_256 = erased
-- Ledger.Core.Specification.Address.Addr
d_Addr_260 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Addr_260 = erased
-- Ledger.Core.Specification.Address.VKeyAddr
d_VKeyAddr_262 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyAddr_262 = erased
-- Ledger.Core.Specification.Address.ScriptAddr
d_ScriptAddr_264 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptAddr_264 = erased
-- Ledger.Core.Specification.Address.payCred
d_payCred_266 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> T_Credential_20
d_payCred_266 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_payCred_266 v6
du_payCred_266 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> T_Credential_20
du_payCred_266 v0
  = case coe v0 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v1
        -> case coe v1 of
             C_constructor_102 v2 v3 v4 v5 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v1
        -> case coe v1 of
             C_constructor_118 v2 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.stakeCred
d_stakeCred_268 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe T_Credential_20
d_stakeCred_268 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_stakeCred_268 v6
du_stakeCred_268 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe T_Credential_20
du_stakeCred_268 v0
  = case coe v0 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v1
        -> case coe v1 of
             C_constructor_102 v2 v3 v4 v5 -> coe v4
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v1
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.netId
d_netId_270 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_270 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_netId_270 v6
du_netId_270 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_270 v0
  = case coe v0 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v1
        -> case coe v1 of
             C_constructor_102 v2 v3 v4 v5 -> coe v2
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v1
        -> case coe v1 of
             C_constructor_118 v2 v3 v4 -> coe v2
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.isVKeyAddr
d_isVKeyAddr_272 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_272 = erased
-- Ledger.Core.Specification.Address.isScriptAddr
d_isScriptAddr_274 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_274 = erased
-- Ledger.Core.Specification.Address.isScriptRewardAddress
d_isScriptRewardAddress_276 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_RewardAddress_120 -> ()
d_isScriptRewardAddress_276 = erased
-- Ledger.Core.Specification.Address.isProtected
d_isProtected_278 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isProtected_278 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isProtected_278 v6
du_isProtected_278 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isProtected_278 v0
  = case coe v0 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v1
        -> coe d_protected_100 (coe v1)
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v1
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.protect
d_protect_282 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_BaseAddr_84 -> T_BaseAddr_84
d_protect_282 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_protect_282 v6
du_protect_282 :: T_BaseAddr_84 -> T_BaseAddr_84
du_protect_282 v0
  = coe
      C_constructor_102 (coe d_net_94 (coe v0)) (coe d_pay_96 (coe v0))
      (coe d_stake_98 (coe v0))
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
-- Ledger.Core.Specification.Address.protection-preserves-payment
d_protection'45'preserves'45'payment_288 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_BaseAddr_84 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_protection'45'preserves'45'payment_288 = erased
-- Ledger.Core.Specification.Address.protection-preserves-stake
d_protection'45'preserves'45'stake_294 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_BaseAddr_84 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_protection'45'preserves'45'stake_294 = erased
-- Ledger.Core.Specification.Address.IsBootstrapAddr
d_IsBootstrapAddr_308 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsBootstrapAddr_308 = C_AddrIsBootstrapAddr_312
-- Ledger.Core.Specification.Address.isBootstrapAddr
d_isBootstrapAddr_314 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe T_BootstrapAddr_104
d_isBootstrapAddr_314 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isBootstrapAddr_314
du_isBootstrapAddr_314 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe T_BootstrapAddr_104
du_isBootstrapAddr_314
  = coe MAlonzo.Code.Data.Sum.du_isInj'8322'_30
-- Ledger.Core.Specification.Address.DecEq-Credential
d_DecEq'45'Credential_316 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_316 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_DecEq'45'Credential_316 v4 v5
du_DecEq'45'Credential_316 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_316 v0 v1
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v2 ->
            case coe v2 of
              C_KeyHashObj_22 v3
                -> coe
                     (\ v4 ->
                        case coe v4 of
                          C_KeyHashObj_22 v5
                            -> let v6
                                     = coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 v0 v3 v5 in
                               coe
                                 (case coe v6 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                                      -> if coe v7
                                           then coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v7)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                     erased)
                                           else coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v7)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          C_ScriptObj_24 v5
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_ScriptObj_24 v3
                -> coe
                     (\ v4 ->
                        case coe v4 of
                          C_KeyHashObj_22 v5
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ScriptObj_24 v5
                            -> let v6
                                     = coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 v1 v3 v5 in
                               coe
                                 (case coe v6 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                                      -> if coe v7
                                           then coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v7)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                     erased)
                                           else coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v7)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Core.Specification.Address.Dec-isVKey
d_Dec'45'isVKey_318 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_Credential_20 -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_318 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_Dec'45'isVKey_318 v6
du_Dec'45'isVKey_318 ::
  T_Credential_20 -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_318 v0
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (case coe v0 of
         C_KeyHashObj_22 v1
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe C_VKeyisVKey_76))
         C_ScriptObj_24 v1
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Core.Specification.Address.Dec-isScript
d_Dec'45'isScript_332 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_Credential_20 -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_332 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_Dec'45'isScript_332 v6
du_Dec'45'isScript_332 ::
  T_Credential_20 -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_332 v0
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (case coe v0 of
         C_KeyHashObj_22 v1
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         C_ScriptObj_24 v1
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe C_SHisScript_82))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Core.Specification.Address.IsBootstrapAddr?
d_IsBootstrapAddr'63'_346 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsBootstrapAddr'63'_346 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_IsBootstrapAddr'63'_346 v6
du_IsBootstrapAddr'63'_346 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsBootstrapAddr'63'_346 v0
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (case coe v0 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v1
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v1
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe C_AddrIsBootstrapAddr_312))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Core.Specification.Address.getScriptHash
d_getScriptHash_364 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  T_isScript_78 -> AgdaAny
d_getScriptHash_364 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_getScriptHash_364 v6 v7
du_getScriptHash_364 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  T_isScript_78 -> AgdaAny
du_getScriptHash_364 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v2
        -> coe
             seq (coe v1)
             (case coe v2 of
                C_constructor_102 v3 v4 v5 v6
                  -> case coe v4 of
                       C_ScriptObj_24 v7 -> coe v7
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError)
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v2
        -> coe
             seq (coe v1)
             (case coe v2 of
                C_constructor_118 v3 v4 v5
                  -> case coe v4 of
                       C_ScriptObj_24 v6 -> coe v6
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.DecEq-BaseAddr
d_DecEq'45'BaseAddr_370 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_370 ~v0 ~v1 ~v2 v3 v4 v5
  = du_DecEq'45'BaseAddr_370 v3 v4 v5
du_DecEq'45'BaseAddr_370 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BaseAddr_370 v0 v1 v2
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v3 ->
            case coe v3 of
              C_constructor_102 v4 v5 v6 v7
                -> coe
                     (\ v8 ->
                        case coe v8 of
                          C_constructor_102 v9 v10 v11 v12
                            -> let v13
                                     = coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 v0 v4 v9 in
                               coe
                                 (case coe v13 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v14 v15
                                      -> if coe v14
                                           then let v16
                                                      = coe
                                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                          (coe
                                                             du_DecEq'45'Credential_316 (coe v1)
                                                             (coe v2))
                                                          v5 v10 in
                                                coe
                                                  (case coe v16 of
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v17 v18
                                                       -> if coe v17
                                                            then let v19
                                                                       = coe
                                                                           MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                           (coe
                                                                              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                              (coe
                                                                                 du_DecEq'45'Credential_316
                                                                                 (coe v1) (coe v2)))
                                                                           (coe v6) (coe v11) in
                                                                 coe
                                                                   (case coe v19 of
                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v20 v21
                                                                        -> if coe v20
                                                                             then let v22
                                                                                        = MAlonzo.Code.Data.Bool.Properties.d__'8799'__3196
                                                                                            (coe v7)
                                                                                            (coe
                                                                                               v12) in
                                                                                  coe
                                                                                    (case coe v22 of
                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v23 v24
                                                                                         -> if coe
                                                                                                 v23
                                                                                              then coe
                                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                     (coe
                                                                                                        v23)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                        erased)
                                                                                              else coe
                                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                     (coe
                                                                                                        v23)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                       _ -> MAlonzo.RTE.mazUnreachableError)
                                                                             else coe
                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                    (coe v20)
                                                                                    (coe
                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                      _ -> MAlonzo.RTE.mazUnreachableError)
                                                            else coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v17)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                           else coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v14)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Core.Specification.Address.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_372 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_372 ~v0 ~v1 ~v2 v3 v4 v5
  = du_DecEq'45'BootstrapAddr_372 v3 v4 v5
du_DecEq'45'BootstrapAddr_372 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BootstrapAddr_372 v0 v1 v2
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v3 ->
            case coe v3 of
              C_constructor_118 v4 v5 v6
                -> coe
                     (\ v7 ->
                        case coe v7 of
                          C_constructor_118 v8 v9 v10
                            -> let v11
                                     = coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 v0 v4 v8 in
                               coe
                                 (case coe v11 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v12 v13
                                      -> if coe v12
                                           then let v14
                                                      = coe
                                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                          (coe
                                                             du_DecEq'45'Credential_316 (coe v1)
                                                             (coe v2))
                                                          v5 v9 in
                                                coe
                                                  (case coe v14 of
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v15 v16
                                                       -> if coe v15
                                                            then let v17
                                                                       = MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796
                                                                           (coe v6) (coe v10) in
                                                                 coe
                                                                   (case coe v17 of
                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v18 v19
                                                                        -> if coe v18
                                                                             then coe
                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                    (coe v18)
                                                                                    (coe
                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                       erased)
                                                                             else coe
                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                    (coe v18)
                                                                                    (coe
                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                      _ -> MAlonzo.RTE.mazUnreachableError)
                                                            else coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v15)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                           else coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v12)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Core.Specification.Address.DecEq-RewardAddress
d_DecEq'45'RewardAddress_374 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_374 ~v0 ~v1 ~v2 v3 v4 v5
  = du_DecEq'45'RewardAddress_374 v3 v4 v5
du_DecEq'45'RewardAddress_374 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RewardAddress_374 v0 v1 v2
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v3 ->
            case coe v3 of
              C_constructor_130 v4 v5
                -> coe
                     (\ v6 ->
                        case coe v6 of
                          C_constructor_130 v7 v8
                            -> let v9
                                     = coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 v0 v4 v7 in
                               coe
                                 (case coe v9 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                                      -> if coe v10
                                           then let v12
                                                      = coe
                                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                          (coe
                                                             du_DecEq'45'Credential_316 (coe v1)
                                                             (coe v2))
                                                          v5 v8 in
                                                coe
                                                  (case coe v12 of
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v13 v14
                                                       -> if coe v13
                                                            then coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v13)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                      erased)
                                                            else coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v13)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                           else coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v10)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Core.Specification.Address._.Show-Credential
d_Show'45'Credential_386 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_386 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8
  = du_Show'45'Credential_386 v7 v8
du_Show'45'Credential_386 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_386 v0 v1
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v2 ->
            case coe v2 of
              C_KeyHashObj_22 v3
                -> coe
                     MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                     (coe ("KeyHashObj" :: Data.Text.Text))
                     (coe
                        MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                        (coe MAlonzo.Code.Class.Show.Core.d_show_16 v0 v3))
              C_ScriptObj_24 v3
                -> coe
                     MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                     (coe ("ScriptObj" :: Data.Text.Text))
                     (coe
                        MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                        (coe MAlonzo.Code.Class.Show.Core.d_show_16 v1 v3))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Core.Specification.Address._.Show-RewardAddress
d_Show'45'RewardAddress_388 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RewardAddress_388 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_Show'45'RewardAddress_388 v6 v7 v8
du_Show'45'RewardAddress_388 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RewardAddress_388 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v3 ->
            case coe v3 of
              C_constructor_130 v4 v5
                -> coe
                     MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                     (coe
                        MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                        (coe ("constructor" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                           (coe MAlonzo.Code.Class.Show.Core.d_show_16 v0 v4)))
                     (coe
                        MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                        (coe
                           MAlonzo.Code.Class.Show.Core.d_show_16
                           (coe du_Show'45'Credential_386 (coe v1) (coe v2)) v5))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Core.Specification.Address._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_390 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_390 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8
  = du_Show'45'Credential'215'Coin_390 v7 v8
du_Show'45'Credential'215'Coin_390 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_390 v0 v1
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe du_Show'45'Credential_386 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
