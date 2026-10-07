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

module MAlonzo.Code.Ledger.Dijkstra.Foreign.HSStructures where

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
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.HasAdd.Core
import qualified MAlonzo.Code.Class.HasHsType.Core
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.Monoid.Core
import qualified MAlonzo.Code.Class.Semigroup.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.TypeClasses.Hashable
import qualified MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Coin
import qualified MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base
import qualified MAlonzo.Code.Ledger.Core.Foreign.Crypto.Structure
import qualified MAlonzo.Code.Ledger.Core.Foreign.Epoch
import qualified MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Account
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.Ledger.Prelude.HasCoin
import qualified MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.Qstdlib.Data.List.Relation.Unary.MOf

-- Ledger.Dijkstra.Foreign.HSStructures._._+ᵉ_
d__'43''7497'__10 :: Integer -> Integer -> Integer
d__'43''7497'__10
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__104
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._._+ᵉ'_
d__'43''7497'''__12 :: Integer -> Integer -> Integer
d__'43''7497'''__12
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__106
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._._∙_
d__'8729'__14 :: Integer -> Integer -> Integer
d__'8729'__14
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2768
                     (coe v1))))))
-- Ledger.Dijkstra.Foreign.HSStructures._._≈_
d__'8776'__16 :: Integer -> Integer -> ()
d__'8776'__16 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._._≤ᵗ_
d__'8804''7511'__18 :: Integer -> Integer -> ()
d__'8804''7511'__18 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._._≥ᵉ_
d__'8805''7497'__20 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8805''7497'__20 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__22 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertEnv_1522 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1594 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1478] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1594 ->
  ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__22 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__24 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__26 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__28 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__30 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_32 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_32 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.==-GovAction
d_'61''61''45'GovAction_34 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_984 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_984 ->
  Bool
d_'61''61''45'GovAction_34
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovAction_1534
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.==-GovActionData
d_'61''61''45'GovActionData_36 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_966 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_36
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovActionData_1516
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.==-GovProposal
d_'61''61''45'GovProposal_38 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1084 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1084 ->
  Bool
d_'61''61''45'GovProposal_38
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovProposal_1568
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.==-Set
d_'61''61''45'Set_40 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_40 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_'61''61''45'Set_1504
      v1 v2 v3
-- Ledger.Dijkstra.Foreign.HSStructures._.THash
d_THash_42 :: ()
d_THash_42 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.AccountBalanceIntervals
d_AccountBalanceIntervals_44 :: ()
d_AccountBalanceIntervals_44 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.AccountOf
d_AccountOf_46 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasAccount_212 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_196
d_AccountOf_46 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_AccountOf_220
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Acnt
d_Acnt_48 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.ActiveSlotCoeff
d_ActiveSlotCoeff_52 :: MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_52
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_340
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Addr
d_Addr_54 :: ()
d_Addr_54 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Anchor
d_Anchor_58 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.AnchorOf
d_AnchorOf_62 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1314 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1018
d_AnchorOf_62 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1322
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.AnyLevelTx
d_AnyLevelTx_64 :: ()
d_AnyLevelTx_64 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.AttrSizeOf
d_AttrSizeOf_66 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_218 ->
  AgdaAny -> Integer
d_AttrSizeOf_66 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_226
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.AuxiliaryData
d_AuxiliaryData_68 :: ()
d_AuxiliaryData_68 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.BalanceInterval
d_BalanceInterval_70 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.BalanceIntervalsOf
d_BalanceIntervalsOf_72 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4556 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_BalanceIntervalsOf_72 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_BalanceIntervalsOf_4564
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.BaseAddr
d_BaseAddr_74 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.BootstrapAddr
d_BootstrapAddr_78 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.CCHotKeys
d_CCHotKeys_84 :: ()
d_CCHotKeys_84 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.CCHotKeysOf
d_CCHotKeysOf_86 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1702 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_86 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CCHotKeysOf_1710
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CCMaxTermLengthOf
d_CCMaxTermLengthOf_88 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasCCMaxTermLength_752 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_88 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_CCMaxTermLengthOf_760
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CertEnv
d_CertEnv_96 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.CertState
d_CertState_100 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.CertStateOf
d_CertStateOf_104 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1922 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1594
d_CertStateOf_104 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1930
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.ColdCredentialsOf
d_ColdCredentialsOf_108 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasColdCredentials_1722 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_ColdCredentialsOf_108 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_ColdCredentialsOf_1730
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CollateralInputsOf
d_CollateralInputsOf_110 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_4106 ->
  AgdaAny -> AgdaAny
d_CollateralInputsOf_110 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CollateralInputsOf_4116
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CostModel
d_CostModel_112 :: ()
d_CostModel_112 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Credential
d_Credential_114 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.CredentialOf
d_CredentialOf_116 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_116 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CurrentTreasuryOf
d_CurrentTreasuryOf_118 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4516 ->
  AgdaAny -> Maybe Integer
d_CurrentTreasuryOf_118 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CurrentTreasuryOf_4524
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DCert
d_DCert_120 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.DCertsOf
d_DCertsOf_122 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4336 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1478]
d_DCertsOf_122 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DCertsOf_4344
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DReps
d_DReps_130 :: ()
d_DReps_130 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.DRepsOf
d_DRepsOf_132 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1294 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_132 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1302
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DState
d_DState_134 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.DStateOf
d_DStateOf_138 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1862 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1538
d_DStateOf_138 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1870
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.T
d_T_140 :: ()
d_T_140 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.THash
d_THash_142 :: ()
d_THash_142 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.DataOf
d_DataOf_144 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4376 ->
  AgdaAny -> [Integer]
d_DataOf_144 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4384
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Dataʰ
d_Data'688'_146 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_146
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_456
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Datum
d_Datum_148 :: ()
d_Datum_148 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Dec-EvalNativeScript
d_Dec'45'EvalNativeScript_150 ::
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.T_NativeScript_338 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'EvalNativeScript_150
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
                    (coe v1) in
          coe
            (let v3
                   = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
                       (coe v1) in
             coe
               (let v4
                      = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
                             (coe v1)) in
                coe
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.du_Dec'45'EvalNativeScript_408
                     (coe v2) (coe v3) (coe v4))))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Dec-InBalanceInterval
d_Dec'45'InBalanceInterval_152 ::
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Account.T_BalanceInterval_956 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'InBalanceInterval_152
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Account.du_Dec'45'InBalanceInterval_990
-- Ledger.Dijkstra.Foreign.HSStructures._.Dec-isScript
d_Dec'45'isScript_154 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_154
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_332
-- Ledger.Dijkstra.Foreign.HSStructures._.Dec-isSigned
d_Dec'45'isSigned_156 ::
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_156
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Dec-isVKey
d_Dec'45'isVKey_158 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_158
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_318
-- Ledger.Dijkstra.Foreign.HSStructures._.Dec-validP1Script
d_Dec'45'validP1Script_160 ::
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_160
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_358
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_562
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_162 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_162
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_530
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Dec-≤ᵗ
d_Dec'45''8804''7511'_164 ::
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_164
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2768
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEQ-Prices
d_DecEQ'45'Prices_166 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_166
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_492
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Anchor
d_DecEq'45'Anchor_168 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_168
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'Anchor_1498
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-BalanceInterval
d_DecEq'45'BalanceInterval_170 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BalanceInterval_170
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Account.du_DecEq'45'BalanceInterval_1114
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_172 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_172
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_370
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_174 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_174
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_372
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-CostModel
d_DecEq'45'CostModel_176 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_176
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_476
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Credential
d_DecEq'45'Credential_178 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_178
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_316
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-DCert
d_DecEq'45'DCert_180 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DCert_180
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DecEq'45'DCert_2212
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_182 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_182
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'DrepThresholds_768
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Epoch
d_DecEq'45'Epoch_184 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_184
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_82
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-ExUnits
d_DecEq'45'ExUnits_186 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_186
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_490
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-GovActionType
d_DecEq'45'GovActionType_188 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_188
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovActionType_1388
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-GovRole
d_DecEq'45'GovRole_190 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_190
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovRole_1390
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-GovVoter
d_DecEq'45'GovVoter_192 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_192
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'GovVoter_1396
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-HSNativeScript
d_DecEq'45'HSNativeScript_194 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSNativeScript_194
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_DecEq'45'HSNativeScript_354
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Ix
d_DecEq'45'Ix_196 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_196
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1434
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-LangDepView
d_DecEq'45'LangDepView_198 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_198
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_478
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Language
d_DecEq'45'Language_200 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_200
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_482
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_202 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_202
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_DecEq'45'LanguageCostModels_700
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-NativeScript
d_DecEq'45'NativeScript_204 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NativeScript_204
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
                    (coe v1) in
          coe
            (let v3
                   = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
                       (coe v1) in
             coe
               (let v4
                      = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
                             (coe v1)) in
                coe
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.du_DecEq'45'NativeScript_354
                     (coe v2) (coe v3) (coe v4))))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-NeedsHash
d_DecEq'45'NeedsHash_206 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_966 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_206
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1566
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Netw
d_DecEq'45'Netw_208 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_208
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-P1Script
d_DecEq'45'P1Script_210 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_210
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_362
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_562
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_212 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_212
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamGroup_774
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-PParams
d_DecEq'45'PParams_214 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_214
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParams_772
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_216 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_216
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PoolThresholds_770
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-RewardAddress
d_DecEq'45'RewardAddress_218 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_218
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_374
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_220 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_220
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Ser
d_DecEq'45'Ser_222 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_222
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Sig
d_DecEq'45'Sig_224 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_224
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Slot
d_DecEq'45'Slot_226 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_226
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_90
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-StakePoolParams
d_DecEq'45'StakePoolParams_228 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'StakePoolParams_228
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DecEq'45'StakePoolParams_2208
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-StakePoolState
d_DecEq'45'StakePoolState_230 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'StakePoolState_230
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DecEq'45'StakePoolState_2210
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-T
d_DecEq'45'T_232 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_232
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1424
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-T
d_DecEq'45'T_234 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_234
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_456
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-THash
d_DecEq'45'THash_236 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_236
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1424
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-THash
d_DecEq'45'THash_238 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_238
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-THash
d_DecEq'45'THash_240 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_240
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_456
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-TxId
d_DecEq'45'TxId_242 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_242
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1436
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-UpdT
d_DecEq'45'UpdT_244 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_244
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1892
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2766
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-VDeleg
d_DecEq'45'VDeleg_246 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_246
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1394
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-VRF
d_DecEq'45'VRF_248 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VRF_248
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_240
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Value
d_DecEq'45'Value_250 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_250
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2768
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Vote
d_DecEq'45'Vote_252 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_252
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'Vote_1392
-- Ledger.Dijkstra.Foreign.HSStructures._.DecPo-Slot
d_DecPo'45'Slot_254 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_254
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_88
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DelegEnv
d_DelegEnv_256 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.DepositOf
d_DepositOf_260 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1334 ->
  AgdaAny -> Integer
d_DepositOf_260 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1342
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DepositsOf
d_DepositsOf_262 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1682 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_262 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DepositsOf_1690
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DirectDeposits
d_DirectDeposits_264 :: ()
d_DirectDeposits_264 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.DirectDepositsOf
d_DirectDepositsOf_266 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4536 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DirectDepositsOf_266 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DirectDepositsOf_4544
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds
d_DrepThresholds_268 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HSAbstractFunctions
d_HSAbstractFunctions_272 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3286
d_HSAbstractFunctions_272
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSAbstractFunctions_3972
      (coe
         MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)
-- Ledger.Dijkstra.Foreign.HSStructures._.govStructure
d_govStructure_274 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10
d_govStructure_274
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.HSTransactionStructure
d_HSTransactionStructure_276 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60
d_HSTransactionStructure_276
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
      (coe
         MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)
-- Ledger.Dijkstra.Foreign.HSStructures._.Epoch
d_Epoch_280 :: ()
d_Epoch_280 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.EpochOf
d_EpochOf_282 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasEpoch_1942 ->
  AgdaAny -> Integer
d_EpochOf_282 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_EpochOf_1950
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.EvalNativeScript
d_EvalNativeScript_284 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_286 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_286
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_472
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.ExUnits
d_ExUnits_288 :: ()
d_ExUnits_288 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.FPools
d_FPools_292 :: ()
d_FPools_292 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.FeesOf?
d_FeesOf'63'_294 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4316 ->
  AgdaAny -> Maybe Integer
d_FeesOf'63'_294 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_FeesOf'63'_4324
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.FuturePoolsOf
d_FuturePoolsOf_296 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasFuturePools_1762 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_FuturePoolsOf_296 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_FuturePoolsOf_1770
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GState
d_GState_304 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GStateOf
d_GStateOf_308 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1902 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1578
d_GStateOf_308 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_GStateOf_1910
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovAction
d_GovAction_310 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionData
d_GovActionData_314 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_966 ->
  ()
d_GovActionData_314 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionID
d_GovActionID_316 :: ()
d_GovActionID_316 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionOf
d_GovActionOf_318 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1196 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_984
d_GovActionOf_318 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1202
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionState
d_GovActionState_320 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionType
d_GovActionType_324 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionTypeOf
d_GovActionTypeOf_326 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1160 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_966
d_GovActionTypeOf_326 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1166
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovCertEnv
d_GovCertEnv_328 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovParams
d_GovParams_332 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovProposal
d_GovProposal_336 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovProposalsOf
d_GovProposalsOf_340 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGovProposals_4356 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1084]
d_GovProposalsOf_340 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GovProposalsOf_4364
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovRole
d_GovRole_342 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovRoleCredential
d_GovRoleCredential_344 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_956 ->
  ()
d_GovRoleCredential_344 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVote
d_GovVote_346 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVoter
d_GovVoter_350 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVoterOf
d_GovVoterOf_354 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1214 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_1006
d_GovVoterOf_354 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1222
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVotes
d_GovVotes_356 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVotesOf
d_GovVotesOf_360 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1234 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1050
d_GovVotesOf_360 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1242
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GuardsOf
d_GuardsOf_364 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4436 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_GuardsOf_364 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GuardsOf_4444
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HSLeiosCryptoStructure
d_HSLeiosCryptoStructure_366 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.T_LeiosCryptoStructure_10
d_HSLeiosCryptoStructure_366
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSLeiosCryptoStructure_690
      (coe
         MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)
-- Ledger.Dijkstra.Foreign.HSStructures._.HSNativeScript
d_HSNativeScript_368 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HSP1ScriptStructure
d_HSP1ScriptStructure_372 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_338
d_HSP1ScriptStructure_372
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_HSP1ScriptStructure_356
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.HSP2ScriptStructure
d_HSP2ScriptStructure_374 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376
d_HSP2ScriptStructure_374
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_HSP2ScriptStructure_390
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.HSPlutusScript
d_HSPlutusScript_376 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HSScriptStructure
d_HSScriptStructure_380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536
d_HSScriptStructure_380
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_HSScriptStructure_432
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.HasAccount
d_HasAccount_382 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasAnchor
d_HasAnchor_386 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasAnchor-GovProposal
d_HasAnchor'45'GovProposal_390 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1314
d_HasAnchor'45'GovProposal_390
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasAnchor'45'GovProposal_1368
-- Ledger.Dijkstra.Foreign.HSStructures._.HasAttrSize
d_HasAttrSize_392 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasAttrSize-BootstrapAddr
d_HasAttrSize'45'BootstrapAddr_396 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_218
d_HasAttrSize'45'BootstrapAddr_396
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasAttrSize'45'BootstrapAddr_242
-- Ledger.Dijkstra.Foreign.HSStructures._.HasBalanceIntervals
d_HasBalanceIntervals_398 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasBalanceIntervals-Tx
d_HasBalanceIntervals'45'Tx_402 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4556
d_HasBalanceIntervals'45'Tx_402 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasBalanceIntervals'45'Tx_4648
-- Ledger.Dijkstra.Foreign.HSStructures._.HasBalanceIntervals-TxBody
d_HasBalanceIntervals'45'TxBody_404 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4556
d_HasBalanceIntervals'45'TxBody_404 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasBalanceIntervals'45'TxBody_4646
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCCHotKeys
d_HasCCHotKeys_406 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCCHotKeys-CertState
d_HasCCHotKeys'45'CertState_410 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1702
d_HasCCHotKeys'45'CertState_410
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCCHotKeys'45'CertState_2018
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCCHotKeys-GState
d_HasCCHotKeys'45'GState_412 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1702
d_HasCCHotKeys'45'GState_412
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCCHotKeys'45'GState_2004
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCCMaxTermLength
d_HasCCMaxTermLength_414 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-Acnt
d_HasCast'45'Acnt_418 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_418
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasCast'45'Acnt_232
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-CertEnv
d_HasCast'45'CertEnv_420 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_420
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'CertEnv_2032
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-CertState
d_HasCast'45'CertState_422 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertState_422
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'CertState_2040
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-DState
d_HasCast'45'DState_424 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_424
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'DState_2034
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-DelegEnv
d_HasCast'45'DelegEnv_426 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DelegEnv_426
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'DelegEnv_2042
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-GState
d_HasCast'45'GState_428 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GState_428
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'GState_2038
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_430 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_430
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_1352
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-GovCertEnv
d_HasCast'45'GovCertEnv_432 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovCertEnv_432
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'GovCertEnv_2046
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-GovVote
d_HasCast'45'GovVote_434 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_434
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovVote_1494
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-HashProtected
d_HasCast'45'HashProtected_436 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_436 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1358
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_438 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_438
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1360
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-PState
d_HasCast'45'PState_440 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_440
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'PState_2036
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-PoolEnv
d_HasCast'45'PoolEnv_442 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PoolEnv_442
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'PoolEnv_2044
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-StakePoolState
d_HasCast'45'StakePoolState_444 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'StakePoolState_444
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'StakePoolState_2030
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCertState
d_HasCertState_446 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCoin-CertState
d_HasCoin'45'CertState_450 ::
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'CertState_450
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_HasCoin'45'CertState_2204
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCoin-TxOut
d_HasCoin'45'TxOut_452 ::
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_452
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_HasCoin'45'TxOut_4700
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.HasColdCredentials
d_HasColdCredentials_454 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasColdCredentials-CertEnv
d_HasColdCredentials'45'CertEnv_458 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasColdCredentials_1722
d_HasColdCredentials'45'CertEnv_458
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasColdCredentials'45'CertEnv_1984
-- Ledger.Dijkstra.Foreign.HSStructures._.HasColdCredentials-GovCertEnv
d_HasColdCredentials'45'GovCertEnv_460 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasColdCredentials_1722
d_HasColdCredentials'45'GovCertEnv_460
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasColdCredentials'45'GovCertEnv_1982
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCollateralInputs
d_HasCollateralInputs_462 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCollateralInputs-TopLevelTx
d_HasCollateralInputs'45'TopLevelTx_466 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_4106
d_HasCollateralInputs'45'TopLevelTx_466
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCollateralInputs'45'TopLevelTx_4624
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCredential
d_HasCredential_468 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCredential-RewardAddress
d_HasCredential'45'RewardAddress_472 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RewardAddress_472
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_240
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCurrentTreasury
d_HasCurrentTreasury_474 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCurrentTreasury-Tx
d_HasCurrentTreasury'45'Tx_478 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4516
d_HasCurrentTreasury'45'Tx_478 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCurrentTreasury'45'Tx_4724
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCurrentTreasury-TxBody
d_HasCurrentTreasury'45'TxBody_480 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4516
d_HasCurrentTreasury'45'TxBody_480 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCurrentTreasury'45'TxBody_4722
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDCerts
d_HasDCerts_482 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDCerts-Tx
d_HasDCerts'45'Tx_486 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4336
d_HasDCerts'45'Tx_486 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDCerts'45'Tx_4636
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDCerts-TxBody
d_HasDCerts'45'TxBody_488 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4336
d_HasDCerts'45'TxBody_488 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDCerts'45'TxBody_4634
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDReps
d_HasDReps_490 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDReps-CertState
d_HasDReps'45'CertState_494 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1294
d_HasDReps'45'CertState_494
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDReps'45'CertState_2016
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDReps-GState
d_HasDReps'45'GState_496 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1294
d_HasDReps'45'GState_496
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDReps'45'GState_2002
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDState
d_HasDState_498 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDState-CertState
d_HasDState'45'CertState_502 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1862
d_HasDState'45'CertState_502
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDState'45'CertState_2008
-- Ledger.Dijkstra.Foreign.HSStructures._.HasData
d_HasData_504 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasData-Tx
d_HasData'45'Tx_508 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4376
d_HasData'45'Tx_508 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'Tx_4704
-- Ledger.Dijkstra.Foreign.HSStructures._.HasData-TxWitnesses
d_HasData'45'TxWitnesses_510 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4376
d_HasData'45'TxWitnesses_510
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'TxWitnesses_4702
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDeposit
d_HasDeposit_512 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDeposit-GovProposal
d_HasDeposit'45'GovProposal_516 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1334
d_HasDeposit'45'GovProposal_516
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasDeposit'45'GovProposal_1370
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDeposits
d_HasDeposits_518 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDeposits-DState
d_HasDeposits'45'DState_522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1682
d_HasDeposits'45'DState_522
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDeposits'45'DState_1992
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDeposits-GState
d_HasDeposits'45'GState_524 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1682
d_HasDeposits'45'GState_524
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDeposits'45'GState_2006
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDeposits-PState
d_HasDeposits'45'PState_526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1682
d_HasDeposits'45'PState_526
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDeposits'45'PState_1998
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDirectDeposits
d_HasDirectDeposits_528 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDirectDeposits-Tx
d_HasDirectDeposits'45'Tx_532 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4536
d_HasDirectDeposits'45'Tx_532 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDirectDeposits'45'Tx_4644
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDirectDeposits-TxBody
d_HasDirectDeposits'45'TxBody_534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4536
d_HasDirectDeposits'45'TxBody_534 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDirectDeposits'45'TxBody_4642
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDonations-Tx
d_HasDonations'45'Tx_536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_30
d_HasDonations'45'Tx_536 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDonations'45'Tx_4698
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDonations-TxBody
d_HasDonations'45'TxBody_538 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_30
d_HasDonations'45'TxBody_538 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDonations'45'TxBody_4696
-- Ledger.Dijkstra.Foreign.HSStructures._.HasEpoch
d_HasEpoch_540 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasEpoch-CertEnv
d_HasEpoch'45'CertEnv_544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasEpoch_1942
d_HasEpoch'45'CertEnv_544
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasEpoch'45'CertEnv_2028
-- Ledger.Dijkstra.Foreign.HSStructures._.HasEpoch-GovCertEnv
d_HasEpoch'45'GovCertEnv_546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasEpoch_1942
d_HasEpoch'45'GovCertEnv_546
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasEpoch'45'GovCertEnv_2026
-- Ledger.Dijkstra.Foreign.HSStructures._.HasFees?
d_HasFees'63'_548 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasFees?-Tx
d_HasFees'63''45'Tx_552 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4316
d_HasFees'63''45'Tx_552
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasFees'63''45'Tx_4690
-- Ledger.Dijkstra.Foreign.HSStructures._.HasFees?-TxBody
d_HasFees'63''45'TxBody_554 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4316
d_HasFees'63''45'TxBody_554
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasFees'63''45'TxBody_4684
-- Ledger.Dijkstra.Foreign.HSStructures._.HasFuturePools
d_HasFuturePools_556 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasFuturePools-PState
d_HasFuturePools'45'PState_560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasFuturePools_1762
d_HasFuturePools'45'PState_560
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasFuturePools'45'PState_1996
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGState
d_HasGState_562 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGState-CertState
d_HasGState'45'CertState_566 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1902
d_HasGState'45'CertState_566
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasGState'45'CertState_2012
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovAction
d_HasGovAction_568 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_572 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1196
d_HasGovAction'45'GovActionState_572
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1374
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_574 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1196
d_HasGovAction'45'GovProposal_574
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1372
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovActionType
d_HasGovActionType_576 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_580 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1160
d_HasGovActionType'45'GovAction_580
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_1350
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_582 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1160
d_HasGovActionType'45'GovActionState_582
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1378
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_584 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1160
d_HasGovActionType'45'GovProposal_584
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1376
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovProposals
d_HasGovProposals_586 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovVoter
d_HasGovVoter_590 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_594 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1214
d_HasGovVoter'45'GovVote_594
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1362
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovVotes
d_HasGovVotes_596 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovVotes-GovActionState
d_HasGovVotes'45'GovActionState_600 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1234
d_HasGovVotes'45'GovActionState_600
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVotes'45'GovActionState_1380
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGuards
d_HasGuards_602 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGuards-Tx
d_HasGuards'45'Tx_606 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4436
d_HasGuards'45'Tx_606 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasGuards'45'Tx_4708
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGuards-TxBody
d_HasGuards'45'TxBody_608 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4436
d_HasGuards'45'TxBody_608 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasGuards'45'TxBody_4706
-- Ledger.Dijkstra.Foreign.HSStructures._.HasIsValidFlag
d_HasIsValidFlag_610 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasIsValidFlag-Tx
d_HasIsValidFlag'45'Tx_614 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4596
d_HasIsValidFlag'45'Tx_614
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasIsValidFlag'45'Tx_4618
-- Ledger.Dijkstra.Foreign.HSStructures._.HasListOfGovProposals
d_HasListOfGovProposals_616 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasListOfGovProposals-Tx
d_HasListOfGovProposals'45'Tx_620 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4396
d_HasListOfGovProposals'45'Tx_620 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovProposals'45'Tx_4676
-- Ledger.Dijkstra.Foreign.HSStructures._.HasListOfGovProposals-TxBody
d_HasListOfGovProposals'45'TxBody_622 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4396
d_HasListOfGovProposals'45'TxBody_622 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovProposals'45'TxBody_4674
-- Ledger.Dijkstra.Foreign.HSStructures._.HasListOfGovVotes
d_HasListOfGovVotes_624 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasListOfGovVotes-Tx
d_HasListOfGovVotes'45'Tx_628 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4416
d_HasListOfGovVotes'45'Tx_628 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovVotes'45'Tx_4672
-- Ledger.Dijkstra.Foreign.HSStructures._.HasListOfGovVotes-TxBody
d_HasListOfGovVotes'45'TxBody_630 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4416
d_HasListOfGovVotes'45'TxBody_630 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovVotes'45'TxBody_4670
-- Ledger.Dijkstra.Foreign.HSStructures._.HasMaybeNetworkId
d_HasMaybeNetworkId_632 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasMaybeNetworkId-Tx
d_HasMaybeNetworkId'45'Tx_636 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_178
d_HasMaybeNetworkId'45'Tx_636 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMaybeNetworkId'45'Tx_4680
-- Ledger.Dijkstra.Foreign.HSStructures._.HasMaybeNetworkId-TxBody
d_HasMaybeNetworkId'45'TxBody_638 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_178
d_HasMaybeNetworkId'45'TxBody_638 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMaybeNetworkId'45'TxBody_4678
-- Ledger.Dijkstra.Foreign.HSStructures._.HasMintedValue
d_HasMintedValue_640 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasMintedValue-Tx
d_HasMintedValue'45'Tx_644 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4296
d_HasMintedValue'45'Tx_644 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'Tx_4668
-- Ledger.Dijkstra.Foreign.HSStructures._.HasMintedValue-TxBody
d_HasMintedValue'45'TxBody_646 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4296
d_HasMintedValue'45'TxBody_646 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'TxBody_4666
-- Ledger.Dijkstra.Foreign.HSStructures._.HasNetworkId
d_HasNetworkId_648 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_652 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_158
d_HasNetworkId'45'BaseAddr_652
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_234
-- Ledger.Dijkstra.Foreign.HSStructures._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_654 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_158
d_HasNetworkId'45'BootstrapAddr_654
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_236
-- Ledger.Dijkstra.Foreign.HSStructures._.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_656 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_158
d_HasNetworkId'45'RewardAddress_656
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_238
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPParams
d_HasPParams_658 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPParams-CertEnv
d_HasPParams'45'CertEnv_662 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_732
d_HasPParams'45'CertEnv_662
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPParams'45'CertEnv_1978
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPParams-GovCertEnv
d_HasPParams'45'GovCertEnv_664 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_732
d_HasPParams'45'GovCertEnv_664
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPParams'45'GovCertEnv_1980
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPState
d_HasPState_666 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPState-CertState
d_HasPState'45'CertState_670 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1882
d_HasPState'45'CertState_670
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPState'45'CertState_2010
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPolicy
d_HasPolicy_672 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_676 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1274
d_HasPolicy'45'GovProposal_676
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1366
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPools
d_HasPools_678 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPools-CertState
d_HasPools'45'CertState_682 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1742
d_HasPools'45'CertState_682
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPools'45'CertState_2020
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPools-PState
d_HasPools'45'PState_684 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1742
d_HasPools'45'PState_684
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPools'45'PState_1994
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRedeemers
d_HasRedeemers_686 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRedeemers-Tx
d_HasRedeemers'45'Tx_690 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_4084
d_HasRedeemers'45'Tx_690 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRedeemers'45'Tx_4622
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRedeemers-TxWitnesses
d_HasRedeemers'45'TxWitnesses_692 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_4084
d_HasRedeemers'45'TxWitnesses_692
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRedeemers'45'TxWitnesses_4620
-- Ledger.Dijkstra.Foreign.HSStructures._.HasReferenceInputs
d_HasReferenceInputs_694 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasReferenceInputs-Tx
d_HasReferenceInputs'45'Tx_698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4276
d_HasReferenceInputs'45'Tx_698 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'Tx_4664
-- Ledger.Dijkstra.Foreign.HSStructures._.HasReferenceInputs-TxBody
d_HasReferenceInputs'45'TxBody_700 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4276
d_HasReferenceInputs'45'TxBody_700 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'TxBody_4662
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRequiredSingerHashes
d_HasRequiredSingerHashes_702 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRequiredSingerHashes-Tx
d_HasRequiredSingerHashes'45'Tx_706 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4496
d_HasRequiredSingerHashes'45'Tx_706 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRequiredSingerHashes'45'Tx_4720
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRequiredSingerHashes-TxBody
d_HasRequiredSingerHashes'45'TxBody_708 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4496
d_HasRequiredSingerHashes'45'TxBody_708 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRequiredSingerHashes'45'TxBody_4718
-- Ledger.Dijkstra.Foreign.HSStructures._.HasReserves-Acnt
d_HasReserves'45'Acnt_710 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_70
d_HasReserves'45'Acnt_710
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasReserves'45'Acnt_230
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRetiring
d_HasRetiring_712 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRetiring-PState
d_HasRetiring'45'PState_716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRetiring_1782
d_HasRetiring'45'PState_716
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRetiring'45'PState_2000
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRewardAddress
d_HasRewardAddress_718 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRewardAddress-GovActionState
d_HasRewardAddress'45'GovActionState_722 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_138
d_HasRewardAddress'45'GovActionState_722
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovActionState_1382
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRewardAddress-GovProposal
d_HasRewardAddress'45'GovProposal_724 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_138
d_HasRewardAddress'45'GovProposal_724
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovProposal_1384
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRewards
d_HasRewards_726 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRewards-CertState
d_HasRewards'45'CertState_730 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1802
d_HasRewards'45'CertState_730
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRewards'45'CertState_2014
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRewards-DState
d_HasRewards'45'DState_732 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1802
d_HasRewards'45'DState_732
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRewards'45'DState_1990
-- Ledger.Dijkstra.Foreign.HSStructures._.HasScripts
d_HasScripts_734 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasScripts-Tx
d_HasScripts'45'Tx_738 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4456
d_HasScripts'45'Tx_738 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasScripts'45'Tx_4712
-- Ledger.Dijkstra.Foreign.HSStructures._.HasScripts-TxWitnesses
d_HasScripts'45'TxWitnesses_740 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4456
d_HasScripts'45'TxWitnesses_740
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasScripts'45'TxWitnesses_4710
-- Ledger.Dijkstra.Foreign.HSStructures._.HasSize
d_HasSize_742 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasSize-Tx
d_HasSize'45'Tx_746 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4196
d_HasSize'45'Tx_746 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSize'45'Tx_4614
-- Ledger.Dijkstra.Foreign.HSStructures._.HasSpendInputs
d_HasSpendInputs_748 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasSpendInputs-Tx
d_HasSpendInputs'45'Tx_752 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4256
d_HasSpendInputs'45'Tx_752 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4660
-- Ledger.Dijkstra.Foreign.HSStructures._.HasSpendInputs-TxBody
d_HasSpendInputs'45'TxBody_754 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4256
d_HasSpendInputs'45'TxBody_754 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'TxBody_4658
-- Ledger.Dijkstra.Foreign.HSStructures._.HasStake
d_HasStake_756 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasStakeDelegs
d_HasStakeDelegs_760 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasStakeDelegs-CertState
d_HasStakeDelegs'45'CertState_764 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStakeDelegs_1842
d_HasStakeDelegs'45'CertState_764
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasStakeDelegs'45'CertState_2024
-- Ledger.Dijkstra.Foreign.HSStructures._.HasStakeDelegs-DState
d_HasStakeDelegs'45'DState_766 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStakeDelegs_1842
d_HasStakeDelegs'45'DState_766
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasStakeDelegs'45'DState_1988
-- Ledger.Dijkstra.Foreign.HSStructures._.HasStartingBalanceIntervals
d_HasStartingBalanceIntervals_768 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasStartingBalanceIntervals-Tx
d_HasStartingBalanceIntervals'45'Tx_772 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasStartingBalanceIntervals_4576
d_HasStartingBalanceIntervals'45'Tx_772
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasStartingBalanceIntervals'45'Tx_4652
-- Ledger.Dijkstra.Foreign.HSStructures._.HasStartingBalanceIntervals-TxBody
d_HasStartingBalanceIntervals'45'TxBody_774 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasStartingBalanceIntervals_4576
d_HasStartingBalanceIntervals'45'TxBody_774
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasStartingBalanceIntervals'45'TxBody_4650
-- Ledger.Dijkstra.Foreign.HSStructures._.HasSubTransactions
d_HasSubTransactions_776 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasSubTransactions-TopLevelTx
d_HasSubTransactions'45'TopLevelTx_780 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_4154
d_HasSubTransactions'45'TopLevelTx_780
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSubTransactions'45'TopLevelTx_4628
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTopLevelGuards
d_HasTopLevelGuards_782 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTopLevelGuards-Tx
d_HasTopLevelGuards'45'Tx_786 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4216
d_HasTopLevelGuards'45'Tx_786 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTopLevelGuards'45'Tx_4632
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTopLevelGuards-TxBody
d_HasTopLevelGuards'45'TxBody_788 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4216
d_HasTopLevelGuards'45'TxBody_788 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTopLevelGuards'45'TxBody_4630
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTreasury-Acnt
d_HasTreasury'45'Acnt_790 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_90
d_HasTreasury'45'Acnt_790
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasTreasury'45'Acnt_228
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxBody
d_HasTxBody_792 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxBody-Tx
d_HasTxBody'45'Tx_796 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxBody_4042
d_HasTxBody'45'Tx_796 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxBody'45'Tx_4612
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxFees
d_HasTxFees_798 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxFees-TopLevelTx
d_HasTxFees'45'TopLevelTx_802 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_4130
d_HasTxFees'45'TopLevelTx_802
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxFees'45'TopLevelTx_4626
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxId
d_HasTxId_804 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxId-Tx
d_HasTxId'45'Tx_808 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4176
d_HasTxId'45'Tx_808 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxId'45'Tx_4694
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxId-TxBody
d_HasTxId'45'TxBody_810 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4176
d_HasTxId'45'TxBody_810 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxId'45'TxBody_4692
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxOuts
d_HasTxOuts_812 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxOuts-Tx
d_HasTxOuts'45'Tx_816 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4476
d_HasTxOuts'45'Tx_816 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4716
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxOuts-TxBody
d_HasTxOuts'45'TxBody_818 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4476
d_HasTxOuts'45'TxBody_818 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'TxBody_4714
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxWitnesses
d_HasTxWitnesses_820 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxWitnesses-Tx
d_HasTxWitnesses'45'Tx_824 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxWitnesses_4064
d_HasTxWitnesses'45'Tx_824 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxWitnesses'45'Tx_4616
-- Ledger.Dijkstra.Foreign.HSStructures._.HasUTxO
d_HasUTxO_826 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasValidInterval
d_HasValidInterval_830 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasValidInterval-Tx
d_HasValidInterval'45'Tx_834 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4236
d_HasValidInterval'45'Tx_834 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasValidInterval'45'Tx_4656
-- Ledger.Dijkstra.Foreign.HSStructures._.HasValidInterval-TxBody
d_HasValidInterval'45'TxBody_836 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4236
d_HasValidInterval'45'TxBody_836 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasValidInterval'45'TxBody_4654
-- Ledger.Dijkstra.Foreign.HSStructures._.HasVote
d_HasVote_838 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasVote-GovVote
d_HasVote'45'GovVote_842 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1254
d_HasVote'45'GovVote_842
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasVote'45'GovVote_1364
-- Ledger.Dijkstra.Foreign.HSStructures._.HasVoteDelegs
d_HasVoteDelegs_844 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasVoteDelegs-CertState
d_HasVoteDelegs'45'CertState_848 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1178
d_HasVoteDelegs'45'CertState_848
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasVoteDelegs'45'CertState_2022
-- Ledger.Dijkstra.Foreign.HSStructures._.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_850 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1178
d_HasVoteDelegs'45'DState_850
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasVoteDelegs'45'DState_1986
-- Ledger.Dijkstra.Foreign.HSStructures._.HasVotes
d_HasVotes_852 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasWithdrawals
d_HasWithdrawals_856 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasWithdrawals-Tx
d_HasWithdrawals'45'Tx_860 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_198
d_HasWithdrawals'45'Tx_860 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasWithdrawals'45'Tx_4640
-- Ledger.Dijkstra.Foreign.HSStructures._.HasWithdrawals-TxBody
d_HasWithdrawals'45'TxBody_862 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_198
d_HasWithdrawals'45'TxBody_862 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasWithdrawals'45'TxBody_4638
-- Ledger.Dijkstra.Foreign.HSStructures._.HashProtected
d_HashProtected_864 :: () -> ()
d_HashProtected_864 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Hashable-HSNativeScript
d_Hashable'45'HSNativeScript_866 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'HSNativeScript_866
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.du_Hashable'45'HSNativeScript_352
-- Ledger.Dijkstra.Foreign.HSStructures._.Hashable-P1Script
d_Hashable'45'P1Script_868 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_868
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_360
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_562
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_870 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_870
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_474
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Hashable-Script
d_Hashable'45'Script_872 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_872
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_664
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Hashable-ScriptIntegrity
d_Hashable'45'ScriptIntegrity_874 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'ScriptIntegrity_874
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_Hashable'45'ScriptIntegrity_2772
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.HsGovParams
d_HsGovParams_876 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1860
d_HsGovParams_876
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HsGovParams_644
      (coe
         MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)
-- Ledger.Dijkstra.Foreign.HSStructures._.InBalanceInterval
d_InBalanceInterval_878 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.IsBLSUnique
d_IsBLSUnique_882 ::
  Maybe Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_IsBLSUnique_882 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsBLSUnique?
d_IsBLSUnique'63'_884 ::
  Maybe Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsBLSUnique'63'_884
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_IsBLSUnique'63'_2256
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsBootstrapAddr
d_IsBootstrapAddr_886 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.IsBootstrapAddr?
d_IsBootstrapAddr'63'_888 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsBootstrapAddr'63'_888
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_346
-- Ledger.Dijkstra.Foreign.HSStructures._.IsConwayCert
d_IsConwayCert_890 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1478 -> ()
d_IsConwayCert_890 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsConwayCert?
d_IsConwayCert'63'_892 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1478 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsConwayCert'63'_892
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_IsConwayCert'63'_1654
-- Ledger.Dijkstra.Foreign.HSStructures._.IsKeyHashObj
d_IsKeyHashObj_896 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.IsKeyHashObj?
d_IsKeyHashObj'63'_898 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsKeyHashObj'63'_898
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsKeyHashObj'63'_56
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_900 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_904 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_908 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.IsPoolRegistered
d_IsPoolRegistered_912 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> ()
d_IsPoolRegistered_912 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsVRFUnique
d_IsVRFUnique_914 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_IsVRFUnique_914 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsValidBLSPoP
d_IsValidBLSPoP_916 ::
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_IsValidBLSPoP_916 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsValidBLSPoP?
d_IsValidBLSPoP'63'_918 ::
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsValidBLSPoP'63'_918
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_IsValidBLSPoP'63'_2262
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsValidFlagOf
d_IsValidFlagOf_920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4596 ->
  AgdaAny -> Bool
d_IsValidFlagOf_920 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_IsValidFlagOf_4604
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Ix
d_Ix_922 :: ()
d_Ix_922 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.THash
d_THash_924 :: ()
d_THash_924 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.KeyPair
d_KeyPair_928 :: ()
d_KeyPair_928 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.LangDepView
d_LangDepView_930 :: ()
d_LangDepView_930 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Language
d_Language_932 :: ()
d_Language_932 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.LanguageCostModels
d_LanguageCostModels_934 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.ListOfGovProposalsOf
d_ListOfGovProposalsOf_938 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4396 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1084]
d_ListOfGovProposalsOf_938 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovProposalsOf_4404
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.ListOfGovVotesOf
d_ListOfGovVotesOf_940 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4416 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1030]
d_ListOfGovVotesOf_940 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovVotesOf_4424
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.MaxKESEvoᶜ
d_MaxKESEvo'7580'_942 :: Integer
d_MaxKESEvo'7580'_942
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxKESEvo'7580'_354
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_944 :: Integer
d_MaxLovelaceSupply'7580'_944
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_348
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.MaybeNetworkIdOf
d_MaybeNetworkIdOf_946 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_178 ->
  AgdaAny -> Maybe Integer
d_MaybeNetworkIdOf_946 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_186
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.MemoryEstimate
d_MemoryEstimate_948 :: ()
d_MemoryEstimate_948 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.MintedValueOf
d_MintedValueOf_950 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4296 ->
  AgdaAny -> Integer
d_MintedValueOf_950 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4304
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.NativeScript
d_NativeScript_954 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.NeedsHash
d_NeedsHash_956 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_966 ->
  ()
d_NeedsHash_956 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Network
d_Network_958 :: ()
d_Network_958 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.NetworkId
d_NetworkId_962 :: Integer
d_NetworkId_962
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_352
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.NetworkIdOf
d_NetworkIdOf_964 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_158 ->
  AgdaAny -> Integer
d_NetworkIdOf_964 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_166
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.NoOverlappingSpendInputs
d_NoOverlappingSpendInputs_970 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  ()
d_NoOverlappingSpendInputs_970 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_972 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_972
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_362
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.NonZero-SlotLengthᶜ
d_NonZero'45'SlotLength'7580'_974 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotLength'7580'_974
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotLength'7580'_360
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_976 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_976
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_338
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Number-Epoch
d_Number'45'Epoch_978 ::
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_978
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_290
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.P1Script
d_P1Script_980 :: ()
d_P1Script_980 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.P1ScriptStructure
d_P1ScriptStructure_982 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusScript
d_PlutusScript_986 :: ()
d_PlutusScript_986 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamGroup
d_PParamGroup_994 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams
d_PParams_996 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsDiff
d_PParamsDiff_1000 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsOf
d_PParamsOf_1004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_732 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314
d_PParamsOf_1004 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_740
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.UpdateT
d_UpdateT_1006 :: ()
d_UpdateT_1006 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PState
d_PState_1008 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.PStateOf
d_PStateOf_1012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1882 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1558
d_PStateOf_1012 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PStateOf_1890
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusLanguage
d_PlutusLanguage_1014 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure
d_PlutusStructure_1016 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusV1
d_PlutusV1_1020 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV1_1020
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_498
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusV2
d_PlutusV2_1022 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV2_1022
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_500
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusV3
d_PlutusV3_1024 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV3_1024
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_502
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusV4
d_PlutusV4_1026 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV4_1026
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_504
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Policy
d_Policy_1028 :: ()
d_Policy_1028 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PolicyOf
d_PolicyOf_1030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1274 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_1030 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1282
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolDepositsRegistered
d_PoolDepositsRegistered_1032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1594 ->
  ()
d_PoolDepositsRegistered_1032 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolEnv
d_PoolEnv_1034 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolThresholds
d_PoolThresholds_1038 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.Pools
d_Pools_1042 :: ()
d_Pools_1042 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolsOf
d_PoolsOf_1044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1742 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_1044 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PoolsOf_1750
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_1046 ::
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_1046
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_342
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Prices
d_Prices_1048 :: ()
d_Prices_1048 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ProposedPPUpdates
d_ProposedPPUpdates_1050 :: ()
d_ProposedPPUpdates_1050 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Quorum
d_Quorum_1052 :: Integer
d_Quorum_1052
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_350
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_1054 :: Integer
d_RandomnessStabilisationWindow_1054
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_96
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_1056 :: Integer
d_RandomnessStabilisationWindow'7580'_1056
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow'7580'_344
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Redeemer
d_Redeemer_1058 :: ()
d_Redeemer_1058 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.RedeemerPtr
d_RedeemerPtr_1060 :: ()
d_RedeemerPtr_1060 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.RedeemersOf
d_RedeemersOf_1062 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_4084 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RedeemersOf_1062 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RedeemersOf_4092
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.ReferenceInputsOf
d_ReferenceInputsOf_1064 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4276 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ReferenceInputsOf_1064 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4284
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.RequiredSignerHashesOf
d_RequiredSignerHashesOf_1080 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4496 ->
  AgdaAny -> [Integer]
d_RequiredSignerHashesOf_1080 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RequiredSignerHashesOf_4504
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Retiring
d_Retiring_1082 :: ()
d_Retiring_1082 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.RetiringOf
d_RetiringOf_1084 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRetiring_1782 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_1084 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RetiringOf_1790
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.RewardAddress
d_RewardAddress_1086 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.RewardAddressOf
d_RewardAddressOf_1090 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_138 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_120
d_RewardAddressOf_1090 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_146
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Rewards
d_Rewards_1092 :: ()
d_Rewards_1092 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.RewardsOf
d_RewardsOf_1094 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1802 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_1094 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RewardsOf_1810
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.SKey
d_SKey_1098 :: ()
d_SKey_1098 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Script
d_Script_1102 :: ()
d_Script_1102 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptAddr
d_ScriptAddr_1104 :: ()
d_ScriptAddr_1104 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptBaseAddr
d_ScriptBaseAddr_1106 :: ()
d_ScriptBaseAddr_1106 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1108 :: ()
d_ScriptBootstrapAddr_1108 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptHash
d_ScriptHash_1110 :: ()
d_ScriptHash_1110 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure
d_ScriptStructure_1114 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptsOf
d_ScriptsOf_1118 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4456 ->
  AgdaAny -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ScriptsOf_1118 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ScriptsOf_4464
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Ser
d_Ser_1122 :: ()
d_Ser_1122 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-CostModel
d_Show'45'CostModel_1124 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1124
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_480
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-Credential
d_Show'45'Credential_1126 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1126 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_386
      v1 v2
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1128 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1128 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_390
      v1 v2
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-DrepThresholds
d_Show'45'DrepThresholds_1130 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_1130
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'DrepThresholds_776
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-Epoch
d_Show'45'Epoch_1132 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_1132
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_84
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-ExUnits
d_Show'45'ExUnits_1134 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1134
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_494
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-GovRole
d_Show'45'GovRole_1136 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_1136
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_Show'45'GovRole_1386
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-Language
d_Show'45'Language_1138 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_1138
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_484
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-LanguageCostModels
d_Show'45'LanguageCostModels_1140 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_1140
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Show'45'LanguageCostModels_706
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-Network
d_Show'45'Network_1142 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1142
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_334
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-PParams
d_Show'45'PParams_1144 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_1144
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'PParams_780
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-PoolThresholds
d_Show'45'PoolThresholds_1146 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_1146
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'PoolThresholds_778
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-Prices
d_Show'45'Prices_1148 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1148
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_496
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-RewardAddress
d_Show'45'RewardAddress_1150 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RewardAddress_1150
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RewardAddress_388
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-ScriptHash
d_Show'45'ScriptHash_1152 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1152
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_226
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-THash
d_Show'45'THash_1154 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1154
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1424
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-THash
d_Show'45'THash_1156 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1156
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-THash
d_Show'45'THash_1158 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1158
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_456
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-VDeleg
d_Show'45'VDeleg_1160 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_1160
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_Show'45'VDeleg_1496
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Sig
d_Sig_1162 :: ()
d_Sig_1162 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.SizeOf
d_SizeOf_1164 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4196 ->
  AgdaAny -> Integer
d_SizeOf_1164 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SizeOf_4204
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Slot
d_Slot_1166 :: ()
d_Slot_1166 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.SlotLengthᶜ
d_SlotLength'7580'_1168 :: Integer
d_SlotLength'7580'_1168
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotLength'7580'_358
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1170 :: Integer
d_SlotsPerEpoch'7580'_1170
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_336
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.SlotsPerKESPeriodᶜ
d_SlotsPerKESPeriod'7580'_1172 :: Integer
d_SlotsPerKESPeriod'7580'_1172
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerKESPeriod'7580'_356
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Slotʳ
d_Slot'691'_1174 :: MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_1174
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_78
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.SpendInputsOf
d_SpendInputsOf_1176 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4256 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_SpendInputsOf_1176 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4264
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StabilityWindow
d_StabilityWindow_1178 :: Integer
d_StabilityWindow_1178
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_98
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.StabilityWindowᶜ
d_StabilityWindow'7580'_1180 :: Integer
d_StabilityWindow'7580'_1180
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_346
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Stake
d_Stake_1182 :: ()
d_Stake_1182 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.StakeDelegs
d_StakeDelegs_1184 :: ()
d_StakeDelegs_1184 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.StakeDelegsOf
d_StakeDelegsOf_1186 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStakeDelegs_1842 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_1186 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_StakeDelegsOf_1850
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakeOf
d_StakeOf_1188 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStake_1822 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_1188 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_StakeOf_1830
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolParams
d_StakePoolParams_1190 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolState
d_StakePoolState_1194 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.StartingBalanceIntervalsOf
d_StartingBalanceIntervalsOf_1198 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasStartingBalanceIntervals_4576 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StartingBalanceIntervalsOf_1198 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_StartingBalanceIntervalsOf_4584
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.SubLevelTx
d_SubLevelTx_1200 :: ()
d_SubLevelTx_1200 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.SubTransactionsOf
d_SubTransactionsOf_1202 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_4154 ->
  AgdaAny -> AgdaAny
d_SubTransactionsOf_1202 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SubTransactionsOf_4164
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.T-Hashable
d_T'45'Hashable_1204 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1204
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1424
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.T-Hashable
d_T'45'Hashable_1206 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1206
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.T-Hashable
d_T'45'Hashable_1208 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1208
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_456
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.T-isHashable
d_T'45'isHashable_1210 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_1210
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_456
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
                     (coe v1))))))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra
d_TokenAlgebra_1214 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TopLevelGuardsOf
d_TopLevelGuardsOf_1218 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4216 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_TopLevelGuardsOf_1218 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TopLevelGuardsOf_4224
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TopLevelTx
d_TopLevelTx_1220 :: ()
d_TopLevelTx_1220 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Tx
d_Tx_1226 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody
d_TxBody_1230 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBodyOf
d_TxBodyOf_1234 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxBody_4042 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876
d_TxBodyOf_1234 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxBodyOf_4052
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxFeesOf
d_TxFeesOf_1236 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_4130 ->
  AgdaAny -> AgdaAny
d_TxFeesOf_1236 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxFeesOf_4140
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxId
d_TxId_1238 :: ()
d_TxId_1238 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TxIdOf
d_TxIdOf_1240 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4176 ->
  AgdaAny -> Integer
d_TxIdOf_1240 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxIdOf_4184
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxIn
d_TxIn_1242 :: ()
d_TxIn_1242 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TxOut
d_TxOut_1244 :: ()
d_TxOut_1244 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TxOutsOf
d_TxOutsOf_1246 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4476 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_TxOutsOf_1246 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4484
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxWitnesses
d_TxWitnesses_1248 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TxWitnessesOf
d_TxWitnessesOf_1252 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxWitnesses_4064 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3878
d_TxWitnessesOf_1252 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxWitnessesOf_4072
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.UTxO
d_UTxO_1254 :: ()
d_UTxO_1254 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.UTxOOf
d_UTxOOf_1256 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3854 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1256 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3862
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Update
d_Update_1258 :: ()
d_Update_1258 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.VDeleg
d_VDeleg_1270 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.VKey
d_VKey_1272 :: ()
d_VKey_1272 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.VKeyAddr
d_VKeyAddr_1274 :: ()
d_VKeyAddr_1274 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.VKeyBaseAddr
d_VKeyBaseAddr_1276 :: ()
d_VKeyBaseAddr_1276 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1278 :: ()
d_VKeyBootstrapAddr_1278 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.VRF
d_VRF_1282 :: ()
d_VRF_1282 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ValidIntervalOf
d_ValidIntervalOf_1284 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4236 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ValidIntervalOf_1284 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ValidIntervalOf_4244
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Value
d_Value_1286 :: ()
d_Value_1286 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1288 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_1288
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2768
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.VoteDelegs
d_VoteDelegs_1290 :: ()
d_VoteDelegs_1290 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.VoteDelegsOf
d_VoteDelegsOf_1292 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1178 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1292 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1186
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.VoteOf
d_VoteOf_1294 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1254 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_998
d_VoteOf_1294 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1262
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.VotesOf
d_VotesOf_1296 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasVotes_1962 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1030]
d_VotesOf_1296 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_VotesOf_1970
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Withdrawals
d_Withdrawals_1298 :: ()
d_Withdrawals_1298 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.WithdrawalsOf
d_WithdrawalsOf_1300 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_198 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1300 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_206
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.activeDRepsOf
d_activeDRepsOf_1302 ::
  () ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1294 ->
  AgdaAny -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_1302
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (\ v2 v3 v4 v5 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_activeDRepsOf_1674
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
                 (coe v1))
              v3 v4 v5))
-- Ledger.Dijkstra.Foreign.HSStructures._.activeInEpoch
d_activeInEpoch_1304 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_1304 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.adHashingScheme
d_adHashingScheme_1306 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_adHashingScheme_1306
  = coe
      MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_isHashableSet'45'ℕ_34
-- Ledger.Dijkstra.Foreign.HSStructures._.addEpoch
d_addEpoch_1308 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_1308
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_284
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.addSlot
d_addSlot_1310 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_1310
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_282
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.addValue
d_addValue_1312 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_1312
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2768
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.allDCerts
d_allDCerts_1314 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1478]
d_allDCerts_1314
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allDCerts_4858
-- Ledger.Dijkstra.Foreign.HSStructures._.allMintedCoin
d_allMintedCoin_1316 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  Integer
d_allMintedCoin_1316
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allMintedCoin_4842
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.allReferenceInputs
d_allReferenceInputs_1318 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allReferenceInputs_1318
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allReferenceInputs_4752
-- Ledger.Dijkstra.Foreign.HSStructures._.allReferenceScripts
d_allReferenceScripts_1320 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allReferenceScripts_1320
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allReferenceScripts_4788
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.allSpendInputs
d_allSpendInputs_1322 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allSpendInputs_1322
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allSpendInputs_4740
-- Ledger.Dijkstra.Foreign.HSStructures._.allSpendInputsList
d_allSpendInputsList_1324 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  [[MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]]
d_allSpendInputsList_1324
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allSpendInputsList_4748
-- Ledger.Dijkstra.Foreign.HSStructures._.allWitnessScripts
d_allWitnessScripts_1326 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allWitnessScripts_1326
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allWitnessScripts_4800
-- Ledger.Dijkstra.Foreign.HSStructures._.applyUpdate
d_applyUpdate_1328 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314
d_applyUpdate_1328
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1842
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1878
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2766
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.coin
d_coin_1334 :: Integer -> Integer
d_coin_1334
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2768
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.coin-inject-lemma
d_coin'45'inject'45'lemma_1336 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1336 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.coinFromDeposits
d_coinFromDeposits_1338 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1594 ->
  Integer
d_coinFromDeposits_1338
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_coinFromDeposits_2196
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.coinFromRewards
d_coinFromRewards_1340 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1594 ->
  Integer
d_coinFromRewards_1340
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_coinFromRewards_2194
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1342 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_1342
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2768
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.coin∘inject≗id
d_coin'8728'inject'8791'id_1344 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_1344 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.cryptoStructure
d_cryptoStructure_1346 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_cryptoStructure_1346
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Foreign.Crypto.Structure.d_HSCryptoStructure_36
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.cwitness
d_cwitness_1348 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1478 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_cwitness_1348
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_cwitness_1494
-- Ledger.Dijkstra.Foreign.HSStructures._.dataOfTx
d_dataOfTx_1350 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  [Integer]
d_dataOfTx_1350 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_dataOfTx_4824
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.e<sucᵉ
d_e'60'suc'7497'_1358 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_e'60'suc'7497'_1358
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_e'60'suc'7497'_124
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.epoch
d_epoch_1360 :: Integer -> Integer
d_epoch_1360
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_92
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.epochStructure
d_epochStructure_1362 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_1362
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'46'extendedlambda0_382
      (coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8)
-- Ledger.Dijkstra.Foreign.HSStructures._.firstSlot
d_firstSlot_1380 :: Integer -> Integer
d_firstSlot_1380
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_94
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.fromPlutusLanguage
d_fromPlutusLanguage_1382 ::
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_1382
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_470
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.gaData
d_gaData_1384 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_984 ->
  AgdaAny
d_gaData_1384 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_992
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.gaType
d_gaType_1386 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_984 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_966
d_gaType_1386 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_990
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.getAllScripts
d_getAllScripts_1388 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_getAllScripts_1388
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_getAllScripts_4814
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.getScriptHash
d_getScriptHash_1390 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  Integer
d_getScriptHash_1390
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_364
-- Ledger.Dijkstra.Foreign.HSStructures._.getTxData
d_getTxData_1392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  [Integer]
d_getTxData_1392 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_getTxData_4834
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.getTxScripts
d_getTxScripts_1394 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_getTxScripts_1394
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_getTxScripts_4808
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
              (coe v0))
           v2 v3)
-- Ledger.Dijkstra.Foreign.HSStructures._.globalConstants
d_globalConstants_1396 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_296
d_globalConstants_1396
  = coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8
-- Ledger.Dijkstra.Foreign.HSStructures._.govParams
d_govParams_1398 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1860
d_govParams_1398
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HsGovParams_644
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.govVoterCredential
d_govVoterCredential_1400 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_1006 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_1400
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_govVoterCredential_1144
-- Ledger.Dijkstra.Foreign.HSStructures._.hashRespectsUnion
d_hashRespectsUnion_1402 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_1402
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_582
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.inject
d_inject_1404 :: Integer -> Integer
d_inject_1404
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2768
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.isBootstrapAddr
d_isBootstrapAddr_1406 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_104
d_isBootstrapAddr_1406
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr_314
-- Ledger.Dijkstra.Foreign.HSStructures._.isGovVoterDRep
d_isGovVoterDRep_1408 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_1006 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_1408
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_isGovVoterDRep_1140
-- Ledger.Dijkstra.Foreign.HSStructures._.isKeyHash
d_isKeyHash_1410 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_1410 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.isKeyHashObj
d_isKeyHashObj_1412 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isKeyHashObj_1412
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Dijkstra.Foreign.HSStructures._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1414 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_1414
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_62
-- Ledger.Dijkstra.Foreign.HSStructures._.isKeyPair
d_isKeyPair_1416 ::
  Integer ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 -> ()
d_isKeyPair_1416 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.isNativeScript
d_isNativeScript_1418 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_1418 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.isP1Script
d_isP1Script_1420 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_1420 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.isP1Script?
d_isP1Script'63'_1422 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_1422
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP1Script'63'_670
-- Ledger.Dijkstra.Foreign.HSStructures._.isP2Script
d_isP2Script_1424 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_1424 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.isP2Script?
d_isP2Script'63'_1426 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_1426
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP2Script'63'_684
-- Ledger.Dijkstra.Foreign.HSStructures._.isProtected
d_isProtected_1428 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isProtected_1428
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isProtected_278
-- Ledger.Dijkstra.Foreign.HSStructures._.isScript
d_isScript_1430 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.isScriptAddr
d_isScriptAddr_1432 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1432 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.isScriptObj
d_isScriptObj_1434 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isScriptObj_1434
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
-- Ledger.Dijkstra.Foreign.HSStructures._.isScriptRewardAddress
d_isScriptRewardAddress_1436 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_120 ->
  ()
d_isScriptRewardAddress_1436 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.isSigned
d_isSigned_1438 ::
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer -> Integer -> ()
d_isSigned_1438 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.isSigned-correct
d_isSigned'45'correct_1440 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_1440 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.isVKey
d_isVKey_1442 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.isVKeyAddr
d_isVKeyAddr_1444 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1444 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.khs
d_khs_1446 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_1446
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.language
d_language_1448 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_language_1448
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_532
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.languageCostModels
d_languageCostModels_1450 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_692 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_1450 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_696
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.leiosCryptoStructure
d_leiosCryptoStructure_1452 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.T_LeiosCryptoStructure_10
d_leiosCryptoStructure_1452
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSLeiosCryptoStructure_690
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.lookupScriptHash
d_lookupScriptHash_1454 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_1454
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_lookupScriptHash_4850
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
              (coe v0))
           v2 v3 v4)
-- Ledger.Dijkstra.Foreign.HSStructures._.mkStakePoolState
d_mkStakePoolState_1460 ::
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1368 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolState_1400
d_mkStakePoolState_1460
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_mkStakePoolState_1432
-- Ledger.Dijkstra.Foreign.HSStructures._.monoid
d_monoid_1462 :: MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_1462
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_monoid_1066
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2768
                     (coe v1))))))
-- Ledger.Dijkstra.Foreign.HSStructures._.netId
d_netId_1464 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_netId_1464
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_270
-- Ledger.Dijkstra.Foreign.HSStructures._.newCertDeposits
d_newCertDeposits_1466 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1478] ->
  Integer
d_newCertDeposits_1466
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_newCertDeposits_2146
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.p1s
d_p1s_1468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_338
d_p1s_1468
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_562
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.paramsWF-elim
d_paramsWF'45'elim_1470 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_1470 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_paramsWF'45'elim_708
      v1 v2
-- Ledger.Dijkstra.Foreign.HSStructures._.paramsWellFormed
d_paramsWellFormed_1472 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  ()
d_paramsWellFormed_1472 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.payCred
d_payCred_1474 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_1474
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_266
-- Ledger.Dijkstra.Foreign.HSStructures._.pkk
d_pkk_1476 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_1476
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.policies
d_policies_1478 :: Integer -> [Integer]
d_policies_1478
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2768
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.poolOwners
d_poolOwners_1480 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1478 ->
  [Integer]
d_poolOwners_1480
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_poolOwners_1510
-- Ledger.Dijkstra.Foreign.HSStructures._.positivePParams
d_positivePParams_1482 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  [Integer]
d_positivePParams_1482
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_positivePParams_500
-- Ledger.Dijkstra.Foreign.HSStructures._.ppUpd
d_ppUpd_1484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1826
d_ppUpd_1484
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1878
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2766
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.ppWF?
d_ppWF'63'_1486 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1486
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1850
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1878
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2766
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.ppdWellFormed
d_ppdWellFormed_1488 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  ()
d_ppdWellFormed_1488 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.preoEpoch
d_preoEpoch_1490 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_1490
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_114
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.proposedCC
d_proposedCC_1492 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_984 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_1492
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_proposedCC_1152
-- Ledger.Dijkstra.Foreign.HSStructures._.protect
d_protect_1494 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84
d_protect_1494
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_protect_282
-- Ledger.Dijkstra.Foreign.HSStructures._.protection-preserves-payment
d_protection'45'preserves'45'payment_1496 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_protection'45'preserves'45'payment_1496 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.protection-preserves-stake
d_protection'45'preserves'45'stake_1498 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_protection'45'preserves'45'stake_1498 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ps
d_ps_1500 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376
d_ps_1500
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.rawMonoid
d_rawMonoid_1502 :: MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_1502
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = coe
                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2768
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
               (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.referenceData
d_referenceData_1504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [Integer]
d_referenceData_1504
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (\ v1 ->
         coe
           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_referenceData_4830
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
              (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.referenceScripts
d_referenceScripts_1506 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_referenceScripts_1506
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_referenceScripts_4782
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
              (coe v0))
           v2 v3)
-- Ledger.Dijkstra.Foreign.HSStructures._.referencedTxOuts
d_referencedTxOuts_1508 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referencedTxOuts_1508
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_referencedTxOuts_4770
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
              (coe v0))
           v2 v3)
-- Ledger.Dijkstra.Foreign.HSStructures._.refundCertDeposits
d_refundCertDeposits_1510 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1478] ->
  Integer
d_refundCertDeposits_1510 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_refundCertDeposits_2176
-- Ledger.Dijkstra.Foreign.HSStructures._.rewardsBalance
d_rewardsBalance_1518 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1538 ->
  Integer
d_rewardsBalance_1518
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardsBalance_2134
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.scriptStructure
d_scriptStructure_1520 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536
d_scriptStructure_1520
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_HSScriptStructure_432
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.scriptsOfTx
d_scriptsOfTx_1522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scriptsOfTx_1522 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_scriptsOfTx_4778
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.scriptsOfUTxO
d_scriptsOfUTxO_1524 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scriptsOfUTxO_1524
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_scriptsOfUTxO_4776
-- Ledger.Dijkstra.Foreign.HSStructures._.sign
d_sign_1526 :: Integer -> Integer -> Integer
d_sign_1526
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.size
d_size_1528 :: Integer -> Integer
d_size_1528
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2768
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.slotsFromDuration
d_slotsFromDuration_1530 :: Integer -> Integer
d_slotsFromDuration_1530
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_slotsFromDuration_100
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.spendData
d_spendData_1532 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [Integer]
d_spendData_1532
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (\ v1 ->
         coe
           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_spendData_4828
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
              (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.spendScripts
d_spendScripts_1534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_spendScripts_1534
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (\ v1 ->
         coe
           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_spendScripts_4780
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
              (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.spendTxOuts
d_spendTxOuts_1536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_spendTxOuts_1536
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_spendTxOuts_4764
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
              (coe v0))
           v2 v3)
-- Ledger.Dijkstra.Foreign.HSStructures._.stakeCred
d_stakeCred_1538 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_1538
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_268
-- Ledger.Dijkstra.Foreign.HSStructures._.sucᵉ
d_suc'7497'_1540 :: Integer -> Integer
d_suc'7497'_1540
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_102
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.sumᵛ
d_sum'7515'_1542 :: [Integer] -> Integer
d_sum'7515'_1542
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2768
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.toP1Script
d_toP1Script_1544 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336
d_toP1Script_1544
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_678
-- Ledger.Dijkstra.Foreign.HSStructures._.toP2Script
d_toP2Script_1546 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364
d_toP2Script_1546
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_690
-- Ledger.Dijkstra.Foreign.HSStructures._.tokenAlgebra
d_tokenAlgebra_1548 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
d_tokenAlgebra_1548
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Coin.du_Coin'45'TokenAlgebra_132
-- Ledger.Dijkstra.Foreign.HSStructures._.txOutDataOfUTxO
d_txOutDataOfUTxO_1550 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [Integer]
d_txOutDataOfUTxO_1550
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutDataOfUTxO_4826
-- Ledger.Dijkstra.Foreign.HSStructures._.txOutToDatum
d_txOutToDatum_1552 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
d_txOutToDatum_1552
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToDatum_4730
-- Ledger.Dijkstra.Foreign.HSStructures._.txOutToScript
d_txOutToScript_1554 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_txOutToScript_1554
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToScript_4726
-- Ledger.Dijkstra.Foreign.HSStructures._.txOutToValue
d_txOutToValue_1556 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txOutToValue_1556
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4734
-- Ledger.Dijkstra.Foreign.HSStructures._.txidBytes
d_txidBytes_1558 :: Integer -> Integer
d_txidBytes_1558 v0 = coe v0
-- Ledger.Dijkstra.Foreign.HSStructures._.updateGroups
d_updateGroups_1560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_234]
d_updateGroups_1560
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1844
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1878
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2766
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.validP1Script
d_validP1Script_1570 ::
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336 ->
  ()
d_validP1Script_1570 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.validPlutusScript
d_validPlutusScript_1572 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364 ->
  ()
d_validPlutusScript_1572 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.valuesOfUTxO
d_valuesOfUTxO_1574 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [Integer]
d_valuesOfUTxO_1574
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_valuesOfUTxO_4738
-- Ledger.Dijkstra.Foreign.HSStructures._.witnessData
d_witnessData_1576 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  [Integer]
d_witnessData_1576 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_witnessData_4832
-- Ledger.Dijkstra.Foreign.HSStructures._.witnessScripts
d_witnessScripts_1578 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_witnessScripts_1578 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_witnessScripts_4798
-- Ledger.Dijkstra.Foreign.HSStructures._.ε
d_ε_1580 :: Integer
d_ε_1580
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Class.Monoid.Core.d_ε_20
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2768
                     (coe v1))))))
-- Ledger.Dijkstra.Foreign.HSStructures._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1582 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1582 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ℕEpochStructure
d_ℕEpochStructure_1584 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_1584
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_376
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.ℕtoEpoch
d_ℕtoEpoch_1586 :: Integer -> Integer
d_ℕtoEpoch_1586
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_278
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.≤-predᵉ
d_'8804''45'pred'7497'_1588 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'pred'7497'_1588
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'8804''45'pred'7497'_130
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.≥ᵉ-Dec
d_'8805''7497''45'Dec_1590 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_1590
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_488
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Acnt.reserves
d_reserves_1642 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_196 ->
  Integer
d_reserves_1642 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_204
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Acnt.treasury
d_treasury_1644 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_196 ->
  Integer
d_treasury_1644 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_202
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Anchor.hash
d_hash_1648 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1018 ->
  Integer
d_hash_1648 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_hash_1026
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Anchor.url
d_url_1650 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1018 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_1650 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_url_1024
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.BaseAddr.net
d_net_1664 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Integer
d_net_1664 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_94 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.BaseAddr.pay
d_pay_1666 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1666 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_96 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.BaseAddr.protected
d_protected_1668 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Bool
d_protected_1668 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_protected_100
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.BaseAddr.stake
d_stake_1670 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1670 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_98 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.BootstrapAddr.attrsSize
d_attrsSize_1674 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_104 ->
  Integer
d_attrsSize_1674 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_116
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.BootstrapAddr.net
d_net_1676 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_104 ->
  Integer
d_net_1676 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_112 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.BootstrapAddr.pay
d_pay_1678 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_104 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1678 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_114 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CertEnv.coldCredentials
d_coldCredentials_1682 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertEnv_1522 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_coldCredentials_1682 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_coldCredentials_1534
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CertEnv.epoch
d_epoch_1684 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertEnv_1522 ->
  Integer
d_epoch_1684 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_epoch_1530
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CertEnv.pp
d_pp_1686 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertEnv_1522 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314
d_pp_1686 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pp_1532 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CertState.dState
d_dState_1690 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1594 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1538
d_dState_1690 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1602
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CertState.gState
d_gState_1692 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1594 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1578
d_gState_1692 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1606
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CertState.pState
d_pState_1694 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1594 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1558
d_pState_1694 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1604
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.Dec-isSigned
d_Dec'45'isSigned_1704 ::
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_1704
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___246
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.DecEq-ScriptHash
d_DecEq'45'ScriptHash_1706 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_1706
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___246
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.DecEq-Ser
d_DecEq'45'Ser_1708 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_1708
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___246
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.DecEq-Sig
d_DecEq'45'Sig_1710 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_1710
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___246
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.DecEq-THash
d_DecEq'45'THash_1712 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1712
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___246
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.DecEq-VRF
d_DecEq'45'VRF_1714 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VRF_1714
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_240
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___246
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.THash
d_THash_1716 :: ()
d_THash_1716 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.KeyPair
d_KeyPair_1718 :: ()
d_KeyPair_1718 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.SKey
d_SKey_1720 :: ()
d_SKey_1720 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.ScriptHash
d_ScriptHash_1722 :: ()
d_ScriptHash_1722 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.Ser
d_Ser_1724 :: ()
d_Ser_1724 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.Show-ScriptHash
d_Show'45'ScriptHash_1726 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1726
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_226
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___246
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.Show-THash
d_Show'45'THash_1728 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1728
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___246
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.Sig
d_Sig_1730 :: ()
d_Sig_1730 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.T-Hashable
d_T'45'Hashable_1732 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1732
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___246
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.VKey
d_VKey_1734 :: ()
d_VKey_1734 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.VRF
d_VRF_1736 :: ()
d_VRF_1736 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.isKeyPair
d_isKeyPair_1738 ::
  Integer ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 -> ()
d_isKeyPair_1738 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.isSigned
d_isSigned_1740 ::
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer -> Integer -> ()
d_isSigned_1740 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.isSigned-correct
d_isSigned'45'correct_1742 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_1742 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.khs
d_khs_1744 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_1744
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___246
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.pkk
d_pkk_1746 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_1746
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___246
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.sign
d_sign_1748 :: Integer -> Integer -> Integer
d_sign_1748
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___246
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DState.deposits
d_deposits_1768 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1538 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1768 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1554
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DState.rewards
d_rewards_1770 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1538 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1770 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1552
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DState.stakeDelegs
d_stakeDelegs_1772 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1538 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1772 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_stakeDelegs_1550
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DState.voteDelegs
d_voteDelegs_1774 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1538 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1774 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_voteDelegs_1548
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DelegEnv.delegatees
d_delegatees_1778 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DelegEnv_1610 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_delegatees_1778 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_delegatees_1622
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DelegEnv.pools
d_pools_1780 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DelegEnv_1610 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1780 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1620
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DelegEnv.pparams
d_pparams_1782 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DelegEnv_1610 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314
d_pparams_1782 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pparams_1618
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds.P1
d_P1_1786 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_246 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1786 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P1_268
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds.P2a
d_P2a_1788 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_246 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1788 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2a_270
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds.P2b
d_P2b_1790 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_246 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1790 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2b_272
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds.P3
d_P3_1792 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_246 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1792 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P3_274
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds.P4
d_P4_1794 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_246 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1794 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P4_276
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds.P5a
d_P5a_1796 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_246 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1796 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5a_278
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds.P5b
d_P5b_1798 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_246 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1798 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5b_280
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds.P5c
d_P5c_1800 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_246 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1800 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5c_282
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds.P5d
d_P5d_1802 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_246 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1802 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5d_284
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds.P6
d_P6_1804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_246 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1804 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P6_286
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GState.ccHotKeys
d_ccHotKeys_1824 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1578 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1824 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_ccHotKeys_1588
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GState.deposits
d_deposits_1826 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1578 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1826 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1590
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GState.dreps
d_dreps_1828 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1578 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1828 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dreps_1586
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovAction.gaData
d_gaData_1832 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_984 ->
  AgdaAny
d_gaData_1832 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_992
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovAction.gaType
d_gaType_1834 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_984 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_966
d_gaType_1834 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_990
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionState.action
d_action_1838 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1112 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_984
d_action_1838 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1132
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionState.deposit
d_deposit_1840 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1112 ->
  Integer
d_deposit_1840 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1136
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionState.expiresIn
d_expiresIn_1842 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1112 ->
  Integer
d_expiresIn_1842 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_expiresIn_1130
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionState.prevAction
d_prevAction_1844 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1112 ->
  AgdaAny
d_prevAction_1844 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1134
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionState.returnAddr
d_returnAddr_1846 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1112 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_120
d_returnAddr_1846 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1128
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionState.votes
d_votes_1848 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1112 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1050
d_votes_1848 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_votes_1126
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovCertEnv.coldCredentials
d_coldCredentials_1868 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GovCertEnv_1638 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_coldCredentials_1868 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_coldCredentials_1650
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovCertEnv.epoch
d_epoch_1870 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GovCertEnv_1638 ->
  Integer
d_epoch_1870 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_epoch_1646
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovCertEnv.pp
d_pp_1872 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GovCertEnv_1638 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314
d_pp_1872 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pp_1648 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1876 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1860 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1876 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1892
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovParams.UpdateT
d_UpdateT_1878 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1860 ->
  ()
d_UpdateT_1878 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovParams.applyUpdate
d_applyUpdate_1880 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1860 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314
d_applyUpdate_1880 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1842
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1878
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovParams.ppUpd
d_ppUpd_1882 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1860 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1826
d_ppUpd_1882 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1878
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovParams.ppWF?
d_ppWF'63'_1884 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1860 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1884 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1850
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1878
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovParams.ppdWellFormed
d_ppdWellFormed_1886 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1860 ->
  AgdaAny -> ()
d_ppdWellFormed_1886 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovParams.updateGroups
d_updateGroups_1888 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1860 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_234]
d_updateGroups_1888 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1844
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1878
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovProposal.action
d_action_1892 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1084 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_984
d_action_1892 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1098
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovProposal.anchor
d_anchor_1894 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1084 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1018
d_anchor_1894 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1108
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovProposal.deposit
d_deposit_1896 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1084 ->
  Integer
d_deposit_1896 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1104
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovProposal.policy
d_policy_1898 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1084 ->
  Maybe Integer
d_policy_1898 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_policy_1102
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovProposal.prevAction
d_prevAction_1900 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1084 ->
  AgdaAny
d_prevAction_1900 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1100
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovProposal.returnAddr
d_returnAddr_1902 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1084 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_120
d_returnAddr_1902 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1106
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVote.anchor
d_anchor_1914 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1030 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1018
d_anchor_1914 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1046
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVote.gid
d_gid_1916 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1030 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1916 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gid_1040
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVote.vote
d_vote_1918 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1030 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_998
d_vote_1918 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_vote_1044
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVote.voter
d_voter_1920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1030 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_1006
d_voter_1920 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_voter_1042
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVoter.gvCredential
d_gvCredential_1924 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_1006 ->
  AgdaAny
d_gvCredential_1924 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCredential_1014
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVoter.gvRole
d_gvRole_1926 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_1006 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_956
d_gvRole_1926 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvRole_1012
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVotes.gvCC
d_gvCC_1930 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1050 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_1930 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCC_1058
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVotes.gvDRep
d_gvDRep_1932 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1050 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_1932 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvDRep_1060
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVotes.gvSPO
d_gvSPO_1934 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1050 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_1934 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvSPO_1062
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.==-GovAction
d_'61''61''45'GovAction_1938 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_984 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_984 ->
  Bool
d_'61''61''45'GovAction_1938
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovAction_1534
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.==-GovActionData
d_'61''61''45'GovActionData_1940 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_966 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_1940
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovActionData_1516
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.==-GovProposal
d_'61''61''45'GovProposal_1942 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1084 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1084 ->
  Bool
d_'61''61''45'GovProposal_1942
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovProposal_1568
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.==-Set
d_'61''61''45'Set_1944 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_1944 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_'61''61''45'Set_1504
      v1 v2 v3
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.Anchor
d_Anchor_1946 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.AnchorOf
d_AnchorOf_1950 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1314 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1018
d_AnchorOf_1950 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1322
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.DReps
d_DReps_1958 :: ()
d_DReps_1958 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.DRepsOf
d_DRepsOf_1960 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1294 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1960 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1302
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.DecEq-Anchor
d_DecEq'45'Anchor_1962 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_1962
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'Anchor_1498
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.DecEq-GovActionType
d_DecEq'45'GovActionType_1964 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_1964
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovActionType_1388
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.DecEq-GovRole
d_DecEq'45'GovRole_1966 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_1966
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovRole_1390
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.DecEq-GovVoter
d_DecEq'45'GovVoter_1968 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_1968
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'GovVoter_1396
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.DecEq-NeedsHash
d_DecEq'45'NeedsHash_1970 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_966 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_1970
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1566
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.DecEq-VDeleg
d_DecEq'45'VDeleg_1972 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1972
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1394
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.DecEq-Vote
d_DecEq'45'Vote_1974 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1974
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'Vote_1392
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.DepositOf
d_DepositOf_1976 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1334 ->
  AgdaAny -> Integer
d_DepositOf_1976 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1342
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovAction
d_GovAction_1978 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovActionData
d_GovActionData_1982 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_966 ->
  ()
d_GovActionData_1982 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovActionID
d_GovActionID_1984 :: ()
d_GovActionID_1984 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovActionOf
d_GovActionOf_1986 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1196 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_984
d_GovActionOf_1986 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1202
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovActionState
d_GovActionState_1988 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovActionType
d_GovActionType_1992 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovActionTypeOf
d_GovActionTypeOf_1994 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1160 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_966
d_GovActionTypeOf_1994 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1166
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovProposal
d_GovProposal_1996 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovRole
d_GovRole_2000 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovRoleCredential
d_GovRoleCredential_2002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_956 ->
  ()
d_GovRoleCredential_2002 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovVote
d_GovVote_2004 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovVoter
d_GovVoter_2008 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovVoterOf
d_GovVoterOf_2012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1214 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_1006
d_GovVoterOf_2012 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1222
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovVotes
d_GovVotes_2014 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovVotesOf
d_GovVotesOf_2018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1234 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1050
d_GovVotesOf_2018 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1242
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasAnchor
d_HasAnchor_2020 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasAnchor-GovProposal
d_HasAnchor'45'GovProposal_2024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1314
d_HasAnchor'45'GovProposal_2024
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasAnchor'45'GovProposal_1368
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_2026 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_2026
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_1352
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasCast-GovVote
d_HasCast'45'GovVote_2028 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_2028
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovVote_1494
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasCast-HashProtected
d_HasCast'45'HashProtected_2030 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_2030 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1358
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_2032 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_2032
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1360
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasDReps
d_HasDReps_2034 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasDeposit
d_HasDeposit_2038 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasDeposit-GovProposal
d_HasDeposit'45'GovProposal_2042 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1334
d_HasDeposit'45'GovProposal_2042
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasDeposit'45'GovProposal_1370
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovAction
d_HasGovAction_2044 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_2048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1196
d_HasGovAction'45'GovActionState_2048
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1374
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_2050 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1196
d_HasGovAction'45'GovProposal_2050
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1372
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovActionType
d_HasGovActionType_2052 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_2056 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1160
d_HasGovActionType'45'GovAction_2056
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_1350
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_2058 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1160
d_HasGovActionType'45'GovActionState_2058
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1378
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_2060 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1160
d_HasGovActionType'45'GovProposal_2060
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1376
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovVoter
d_HasGovVoter_2062 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_2066 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1214
d_HasGovVoter'45'GovVote_2066
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1362
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovVotes
d_HasGovVotes_2068 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovVotes-GovActionState
d_HasGovVotes'45'GovActionState_2072 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1234
d_HasGovVotes'45'GovActionState_2072
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVotes'45'GovActionState_1380
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasPolicy
d_HasPolicy_2074 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_2078 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1274
d_HasPolicy'45'GovProposal_2078
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1366
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasRewardAddress-GovActionState
d_HasRewardAddress'45'GovActionState_2080 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_138
d_HasRewardAddress'45'GovActionState_2080
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovActionState_1382
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasRewardAddress-GovProposal
d_HasRewardAddress'45'GovProposal_2082 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_138
d_HasRewardAddress'45'GovProposal_2082
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovProposal_1384
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasVote
d_HasVote_2084 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasVote-GovVote
d_HasVote'45'GovVote_2088 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1254
d_HasVote'45'GovVote_2088
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasVote'45'GovVote_1364
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasVoteDelegs
d_HasVoteDelegs_2090 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HashProtected
d_HashProtected_2094 :: () -> ()
d_HashProtected_2094 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.NeedsHash
d_NeedsHash_2098 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_966 ->
  ()
d_NeedsHash_2098 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.Policy
d_Policy_2104 :: ()
d_Policy_2104 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.PolicyOf
d_PolicyOf_2106 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1274 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_2106 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1282
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.Show-GovRole
d_Show'45'GovRole_2110 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_2110
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_Show'45'GovRole_1386
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.Show-VDeleg
d_Show'45'VDeleg_2112 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_2112
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_Show'45'VDeleg_1496
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.VDeleg
d_VDeleg_2120 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.Vote
d_Vote_2122 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.VoteDelegs
d_VoteDelegs_2124 :: ()
d_VoteDelegs_2124 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.VoteDelegsOf
d_VoteDelegsOf_2126 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1178 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_2126 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1186
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.VoteOf
d_VoteOf_2128 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1254 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_998
d_VoteOf_2128 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1262
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.activeDRepsOf
d_activeDRepsOf_2132 ::
  () ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1294 ->
  AgdaAny -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_2132
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (\ v2 v3 v4 v5 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_activeDRepsOf_1674
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
                 (coe v1))
              v3 v4 v5))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.activeInEpoch
d_activeInEpoch_2134 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_2134 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.gaData
d_gaData_2136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_984 ->
  AgdaAny
d_gaData_2136 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_992
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.gaType
d_gaType_2138 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_984 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_966
d_gaType_2138 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_990
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.govVoterCredential
d_govVoterCredential_2140 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_1006 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_2140
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_govVoterCredential_1144
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.isGovVoterDRep
d_isGovVoterDRep_2142 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_1006 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_2142
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_isGovVoterDRep_1140
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.proposedCC
d_proposedCC_2146 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_984 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_2146
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_proposedCC_1152
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasAnchor.AnchorOf
d_AnchorOf_2162 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1314 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1018
d_AnchorOf_2162 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1322
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasDReps.DRepsOf
d_DRepsOf_2166 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1294 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_2166 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1302
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasDeposit.DepositOf
d_DepositOf_2170 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1334 ->
  AgdaAny -> Integer
d_DepositOf_2170 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1342
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovAction.GovActionOf
d_GovActionOf_2174 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1196 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_984
d_GovActionOf_2174 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1202
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_2178 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1160 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_966
d_GovActionTypeOf_2178 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1166
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovVoter.GovVoterOf
d_GovVoterOf_2182 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1214 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_1006
d_GovVoterOf_2182 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1222
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovVotes.GovVotesOf
d_GovVotesOf_2186 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1234 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1050
d_GovVotesOf_2186 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1242
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasPolicy.PolicyOf
d_PolicyOf_2190 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1274 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_2190 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1282
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasVote.VoteOf
d_VoteOf_2194 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1254 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_998
d_VoteOf_2194 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1262
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_2198 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1178 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_2198 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1186
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HSNativeScript.nativeScript
d_nativeScript_2218 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.T_NativeScript_338
d_nativeScript_2218 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_nativeScript_344
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HSNativeScript.nsScriptHash
d_nsScriptHash_2220 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336 ->
  Integer
d_nsScriptHash_2220 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_nsScriptHash_346
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HSNativeScript.nsScriptSize
d_nsScriptSize_2222 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336 ->
  Integer
d_nsScriptSize_2222 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_nsScriptSize_348
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HSPlutusScript.psScriptHash
d_psScriptHash_2226 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364 ->
  Integer
d_psScriptHash_2226 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_psScriptHash_372
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HSPlutusScript.psScriptLanguage
d_psScriptLanguage_2228 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_psScriptLanguage_2228 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_psScriptLanguage_376
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HSPlutusScript.psScriptSize
d_psScriptSize_2230 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364 ->
  Integer
d_psScriptSize_2230 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_psScriptSize_374
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasAccount.AccountOf
d_AccountOf_2234 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasAccount_212 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_196
d_AccountOf_2234 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_AccountOf_220
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasAttrSize.AttrSizeOf
d_AttrSizeOf_2238 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_218 ->
  AgdaAny -> Integer
d_AttrSizeOf_2238 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_226
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasBalanceIntervals.BalanceIntervalsOf
d_BalanceIntervalsOf_2242 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4556 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_BalanceIntervalsOf_2242 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_BalanceIntervalsOf_4564
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCCHotKeys.CCHotKeysOf
d_CCHotKeysOf_2246 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1702 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_2246 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CCHotKeysOf_1710
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_2250 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasCCMaxTermLength_752 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_2250 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_CCMaxTermLengthOf_760
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCertState.CertStateOf
d_CertStateOf_2254 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1922 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1594
d_CertStateOf_2254 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1930
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasColdCredentials.ColdCredentialsOf
d_ColdCredentialsOf_2258 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasColdCredentials_1722 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_ColdCredentialsOf_2258 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_ColdCredentialsOf_1730
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCollateralInputs.CollateralInputsOf
d_CollateralInputsOf_2262 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_4106 ->
  AgdaAny -> AgdaAny
d_CollateralInputsOf_2262 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CollateralInputsOf_4116
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCredential.CredentialOf
d_CredentialOf_2266 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_2266 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCurrentTreasury.CurrentTreasuryOf
d_CurrentTreasuryOf_2270 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4516 ->
  AgdaAny -> Maybe Integer
d_CurrentTreasuryOf_2270 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CurrentTreasuryOf_4524
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDCerts.DCertsOf
d_DCertsOf_2274 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4336 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1478]
d_DCertsOf_2274 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DCertsOf_4344
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDState.DStateOf
d_DStateOf_2278 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1862 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1538
d_DStateOf_2278 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1870
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasData.DataOf
d_DataOf_2282 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4376 ->
  AgdaAny -> [Integer]
d_DataOf_2282 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4384
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDeposits.DepositsOf
d_DepositsOf_2286 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1682 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2286 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DepositsOf_1690
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDirectDeposits.DirectDepositsOf
d_DirectDepositsOf_2290 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4536 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DirectDepositsOf_2290 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DirectDepositsOf_4544
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasEpoch.EpochOf
d_EpochOf_2294 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasEpoch_1942 ->
  AgdaAny -> Integer
d_EpochOf_2294 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_EpochOf_1950
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasFees?.FeesOf?
d_FeesOf'63'_2298 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4316 ->
  AgdaAny -> Maybe Integer
d_FeesOf'63'_2298 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_FeesOf'63'_4324
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasFuturePools.FuturePoolsOf
d_FuturePoolsOf_2302 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasFuturePools_1762 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_FuturePoolsOf_2302 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_FuturePoolsOf_1770
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGState.GStateOf
d_GStateOf_2306 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1902 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1578
d_GStateOf_2306 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_GStateOf_1910
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovProposals.GovProposalsOf
d_GovProposalsOf_2310 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGovProposals_4356 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1084]
d_GovProposalsOf_2310 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GovProposalsOf_4364
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGuards.GuardsOf
d_GuardsOf_2314 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4436 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_GuardsOf_2314 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GuardsOf_4444
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasIsValidFlag.IsValidFlagOf
d_IsValidFlagOf_2318 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4596 ->
  AgdaAny -> Bool
d_IsValidFlagOf_2318 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_IsValidFlagOf_4604
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasListOfGovProposals.ListOfGovProposalsOf
d_ListOfGovProposalsOf_2322 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4396 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1084]
d_ListOfGovProposalsOf_2322 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovProposalsOf_4404
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasListOfGovVotes.ListOfGovVotesOf
d_ListOfGovVotesOf_2326 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4416 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1030]
d_ListOfGovVotesOf_2326 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovVotesOf_4424
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasMaybeNetworkId.MaybeNetworkIdOf
d_MaybeNetworkIdOf_2330 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_178 ->
  AgdaAny -> Maybe Integer
d_MaybeNetworkIdOf_2330 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_186
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasMintedValue.MintedValueOf
d_MintedValueOf_2334 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4296 ->
  AgdaAny -> Integer
d_MintedValueOf_2334 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4304
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_2338 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_158 ->
  AgdaAny -> Integer
d_NetworkIdOf_2338 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_166
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPParams.PParamsOf
d_PParamsOf_2342 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_732 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314
d_PParamsOf_2342 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_740
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPState.PStateOf
d_PStateOf_2346 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1882 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1558
d_PStateOf_2346 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PStateOf_1890
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPools.PoolsOf
d_PoolsOf_2350 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1742 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_2350 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PoolsOf_1750
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRedeemers.RedeemersOf
d_RedeemersOf_2354 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_4084 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RedeemersOf_2354 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RedeemersOf_4092
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasReferenceInputs.ReferenceInputsOf
d_ReferenceInputsOf_2358 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4276 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ReferenceInputsOf_2358 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4284
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRequiredSingerHashes.RequiredSignerHashesOf
d_RequiredSignerHashesOf_2362 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4496 ->
  AgdaAny -> [Integer]
d_RequiredSignerHashesOf_2362 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RequiredSignerHashesOf_4504
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRetiring.RetiringOf
d_RetiringOf_2366 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRetiring_1782 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_2366 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RetiringOf_1790
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRewardAddress.RewardAddressOf
d_RewardAddressOf_2370 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_138 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_120
d_RewardAddressOf_2370 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_146
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRewards.RewardsOf
d_RewardsOf_2374 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1802 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2374 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RewardsOf_1810
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasScripts.ScriptsOf
d_ScriptsOf_2378 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4456 ->
  AgdaAny -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ScriptsOf_2378 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ScriptsOf_4464
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasSize.SizeOf
d_SizeOf_2382 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4196 ->
  AgdaAny -> Integer
d_SizeOf_2382 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SizeOf_4204
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasSpendInputs.SpendInputsOf
d_SpendInputsOf_2386 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4256 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_SpendInputsOf_2386 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4264
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasStake.StakeOf
d_StakeOf_2390 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStake_1822 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_2390 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_StakeOf_1830
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasStakeDelegs.StakeDelegsOf
d_StakeDelegsOf_2394 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStakeDelegs_1842 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_2394 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_StakeDelegsOf_1850
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasStartingBalanceIntervals.StartingBalanceIntervalsOf
d_StartingBalanceIntervalsOf_2398 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasStartingBalanceIntervals_4576 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StartingBalanceIntervalsOf_2398 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_StartingBalanceIntervalsOf_4584
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasSubTransactions.SubTransactionsOf
d_SubTransactionsOf_2402 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_4154 ->
  AgdaAny -> AgdaAny
d_SubTransactionsOf_2402 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SubTransactionsOf_4164
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTopLevelGuards.TopLevelGuardsOf
d_TopLevelGuardsOf_2406 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4216 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_TopLevelGuardsOf_2406 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TopLevelGuardsOf_4224
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxBody.TxBodyOf
d_TxBodyOf_2410 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxBody_4042 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876
d_TxBodyOf_2410 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxBodyOf_4052
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxFees.TxFeesOf
d_TxFeesOf_2414 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_4130 ->
  AgdaAny -> AgdaAny
d_TxFeesOf_2414 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxFeesOf_4140
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxId.TxIdOf
d_TxIdOf_2418 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4176 ->
  AgdaAny -> Integer
d_TxIdOf_2418 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxIdOf_4184
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxOuts.TxOutsOf
d_TxOutsOf_2422 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4476 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_TxOutsOf_2422 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4484
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxWitnesses.TxWitnessesOf
d_TxWitnessesOf_2426 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxWitnesses_4064 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3878
d_TxWitnessesOf_2426 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxWitnessesOf_4072
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasUTxO.UTxOOf
d_UTxOOf_2430 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3854 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_2430 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3862
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasValidInterval.ValidIntervalOf
d_ValidIntervalOf_2434 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4236 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ValidIntervalOf_2434 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ValidIntervalOf_4244
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasVotes.VotesOf
d_VotesOf_2438 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasVotes_1962 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1030]
d_VotesOf_2438 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_VotesOf_1970
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_2442 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_198 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_2442 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_206
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidHomomorphism.homo
d_homo_2464 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2464 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2466 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2466 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2468 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2468 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2470 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2470 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidHomomorphism.cong
d_cong_2472 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2472 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.homo
d_homo_2476 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2476 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.injective
d_injective_2478 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_2478 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2480 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2480 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2482 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_2482 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2484 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2484 ~v0 v1 = du_isMagmaMonomorphism_2484 v1
du_isMagmaMonomorphism_2484 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2484 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2486 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2486 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2488 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_2488 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2490 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2490 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_2492 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_2492 ~v0 v1 = du_isRelIsomorphism_2492 v1
du_isRelIsomorphism_2492 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_2492 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2494 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2494 ~v0 v1 = du_isRelMonomorphism_2494 v1
du_isRelMonomorphism_2494 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2494 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.surjective
d_surjective_2496 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2496 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2498 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2498 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.cong
d_cong_2500 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2500 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidMonomorphism.homo
d_homo_2504 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2504 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidMonomorphism.injective
d_injective_2506 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_2506 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2508 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2508 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2510 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2510 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2512 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2512 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2514 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2514 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2516 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2516 ~v0 v1 = du_isRelMonomorphism_2516 v1
du_isRelMonomorphism_2516 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2516 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2518 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2518 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidMonomorphism.cong
d_cong_2520 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2520 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.LanguageCostModels.languageCostModels
d_languageCostModels_2524 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_692 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2524 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_696
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_338 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2544 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_358
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_338 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2546 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_362
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_338 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2548 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_360
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.P1ScriptStructure.P1Script
d_P1Script_2550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_338 ->
  ()
d_P1Script_2550 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.P1ScriptStructure.validP1Script
d_validP1Script_2552 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_338 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2552 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.Emax
d_Emax_2568 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_Emax_2568 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_470
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.a
d_a_2570 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_a_2570 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_440 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.a0
d_a0_2572 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2572 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_474
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.b
d_b_2574 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_b_2574 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_442 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.ccMaxTermLength
d_ccMaxTermLength_2576 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_ccMaxTermLength_2576 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_486
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.ccMinSize
d_ccMinSize_2578 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_ccMinSize_2578 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_484
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2580 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_coinsPerUTxOByte_2580 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_454
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.collateralPercentage
d_collateralPercentage_2582 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_collateralPercentage_2582 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_476
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.costmdls
d_costmdls_2584 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_2584
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_costmdls_496
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.costmdlsAssoc
d_costmdlsAssoc_2586 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_692
d_costmdlsAssoc_2586 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_478
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.drepActivity
d_drepActivity_2588 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_drepActivity_2588 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_494
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.drepDeposit
d_drepDeposit_2590 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_drepDeposit_2590 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_492
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.drepThresholds
d_drepThresholds_2592 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_246
d_drepThresholds_2592 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_482
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.govActionDeposit
d_govActionDeposit_2594 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_govActionDeposit_2594 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_490
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.govActionLifetime
d_govActionLifetime_2596 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_govActionLifetime_2596 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_488
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.keyDeposit
d_keyDeposit_2598 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_keyDeposit_2598 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_444
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.leiosCommitteeSize
d_leiosCommitteeSize_2600 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_leiosCommitteeSize_2600 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosCommitteeSize_432
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.leiosDiffusionPeriod
d_leiosDiffusionPeriod_2602 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_leiosDiffusionPeriod_2602 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosDiffusionPeriod_426
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.leiosHeaderPeriod
d_leiosHeaderPeriod_2604 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_leiosHeaderPeriod_2604 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosHeaderPeriod_422
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.leiosMaxEBExUnits
d_leiosMaxEBExUnits_2606 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leiosMaxEBExUnits_2606 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_436
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.leiosMaxEBSize
d_leiosMaxEBSize_2608 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_leiosMaxEBSize_2608 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_428
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_2610 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_leiosMaxEBTxsSize_2610 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_430
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_2612 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_leiosMaxRefScriptSizePerEB_2612 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_438
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_2614 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_2614 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_434
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.leiosVotingPeriod
d_leiosVotingPeriod_2616 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_leiosVotingPeriod_2616 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosVotingPeriod_424
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.maxBlockExUnits
d_maxBlockExUnits_2618 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_2618 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_414
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.maxBlockSize
d_maxBlockSize_2620 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_maxBlockSize_2620 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_406
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.maxCollateralInputs
d_maxCollateralInputs_2622 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_maxCollateralInputs_2622 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_418
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.maxHeaderSize
d_maxHeaderSize_2624 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_maxHeaderSize_2624 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_410
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2626 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_maxRefScriptSizePerBlock_2626 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_462
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2628 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_maxRefScriptSizePerTx_2628 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_460
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.maxTxExUnits
d_maxTxExUnits_2630 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_2630 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_412
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.maxTxSize
d_maxTxSize_2632 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_maxTxSize_2632 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_408
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.maxValSize
d_maxValSize_2634 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_maxValSize_2634 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_416
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2636 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2636 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_458
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.minPoolCost
d_minPoolCost_2638 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_minPoolCost_2638 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_448
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.minUTxOValue
d_minUTxOValue_2640 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_minUTxOValue_2640 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_468
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.monetaryExpansion
d_monetaryExpansion_2642 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2642 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_450
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.nopt
d_nopt_2644 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_nopt_2644 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_472
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.poolDeposit
d_poolDeposit_2646 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_poolDeposit_2646 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_446
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.poolThresholds
d_poolThresholds_2648 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_290
d_poolThresholds_2648 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_480
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.prices
d_prices_2650 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_2650 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_456
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.pv
d_pv_2652 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2652 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_420
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2654 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2654 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_466
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.refScriptCostStride
d_refScriptCostStride_2656 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2656 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_464
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.treasuryCut
d_treasuryCut_2658 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2658 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_452
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsDiff.UpdateT
d_UpdateT_2662 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1826 ->
  ()
d_UpdateT_2662 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsDiff.applyUpdate
d_applyUpdate_2664 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1826 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314
d_applyUpdate_2664 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1842
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsDiff.ppWF?
d_ppWF'63'_2666 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1826 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2666 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1850
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_2668 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1826 ->
  AgdaAny -> ()
d_ppdWellFormed_2668 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsDiff.updateGroups
d_updateGroups_2670 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1826 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_234]
d_updateGroups_2670 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1844
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate._?↗_
d__'63''8599'__2674 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__2674 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du__'63''8599'__1572
      v1 v2
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate._∪ˡᶜᵐ_
d__'8746''737''7580''7504'__2676 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_692 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_692 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_692
d__'8746''737''7580''7504'__2676
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_mkLanguageCostModels_698
                 (coe
                    MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_482
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
                                (coe v1))))
                       (coe
                          MAlonzo.Code.Data.List.Base.du__'43''43'__32
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_696
                             (coe v2))
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_696
                             (coe v3))))))))
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_2678 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_2678
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamsUpdate_1824
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_2680 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_2684 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314
d_applyPParamsUpdate_2684
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_applyPParamsUpdate_1626
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_2686 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_234]
d_modifiedUpdateGroups_2686
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiedUpdateGroups_1556
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_2688 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Bool
d_modifiesEconomicGroup_2688
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesEconomicGroup_1172
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_2690 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Bool
d_modifiesGovernanceGroup_2690
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesGovernanceGroup_1364
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_2692 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Bool
d_modifiesNetworkGroup_2692
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesNetworkGroup_1076
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_2694 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Bool
d_modifiesSecurityGroup_2694
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesSecurityGroup_1460
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_2696 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Bool
d_modifiesTechnicalGroup_2696
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesTechnicalGroup_1268
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_2698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  ()
d_paramsUpdateWellFormed_2698 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_2700 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_2700 v0
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
      (coe
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
                        MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_876
                        (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_878
                           (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_880
                              (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_882
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_924
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_916
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_946
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_964
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_954
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_956
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_958
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
            (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'MAll_30
            (coe
               (\ v1 ->
                  coe
                    MAlonzo.Code.Class.Decidable.Instances.d_ℚ'45'Dec'45''60'_44
                    MAlonzo.Code.Data.Rational.Base.d_'189'_182
                    (MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
                       (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_904
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.≡-update
d_'8801''45'update_2702 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_2702 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_'8801''45'update_1586
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_2706 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_Emax_2706 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_942
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.a
d_a_2708 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_a_2708 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_910 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.a0
d_a0_2710 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2710 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_940
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.b
d_b_2712 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_b_2712 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_912 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_2714 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_ccMaxTermLength_2714 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_964
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_2716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_ccMinSize_2716 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_962
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_coinsPerUTxOByte_2718 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_924
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2720 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_collateralPercentage_2720 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_946
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2722 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_692
d_costmdls_2722 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdls_948
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_drepActivity_2724 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_960
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_drepDeposit_2726 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_958
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2728 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_246
d_drepThresholds_2728 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_950
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2730 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_govActionDeposit_2730 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_956
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2732 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_govActionLifetime_2732 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_954
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_keyDeposit_2734 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_914
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.leiosCommitteeSize
d_leiosCommitteeSize_2736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_leiosCommitteeSize_2736 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosCommitteeSize_902
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.leiosDiffusionPeriod
d_leiosDiffusionPeriod_2738 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_leiosDiffusionPeriod_2738 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosDiffusionPeriod_896
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.leiosHeaderPeriod
d_leiosHeaderPeriod_2740 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_leiosHeaderPeriod_2740 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosHeaderPeriod_892
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.leiosMaxEBExUnits
d_leiosMaxEBExUnits_2742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leiosMaxEBExUnits_2742 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_906
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.leiosMaxEBSize
d_leiosMaxEBSize_2744 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_leiosMaxEBSize_2744 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_898
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_2746 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_leiosMaxEBTxsSize_2746 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_900
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_2748 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_leiosMaxRefScriptSizePerEB_2748 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_908
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_2750 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_2750 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_904
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.leiosVotingPeriod
d_leiosVotingPeriod_2752 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_leiosVotingPeriod_2752 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosVotingPeriod_894
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2754 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_2754 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_888
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2756 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_maxBlockSize_2756 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_876
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2758 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_maxCollateralInputs_2758 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_884
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2760 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_maxHeaderSize_2760 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_880
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2762 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_2762 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_932
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2764 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_maxRefScriptSizePerTx_2764 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_930
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2766 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_2766 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_886
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2768 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_maxTxSize_2768 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_878
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2770 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_maxValSize_2770 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_882
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2772 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2772 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_928
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.minPoolCost
d_minPoolCost_2774 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_minPoolCost_2774 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_918
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2776 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_minUTxOValue_2776 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_938
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_2778 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2778 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_920
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2780 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_nopt_2780 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_944
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2782 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_poolDeposit_2782 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_916
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2784 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_290
d_poolThresholds_2784 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_952
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.prices
d_prices_2786 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_2786 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_926
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.pv
d_pv_2788 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2788 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_890
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_2790 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2790 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_936
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_2792 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2792 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_934
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_2794 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2794 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_922
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PState.deposits
d_deposits_2798 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1558 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2798 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1574
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PState.fPools
d_fPools_2800 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1558 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_2800 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_fPools_1570
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PState.pools
d_pools_2802 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1558 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2802 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1568
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PState.retiring
d_retiring_2804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1558 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2804 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1572
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure._≥ᵉ_
d__'8805''7497'__2818 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2818 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.CostModel
d_CostModel_2820 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  ()
d_CostModel_2820 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.T
d_T_2822 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  ()
d_T_2822 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.THash
d_THash_2824 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  ()
d_THash_2824 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Dataʰ
d_Data'688'_2826 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2826 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_456
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Datum
d_Datum_2828 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  ()
d_Datum_2828 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2830 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2830 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_530
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_2832 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2832 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_492
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_2834 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2834 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_476
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2836 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2836 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_490
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2838 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2838 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_478
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_2840 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2840 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_482
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.DecEq-T
d_DecEq'45'T_2842 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2842 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_456
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_2844 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2844 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_456
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2846 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2846 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_472
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.ExUnits
d_ExUnits_2848 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  ()
d_ExUnits_2848 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2850 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2850 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_474
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.LangDepView
d_LangDepView_2852 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  ()
d_LangDepView_2852 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Language
d_Language_2854 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  ()
d_Language_2854 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.PlutusScript
d_PlutusScript_2856 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  ()
d_PlutusScript_2856 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.PlutusV1
d_PlutusV1_2858 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  AgdaAny
d_PlutusV1_2858
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_498
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.PlutusV2
d_PlutusV2_2860 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  AgdaAny
d_PlutusV2_2860
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_500
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.PlutusV3
d_PlutusV3_2862 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  AgdaAny
d_PlutusV3_2862
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_502
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.PlutusV4
d_PlutusV4_2864 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  AgdaAny
d_PlutusV4_2864
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_504
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Prices
d_Prices_2866 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  ()
d_Prices_2866 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Redeemer
d_Redeemer_2868 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  ()
d_Redeemer_2868 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_2870 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2870 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_480
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_2872 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2872 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_494
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Show-Language
d_Show'45'Language_2874 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2874 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_484
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Show-Prices
d_Show'45'Prices_2876 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2876 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_496
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Show-THash
d_Show'45'THash_2878 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2878 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_456
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.T-Hashable
d_T'45'Hashable_2880 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2880 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_456
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.T-isHashable
d_T'45'isHashable_2882 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2882 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_456
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.fromPlutusLanguage
d_fromPlutusLanguage_2884 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_2884 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_470
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.language
d_language_2886 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  AgdaAny -> AgdaAny
d_language_2886 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_532
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.validPlutusScript
d_validPlutusScript_2888 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2888 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_2890 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_2890 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_488
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolEnv.epoch
d_epoch_2894 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PoolEnv_1626 ->
  Integer
d_epoch_2894 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_epoch_1632
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolEnv.pp
d_pp_2896 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PoolEnv_1626 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314
d_pp_2896 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pp_1634 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolThresholds.Q1
d_Q1_2900 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_290 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2900 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q1_302
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolThresholds.Q2a
d_Q2a_2902 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_290 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2902 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2a_304
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolThresholds.Q2b
d_Q2b_2904 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_290 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2904 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2b_306
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolThresholds.Q4
d_Q4_2906 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_290 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2906 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q4_308
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolThresholds.Q5
d_Q5_2908 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_290 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_2908 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q5_310
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.RewardAddress.net
d_net_2912 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_120 ->
  Integer
d_net_2912 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_126 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.RewardAddress.stake
d_stake_2914 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_120 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_2914 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_128 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure._≥ᵉ_
d__'8805''7497'__2918 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2918 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.CostModel
d_CostModel_2920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  ()
d_CostModel_2920 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.T
d_T_2922 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  ()
d_T_2922 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.THash
d_THash_2924 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  ()
d_THash_2924 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Dataʰ
d_Data'688'_2926 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2926 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_456
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Datum
d_Datum_2928 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  ()
d_Datum_2928 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2930 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2930 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_358
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_562
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2932 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2932 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_530
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_2934 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2934 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_492
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_2936 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2936 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_476
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2938 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2938 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_490
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2940 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2940 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_478
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_2942 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2942 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_482
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_2944 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_2944
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_DecEq'45'LanguageCostModels_700
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2946 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2946 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_362
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_562
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.DecEq-T
d_DecEq'45'T_2948 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2948 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_456
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_2950 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2950 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_456
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2952 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2952 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_472
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.ExUnits
d_ExUnits_2954 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  ()
d_ExUnits_2954 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2956 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2956 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_360
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_562
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2958 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2958 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_474
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_2960 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_2960
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_664
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.LangDepView
d_LangDepView_2962 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  ()
d_LangDepView_2962 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Language
d_Language_2964 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  ()
d_Language_2964 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.LanguageCostModels
d_LanguageCostModels_2966 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.P1Script
d_P1Script_2970 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  ()
d_P1Script_2970 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.PlutusScript
d_PlutusScript_2972 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  ()
d_PlutusScript_2972 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.PlutusV1
d_PlutusV1_2974 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  AgdaAny
d_PlutusV1_2974 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_498
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.PlutusV2
d_PlutusV2_2976 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  AgdaAny
d_PlutusV2_2976 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_500
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.PlutusV3
d_PlutusV3_2978 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  AgdaAny
d_PlutusV3_2978 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_502
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.PlutusV4
d_PlutusV4_2980 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  AgdaAny
d_PlutusV4_2980 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_504
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Prices
d_Prices_2982 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  ()
d_Prices_2982 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Redeemer
d_Redeemer_2984 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  ()
d_Redeemer_2984 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Script
d_Script_2986 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  ()
d_Script_2986 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_2988 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2988 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_480
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_2990 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2990 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_494
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Show-Language
d_Show'45'Language_2992 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2992 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_484
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Show-LanguageCostModels
d_Show'45'LanguageCostModels_2994 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_2994
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Show'45'LanguageCostModels_706
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Show-Prices
d_Show'45'Prices_2996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2996 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_496
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Show-THash
d_Show'45'THash_2998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2998 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_456
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.T-Hashable
d_T'45'Hashable_3000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_3000 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_456
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.T-isHashable
d_T'45'isHashable_3002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_3002 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_456
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.fromPlutusLanguage
d_fromPlutusLanguage_3004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_3004 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_470
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_3006 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_3006 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_582
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.isNativeScript
d_isNativeScript_3008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_3008 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.isP1Script
d_isP1Script_3010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_3010 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.isP1Script?
d_isP1Script'63'_3012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_3012 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP1Script'63'_670
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.isP2Script
d_isP2Script_3014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_3014 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.isP2Script?
d_isP2Script'63'_3016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_3016 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP2Script'63'_684
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.language
d_language_3018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  AgdaAny -> AgdaAny
d_language_3018 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_532
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.languageCostModels
d_languageCostModels_3020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_692 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_3020 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_696
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.p1s
d_p1s_3024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_338
d_p1s_3024 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_562
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.ps
d_ps_3026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376
d_ps_3026 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.toP1Script
d_toP1Script_3028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_3028 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_678
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.toP2Script
d_toP2Script_3030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_3030 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_690
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.validP1Script
d_validP1Script_3032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_3032 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.validPlutusScript
d_validPlutusScript_3034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_3034 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_3036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_3036 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_488
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.LanguageCostModels.languageCostModels
d_languageCostModels_3040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_692 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_3040 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_696
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolParams.bls
d_bls_3044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1368 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bls_3044 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_bls_1396
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolParams.cost
d_cost_3046 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1368 ->
  Integer
d_cost_3046 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_cost_1386
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolParams.margin
d_margin_3048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1368 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_3048 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_margin_1388
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolParams.owners
d_owners_3050 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1368 ->
  [Integer]
d_owners_3050 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_owners_1384
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolParams.pledge
d_pledge_3052 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1368 ->
  Integer
d_pledge_3052 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pledge_1390
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolParams.rewardAccount
d_rewardAccount_3054 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1368 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_120
d_rewardAccount_3054 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardAccount_1392
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolParams.vrf
d_vrf_3056 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1368 ->
  Integer
d_vrf_3056 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_vrf_1394
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolState.bls
d_bls_3060 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolState_1400 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bls_3060 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_bls_1428
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolState.cost
d_cost_3062 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolState_1400 ->
  Integer
d_cost_3062 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_cost_1418
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolState.margin
d_margin_3064 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolState_1400 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_3064 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_margin_1420
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolState.owners
d_owners_3066 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolState_1400 ->
  [Integer]
d_owners_3066 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_owners_1416
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolState.pledge
d_pledge_3068 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolState_1400 ->
  Integer
d_pledge_3068 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pledge_1422
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolState.rewardAccount
d_rewardAccount_3070 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolState_1400 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_120
d_rewardAccount_3070 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardAccount_1424
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolState.vrf
d_vrf_3072 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolState_1400 ->
  Integer
d_vrf_3072 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_vrf_1426
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra._∙_
d__'8729'__3076 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__3076 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra._≈_
d__'8776'__3078 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__3078 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__3080 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__3080 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_3082 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_3082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_3084 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_3084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_3086 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_3090 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_3094 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.Value
d_Value_3098 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_3098 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_3100 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_3100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.addValue
d_addValue_3102 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_3102
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.coin
d_coin_3104 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_3104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_3106 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_3106 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_3108 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_3108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_3110 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_3110 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.inject
d_inject_3112 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_3112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.monoid
d_monoid_3114 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_3114 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.policies
d_policies_3116 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [Integer]
d_policies_3116 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.rawMonoid
d_rawMonoid_3118 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_3118 v0
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
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.size
d_size_3120 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_3120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.sumᵛ
d_sum'7515'_3122 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_3122
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.ε
d_ε_3124 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny
d_ε_3124 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_3128 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_3128 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_3130 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_3130 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_3132 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3132 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_3134 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_3134 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_3136 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_3136 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_3140 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_3140 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_3142 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_3142 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_3144 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_3144 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_3146 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_3146 ~v0 = du_isMagmaIsomorphism_3146
du_isMagmaIsomorphism_3146 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_3146 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_3148 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_3148 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_3148 v2
du_isMagmaMonomorphism_3148 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_3148 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_3150 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_3150 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_3152 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_3152 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_3154 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3154 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_3156 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_3156 ~v0 ~v1 v2 = du_isRelIsomorphism_3156 v2
du_isRelIsomorphism_3156 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_3156 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_3158 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_3158 ~v0 ~v1 v2 = du_isRelMonomorphism_3158 v2
du_isRelMonomorphism_3158 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_3158 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.surjective
d_surjective_3160 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_3160 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_3162 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_3162 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_3164 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_3164 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_3168 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_3168 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_3170 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_3170 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_3172 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_3172 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_3174 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_3174 ~v0 = du_isMagmaMonomorphism_3174
du_isMagmaMonomorphism_3174 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_3174 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_3176 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_3176 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_3178 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3178 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_3180 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_3180 ~v0 ~v1 v2 = du_isRelMonomorphism_3180 v2
du_isRelMonomorphism_3180 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_3180 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_3182 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_3182 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_3184 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_3184 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Tx.isValid
d_isValid_3188 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  AgdaAny
d_isValid_3188 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_isValid_3898
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Tx.txAuxData
d_txAuxData_3190 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  Maybe Integer
d_txAuxData_3190 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3900
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Tx.txBody
d_txBody_3192 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876
d_txBody_3192 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3892
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Tx.txSize
d_txSize_3194 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  Integer
d_txSize_3194 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3896
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Tx.txWitnesses
d_txWitnesses_3196 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3878
d_txWitnesses_3196 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3894
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.collateralInputs
d_collateralInputs_3200 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  AgdaAny
d_collateralInputs_3200 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3960
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.collateralReturn
d_collateralReturn_3202 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  AgdaAny
d_collateralReturn_3202 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralReturn_3962
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.currentTreasury
d_currentTreasury_3204 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  Maybe Integer
d_currentTreasury_3204 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3988
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.mint
d_mint_3206 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  Integer
d_mint_3206 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_mint_3990
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.referenceInputs
d_referenceInputs_3208 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referenceInputs_3208 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3958
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.requiredSignerHashes
d_requiredSignerHashes_3210 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  [Integer]
d_requiredSignerHashes_3210 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_requiredSignerHashes_4006
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_3212 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  Maybe Integer
d_scriptIntegrityHash_3212 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptIntegrityHash_3992
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.totalCollateral
d_totalCollateral_3214 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  AgdaAny
d_totalCollateral_3214 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_totalCollateral_3964
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txADhash
d_txADhash_3216 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  Maybe Integer
d_txADhash_3216 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3978
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txBalanceIntervals
d_txBalanceIntervals_3218 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txBalanceIntervals_3218 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_4002
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txCerts
d_txCerts_3220 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1478]
d_txCerts_3220 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3970
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txDirectDeposits
d_txDirectDeposits_3222 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txDirectDeposits_3222 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDirectDeposits_4000
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txDonation
d_txDonation_3224 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  Integer
d_txDonation_3224 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDonation_3980
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txFee
d_txFee_3226 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  AgdaAny
d_txFee_3226 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3972
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txGovProposals
d_txGovProposals_3228 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1084]
d_txGovProposals_3228 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3984
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txGovVotes
d_txGovVotes_3230 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1030]
d_txGovVotes_3230 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovVotes_3982
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txGuards
d_txGuards_3232 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_txGuards_3232 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3996
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txId
d_txId_3234 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  Integer
d_txId_3234 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3968
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txIns
d_txIns_3236 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_3236 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3956
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txNetworkId
d_txNetworkId_3238 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  Maybe Integer
d_txNetworkId_3238 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txNetworkId_3986
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txOuts
d_txOuts_3240 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_3240 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3966
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txRequiredTopLevelGuards
d_txRequiredTopLevelGuards_3242 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txRequiredTopLevelGuards_3242 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3998
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txStartingBalanceIntervals
d_txStartingBalanceIntervals_3244 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  AgdaAny
d_txStartingBalanceIntervals_3244 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txStartingBalanceIntervals_4004
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txSubTransactions
d_txSubTransactions_3246 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  AgdaAny
d_txSubTransactions_3246 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3994
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txVldt
d_txVldt_3248 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_3248 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3976
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txWithdrawals
d_txWithdrawals_3250 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_3250 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWithdrawals_3974
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxWitnesses.scripts
d_scripts_3254 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3878 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_3254 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scripts_4020
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxWitnesses.scriptsP1
d_scriptsP1_3256 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3878 ->
  [MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336]
d_scriptsP1_3256
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_scriptsP1_4026
-- Ledger.Dijkstra.Foreign.HSStructures._.TxWitnesses.txData
d_txData_3258 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3878 ->
  [Integer]
d_txData_3258 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txData_4022
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxWitnesses.txRedeemers
d_txRedeemers_3260 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3878 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txRedeemers_3260 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_4024
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxWitnesses.vKeySigs
d_vKeySigs_3262 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3878 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vKeySigs_3262 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_4018
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Convert-HSLanguage
d_Convert'45'HSLanguage_3276 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Convert'45'HSLanguage_3276
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.d_Convert'45'HSLanguage_22
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-HSLanguage
d_DecEq'45'HSLanguage_3278 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSLanguage_3278
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.d_DecEq'45'HSLanguage_24
-- Ledger.Dijkstra.Foreign.HSStructures._.Transaction.DecEq-Tag
d_DecEq'45'Tag_3282 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Tag_3282
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Tag_58
-- Ledger.Dijkstra.Foreign.HSStructures._.Transaction.DecEq-TxLevel
d_DecEq'45'TxLevel_3284 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxLevel_3284
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxLevel_36
-- Ledger.Dijkstra.Foreign.HSStructures._.HSLanguage
d_HSLanguage_3288 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HsType-HSLanguage
d_HsType'45'HSLanguage_3290 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsType'45'HSLanguage_3290 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Transaction.InLevel
d_InLevel_3292 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_InLevel_3292 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_InLevel_18
      v2 v3 v4
-- Ledger.Dijkstra.Foreign.HSStructures._.Transaction.InSubLevel
d_InSubLevel_3294 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  () -> ()
d_InSubLevel_3294 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Transaction.InTopLevel
d_InTopLevel_3296 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  () -> ()
d_InTopLevel_3296 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-HSLanguage
d_Show'45'HSLanguage_3314 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'HSLanguage_3314
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.d_Show'45'HSLanguage_26
-- Ledger.Dijkstra.Foreign.HSStructures._.Transaction.Tag
d_Tag_3318 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.Transaction.TransactionStructure
d_TransactionStructure_3320 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.Transaction.TxLevel
d_TxLevel_3326 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure._+ᵉ_
d__'43''7497'__3362 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  Integer -> AgdaAny -> AgdaAny
d__'43''7497'__3362 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__104
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure._+ᵉ'_
d__'43''7497'''__3364 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__3364 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__106
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure._∙_
d__'8729'__3366 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__3366 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2768
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure._≈_
d__'8776'__3368 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__3368 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure._≤ᵗ_
d__'8804''7511'__3370 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__3370 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure._≥ᵉ_
d__'8805''7497'__3372 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__3372 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_3374 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_3374 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.==-GovAction
d_'61''61''45'GovAction_3376 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_984 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_984 ->
  Bool
d_'61''61''45'GovAction_3376 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovAction_1534
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.==-GovActionData
d_'61''61''45'GovActionData_3378 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_966 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_3378 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovActionData_1516
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.==-GovProposal
d_'61''61''45'GovProposal_3380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1084 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1084 ->
  Bool
d_'61''61''45'GovProposal_3380 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovProposal_1568
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.==-Set
d_'61''61''45'Set_3382 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_3382 ~v0 = du_'61''61''45'Set_3382
du_'61''61''45'Set_3382 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
du_'61''61''45'Set_3382 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_'61''61''45'Set_1504
      v1 v2 v3
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.THash
d_THash_3384 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_THash_3384 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.AccountBalanceIntervals
d_AccountBalanceIntervals_3386 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_AccountBalanceIntervals_3386 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.AccountOf
d_AccountOf_3388 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasAccount_212 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_196
d_AccountOf_3388 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_AccountOf_220
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Acnt
d_Acnt_3390 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ActiveSlotCoeff
d_ActiveSlotCoeff_3394 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_3394 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_340
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Addr
d_Addr_3396 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_Addr_3396 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Anchor
d_Anchor_3400 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.AnchorOf
d_AnchorOf_3404 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1314 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1018
d_AnchorOf_3404 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1322
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.AnyLevelTx
d_AnyLevelTx_3406 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_AnyLevelTx_3406 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.AttrSizeOf
d_AttrSizeOf_3408 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_218 ->
  AgdaAny -> Integer
d_AttrSizeOf_3408 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_226
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.AuxiliaryData
d_AuxiliaryData_3410 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_AuxiliaryData_3410 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BalanceInterval
d_BalanceInterval_3412 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BalanceIntervalsOf
d_BalanceIntervalsOf_3414 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4556 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_BalanceIntervalsOf_3414 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_BalanceIntervalsOf_4564
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BaseAddr
d_BaseAddr_3416 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BootstrapAddr
d_BootstrapAddr_3420 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.CCMaxTermLengthOf
d_CCMaxTermLengthOf_3426 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasCCMaxTermLength_752 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_3426 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_CCMaxTermLengthOf_760
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.CollateralInputsOf
d_CollateralInputsOf_3430 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_4106 ->
  AgdaAny -> AgdaAny
d_CollateralInputsOf_3430 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CollateralInputsOf_4116
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.CostModel
d_CostModel_3432 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_CostModel_3432 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Credential
d_Credential_3434 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.CredentialOf
d_CredentialOf_3436 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_3436 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.CurrentTreasuryOf
d_CurrentTreasuryOf_3438 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4516 ->
  AgdaAny -> Maybe Integer
d_CurrentTreasuryOf_3438 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CurrentTreasuryOf_4524
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DCertsOf
d_DCertsOf_3440 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4336 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1478]
d_DCertsOf_3440 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DCertsOf_4344
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DReps
d_DReps_3444 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_DReps_3444 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DRepsOf
d_DRepsOf_3446 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1294 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_3446 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1302
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.T
d_T_3448 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_T_3448 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.THash
d_THash_3450 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_THash_3450 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DataOf
d_DataOf_3452 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4376 ->
  AgdaAny -> [AgdaAny]
d_DataOf_3452 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4384
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Dataʰ
d_Data'688'_3454 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_3454 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_456
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Datum
d_Datum_3456 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_Datum_3456 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Dec-EvalNativeScript
d_Dec'45'EvalNativeScript_3458 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.T_NativeScript_338 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'EvalNativeScript_3458 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
                 (coe v0) in
       coe
         (let v3
                = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
                       (coe v0)) in
          coe
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.du_Dec'45'EvalNativeScript_408
               (coe v1) (coe v2) (coe v3))))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Dec-InBalanceInterval
d_Dec'45'InBalanceInterval_3460 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Account.T_BalanceInterval_956 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'InBalanceInterval_3460 ~v0
  = du_Dec'45'InBalanceInterval_3460
du_Dec'45'InBalanceInterval_3460 ::
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Account.T_BalanceInterval_956 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'InBalanceInterval_3460
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Account.du_Dec'45'InBalanceInterval_990
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Dec-isScript
d_Dec'45'isScript_3462 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_3462 ~v0 = du_Dec'45'isScript_3462
du_Dec'45'isScript_3462 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_3462
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_332
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Dec-isSigned
d_Dec'45'isSigned_3464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_3464 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Dec-isVKey
d_Dec'45'isVKey_3466 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_3466 ~v0 = du_Dec'45'isVKey_3466
du_Dec'45'isVKey_3466 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_3466
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_318
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Dec-validP1Script
d_Dec'45'validP1Script_3468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_3468 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_358
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_562
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_3470 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_3470 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_530
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Dec-≤ᵗ
d_Dec'45''8804''7511'_3472 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_3472 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2768
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEQ-Prices
d_DecEQ'45'Prices_3474 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_3474 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_492
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Anchor
d_DecEq'45'Anchor_3476 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_3476 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'Anchor_1498
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-BalanceInterval
d_DecEq'45'BalanceInterval_3478 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BalanceInterval_3478 ~v0
  = du_DecEq'45'BalanceInterval_3478
du_DecEq'45'BalanceInterval_3478 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BalanceInterval_3478
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Account.du_DecEq'45'BalanceInterval_1114
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-BaseAddr
d_DecEq'45'BaseAddr_3480 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_3480 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_370
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
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_3482 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_3482 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_372
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
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-CostModel
d_DecEq'45'CostModel_3484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_3484 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_476
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Credential
d_DecEq'45'Credential_3486 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_3486 v0
  = coe
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
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_3488 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_3488 ~v0
  = du_DecEq'45'DrepThresholds_3488
du_DecEq'45'DrepThresholds_3488 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_3488
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'DrepThresholds_768
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Epoch
d_DecEq'45'Epoch_3490 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_3490 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_82
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_3492 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_3492 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_490
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-GovActionType
d_DecEq'45'GovActionType_3494 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_3494 ~v0 = du_DecEq'45'GovActionType_3494
du_DecEq'45'GovActionType_3494 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_3494
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovActionType_1388
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-GovRole
d_DecEq'45'GovRole_3496 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_3496 ~v0 = du_DecEq'45'GovRole_3496
du_DecEq'45'GovRole_3496 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_3496
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovRole_1390
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-GovVoter
d_DecEq'45'GovVoter_3498 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_3498 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'GovVoter_1396
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Ix
d_DecEq'45'Ix_3500 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_3500 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1434
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_3502 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_3502 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_478
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Language
d_DecEq'45'Language_3504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_3504 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_482
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_3506 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_3506 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_DecEq'45'LanguageCostModels_700
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-NativeScript
d_DecEq'45'NativeScript_3508 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NativeScript_3508 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
                 (coe v0) in
       coe
         (let v3
                = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
                       (coe v0)) in
          coe
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.du_DecEq'45'NativeScript_354
               (coe v1) (coe v2) (coe v3))))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-NeedsHash
d_DecEq'45'NeedsHash_3510 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_966 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_3510 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1566
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Netw
d_DecEq'45'Netw_3512 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_3512 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-P1Script
d_DecEq'45'P1Script_3514 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_3514 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_362
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_562
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-PParamGroup
d_DecEq'45'PParamGroup_3516 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_3516 ~v0 = du_DecEq'45'PParamGroup_3516
du_DecEq'45'PParamGroup_3516 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_3516
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamGroup_774
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-PParams
d_DecEq'45'PParams_3518 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_3518 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParams_772
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_3520 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_3520 ~v0
  = du_DecEq'45'PoolThresholds_3520
du_DecEq'45'PoolThresholds_3520 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_3520
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PoolThresholds_770
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-RewardAddress
d_DecEq'45'RewardAddress_3522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_3522 v0
  = coe
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
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-ScriptHash
d_DecEq'45'ScriptHash_3524 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_3524 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Ser
d_DecEq'45'Ser_3526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_3526 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Sig
d_DecEq'45'Sig_3528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_3528 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Slot
d_DecEq'45'Slot_3530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_3530 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_90
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-T
d_DecEq'45'T_3532 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_3532 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1424
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-T
d_DecEq'45'T_3534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_3534 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_456
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
                    (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-THash
d_DecEq'45'THash_3536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_3536 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1424
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-THash
d_DecEq'45'THash_3538 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_3538 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-THash
d_DecEq'45'THash_3540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_3540 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_456
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
                    (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-TxId
d_DecEq'45'TxId_3542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_3542 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1436
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-UpdT
d_DecEq'45'UpdT_3544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_3544 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1892
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2766
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-VDeleg
d_DecEq'45'VDeleg_3546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_3546 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1394
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-VRF
d_DecEq'45'VRF_3548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VRF_3548 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_240
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Value
d_DecEq'45'Value_3550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_3550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2768
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Vote
d_DecEq'45'Vote_3552 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_3552 ~v0 = du_DecEq'45'Vote_3552
du_DecEq'45'Vote_3552 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_3552
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'Vote_1392
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecPo-Slot
d_DecPo'45'Slot_3554 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_3554 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_88
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DepositOf
d_DepositOf_3556 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1334 ->
  AgdaAny -> Integer
d_DepositOf_3556 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1342
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DirectDeposits
d_DirectDeposits_3558 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_DirectDeposits_3558 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DirectDepositsOf
d_DirectDepositsOf_3560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4536 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DirectDepositsOf_3560 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DirectDepositsOf_4544
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds
d_DrepThresholds_3562 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Epoch
d_Epoch_3568 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_Epoch_3568 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.EvalNativeScript
d_EvalNativeScript_3570 a0 a1 a2 a3 a4 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_3572 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_3572 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_472
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ExUnits
d_ExUnits_3574 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_ExUnits_3574 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.FeesOf?
d_FeesOf'63'_3578 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4316 ->
  AgdaAny -> Maybe Integer
d_FeesOf'63'_3578 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_FeesOf'63'_4324
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovAction
d_GovAction_3580 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionData
d_GovActionData_3584 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_966 ->
  ()
d_GovActionData_3584 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionID
d_GovActionID_3586 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_GovActionID_3586 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionOf
d_GovActionOf_3588 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1196 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_984
d_GovActionOf_3588 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1202
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionState
d_GovActionState_3590 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionType
d_GovActionType_3594 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionTypeOf
d_GovActionTypeOf_3596 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1160 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_966
d_GovActionTypeOf_3596 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1166
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovParams
d_GovParams_3598 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovProposal
d_GovProposal_3602 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovProposalsOf
d_GovProposalsOf_3606 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGovProposals_4356 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1084]
d_GovProposalsOf_3606 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GovProposalsOf_4364
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovRole
d_GovRole_3608 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovRoleCredential
d_GovRoleCredential_3610 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_956 ->
  ()
d_GovRoleCredential_3610 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVote
d_GovVote_3612 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVoter
d_GovVoter_3616 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVoterOf
d_GovVoterOf_3620 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1214 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_1006
d_GovVoterOf_3620 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1222
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVotes
d_GovVotes_3622 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVotesOf
d_GovVotesOf_3626 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1234 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1050
d_GovVotesOf_3626 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1242
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GuardsOf
d_GuardsOf_3630 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4436 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_GuardsOf_3630 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GuardsOf_4444
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasAccount
d_HasAccount_3632 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasAnchor
d_HasAnchor_3636 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasAnchor-GovProposal
d_HasAnchor'45'GovProposal_3640 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1314
d_HasAnchor'45'GovProposal_3640 ~v0
  = du_HasAnchor'45'GovProposal_3640
du_HasAnchor'45'GovProposal_3640 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1314
du_HasAnchor'45'GovProposal_3640
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasAnchor'45'GovProposal_1368
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasAttrSize
d_HasAttrSize_3642 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasAttrSize-BootstrapAddr
d_HasAttrSize'45'BootstrapAddr_3646 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_218
d_HasAttrSize'45'BootstrapAddr_3646 ~v0
  = du_HasAttrSize'45'BootstrapAddr_3646
du_HasAttrSize'45'BootstrapAddr_3646 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_218
du_HasAttrSize'45'BootstrapAddr_3646
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasAttrSize'45'BootstrapAddr_242
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasBalanceIntervals
d_HasBalanceIntervals_3648 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasBalanceIntervals-Tx
d_HasBalanceIntervals'45'Tx_3652 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4556
d_HasBalanceIntervals'45'Tx_3652 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasBalanceIntervals'45'Tx_4648
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasBalanceIntervals-TxBody
d_HasBalanceIntervals'45'TxBody_3654 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4556
d_HasBalanceIntervals'45'TxBody_3654 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasBalanceIntervals'45'TxBody_4646
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCCMaxTermLength
d_HasCCMaxTermLength_3656 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCast-Acnt
d_HasCast'45'Acnt_3660 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_3660 ~v0 = du_HasCast'45'Acnt_3660
du_HasCast'45'Acnt_3660 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_3660
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasCast'45'Acnt_232
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_3662 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_3662 ~v0
  = du_HasCast'45'GovAction'45'Sigma_3662
du_HasCast'45'GovAction'45'Sigma_3662 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_3662
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_1352
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCast-GovVote
d_HasCast'45'GovVote_3664 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_3664 ~v0 = du_HasCast'45'GovVote_3664
du_HasCast'45'GovVote_3664 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_3664
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovVote_1494
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCast-HashProtected
d_HasCast'45'HashProtected_3666 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_3666 ~v0
  = du_HasCast'45'HashProtected_3666
du_HasCast'45'HashProtected_3666 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_3666 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1358
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_3668 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_3668 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_3668
du_HasCast'45'HashProtected'45'MaybeScriptHash_3668 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_3668
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1360
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCoin-TxOut
d_HasCoin'45'TxOut_3670 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_3670
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_HasCoin'45'TxOut_4700
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCollateralInputs
d_HasCollateralInputs_3672 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCollateralInputs-TopLevelTx
d_HasCollateralInputs'45'TopLevelTx_3676 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_4106
d_HasCollateralInputs'45'TopLevelTx_3676 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCollateralInputs'45'TopLevelTx_4624
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCredential
d_HasCredential_3678 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCredential-RewardAddress
d_HasCredential'45'RewardAddress_3682 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RewardAddress_3682 ~v0
  = du_HasCredential'45'RewardAddress_3682
du_HasCredential'45'RewardAddress_3682 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
du_HasCredential'45'RewardAddress_3682
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_240
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCurrentTreasury
d_HasCurrentTreasury_3684 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCurrentTreasury-Tx
d_HasCurrentTreasury'45'Tx_3688 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4516
d_HasCurrentTreasury'45'Tx_3688 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCurrentTreasury'45'Tx_4724
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCurrentTreasury-TxBody
d_HasCurrentTreasury'45'TxBody_3690 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4516
d_HasCurrentTreasury'45'TxBody_3690 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCurrentTreasury'45'TxBody_4722
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDCerts
d_HasDCerts_3692 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDCerts-Tx
d_HasDCerts'45'Tx_3696 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4336
d_HasDCerts'45'Tx_3696 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDCerts'45'Tx_4636
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDCerts-TxBody
d_HasDCerts'45'TxBody_3698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4336
d_HasDCerts'45'TxBody_3698 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDCerts'45'TxBody_4634
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDReps
d_HasDReps_3700 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasData
d_HasData_3704 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasData-Tx
d_HasData'45'Tx_3708 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4376
d_HasData'45'Tx_3708 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'Tx_4704
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasData-TxWitnesses
d_HasData'45'TxWitnesses_3710 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4376
d_HasData'45'TxWitnesses_3710 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'TxWitnesses_4702
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDeposit
d_HasDeposit_3712 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDeposit-GovProposal
d_HasDeposit'45'GovProposal_3716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1334
d_HasDeposit'45'GovProposal_3716 ~v0
  = du_HasDeposit'45'GovProposal_3716
du_HasDeposit'45'GovProposal_3716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1334
du_HasDeposit'45'GovProposal_3716
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasDeposit'45'GovProposal_1370
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDirectDeposits
d_HasDirectDeposits_3718 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDirectDeposits-Tx
d_HasDirectDeposits'45'Tx_3722 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4536
d_HasDirectDeposits'45'Tx_3722 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDirectDeposits'45'Tx_4644
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDirectDeposits-TxBody
d_HasDirectDeposits'45'TxBody_3724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4536
d_HasDirectDeposits'45'TxBody_3724 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDirectDeposits'45'TxBody_4642
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDonations-Tx
d_HasDonations'45'Tx_3726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_30
d_HasDonations'45'Tx_3726 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDonations'45'Tx_4698
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDonations-TxBody
d_HasDonations'45'TxBody_3728 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_30
d_HasDonations'45'TxBody_3728 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDonations'45'TxBody_4696
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasFees?
d_HasFees'63'_3730 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasFees?-Tx
d_HasFees'63''45'Tx_3734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4316
d_HasFees'63''45'Tx_3734 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasFees'63''45'Tx_4690
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasFees?-TxBody
d_HasFees'63''45'TxBody_3736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4316
d_HasFees'63''45'TxBody_3736 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasFees'63''45'TxBody_4684
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovAction
d_HasGovAction_3738 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_3742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1196
d_HasGovAction'45'GovActionState_3742 ~v0
  = du_HasGovAction'45'GovActionState_3742
du_HasGovAction'45'GovActionState_3742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1196
du_HasGovAction'45'GovActionState_3742
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1374
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_3744 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1196
d_HasGovAction'45'GovProposal_3744 ~v0
  = du_HasGovAction'45'GovProposal_3744
du_HasGovAction'45'GovProposal_3744 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1196
du_HasGovAction'45'GovProposal_3744
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1372
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovActionType
d_HasGovActionType_3746 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_3750 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1160
d_HasGovActionType'45'GovAction_3750 ~v0
  = du_HasGovActionType'45'GovAction_3750
du_HasGovActionType'45'GovAction_3750 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1160
du_HasGovActionType'45'GovAction_3750
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_1350
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_3752 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1160
d_HasGovActionType'45'GovActionState_3752 ~v0
  = du_HasGovActionType'45'GovActionState_3752
du_HasGovActionType'45'GovActionState_3752 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1160
du_HasGovActionType'45'GovActionState_3752
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1378
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_3754 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1160
d_HasGovActionType'45'GovProposal_3754 ~v0
  = du_HasGovActionType'45'GovProposal_3754
du_HasGovActionType'45'GovProposal_3754 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1160
du_HasGovActionType'45'GovProposal_3754
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1376
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovProposals
d_HasGovProposals_3756 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovVoter
d_HasGovVoter_3760 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_3764 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1214
d_HasGovVoter'45'GovVote_3764 ~v0 = du_HasGovVoter'45'GovVote_3764
du_HasGovVoter'45'GovVote_3764 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1214
du_HasGovVoter'45'GovVote_3764
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1362
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovVotes
d_HasGovVotes_3766 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovVotes-GovActionState
d_HasGovVotes'45'GovActionState_3770 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1234
d_HasGovVotes'45'GovActionState_3770 ~v0
  = du_HasGovVotes'45'GovActionState_3770
du_HasGovVotes'45'GovActionState_3770 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1234
du_HasGovVotes'45'GovActionState_3770
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVotes'45'GovActionState_1380
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGuards
d_HasGuards_3772 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGuards-Tx
d_HasGuards'45'Tx_3776 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4436
d_HasGuards'45'Tx_3776 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasGuards'45'Tx_4708
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGuards-TxBody
d_HasGuards'45'TxBody_3778 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4436
d_HasGuards'45'TxBody_3778 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasGuards'45'TxBody_4706
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasIsValidFlag
d_HasIsValidFlag_3780 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasIsValidFlag-Tx
d_HasIsValidFlag'45'Tx_3784 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4596
d_HasIsValidFlag'45'Tx_3784 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasIsValidFlag'45'Tx_4618
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasListOfGovProposals
d_HasListOfGovProposals_3786 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasListOfGovProposals-Tx
d_HasListOfGovProposals'45'Tx_3790 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4396
d_HasListOfGovProposals'45'Tx_3790 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovProposals'45'Tx_4676
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasListOfGovProposals-TxBody
d_HasListOfGovProposals'45'TxBody_3792 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4396
d_HasListOfGovProposals'45'TxBody_3792 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovProposals'45'TxBody_4674
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasListOfGovVotes
d_HasListOfGovVotes_3794 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasListOfGovVotes-Tx
d_HasListOfGovVotes'45'Tx_3798 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4416
d_HasListOfGovVotes'45'Tx_3798 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovVotes'45'Tx_4672
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasListOfGovVotes-TxBody
d_HasListOfGovVotes'45'TxBody_3800 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4416
d_HasListOfGovVotes'45'TxBody_3800 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovVotes'45'TxBody_4670
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasMaybeNetworkId
d_HasMaybeNetworkId_3802 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasMaybeNetworkId-Tx
d_HasMaybeNetworkId'45'Tx_3806 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_178
d_HasMaybeNetworkId'45'Tx_3806 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMaybeNetworkId'45'Tx_4680
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasMaybeNetworkId-TxBody
d_HasMaybeNetworkId'45'TxBody_3808 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_178
d_HasMaybeNetworkId'45'TxBody_3808 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMaybeNetworkId'45'TxBody_4678
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasMintedValue
d_HasMintedValue_3810 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasMintedValue-Tx
d_HasMintedValue'45'Tx_3814 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4296
d_HasMintedValue'45'Tx_3814 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'Tx_4668
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasMintedValue-TxBody
d_HasMintedValue'45'TxBody_3816 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4296
d_HasMintedValue'45'TxBody_3816 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'TxBody_4666
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasNetworkId
d_HasNetworkId_3818 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_3822 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_158
d_HasNetworkId'45'BaseAddr_3822 ~v0
  = du_HasNetworkId'45'BaseAddr_3822
du_HasNetworkId'45'BaseAddr_3822 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_158
du_HasNetworkId'45'BaseAddr_3822
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_234
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_3824 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_158
d_HasNetworkId'45'BootstrapAddr_3824 ~v0
  = du_HasNetworkId'45'BootstrapAddr_3824
du_HasNetworkId'45'BootstrapAddr_3824 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_158
du_HasNetworkId'45'BootstrapAddr_3824
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_236
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_3826 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_158
d_HasNetworkId'45'RewardAddress_3826 ~v0
  = du_HasNetworkId'45'RewardAddress_3826
du_HasNetworkId'45'RewardAddress_3826 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_158
du_HasNetworkId'45'RewardAddress_3826
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_238
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasPParams
d_HasPParams_3828 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasPolicy
d_HasPolicy_3832 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_3836 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1274
d_HasPolicy'45'GovProposal_3836 ~v0
  = du_HasPolicy'45'GovProposal_3836
du_HasPolicy'45'GovProposal_3836 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1274
du_HasPolicy'45'GovProposal_3836
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1366
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRedeemers
d_HasRedeemers_3838 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRedeemers-Tx
d_HasRedeemers'45'Tx_3842 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_4084
d_HasRedeemers'45'Tx_3842 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRedeemers'45'Tx_4622
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRedeemers-TxWitnesses
d_HasRedeemers'45'TxWitnesses_3844 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_4084
d_HasRedeemers'45'TxWitnesses_3844 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRedeemers'45'TxWitnesses_4620
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasReferenceInputs
d_HasReferenceInputs_3846 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasReferenceInputs-Tx
d_HasReferenceInputs'45'Tx_3850 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4276
d_HasReferenceInputs'45'Tx_3850 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'Tx_4664
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasReferenceInputs-TxBody
d_HasReferenceInputs'45'TxBody_3852 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4276
d_HasReferenceInputs'45'TxBody_3852 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'TxBody_4662
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRequiredSingerHashes
d_HasRequiredSingerHashes_3854 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRequiredSingerHashes-Tx
d_HasRequiredSingerHashes'45'Tx_3858 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4496
d_HasRequiredSingerHashes'45'Tx_3858 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRequiredSingerHashes'45'Tx_4720
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRequiredSingerHashes-TxBody
d_HasRequiredSingerHashes'45'TxBody_3860 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4496
d_HasRequiredSingerHashes'45'TxBody_3860 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRequiredSingerHashes'45'TxBody_4718
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasReserves-Acnt
d_HasReserves'45'Acnt_3862 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_70
d_HasReserves'45'Acnt_3862 ~v0 = du_HasReserves'45'Acnt_3862
du_HasReserves'45'Acnt_3862 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_70
du_HasReserves'45'Acnt_3862
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasReserves'45'Acnt_230
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRewardAddress
d_HasRewardAddress_3864 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRewardAddress-GovActionState
d_HasRewardAddress'45'GovActionState_3868 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_138
d_HasRewardAddress'45'GovActionState_3868 ~v0
  = du_HasRewardAddress'45'GovActionState_3868
du_HasRewardAddress'45'GovActionState_3868 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_138
du_HasRewardAddress'45'GovActionState_3868
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovActionState_1382
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRewardAddress-GovProposal
d_HasRewardAddress'45'GovProposal_3870 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_138
d_HasRewardAddress'45'GovProposal_3870 ~v0
  = du_HasRewardAddress'45'GovProposal_3870
du_HasRewardAddress'45'GovProposal_3870 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_138
du_HasRewardAddress'45'GovProposal_3870
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovProposal_1384
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasScripts
d_HasScripts_3872 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasScripts-Tx
d_HasScripts'45'Tx_3876 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4456
d_HasScripts'45'Tx_3876 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasScripts'45'Tx_4712
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasScripts-TxWitnesses
d_HasScripts'45'TxWitnesses_3878 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4456
d_HasScripts'45'TxWitnesses_3878 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasScripts'45'TxWitnesses_4710
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasSize
d_HasSize_3880 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasSize-Tx
d_HasSize'45'Tx_3884 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4196
d_HasSize'45'Tx_3884 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSize'45'Tx_4614
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasSpendInputs
d_HasSpendInputs_3886 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasSpendInputs-Tx
d_HasSpendInputs'45'Tx_3890 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4256
d_HasSpendInputs'45'Tx_3890 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4660
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasSpendInputs-TxBody
d_HasSpendInputs'45'TxBody_3892 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4256
d_HasSpendInputs'45'TxBody_3892 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'TxBody_4658
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasStartingBalanceIntervals
d_HasStartingBalanceIntervals_3894 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasStartingBalanceIntervals-Tx
d_HasStartingBalanceIntervals'45'Tx_3898 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasStartingBalanceIntervals_4576
d_HasStartingBalanceIntervals'45'Tx_3898 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasStartingBalanceIntervals'45'Tx_4652
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasStartingBalanceIntervals-TxBody
d_HasStartingBalanceIntervals'45'TxBody_3900 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasStartingBalanceIntervals_4576
d_HasStartingBalanceIntervals'45'TxBody_3900 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasStartingBalanceIntervals'45'TxBody_4650
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasSubTransactions
d_HasSubTransactions_3902 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasSubTransactions-TopLevelTx
d_HasSubTransactions'45'TopLevelTx_3906 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_4154
d_HasSubTransactions'45'TopLevelTx_3906 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSubTransactions'45'TopLevelTx_4628
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTopLevelGuards
d_HasTopLevelGuards_3908 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTopLevelGuards-Tx
d_HasTopLevelGuards'45'Tx_3912 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4216
d_HasTopLevelGuards'45'Tx_3912 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTopLevelGuards'45'Tx_4632
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTopLevelGuards-TxBody
d_HasTopLevelGuards'45'TxBody_3914 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4216
d_HasTopLevelGuards'45'TxBody_3914 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTopLevelGuards'45'TxBody_4630
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTreasury-Acnt
d_HasTreasury'45'Acnt_3916 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_90
d_HasTreasury'45'Acnt_3916 ~v0 = du_HasTreasury'45'Acnt_3916
du_HasTreasury'45'Acnt_3916 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_90
du_HasTreasury'45'Acnt_3916
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasTreasury'45'Acnt_228
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxBody
d_HasTxBody_3918 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxBody-Tx
d_HasTxBody'45'Tx_3922 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxBody_4042
d_HasTxBody'45'Tx_3922 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxBody'45'Tx_4612
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxFees
d_HasTxFees_3924 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxFees-TopLevelTx
d_HasTxFees'45'TopLevelTx_3928 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_4130
d_HasTxFees'45'TopLevelTx_3928 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxFees'45'TopLevelTx_4626
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxId
d_HasTxId_3930 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxId-Tx
d_HasTxId'45'Tx_3934 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4176
d_HasTxId'45'Tx_3934 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxId'45'Tx_4694
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxId-TxBody
d_HasTxId'45'TxBody_3936 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4176
d_HasTxId'45'TxBody_3936 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxId'45'TxBody_4692
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxOuts
d_HasTxOuts_3938 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxOuts-Tx
d_HasTxOuts'45'Tx_3942 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4476
d_HasTxOuts'45'Tx_3942 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4716
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxOuts-TxBody
d_HasTxOuts'45'TxBody_3944 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4476
d_HasTxOuts'45'TxBody_3944 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'TxBody_4714
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxWitnesses
d_HasTxWitnesses_3946 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxWitnesses-Tx
d_HasTxWitnesses'45'Tx_3950 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxWitnesses_4064
d_HasTxWitnesses'45'Tx_3950 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxWitnesses'45'Tx_4616
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasUTxO
d_HasUTxO_3952 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasValidInterval
d_HasValidInterval_3956 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasValidInterval-Tx
d_HasValidInterval'45'Tx_3960 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4236
d_HasValidInterval'45'Tx_3960 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasValidInterval'45'Tx_4656
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasValidInterval-TxBody
d_HasValidInterval'45'TxBody_3962 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4236
d_HasValidInterval'45'TxBody_3962 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasValidInterval'45'TxBody_4654
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasVote
d_HasVote_3964 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasVote-GovVote
d_HasVote'45'GovVote_3968 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1254
d_HasVote'45'GovVote_3968 ~v0 = du_HasVote'45'GovVote_3968
du_HasVote'45'GovVote_3968 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1254
du_HasVote'45'GovVote_3968
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasVote'45'GovVote_1364
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasVoteDelegs
d_HasVoteDelegs_3970 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasWithdrawals
d_HasWithdrawals_3974 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasWithdrawals-Tx
d_HasWithdrawals'45'Tx_3978 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_198
d_HasWithdrawals'45'Tx_3978 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasWithdrawals'45'Tx_4640
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasWithdrawals-TxBody
d_HasWithdrawals'45'TxBody_3980 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_198
d_HasWithdrawals'45'TxBody_3980 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasWithdrawals'45'TxBody_4638
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HashProtected
d_HashProtected_3982 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  () -> ()
d_HashProtected_3982 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Hashable-P1Script
d_Hashable'45'P1Script_3984 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_3984 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_360
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_562
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_3986 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_3986 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_474
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Hashable-Script
d_Hashable'45'Script_3988 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_3988 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_664
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Hashable-ScriptIntegrity
d_Hashable'45'ScriptIntegrity_3990 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'ScriptIntegrity_3990 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_Hashable'45'ScriptIntegrity_2772
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.InBalanceInterval
d_InBalanceInterval_3992 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsBootstrapAddr
d_IsBootstrapAddr_3996 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsBootstrapAddr?
d_IsBootstrapAddr'63'_3998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsBootstrapAddr'63'_3998 ~v0 = du_IsBootstrapAddr'63'_3998
du_IsBootstrapAddr'63'_3998 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsBootstrapAddr'63'_3998
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_346
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsKeyHashObj
d_IsKeyHashObj_4002 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsKeyHashObj?
d_IsKeyHashObj'63'_4004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsKeyHashObj'63'_4004 ~v0 = du_IsKeyHashObj'63'_4004
du_IsKeyHashObj'63'_4004 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsKeyHashObj'63'_4004
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsKeyHashObj'63'_56
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism
d_IsMonoidHomomorphism_4006 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism
d_IsMonoidIsomorphism_4010 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism
d_IsMonoidMonomorphism_4014 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsValidFlagOf
d_IsValidFlagOf_4018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4596 ->
  AgdaAny -> Bool
d_IsValidFlagOf_4018 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_IsValidFlagOf_4604
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Ix
d_Ix_4020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_Ix_4020 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.THash
d_THash_4022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_THash_4022 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.KeyPair
d_KeyPair_4026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_KeyPair_4026 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.LangDepView
d_LangDepView_4028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_LangDepView_4028 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Language
d_Language_4030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_Language_4030 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.LanguageCostModels
d_LanguageCostModels_4032 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ListOfGovProposalsOf
d_ListOfGovProposalsOf_4036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4396 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1084]
d_ListOfGovProposalsOf_4036 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovProposalsOf_4404
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ListOfGovVotesOf
d_ListOfGovVotesOf_4038 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4416 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1030]
d_ListOfGovVotesOf_4038 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovVotesOf_4424
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.MaxKESEvoᶜ
d_MaxKESEvo'7580'_4040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  Integer
d_MaxKESEvo'7580'_4040 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxKESEvo'7580'_354
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_4042 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  Integer
d_MaxLovelaceSupply'7580'_4042 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_348
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.MaybeNetworkIdOf
d_MaybeNetworkIdOf_4044 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_178 ->
  AgdaAny -> Maybe AgdaAny
d_MaybeNetworkIdOf_4044 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_186
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.MemoryEstimate
d_MemoryEstimate_4046 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_MemoryEstimate_4046 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.MintedValueOf
d_MintedValueOf_4048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4296 ->
  AgdaAny -> AgdaAny
d_MintedValueOf_4048 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4304
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.NativeScript
d_NativeScript_4050 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.NeedsHash
d_NeedsHash_4052 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_966 ->
  ()
d_NeedsHash_4052 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Network
d_Network_4054 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_Network_4054 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.NetworkId
d_NetworkId_4058 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  AgdaAny
d_NetworkId_4058 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_352
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.NetworkIdOf
d_NetworkIdOf_4060 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_158 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_4060 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_166
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.NoOverlappingSpendInputs
d_NoOverlappingSpendInputs_4066 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  ()
d_NoOverlappingSpendInputs_4066 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_4068 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_4068 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_362
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.NonZero-SlotLengthᶜ
d_NonZero'45'SlotLength'7580'_4070 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotLength'7580'_4070 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotLength'7580'_360
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_4072 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_4072 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_338
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Number-Epoch
d_Number'45'Epoch_4074 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_4074 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_290
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.P1Script
d_P1Script_4076 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_P1Script_4076 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure
d_P1ScriptStructure_4078 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusScript
d_PlutusScript_4082 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_PlutusScript_4082 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamGroup
d_PParamGroup_4084 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams
d_PParams_4086 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsDiff
d_PParamsDiff_4090 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsOf
d_PParamsOf_4094 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_732 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314
d_PParamsOf_4094 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_740
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.UpdateT
d_UpdateT_4096 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_UpdateT_4096 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusLanguage
d_PlutusLanguage_4098 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure
d_PlutusStructure_4100 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusV1
d_PlutusV1_4104 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  AgdaAny
d_PlutusV1_4104 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_498
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusV2
d_PlutusV2_4106 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  AgdaAny
d_PlutusV2_4106 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_500
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusV3
d_PlutusV3_4108 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  AgdaAny
d_PlutusV3_4108 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_502
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusV4
d_PlutusV4_4110 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  AgdaAny
d_PlutusV4_4110 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_504
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Policy
d_Policy_4112 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_Policy_4112 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PolicyOf
d_PolicyOf_4114 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1274 ->
  AgdaAny -> Maybe AgdaAny
d_PolicyOf_4114 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1282
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PoolThresholds
d_PoolThresholds_4116 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_4120 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_4120 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_342
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Prices
d_Prices_4122 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_Prices_4122 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ProposedPPUpdates
d_ProposedPPUpdates_4124 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_ProposedPPUpdates_4124 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Quorum
d_Quorum_4126 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  Integer
d_Quorum_4126 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_350
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_4128 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  AgdaAny
d_RandomnessStabilisationWindow_4128 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_96
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_4130 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  Integer
d_RandomnessStabilisationWindow'7580'_4130 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow'7580'_344
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Redeemer
d_Redeemer_4132 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_Redeemer_4132 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.RedeemerPtr
d_RedeemerPtr_4134 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_RedeemerPtr_4134 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.RedeemersOf
d_RedeemersOf_4136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_4084 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RedeemersOf_4136 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RedeemersOf_4092
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ReferenceInputsOf
d_ReferenceInputsOf_4138 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4276 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ReferenceInputsOf_4138 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4284
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.RequiredSignerHashesOf
d_RequiredSignerHashesOf_4154 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4496 ->
  AgdaAny -> [AgdaAny]
d_RequiredSignerHashesOf_4154 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RequiredSignerHashesOf_4504
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.RewardAddress
d_RewardAddress_4156 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.RewardAddressOf
d_RewardAddressOf_4160 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_138 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_120
d_RewardAddressOf_4160 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_146
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.SKey
d_SKey_4164 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_SKey_4164 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Script
d_Script_4168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_Script_4168 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptAddr
d_ScriptAddr_4170 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_ScriptAddr_4170 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptBaseAddr
d_ScriptBaseAddr_4172 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_ScriptBaseAddr_4172 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptBootstrapAddr
d_ScriptBootstrapAddr_4174 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_ScriptBootstrapAddr_4174 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptHash
d_ScriptHash_4176 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_ScriptHash_4176 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure
d_ScriptStructure_4180 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptsOf
d_ScriptsOf_4184 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4456 ->
  AgdaAny -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ScriptsOf_4184 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ScriptsOf_4464
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Ser
d_Ser_4188 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_Ser_4188 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-CostModel
d_Show'45'CostModel_4190 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_4190 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_480
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-Credential
d_Show'45'Credential_4192 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_4192 ~v0 = du_Show'45'Credential_4192
du_Show'45'Credential_4192 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_4192 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_386
      v1 v2
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-Credential×Coin
d_Show'45'Credential'215'Coin_4194 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_4194 ~v0
  = du_Show'45'Credential'215'Coin_4194
du_Show'45'Credential'215'Coin_4194 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_4194 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_390
      v1 v2
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-DrepThresholds
d_Show'45'DrepThresholds_4196 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_4196 ~v0 = du_Show'45'DrepThresholds_4196
du_Show'45'DrepThresholds_4196 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_4196
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'DrepThresholds_776
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-Epoch
d_Show'45'Epoch_4198 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_4198 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_84
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-ExUnits
d_Show'45'ExUnits_4200 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_4200 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_494
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-GovRole
d_Show'45'GovRole_4202 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_4202 ~v0 = du_Show'45'GovRole_4202
du_Show'45'GovRole_4202 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_4202
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_Show'45'GovRole_1386
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-Language
d_Show'45'Language_4204 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_4204 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_484
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-LanguageCostModels
d_Show'45'LanguageCostModels_4206 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_4206 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Show'45'LanguageCostModels_706
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-Network
d_Show'45'Network_4208 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_4208 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_334
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-PParams
d_Show'45'PParams_4210 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_4210 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'PParams_780
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-PoolThresholds
d_Show'45'PoolThresholds_4212 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_4212 ~v0 = du_Show'45'PoolThresholds_4212
du_Show'45'PoolThresholds_4212 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_4212
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'PoolThresholds_778
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-Prices
d_Show'45'Prices_4214 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_4214 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_496
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-RewardAddress
d_Show'45'RewardAddress_4216 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RewardAddress_4216 ~v0 = du_Show'45'RewardAddress_4216
du_Show'45'RewardAddress_4216 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RewardAddress_4216
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RewardAddress_388
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-ScriptHash
d_Show'45'ScriptHash_4218 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_4218 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_226
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-THash
d_Show'45'THash_4220 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_4220 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1424
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-THash
d_Show'45'THash_4222 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_4222 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-THash
d_Show'45'THash_4224 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_4224 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_456
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
                    (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-VDeleg
d_Show'45'VDeleg_4226 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_4226 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_Show'45'VDeleg_1496
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Sig
d_Sig_4228 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_Sig_4228 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.SizeOf
d_SizeOf_4230 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4196 ->
  AgdaAny -> Integer
d_SizeOf_4230 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SizeOf_4204
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Slot
d_Slot_4232 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_Slot_4232 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.SlotLengthᶜ
d_SlotLength'7580'_4234 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  Integer
d_SlotLength'7580'_4234 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotLength'7580'_358
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_4236 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  Integer
d_SlotsPerEpoch'7580'_4236 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_336
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.SlotsPerKESPeriodᶜ
d_SlotsPerKESPeriod'7580'_4238 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  Integer
d_SlotsPerKESPeriod'7580'_4238 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerKESPeriod'7580'_356
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Slotʳ
d_Slot'691'_4240 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_4240 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_78
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.SpendInputsOf
d_SpendInputsOf_4242 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4256 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_SpendInputsOf_4242 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4264
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.StabilityWindow
d_StabilityWindow_4244 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  AgdaAny
d_StabilityWindow_4244 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_98
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.StabilityWindowᶜ
d_StabilityWindow'7580'_4246 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  Integer
d_StabilityWindow'7580'_4246 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_346
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.StartingBalanceIntervalsOf
d_StartingBalanceIntervalsOf_4248 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasStartingBalanceIntervals_4576 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StartingBalanceIntervalsOf_4248 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_StartingBalanceIntervalsOf_4584
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.SubLevelTx
d_SubLevelTx_4250 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_SubLevelTx_4250 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.SubTransactionsOf
d_SubTransactionsOf_4252 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_4154 ->
  AgdaAny -> AgdaAny
d_SubTransactionsOf_4252 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SubTransactionsOf_4164
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.T-Hashable
d_T'45'Hashable_4254 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_4254 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1424
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.T-Hashable
d_T'45'Hashable_4256 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_4256 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.T-Hashable
d_T'45'Hashable_4258 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_4258 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_456
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
                    (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.T-isHashable
d_T'45'isHashable_4260 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_4260 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_456
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra
d_TokenAlgebra_4264 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TopLevelGuardsOf
d_TopLevelGuardsOf_4268 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4216 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_TopLevelGuardsOf_4268 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TopLevelGuardsOf_4224
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TopLevelTx
d_TopLevelTx_4270 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_TopLevelTx_4270 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Tx
d_Tx_4276 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody
d_TxBody_4280 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBodyOf
d_TxBodyOf_4284 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxBody_4042 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876
d_TxBodyOf_4284 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxBodyOf_4052
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxFeesOf
d_TxFeesOf_4286 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_4130 ->
  AgdaAny -> AgdaAny
d_TxFeesOf_4286 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxFeesOf_4140
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxId
d_TxId_4288 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_TxId_4288 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxIdOf
d_TxIdOf_4290 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4176 ->
  AgdaAny -> AgdaAny
d_TxIdOf_4290 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxIdOf_4184
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxIn
d_TxIn_4292 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_TxIn_4292 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxOut
d_TxOut_4294 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_TxOut_4294 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxOutsOf
d_TxOutsOf_4296 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4476 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_TxOutsOf_4296 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4484
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxWitnesses
d_TxWitnesses_4298 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxWitnessesOf
d_TxWitnessesOf_4302 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxWitnesses_4064 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3878
d_TxWitnessesOf_4302 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxWitnessesOf_4072
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.UTxO
d_UTxO_4304 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_UTxO_4304 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.UTxOOf
d_UTxOOf_4306 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3854 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_4306 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3862
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Update
d_Update_4308 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_Update_4308 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.VDeleg
d_VDeleg_4320 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.VKey
d_VKey_4322 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_VKey_4322 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.VKeyAddr
d_VKeyAddr_4324 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_VKeyAddr_4324 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.VKeyBaseAddr
d_VKeyBaseAddr_4326 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_VKeyBaseAddr_4326 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.VKeyBootstrapAddr
d_VKeyBootstrapAddr_4328 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_VKeyBootstrapAddr_4328 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.VRF
d_VRF_4332 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_VRF_4332 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ValidIntervalOf
d_ValidIntervalOf_4334 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4236 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ValidIntervalOf_4334 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ValidIntervalOf_4244
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Value
d_Value_4336 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_Value_4336 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_4338 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_4338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2768
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.VoteDelegs
d_VoteDelegs_4340 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_VoteDelegs_4340 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.VoteDelegsOf
d_VoteDelegsOf_4342 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1178 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_4342 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1186
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.VoteOf
d_VoteOf_4344 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1254 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_998
d_VoteOf_4344 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1262
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Withdrawals
d_Withdrawals_4346 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_Withdrawals_4346 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.WithdrawalsOf
d_WithdrawalsOf_4348 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_198 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_4348 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_206
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.activeDRepsOf
d_activeDRepsOf_4350 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  () ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1294 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_4350 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_activeDRepsOf_1674
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
         (coe v0))
      v2 v3 v4
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.activeInEpoch
d_activeInEpoch_4352 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_4352 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.adHashingScheme
d_adHashingScheme_4354 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_adHashingScheme_4354 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1424
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.addEpoch
d_addEpoch_4356 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_4356 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_284
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.addSlot
d_addSlot_4358 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_4358 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_282
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.addValue
d_addValue_4360 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_4360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2768
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.allDCerts
d_allDCerts_4362 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1478]
d_allDCerts_4362 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allDCerts_4858
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.allMintedCoin
d_allMintedCoin_4364 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  Integer
d_allMintedCoin_4364
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allMintedCoin_4842
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.allReferenceInputs
d_allReferenceInputs_4366 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allReferenceInputs_4366 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allReferenceInputs_4752
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.allReferenceScripts
d_allReferenceScripts_4368 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allReferenceScripts_4368
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allReferenceScripts_4788
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.allSpendInputs
d_allSpendInputs_4370 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allSpendInputs_4370 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allSpendInputs_4740
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.allSpendInputsList
d_allSpendInputsList_4372 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  [[MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]]
d_allSpendInputsList_4372 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allSpendInputsList_4748
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.allWitnessScripts
d_allWitnessScripts_4374 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allWitnessScripts_4374 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allWitnessScripts_4800
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.applyUpdate
d_applyUpdate_4376 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314
d_applyUpdate_4376 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1842
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1878
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2766
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.coin
d_coin_4380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  AgdaAny -> Integer
d_coin_4380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2768
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.coin-inject-lemma
d_coin'45'inject'45'lemma_4382 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_4382 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_4384 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_4384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2768
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.coin∘inject≗id
d_coin'8728'inject'8791'id_4386 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_4386 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.cryptoStructure
d_cryptoStructure_4388 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_cryptoStructure_4388 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.dataOfTx
d_dataOfTx_4390 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  [AgdaAny]
d_dataOfTx_4390 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_dataOfTx_4824
      v2
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.e<sucᵉ
d_e'60'suc'7497'_4392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  AgdaAny -> AgdaAny
d_e'60'suc'7497'_4392 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_e'60'suc'7497'_124
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.epoch
d_epoch_4394 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  AgdaAny -> AgdaAny
d_epoch_4394 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_92
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.epochStructure
d_epochStructure_4396 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_4396 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.firstSlot
d_firstSlot_4414 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  AgdaAny -> AgdaAny
d_firstSlot_4414 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_94
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.fromPlutusLanguage
d_fromPlutusLanguage_4416 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_4416 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_470
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.gaData
d_gaData_4418 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_984 ->
  AgdaAny
d_gaData_4418 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_992
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.gaType
d_gaType_4420 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_984 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_966
d_gaType_4420 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_990
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.getAllScripts
d_getAllScripts_4422 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_getAllScripts_4422
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_getAllScripts_4814
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.getScriptHash
d_getScriptHash_4424 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  AgdaAny
d_getScriptHash_4424 ~v0 = du_getScriptHash_4424
du_getScriptHash_4424 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  AgdaAny
du_getScriptHash_4424
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_364
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.getTxData
d_getTxData_4426 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  [AgdaAny]
d_getTxData_4426 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_getTxData_4834
      v2
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.getTxScripts
d_getTxScripts_4428 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_getTxScripts_4428 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_getTxScripts_4808
      v0 v2 v3
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.globalConstants
d_globalConstants_4430 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_296
d_globalConstants_4430 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.govParams
d_govParams_4432 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1860
d_govParams_4432 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2766
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.govStructure
d_govStructure_4434 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10
d_govStructure_4434
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.govVoterCredential
d_govVoterCredential_4436 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_1006 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_4436 ~v0 = du_govVoterCredential_4436
du_govVoterCredential_4436 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_1006 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_4436
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_govVoterCredential_1144
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.hashRespectsUnion
d_hashRespectsUnion_4438 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_4438 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_582
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.inject
d_inject_4440 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  Integer -> AgdaAny
d_inject_4440 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2768
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isBootstrapAddr
d_isBootstrapAddr_4442 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_104
d_isBootstrapAddr_4442 ~v0 = du_isBootstrapAddr_4442
du_isBootstrapAddr_4442 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_104
du_isBootstrapAddr_4442
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr_314
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isGovVoterDRep
d_isGovVoterDRep_4444 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_1006 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_4444 ~v0 = du_isGovVoterDRep_4444
du_isGovVoterDRep_4444 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_1006 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_4444
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_isGovVoterDRep_1140
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isKeyHash
d_isKeyHash_4446 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_4446 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isKeyHashObj
d_isKeyHashObj_4448 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isKeyHashObj_4448 ~v0 = du_isKeyHashObj_4448
du_isKeyHashObj_4448 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isKeyHashObj_4448
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isKeyHashObjᵇ
d_isKeyHashObj'7495'_4450 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_4450 ~v0 = du_isKeyHashObj'7495'_4450
du_isKeyHashObj'7495'_4450 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
du_isKeyHashObj'7495'_4450
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_62
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isKeyPair
d_isKeyPair_4452 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  AgdaAny -> AgdaAny -> ()
d_isKeyPair_4452 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isNativeScript
d_isNativeScript_4454 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_4454 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isP1Script
d_isP1Script_4456 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_4456 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isP1Script?
d_isP1Script'63'_4458 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_4458 ~v0 = du_isP1Script'63'_4458
du_isP1Script'63'_4458 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_4458
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP1Script'63'_670
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isP2Script
d_isP2Script_4460 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_4460 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isP2Script?
d_isP2Script'63'_4462 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_4462 ~v0 = du_isP2Script'63'_4462
du_isP2Script'63'_4462 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_4462
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP2Script'63'_684
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isProtected
d_isProtected_4464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isProtected_4464 ~v0 = du_isProtected_4464
du_isProtected_4464 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isProtected_4464
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isProtected_278
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isScript
d_isScript_4466 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isScriptAddr
d_isScriptAddr_4468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_4468 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isScriptObj
d_isScriptObj_4470 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isScriptObj_4470 ~v0 = du_isScriptObj_4470
du_isScriptObj_4470 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isScriptObj_4470
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isScriptRewardAddress
d_isScriptRewardAddress_4472 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_120 ->
  ()
d_isScriptRewardAddress_4472 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isSigned
d_isSigned_4474 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_4474 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isSigned-correct
d_isSigned'45'correct_4476 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_4476 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_isSigned'45'correct_132
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isVKey
d_isVKey_4478 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isVKeyAddr
d_isVKeyAddr_4480 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_4480 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.khs
d_khs_4482 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_4482 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.language
d_language_4484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  AgdaAny -> AgdaAny
d_language_4484 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_532
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.languageCostModels
d_languageCostModels_4486 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_692 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_4486 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_696
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.leiosCryptoStructure
d_leiosCryptoStructure_4488 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.T_LeiosCryptoStructure_10
d_leiosCryptoStructure_4488 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1430
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.lookupScriptHash
d_lookupScriptHash_4490 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_4490 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_lookupScriptHash_4850
      v0 v2 v3 v4
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.monoid
d_monoid_4496 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_4496 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2768
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.netId
d_netId_4498 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_4498 ~v0 = du_netId_4498
du_netId_4498 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_4498
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_270
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.p1s
d_p1s_4500 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_338
d_p1s_4500 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_562
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.paramsWF-elim
d_paramsWF'45'elim_4502 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_4502 ~v0 = du_paramsWF'45'elim_4502
du_paramsWF'45'elim_4502 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_4502 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_paramsWF'45'elim_708
      v1 v2
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.paramsWellFormed
d_paramsWellFormed_4504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  ()
d_paramsWellFormed_4504 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.payCred
d_payCred_4506 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_4506 ~v0 = du_payCred_4506
du_payCred_4506 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_payCred_4506
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_266
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.pkk
d_pkk_4508 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_4508 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.policies
d_policies_4510 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  AgdaAny -> [AgdaAny]
d_policies_4510 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2768
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.positivePParams
d_positivePParams_4512 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  [Integer]
d_positivePParams_4512 ~v0 = du_positivePParams_4512
du_positivePParams_4512 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  [Integer]
du_positivePParams_4512
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_positivePParams_500
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ppUpd
d_ppUpd_4514 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1826
d_ppUpd_4514 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1878
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2766
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ppWF?
d_ppWF'63'_4516 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_4516 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1850
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1878
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2766
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ppdWellFormed
d_ppdWellFormed_4518 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  AgdaAny -> ()
d_ppdWellFormed_4518 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.preoEpoch
d_preoEpoch_4520 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_4520 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_114
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.proposedCC
d_proposedCC_4522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_984 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_4522 ~v0 = du_proposedCC_4522
du_proposedCC_4522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_984 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_4522
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_proposedCC_1152
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.protect
d_protect_4524 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84
d_protect_4524 ~v0 = du_protect_4524
du_protect_4524 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84
du_protect_4524
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_protect_282
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.protection-preserves-payment
d_protection'45'preserves'45'payment_4526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_protection'45'preserves'45'payment_4526 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.protection-preserves-stake
d_protection'45'preserves'45'stake_4528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_protection'45'preserves'45'stake_4528 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ps
d_ps_4530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376
d_ps_4530 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.rawMonoid
d_rawMonoid_4532 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_4532 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2768
                    (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.referenceData
d_referenceData_4534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_referenceData_4534 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_referenceData_4830
      v0
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.referenceScripts
d_referenceScripts_4536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_referenceScripts_4536 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_referenceScripts_4782
      v0 v2 v3
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.referencedTxOuts
d_referencedTxOuts_4538 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referencedTxOuts_4538 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_referencedTxOuts_4770
      v0 v2 v3
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.scriptStructure
d_scriptStructure_4540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536
d_scriptStructure_4540 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.scriptsOfTx
d_scriptsOfTx_4542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scriptsOfTx_4542 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_scriptsOfTx_4778
      v2
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.scriptsOfUTxO
d_scriptsOfUTxO_4544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scriptsOfUTxO_4544 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_scriptsOfUTxO_4776
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.sign
d_sign_4546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_sign_4546 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.size
d_size_4548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  AgdaAny -> Integer
d_size_4548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2768
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.slotsFromDuration
d_slotsFromDuration_4550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  Integer -> AgdaAny
d_slotsFromDuration_4550 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_slotsFromDuration_100
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.spendData
d_spendData_4552 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_spendData_4552 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_spendData_4828
      v0
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.spendScripts
d_spendScripts_4554 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_spendScripts_4554 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_spendScripts_4780
      v0
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.spendTxOuts
d_spendTxOuts_4556 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_spendTxOuts_4556 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_spendTxOuts_4764
      v0 v2 v3
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.stakeCred
d_stakeCred_4558 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_4558 ~v0 = du_stakeCred_4558
du_stakeCred_4558 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_stakeCred_4558
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_268
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.sucᵉ
d_suc'7497'_4560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  AgdaAny -> AgdaAny
d_suc'7497'_4560 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_102
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.sumᵛ
d_sum'7515'_4562 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_4562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2768
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.toP1Script
d_toP1Script_4564 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_4564 ~v0 = du_toP1Script_4564
du_toP1Script_4564 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_4564
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_678
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.toP2Script
d_toP2Script_4566 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_4566 ~v0 = du_toP2Script_4566
du_toP2Script_4566 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_4566
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_690
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.tokenAlgebra
d_tokenAlgebra_4568 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
d_tokenAlgebra_4568 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2768
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.txOutDataOfUTxO
d_txOutDataOfUTxO_4570 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_txOutDataOfUTxO_4570 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutDataOfUTxO_4826
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.txOutToDatum
d_txOutToDatum_4572 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txOutToDatum_4572 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToDatum_4730
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.txOutToScript
d_txOutToScript_4574 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_txOutToScript_4574 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToScript_4726
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.txOutToValue
d_txOutToValue_4576 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_txOutToValue_4576 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4734
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.txidBytes
d_txidBytes_4578 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  AgdaAny -> AgdaAny
d_txidBytes_4578 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txidBytes_2770
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.updateGroups
d_updateGroups_4580 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_234]
d_updateGroups_4580 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1844
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1878
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2766
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.validP1Script
d_validP1Script_4590 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_4590 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.validPlutusScript
d_validPlutusScript_4592 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_4592 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.valuesOfUTxO
d_valuesOfUTxO_4594 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_valuesOfUTxO_4594 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_valuesOfUTxO_4738
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.witnessData
d_witnessData_4596 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  [AgdaAny]
d_witnessData_4596 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_witnessData_4832
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.witnessScripts
d_witnessScripts_4598 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_witnessScripts_4598 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_witnessScripts_4798
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ε
d_ε_4600 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  AgdaAny
d_ε_4600 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2768
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_4602 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_4602 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ℕEpochStructure
d_ℕEpochStructure_4604 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_4604 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_376
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ℕtoEpoch
d_ℕtoEpoch_4606 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  Integer -> AgdaAny
d_ℕtoEpoch_4606 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_278
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.≤-predᵉ
d_'8804''45'pred'7497'_4608 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'pred'7497'_4608 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'8804''45'pred'7497'_130
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_4610 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_4610 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_488
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Acnt.reserves
d_reserves_4626 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_196 ->
  Integer
d_reserves_4626 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_204
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Acnt.treasury
d_treasury_4628 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_196 ->
  Integer
d_treasury_4628 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_202
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Anchor.hash
d_hash_4632 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1018 ->
  AgdaAny
d_hash_4632 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_hash_1026
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Anchor.url
d_url_4634 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1018 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_4634 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_url_1024
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BaseAddr.net
d_net_4648 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  AgdaAny
d_net_4648 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_94 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BaseAddr.pay
d_pay_4650 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_4650 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_96 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BaseAddr.protected
d_protected_4652 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Bool
d_protected_4652 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_protected_100
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BaseAddr.stake
d_stake_4654 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_4654 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_98 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BootstrapAddr.attrsSize
d_attrsSize_4658 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_104 ->
  Integer
d_attrsSize_4658 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_116
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BootstrapAddr.net
d_net_4660 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_104 ->
  AgdaAny
d_net_4660 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_112 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BootstrapAddr.pay
d_pay_4662 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_104 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_4662 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_114 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P1
d_P1_4672 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_246 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_4672 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P1_268
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P2a
d_P2a_4674 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_246 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_4674 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2a_270
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P2b
d_P2b_4676 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_246 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_4676 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2b_272
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P3
d_P3_4678 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_246 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_4678 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P3_274
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P4
d_P4_4680 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_246 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_4680 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P4_276
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P5a
d_P5a_4682 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_246 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_4682 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5a_278
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P5b
d_P5b_4684 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_246 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_4684 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5b_280
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P5c
d_P5c_4686 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_246 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_4686 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5c_282
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P5d
d_P5d_4688 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_246 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_4688 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5d_284
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P6
d_P6_4690 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_246 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_4690 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P6_286
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovAction.gaData
d_gaData_4710 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_984 ->
  AgdaAny
d_gaData_4710 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_992
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovAction.gaType
d_gaType_4712 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_984 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_966
d_gaType_4712 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_990
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionState.action
d_action_4716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1112 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_984
d_action_4716 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1132
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionState.deposit
d_deposit_4718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1112 ->
  Integer
d_deposit_4718 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1136
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionState.expiresIn
d_expiresIn_4720 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1112 ->
  AgdaAny
d_expiresIn_4720 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_expiresIn_1130
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionState.prevAction
d_prevAction_4722 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1112 ->
  AgdaAny
d_prevAction_4722 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1134
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionState.returnAddr
d_returnAddr_4724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1112 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_120
d_returnAddr_4724 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1128
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionState.votes
d_votes_4726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1112 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1050
d_votes_4726 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_votes_1126
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_4746 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1860 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_4746 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1892
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovParams.UpdateT
d_UpdateT_4748 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1860 ->
  ()
d_UpdateT_4748 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovParams.applyUpdate
d_applyUpdate_4750 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1860 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314
d_applyUpdate_4750 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1842
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1878
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovParams.ppUpd
d_ppUpd_4752 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1860 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1826
d_ppUpd_4752 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1878
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovParams.ppWF?
d_ppWF'63'_4754 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1860 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_4754 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1850
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1878
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovParams.ppdWellFormed
d_ppdWellFormed_4756 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1860 ->
  AgdaAny -> ()
d_ppdWellFormed_4756 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovParams.updateGroups
d_updateGroups_4758 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1860 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_234]
d_updateGroups_4758 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1844
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1878
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovProposal.action
d_action_4762 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1084 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_984
d_action_4762 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1098
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovProposal.anchor
d_anchor_4764 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1084 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1018
d_anchor_4764 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1108
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovProposal.deposit
d_deposit_4766 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1084 ->
  Integer
d_deposit_4766 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1104
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovProposal.policy
d_policy_4768 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1084 ->
  Maybe AgdaAny
d_policy_4768 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_policy_1102
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovProposal.prevAction
d_prevAction_4770 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1084 ->
  AgdaAny
d_prevAction_4770 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1100
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovProposal.returnAddr
d_returnAddr_4772 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1084 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_120
d_returnAddr_4772 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1106
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVote.anchor
d_anchor_4784 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1030 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1018
d_anchor_4784 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1046
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVote.gid
d_gid_4786 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1030 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_4786 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gid_1040
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVote.vote
d_vote_4788 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1030 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_998
d_vote_4788 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_vote_1044
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVote.voter
d_voter_4790 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1030 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_1006
d_voter_4790 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_voter_1042
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVoter.gvCredential
d_gvCredential_4794 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_1006 ->
  AgdaAny
d_gvCredential_4794 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCredential_1014
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVoter.gvRole
d_gvRole_4796 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_1006 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_956
d_gvRole_4796 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvRole_1012
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVotes.gvCC
d_gvCC_4800 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1050 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_4800 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCC_1058
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVotes.gvDRep
d_gvDRep_4802 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1050 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_4802 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvDRep_1060
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVotes.gvSPO
d_gvSPO_4804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1050 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_4804 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvSPO_1062
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.==-GovAction
d_'61''61''45'GovAction_4808 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_984 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_984 ->
  Bool
d_'61''61''45'GovAction_4808 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovAction_1534
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.==-GovActionData
d_'61''61''45'GovActionData_4810 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_966 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_4810 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovActionData_1516
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.==-GovProposal
d_'61''61''45'GovProposal_4812 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1084 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1084 ->
  Bool
d_'61''61''45'GovProposal_4812 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovProposal_1568
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.==-Set
d_'61''61''45'Set_4814 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_4814 ~v0 = du_'61''61''45'Set_4814
du_'61''61''45'Set_4814 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
du_'61''61''45'Set_4814 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_'61''61''45'Set_1504
      v1 v2 v3
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.Anchor
d_Anchor_4816 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.AnchorOf
d_AnchorOf_4820 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1314 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1018
d_AnchorOf_4820 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1322
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.DReps
d_DReps_4828 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_DReps_4828 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.DRepsOf
d_DRepsOf_4830 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1294 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_4830 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1302
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.DecEq-Anchor
d_DecEq'45'Anchor_4832 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_4832 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'Anchor_1498
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.DecEq-GovActionType
d_DecEq'45'GovActionType_4834 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_4834 ~v0 = du_DecEq'45'GovActionType_4834
du_DecEq'45'GovActionType_4834 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_4834
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovActionType_1388
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.DecEq-GovRole
d_DecEq'45'GovRole_4836 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_4836 ~v0 = du_DecEq'45'GovRole_4836
du_DecEq'45'GovRole_4836 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_4836
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovRole_1390
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.DecEq-GovVoter
d_DecEq'45'GovVoter_4838 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_4838 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'GovVoter_1396
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.DecEq-NeedsHash
d_DecEq'45'NeedsHash_4840 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_966 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_4840 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1566
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.DecEq-VDeleg
d_DecEq'45'VDeleg_4842 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_4842 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1394
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.DecEq-Vote
d_DecEq'45'Vote_4844 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_4844 ~v0 = du_DecEq'45'Vote_4844
du_DecEq'45'Vote_4844 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_4844
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'Vote_1392
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.DepositOf
d_DepositOf_4846 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1334 ->
  AgdaAny -> Integer
d_DepositOf_4846 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1342
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovAction
d_GovAction_4848 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovActionData
d_GovActionData_4852 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_966 ->
  ()
d_GovActionData_4852 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovActionID
d_GovActionID_4854 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_GovActionID_4854 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovActionOf
d_GovActionOf_4856 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1196 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_984
d_GovActionOf_4856 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1202
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovActionState
d_GovActionState_4858 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovActionType
d_GovActionType_4862 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovActionTypeOf
d_GovActionTypeOf_4864 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1160 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_966
d_GovActionTypeOf_4864 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1166
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovProposal
d_GovProposal_4866 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovRole
d_GovRole_4870 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovRoleCredential
d_GovRoleCredential_4872 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_956 ->
  ()
d_GovRoleCredential_4872 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovVote
d_GovVote_4874 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovVoter
d_GovVoter_4878 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovVoterOf
d_GovVoterOf_4882 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1214 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_1006
d_GovVoterOf_4882 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1222
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovVotes
d_GovVotes_4884 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovVotesOf
d_GovVotesOf_4888 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1234 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1050
d_GovVotesOf_4888 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1242
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasAnchor
d_HasAnchor_4890 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasAnchor-GovProposal
d_HasAnchor'45'GovProposal_4894 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1314
d_HasAnchor'45'GovProposal_4894 ~v0
  = du_HasAnchor'45'GovProposal_4894
du_HasAnchor'45'GovProposal_4894 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1314
du_HasAnchor'45'GovProposal_4894
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasAnchor'45'GovProposal_1368
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_4896 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_4896 ~v0
  = du_HasCast'45'GovAction'45'Sigma_4896
du_HasCast'45'GovAction'45'Sigma_4896 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_4896
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_1352
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasCast-GovVote
d_HasCast'45'GovVote_4898 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_4898 ~v0 = du_HasCast'45'GovVote_4898
du_HasCast'45'GovVote_4898 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_4898
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovVote_1494
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasCast-HashProtected
d_HasCast'45'HashProtected_4900 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_4900 ~v0
  = du_HasCast'45'HashProtected_4900
du_HasCast'45'HashProtected_4900 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_4900 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1358
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_4902 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_4902 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_4902
du_HasCast'45'HashProtected'45'MaybeScriptHash_4902 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_4902
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1360
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasDReps
d_HasDReps_4904 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasDeposit
d_HasDeposit_4908 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasDeposit-GovProposal
d_HasDeposit'45'GovProposal_4912 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1334
d_HasDeposit'45'GovProposal_4912 ~v0
  = du_HasDeposit'45'GovProposal_4912
du_HasDeposit'45'GovProposal_4912 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1334
du_HasDeposit'45'GovProposal_4912
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasDeposit'45'GovProposal_1370
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovAction
d_HasGovAction_4914 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_4918 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1196
d_HasGovAction'45'GovActionState_4918 ~v0
  = du_HasGovAction'45'GovActionState_4918
du_HasGovAction'45'GovActionState_4918 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1196
du_HasGovAction'45'GovActionState_4918
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1374
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_4920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1196
d_HasGovAction'45'GovProposal_4920 ~v0
  = du_HasGovAction'45'GovProposal_4920
du_HasGovAction'45'GovProposal_4920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1196
du_HasGovAction'45'GovProposal_4920
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1372
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovActionType
d_HasGovActionType_4922 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_4926 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1160
d_HasGovActionType'45'GovAction_4926 ~v0
  = du_HasGovActionType'45'GovAction_4926
du_HasGovActionType'45'GovAction_4926 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1160
du_HasGovActionType'45'GovAction_4926
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_1350
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_4928 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1160
d_HasGovActionType'45'GovActionState_4928 ~v0
  = du_HasGovActionType'45'GovActionState_4928
du_HasGovActionType'45'GovActionState_4928 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1160
du_HasGovActionType'45'GovActionState_4928
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1378
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_4930 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1160
d_HasGovActionType'45'GovProposal_4930 ~v0
  = du_HasGovActionType'45'GovProposal_4930
du_HasGovActionType'45'GovProposal_4930 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1160
du_HasGovActionType'45'GovProposal_4930
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1376
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovVoter
d_HasGovVoter_4932 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_4936 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1214
d_HasGovVoter'45'GovVote_4936 ~v0 = du_HasGovVoter'45'GovVote_4936
du_HasGovVoter'45'GovVote_4936 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1214
du_HasGovVoter'45'GovVote_4936
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1362
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovVotes
d_HasGovVotes_4938 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovVotes-GovActionState
d_HasGovVotes'45'GovActionState_4942 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1234
d_HasGovVotes'45'GovActionState_4942 ~v0
  = du_HasGovVotes'45'GovActionState_4942
du_HasGovVotes'45'GovActionState_4942 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1234
du_HasGovVotes'45'GovActionState_4942
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVotes'45'GovActionState_1380
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasPolicy
d_HasPolicy_4944 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_4948 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1274
d_HasPolicy'45'GovProposal_4948 ~v0
  = du_HasPolicy'45'GovProposal_4948
du_HasPolicy'45'GovProposal_4948 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1274
du_HasPolicy'45'GovProposal_4948
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1366
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasRewardAddress-GovActionState
d_HasRewardAddress'45'GovActionState_4950 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_138
d_HasRewardAddress'45'GovActionState_4950 ~v0
  = du_HasRewardAddress'45'GovActionState_4950
du_HasRewardAddress'45'GovActionState_4950 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_138
du_HasRewardAddress'45'GovActionState_4950
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovActionState_1382
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasRewardAddress-GovProposal
d_HasRewardAddress'45'GovProposal_4952 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_138
d_HasRewardAddress'45'GovProposal_4952 ~v0
  = du_HasRewardAddress'45'GovProposal_4952
du_HasRewardAddress'45'GovProposal_4952 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_138
du_HasRewardAddress'45'GovProposal_4952
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovProposal_1384
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasVote
d_HasVote_4954 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasVote-GovVote
d_HasVote'45'GovVote_4958 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1254
d_HasVote'45'GovVote_4958 ~v0 = du_HasVote'45'GovVote_4958
du_HasVote'45'GovVote_4958 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1254
du_HasVote'45'GovVote_4958
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasVote'45'GovVote_1364
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasVoteDelegs
d_HasVoteDelegs_4960 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HashProtected
d_HashProtected_4964 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  () -> ()
d_HashProtected_4964 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.NeedsHash
d_NeedsHash_4968 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_966 ->
  ()
d_NeedsHash_4968 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.Policy
d_Policy_4974 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_Policy_4974 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.PolicyOf
d_PolicyOf_4976 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1274 ->
  AgdaAny -> Maybe AgdaAny
d_PolicyOf_4976 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1282
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.Show-GovRole
d_Show'45'GovRole_4980 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_4980 ~v0 = du_Show'45'GovRole_4980
du_Show'45'GovRole_4980 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_4980
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_Show'45'GovRole_1386
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.Show-VDeleg
d_Show'45'VDeleg_4982 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_4982 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_Show'45'VDeleg_1496
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.VDeleg
d_VDeleg_4990 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.Vote
d_Vote_4992 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.VoteDelegs
d_VoteDelegs_4994 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  ()
d_VoteDelegs_4994 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.VoteDelegsOf
d_VoteDelegsOf_4996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1178 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_4996 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1186
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.VoteOf
d_VoteOf_4998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1254 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_998
d_VoteOf_4998 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1262
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.activeDRepsOf
d_activeDRepsOf_5002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  () ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1294 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_5002 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_activeDRepsOf_1674
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2902
         (coe v0))
      v2 v3 v4
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.activeInEpoch
d_activeInEpoch_5004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_5004 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.gaData
d_gaData_5006 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_984 ->
  AgdaAny
d_gaData_5006 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_992
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.gaType
d_gaType_5008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_984 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_966
d_gaType_5008 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_990
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.govVoterCredential
d_govVoterCredential_5010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_1006 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_5010 ~v0 = du_govVoterCredential_5010
du_govVoterCredential_5010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_1006 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_5010
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_govVoterCredential_1144
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.isGovVoterDRep
d_isGovVoterDRep_5012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_1006 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_5012 ~v0 = du_isGovVoterDRep_5012
du_isGovVoterDRep_5012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_1006 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_5012
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_isGovVoterDRep_1140
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.proposedCC
d_proposedCC_5016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_984 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_5016 ~v0 = du_proposedCC_5016
du_proposedCC_5016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_984 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_5016
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_proposedCC_1152
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasAnchor.AnchorOf
d_AnchorOf_5032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1314 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1018
d_AnchorOf_5032 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1322
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasDReps.DRepsOf
d_DRepsOf_5036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1294 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_5036 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1302
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasDeposit.DepositOf
d_DepositOf_5040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1334 ->
  AgdaAny -> Integer
d_DepositOf_5040 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1342
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovAction.GovActionOf
d_GovActionOf_5044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1196 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_984
d_GovActionOf_5044 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1202
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_5048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1160 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_966
d_GovActionTypeOf_5048 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1166
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovVoter.GovVoterOf
d_GovVoterOf_5052 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1214 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_1006
d_GovVoterOf_5052 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1222
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovVotes.GovVotesOf
d_GovVotesOf_5056 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1234 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1050
d_GovVotesOf_5056 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1242
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasPolicy.PolicyOf
d_PolicyOf_5060 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1274 ->
  AgdaAny -> Maybe AgdaAny
d_PolicyOf_5060 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1282
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasVote.VoteOf
d_VoteOf_5064 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1254 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_998
d_VoteOf_5064 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1262
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_5068 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1178 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_5068 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1186
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasAccount.AccountOf
d_AccountOf_5088 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasAccount_212 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_196
d_AccountOf_5088 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_AccountOf_220
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasAttrSize.AttrSizeOf
d_AttrSizeOf_5092 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_218 ->
  AgdaAny -> Integer
d_AttrSizeOf_5092 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_226
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasBalanceIntervals.BalanceIntervalsOf
d_BalanceIntervalsOf_5096 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4556 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_BalanceIntervalsOf_5096 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_BalanceIntervalsOf_4564
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_5100 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasCCMaxTermLength_752 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_5100 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_CCMaxTermLengthOf_760
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCollateralInputs.CollateralInputsOf
d_CollateralInputsOf_5104 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_4106 ->
  AgdaAny -> AgdaAny
d_CollateralInputsOf_5104 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CollateralInputsOf_4116
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCredential.CredentialOf
d_CredentialOf_5108 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_5108 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCurrentTreasury.CurrentTreasuryOf
d_CurrentTreasuryOf_5112 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4516 ->
  AgdaAny -> Maybe Integer
d_CurrentTreasuryOf_5112 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CurrentTreasuryOf_4524
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDCerts.DCertsOf
d_DCertsOf_5116 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4336 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1478]
d_DCertsOf_5116 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DCertsOf_4344
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasData.DataOf
d_DataOf_5120 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4376 ->
  AgdaAny -> [AgdaAny]
d_DataOf_5120 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4384
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDirectDeposits.DirectDepositsOf
d_DirectDepositsOf_5124 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4536 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DirectDepositsOf_5124 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DirectDepositsOf_4544
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasFees?.FeesOf?
d_FeesOf'63'_5128 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4316 ->
  AgdaAny -> Maybe Integer
d_FeesOf'63'_5128 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_FeesOf'63'_4324
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovProposals.GovProposalsOf
d_GovProposalsOf_5132 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGovProposals_4356 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1084]
d_GovProposalsOf_5132 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GovProposalsOf_4364
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGuards.GuardsOf
d_GuardsOf_5136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4436 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_GuardsOf_5136 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GuardsOf_4444
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasIsValidFlag.IsValidFlagOf
d_IsValidFlagOf_5140 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4596 ->
  AgdaAny -> Bool
d_IsValidFlagOf_5140 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_IsValidFlagOf_4604
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasListOfGovProposals.ListOfGovProposalsOf
d_ListOfGovProposalsOf_5144 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4396 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1084]
d_ListOfGovProposalsOf_5144 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovProposalsOf_4404
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasListOfGovVotes.ListOfGovVotesOf
d_ListOfGovVotesOf_5148 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4416 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1030]
d_ListOfGovVotesOf_5148 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovVotesOf_4424
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasMaybeNetworkId.MaybeNetworkIdOf
d_MaybeNetworkIdOf_5152 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_178 ->
  AgdaAny -> Maybe AgdaAny
d_MaybeNetworkIdOf_5152 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_186
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasMintedValue.MintedValueOf
d_MintedValueOf_5156 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4296 ->
  AgdaAny -> AgdaAny
d_MintedValueOf_5156 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4304
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasNetworkId.NetworkIdOf
d_NetworkIdOf_5160 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_158 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_5160 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_166
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasPParams.PParamsOf
d_PParamsOf_5164 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_732 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314
d_PParamsOf_5164 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_740
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRedeemers.RedeemersOf
d_RedeemersOf_5168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_4084 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RedeemersOf_5168 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RedeemersOf_4092
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasReferenceInputs.ReferenceInputsOf
d_ReferenceInputsOf_5172 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4276 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ReferenceInputsOf_5172 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4284
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRequiredSingerHashes.RequiredSignerHashesOf
d_RequiredSignerHashesOf_5176 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4496 ->
  AgdaAny -> [AgdaAny]
d_RequiredSignerHashesOf_5176 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RequiredSignerHashesOf_4504
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRewardAddress.RewardAddressOf
d_RewardAddressOf_5180 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_138 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_120
d_RewardAddressOf_5180 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_146
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasScripts.ScriptsOf
d_ScriptsOf_5184 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4456 ->
  AgdaAny -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ScriptsOf_5184 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ScriptsOf_4464
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasSize.SizeOf
d_SizeOf_5188 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4196 ->
  AgdaAny -> Integer
d_SizeOf_5188 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SizeOf_4204
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasSpendInputs.SpendInputsOf
d_SpendInputsOf_5192 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4256 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_SpendInputsOf_5192 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4264
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasStartingBalanceIntervals.StartingBalanceIntervalsOf
d_StartingBalanceIntervalsOf_5196 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasStartingBalanceIntervals_4576 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StartingBalanceIntervalsOf_5196 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_StartingBalanceIntervalsOf_4584
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasSubTransactions.SubTransactionsOf
d_SubTransactionsOf_5200 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_4154 ->
  AgdaAny -> AgdaAny
d_SubTransactionsOf_5200 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SubTransactionsOf_4164
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTopLevelGuards.TopLevelGuardsOf
d_TopLevelGuardsOf_5204 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4216 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_TopLevelGuardsOf_5204 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TopLevelGuardsOf_4224
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxBody.TxBodyOf
d_TxBodyOf_5208 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxBody_4042 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876
d_TxBodyOf_5208 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxBodyOf_4052
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxFees.TxFeesOf
d_TxFeesOf_5212 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_4130 ->
  AgdaAny -> AgdaAny
d_TxFeesOf_5212 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxFeesOf_4140
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxId.TxIdOf
d_TxIdOf_5216 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4176 ->
  AgdaAny -> AgdaAny
d_TxIdOf_5216 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxIdOf_4184
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxOuts.TxOutsOf
d_TxOutsOf_5220 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4476 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_TxOutsOf_5220 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4484
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxWitnesses.TxWitnessesOf
d_TxWitnessesOf_5224 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxWitnesses_4064 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3878
d_TxWitnessesOf_5224 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxWitnessesOf_4072
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasUTxO.UTxOOf
d_UTxOOf_5228 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3854 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_5228 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3862
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasValidInterval.ValidIntervalOf
d_ValidIntervalOf_5232 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4236 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ValidIntervalOf_5232 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ValidIntervalOf_4244
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_5236 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_198 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_5236 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_206
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism.homo
d_homo_5258 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_5258 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_5260 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_5260 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_5262 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_5262 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_5264 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_5264 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism.cong
d_cong_5266 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_5266 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.homo
d_homo_5270 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_5270 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.injective
d_injective_5272 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_5272 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_5274 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_5274 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_5276 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_5276 ~v0 = du_isMagmaIsomorphism_5276
du_isMagmaIsomorphism_5276 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_5276 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_5278 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_5278 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_5278 v2
du_isMagmaMonomorphism_5278 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_5278 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_5280 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_5280 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_5282 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_5282 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_5284 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_5284 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_5286 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_5286 ~v0 ~v1 v2 = du_isRelIsomorphism_5286 v2
du_isRelIsomorphism_5286 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_5286 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_5288 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_5288 ~v0 ~v1 v2 = du_isRelMonomorphism_5288 v2
du_isRelMonomorphism_5288 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_5288 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.surjective
d_surjective_5290 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_5290 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_5292 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_5292 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.cong
d_cong_5294 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_5294 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.homo
d_homo_5298 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_5298 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.injective
d_injective_5300 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_5300 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_5302 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_5302 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_5304 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_5304 ~v0 = du_isMagmaMonomorphism_5304
du_isMagmaMonomorphism_5304 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_5304 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_5306 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_5306 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_5308 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_5308 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_5310 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_5310 ~v0 ~v1 v2 = du_isRelMonomorphism_5310 v2
du_isRelMonomorphism_5310 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_5310 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_5312 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_5312 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.cong
d_cong_5314 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_5314 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.LanguageCostModels.languageCostModels
d_languageCostModels_5318 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_692 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_5318 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_696
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_5338 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_338 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_5338 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_358
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_5340 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_338 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_5340 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_362
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_5342 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_338 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_5342 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_360
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure.P1Script
d_P1Script_5344 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_338 ->
  ()
d_P1Script_5344 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure.validP1Script
d_validP1Script_5346 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_338 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_5346 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.Emax
d_Emax_5362 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  AgdaAny
d_Emax_5362 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_470
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.a
d_a_5364 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_a_5364 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_440 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.a0
d_a0_5366 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_5366 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_474
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.b
d_b_5368 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_b_5368 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_442 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.ccMaxTermLength
d_ccMaxTermLength_5370 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_ccMaxTermLength_5370 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_486
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.ccMinSize
d_ccMinSize_5372 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_ccMinSize_5372 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_484
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_5374 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_coinsPerUTxOByte_5374 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_454
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.collateralPercentage
d_collateralPercentage_5376 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_collateralPercentage_5376 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_476
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.costmdls
d_costmdls_5378 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_5378 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_costmdls_496
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.costmdlsAssoc
d_costmdlsAssoc_5380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_692
d_costmdlsAssoc_5380 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_478
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.drepActivity
d_drepActivity_5382 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  AgdaAny
d_drepActivity_5382 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_494
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.drepDeposit
d_drepDeposit_5384 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_drepDeposit_5384 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_492
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.drepThresholds
d_drepThresholds_5386 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_246
d_drepThresholds_5386 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_482
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.govActionDeposit
d_govActionDeposit_5388 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_govActionDeposit_5388 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_490
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.govActionLifetime
d_govActionLifetime_5390 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_govActionLifetime_5390 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_488
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.keyDeposit
d_keyDeposit_5392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_keyDeposit_5392 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_444
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.leiosCommitteeSize
d_leiosCommitteeSize_5394 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_leiosCommitteeSize_5394 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosCommitteeSize_432
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.leiosDiffusionPeriod
d_leiosDiffusionPeriod_5396 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_leiosDiffusionPeriod_5396 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosDiffusionPeriod_426
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.leiosHeaderPeriod
d_leiosHeaderPeriod_5398 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_leiosHeaderPeriod_5398 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosHeaderPeriod_422
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.leiosMaxEBExUnits
d_leiosMaxEBExUnits_5400 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  AgdaAny
d_leiosMaxEBExUnits_5400 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_436
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.leiosMaxEBSize
d_leiosMaxEBSize_5402 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_leiosMaxEBSize_5402 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_428
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_5404 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_leiosMaxEBTxsSize_5404 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_430
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_5406 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_leiosMaxRefScriptSizePerEB_5406 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_438
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_5408 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_5408 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_434
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.leiosVotingPeriod
d_leiosVotingPeriod_5410 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_leiosVotingPeriod_5410 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosVotingPeriod_424
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.maxBlockExUnits
d_maxBlockExUnits_5412 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  AgdaAny
d_maxBlockExUnits_5412 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_414
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.maxBlockSize
d_maxBlockSize_5414 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_maxBlockSize_5414 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_406
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.maxCollateralInputs
d_maxCollateralInputs_5416 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_maxCollateralInputs_5416 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_418
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.maxHeaderSize
d_maxHeaderSize_5418 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_maxHeaderSize_5418 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_410
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_5420 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_maxRefScriptSizePerBlock_5420 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_462
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_5422 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_maxRefScriptSizePerTx_5422 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_460
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.maxTxExUnits
d_maxTxExUnits_5424 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  AgdaAny
d_maxTxExUnits_5424 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_412
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.maxTxSize
d_maxTxSize_5426 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_maxTxSize_5426 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_408
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.maxValSize
d_maxValSize_5428 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_maxValSize_5428 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_416
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_5430 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_5430 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_458
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.minPoolCost
d_minPoolCost_5432 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_minPoolCost_5432 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_448
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.minUTxOValue
d_minUTxOValue_5434 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_minUTxOValue_5434 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_468
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.monetaryExpansion
d_monetaryExpansion_5436 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_5436 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_450
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.nopt
d_nopt_5438 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_nopt_5438 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_472
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.poolDeposit
d_poolDeposit_5440 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_poolDeposit_5440 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_446
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.poolThresholds
d_poolThresholds_5442 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_290
d_poolThresholds_5442 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_480
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.prices
d_prices_5444 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  AgdaAny
d_prices_5444 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_456
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.pv
d_pv_5446 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_5446 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_420
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_5448 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_5448 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_466
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.refScriptCostStride
d_refScriptCostStride_5450 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_5450 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_464
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.treasuryCut
d_treasuryCut_5452 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_5452 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_452
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsDiff.UpdateT
d_UpdateT_5456 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1826 ->
  ()
d_UpdateT_5456 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsDiff.applyUpdate
d_applyUpdate_5458 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1826 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314
d_applyUpdate_5458 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1842
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsDiff.ppWF?
d_ppWF'63'_5460 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1826 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_5460 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1850
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsDiff.ppdWellFormed
d_ppdWellFormed_5462 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1826 ->
  AgdaAny -> ()
d_ppdWellFormed_5462 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsDiff.updateGroups
d_updateGroups_5464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1826 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_234]
d_updateGroups_5464 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1844
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate._?↗_
d__'63''8599'__5468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__5468 ~v0 = du__'63''8599'__5468
du__'63''8599'__5468 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__5468 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du__'63''8599'__1572
      v1 v2
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate._∪ˡᶜᵐ_
d__'8746''737''7580''7504'__5470 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_692 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_692 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_692
d__'8746''737''7580''7504'__5470 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_mkLanguageCostModels_698
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'738'_570
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_482
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
                     (coe v0))))
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_696
                  (coe v1))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_696
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_5472 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_5472 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamsUpdate_1824
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_5474 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_5478 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314
d_applyPParamsUpdate_5478 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_applyPParamsUpdate_1626
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2244
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_5480 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_234]
d_modifiedUpdateGroups_5480 ~v0 = du_modifiedUpdateGroups_5480
du_modifiedUpdateGroups_5480 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_234]
du_modifiedUpdateGroups_5480
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiedUpdateGroups_1556
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_5482 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Bool
d_modifiesEconomicGroup_5482 ~v0 = du_modifiesEconomicGroup_5482
du_modifiesEconomicGroup_5482 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Bool
du_modifiesEconomicGroup_5482
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesEconomicGroup_1172
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_5484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Bool
d_modifiesGovernanceGroup_5484 ~v0
  = du_modifiesGovernanceGroup_5484
du_modifiesGovernanceGroup_5484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Bool
du_modifiesGovernanceGroup_5484
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesGovernanceGroup_1364
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_5486 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Bool
d_modifiesNetworkGroup_5486 ~v0 = du_modifiesNetworkGroup_5486
du_modifiesNetworkGroup_5486 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Bool
du_modifiesNetworkGroup_5486
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesNetworkGroup_1076
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_5488 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Bool
d_modifiesSecurityGroup_5488 ~v0 = du_modifiesSecurityGroup_5488
du_modifiesSecurityGroup_5488 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Bool
du_modifiesSecurityGroup_5488
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesSecurityGroup_1460
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_5490 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Bool
d_modifiesTechnicalGroup_5490 ~v0 = du_modifiesTechnicalGroup_5490
du_modifiesTechnicalGroup_5490 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Bool
du_modifiesTechnicalGroup_5490
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesTechnicalGroup_1268
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_5492 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  ()
d_paramsUpdateWellFormed_5492 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_5494 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_5494 v0
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
      (coe
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
                        MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_876
                        (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_878
                           (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_880
                              (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_882
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_924
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_916
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_946
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_964
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_954
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_956
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_958
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
            (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'MAll_30
            (coe
               (\ v1 ->
                  coe
                    MAlonzo.Code.Class.Decidable.Instances.d_ℚ'45'Dec'45''60'_44
                    MAlonzo.Code.Data.Rational.Base.d_'189'_182
                    (MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
                       (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_904
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.≡-update
d_'8801''45'update_5496 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_5496 ~v0 = du_'8801''45'update_5496
du_'8801''45'update_5496 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'update_5496 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_'8801''45'update_1586
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.Emax
d_Emax_5500 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe AgdaAny
d_Emax_5500 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_942
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.a
d_a_5502 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_a_5502 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_910 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.a0
d_a0_5504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_5504 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_940
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.b
d_b_5506 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_b_5506 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_912 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_5508 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_ccMaxTermLength_5508 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_964
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_5510 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_ccMinSize_5510 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_962
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_5512 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_coinsPerUTxOByte_5512 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_924
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_5514 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_collateralPercentage_5514 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_946
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_5516 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_692
d_costmdls_5516 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdls_948
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_5518 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe AgdaAny
d_drepActivity_5518 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_960
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_5520 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_drepDeposit_5520 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_958
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_5522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_246
d_drepThresholds_5522 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_950
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_5524 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_govActionDeposit_5524 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_956
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_5526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_govActionLifetime_5526 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_954
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_5528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_keyDeposit_5528 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_914
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.leiosCommitteeSize
d_leiosCommitteeSize_5530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_leiosCommitteeSize_5530 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosCommitteeSize_902
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.leiosDiffusionPeriod
d_leiosDiffusionPeriod_5532 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_leiosDiffusionPeriod_5532 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosDiffusionPeriod_896
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.leiosHeaderPeriod
d_leiosHeaderPeriod_5534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_leiosHeaderPeriod_5534 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosHeaderPeriod_892
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.leiosMaxEBExUnits
d_leiosMaxEBExUnits_5536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe AgdaAny
d_leiosMaxEBExUnits_5536 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_906
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.leiosMaxEBSize
d_leiosMaxEBSize_5538 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_leiosMaxEBSize_5538 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_898
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_5540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_leiosMaxEBTxsSize_5540 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_900
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_5542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_leiosMaxRefScriptSizePerEB_5542 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_908
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_5544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_5544 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_904
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.leiosVotingPeriod
d_leiosVotingPeriod_5546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_leiosVotingPeriod_5546 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosVotingPeriod_894
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_5548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe AgdaAny
d_maxBlockExUnits_5548 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_888
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_5550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_maxBlockSize_5550 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_876
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_5552 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_maxCollateralInputs_5552 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_884
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_5554 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_maxHeaderSize_5554 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_880
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_5556 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_5556 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_932
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_5558 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_maxRefScriptSizePerTx_5558 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_930
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_5560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe AgdaAny
d_maxTxExUnits_5560 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_886
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_5562 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_maxTxSize_5562 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_878
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_5564 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_maxValSize_5564 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_882
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_5566 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_5566 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_928
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.minPoolCost
d_minPoolCost_5568 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_minPoolCost_5568 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_918
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_5570 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_minUTxOValue_5570 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_938
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_5572 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_5572 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_920
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.nopt
d_nopt_5574 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_nopt_5574 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_944
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_5576 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe Integer
d_poolDeposit_5576 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_916
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_5578 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_290
d_poolThresholds_5578 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_952
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.prices
d_prices_5580 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe AgdaAny
d_prices_5580 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_926
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.pv
d_pv_5582 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_5582 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_890
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_5584 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_5584 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_936
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_5586 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_5586 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_934
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_5588 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_784 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_5588 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_922
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure._≥ᵉ_
d__'8805''7497'__5602 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__5602 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.CostModel
d_CostModel_5604 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  ()
d_CostModel_5604 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.T
d_T_5606 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  ()
d_T_5606 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.THash
d_THash_5608 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  ()
d_THash_5608 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Dataʰ
d_Data'688'_5610 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_5610 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_456
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Datum
d_Datum_5612 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  ()
d_Datum_5612 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_5614 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_5614 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_530
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_5616 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_5616 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_492
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_5618 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_5618 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_476
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_5620 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_5620 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_490
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_5622 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_5622 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_478
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-Language
d_DecEq'45'Language_5624 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_5624 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_482
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-T
d_DecEq'45'T_5626 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_5626 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_456
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-THash
d_DecEq'45'THash_5628 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_5628 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_456
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_5630 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_5630 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_472
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.ExUnits
d_ExUnits_5632 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  ()
d_ExUnits_5632 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_5634 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_5634 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_474
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.LangDepView
d_LangDepView_5636 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  ()
d_LangDepView_5636 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Language
d_Language_5638 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  ()
d_Language_5638 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.PlutusScript
d_PlutusScript_5640 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  ()
d_PlutusScript_5640 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.PlutusV1
d_PlutusV1_5642 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  AgdaAny
d_PlutusV1_5642 ~v0 = du_PlutusV1_5642
du_PlutusV1_5642 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  AgdaAny
du_PlutusV1_5642
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_498
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.PlutusV2
d_PlutusV2_5644 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  AgdaAny
d_PlutusV2_5644 ~v0 = du_PlutusV2_5644
du_PlutusV2_5644 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  AgdaAny
du_PlutusV2_5644
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_500
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.PlutusV3
d_PlutusV3_5646 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  AgdaAny
d_PlutusV3_5646 ~v0 = du_PlutusV3_5646
du_PlutusV3_5646 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  AgdaAny
du_PlutusV3_5646
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_502
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.PlutusV4
d_PlutusV4_5648 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  AgdaAny
d_PlutusV4_5648 ~v0 = du_PlutusV4_5648
du_PlutusV4_5648 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  AgdaAny
du_PlutusV4_5648
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_504
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Prices
d_Prices_5650 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  ()
d_Prices_5650 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Redeemer
d_Redeemer_5652 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  ()
d_Redeemer_5652 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Show-CostModel
d_Show'45'CostModel_5654 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_5654 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_480
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_5656 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_5656 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_494
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Show-Language
d_Show'45'Language_5658 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_5658 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_484
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Show-Prices
d_Show'45'Prices_5660 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_5660 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_496
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Show-THash
d_Show'45'THash_5662 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_5662 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_456
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.T-Hashable
d_T'45'Hashable_5664 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_5664 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_456
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.T-isHashable
d_T'45'isHashable_5666 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_5666 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_456
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.fromPlutusLanguage
d_fromPlutusLanguage_5668 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_5668 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_470
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.language
d_language_5670 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  AgdaAny -> AgdaAny
d_language_5670 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_532
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.validPlutusScript
d_validPlutusScript_5672 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_5672 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_5674 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_5674 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_488
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PoolThresholds.Q1
d_Q1_5678 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_290 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_5678 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q1_302
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PoolThresholds.Q2a
d_Q2a_5680 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_290 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_5680 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2a_304
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PoolThresholds.Q2b
d_Q2b_5682 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_290 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_5682 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2b_306
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PoolThresholds.Q4
d_Q4_5684 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_290 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_5684 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q4_308
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PoolThresholds.Q5
d_Q5_5686 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_290 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_5686 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q5_310
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.RewardAddress.net
d_net_5690 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_120 ->
  AgdaAny
d_net_5690 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_126 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.RewardAddress.stake
d_stake_5692 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_120 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_5692 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_128 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure._≥ᵉ_
d__'8805''7497'__5696 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__5696 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.CostModel
d_CostModel_5698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  ()
d_CostModel_5698 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.T
d_T_5700 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  ()
d_T_5700 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.THash
d_THash_5702 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  ()
d_THash_5702 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Dataʰ
d_Data'688'_5704 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_5704 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_456
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Datum
d_Datum_5706 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  ()
d_Datum_5706 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_5708 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_5708 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_358
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_562
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_5710 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_5710 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_530
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_5712 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_5712 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_492
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_5714 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_5714 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_476
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_5716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_5716 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_490
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_5718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_5718 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_478
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-Language
d_DecEq'45'Language_5720 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_5720 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_482
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_5722 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_5722 ~v0
  = du_DecEq'45'LanguageCostModels_5722
du_DecEq'45'LanguageCostModels_5722 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'LanguageCostModels_5722
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_DecEq'45'LanguageCostModels_700
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_5724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_5724 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_362
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_562
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-T
d_DecEq'45'T_5726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_5726 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_456
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-THash
d_DecEq'45'THash_5728 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_5728 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_456
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_5730 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_5730 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_472
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.ExUnits
d_ExUnits_5732 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  ()
d_ExUnits_5732 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_5734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_5734 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_360
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_562
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_5736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_5736 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_474
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Hashable-Script
d_Hashable'45'Script_5738 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_5738 ~v0 = du_Hashable'45'Script_5738
du_Hashable'45'Script_5738 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_Hashable'45'Script_5738
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_664
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.LangDepView
d_LangDepView_5740 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  ()
d_LangDepView_5740 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Language
d_Language_5742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  ()
d_Language_5742 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.LanguageCostModels
d_LanguageCostModels_5744 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.P1Script
d_P1Script_5748 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  ()
d_P1Script_5748 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.PlutusScript
d_PlutusScript_5750 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  ()
d_PlutusScript_5750 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.PlutusV1
d_PlutusV1_5752 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  AgdaAny
d_PlutusV1_5752 ~v0 v1 = du_PlutusV1_5752 v1
du_PlutusV1_5752 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  AgdaAny
du_PlutusV1_5752 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_498
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.PlutusV2
d_PlutusV2_5754 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  AgdaAny
d_PlutusV2_5754 ~v0 v1 = du_PlutusV2_5754 v1
du_PlutusV2_5754 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  AgdaAny
du_PlutusV2_5754 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_500
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.PlutusV3
d_PlutusV3_5756 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  AgdaAny
d_PlutusV3_5756 ~v0 v1 = du_PlutusV3_5756 v1
du_PlutusV3_5756 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  AgdaAny
du_PlutusV3_5756 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_502
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.PlutusV4
d_PlutusV4_5758 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  AgdaAny
d_PlutusV4_5758 ~v0 v1 = du_PlutusV4_5758 v1
du_PlutusV4_5758 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  AgdaAny
du_PlutusV4_5758 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_504
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Prices
d_Prices_5760 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  ()
d_Prices_5760 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Redeemer
d_Redeemer_5762 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  ()
d_Redeemer_5762 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Script
d_Script_5764 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  ()
d_Script_5764 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-CostModel
d_Show'45'CostModel_5766 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_5766 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_480
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_5768 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_5768 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_494
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-Language
d_Show'45'Language_5770 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_5770 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_484
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-LanguageCostModels
d_Show'45'LanguageCostModels_5772 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_5772 ~v0
  = du_Show'45'LanguageCostModels_5772
du_Show'45'LanguageCostModels_5772 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'LanguageCostModels_5772
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Show'45'LanguageCostModels_706
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-Prices
d_Show'45'Prices_5774 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_5774 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_496
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-THash
d_Show'45'THash_5776 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_5776 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_456
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.T-Hashable
d_T'45'Hashable_5778 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_5778 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_456
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.T-isHashable
d_T'45'isHashable_5780 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_5780 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_456
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.fromPlutusLanguage
d_fromPlutusLanguage_5782 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_5782 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_470
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_5784 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_5784 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_582
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.isNativeScript
d_isNativeScript_5786 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_5786 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.isP1Script
d_isP1Script_5788 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_5788 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.isP1Script?
d_isP1Script'63'_5790 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_5790 ~v0 = du_isP1Script'63'_5790
du_isP1Script'63'_5790 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_5790 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP1Script'63'_670
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.isP2Script
d_isP2Script_5792 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_5792 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.isP2Script?
d_isP2Script'63'_5794 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_5794 ~v0 = du_isP2Script'63'_5794
du_isP2Script'63'_5794 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_5794 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP2Script'63'_684
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.language
d_language_5796 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  AgdaAny -> AgdaAny
d_language_5796 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_532
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.languageCostModels
d_languageCostModels_5798 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_692 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_5798 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_696
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.p1s
d_p1s_5802 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_338
d_p1s_5802 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_562
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.ps
d_ps_5804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_376
d_ps_5804 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.toP1Script
d_toP1Script_5806 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_5806 ~v0 = du_toP1Script_5806
du_toP1Script_5806 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_5806 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_678
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.toP2Script
d_toP2Script_5808 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_5808 ~v0 = du_toP2Script_5808
du_toP2Script_5808 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_5808 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_690
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.validP1Script
d_validP1Script_5810 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_5810 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.validPlutusScript
d_validPlutusScript_5812 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_5812 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_5814 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_536 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_5814 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_488
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_584
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.LanguageCostModels.languageCostModels
d_languageCostModels_5818 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_692 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_5818 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_696
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra._∙_
d__'8729'__5822 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__5822 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra._≈_
d__'8776'__5824 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__5824 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra._≤ᵗ_
d__'8804''7511'__5826 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__5826 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_5828 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_5828 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_5830 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_5830 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_5832 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_5836 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_5840 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.Value
d_Value_5844 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_5844 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_5846 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_5846 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.addValue
d_addValue_5848 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_5848 ~v0 = du_addValue_5848
du_addValue_5848 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
du_addValue_5848
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.coin
d_coin_5850 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_5850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_5852 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_5852 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_5854 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_5854 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_5856 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_5856 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.inject
d_inject_5858 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_5858 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.monoid
d_monoid_5860 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_5860 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.policies
d_policies_5862 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [AgdaAny]
d_policies_5862 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.rawMonoid
d_rawMonoid_5864 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_5864 v0
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
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.size
d_size_5866 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_5866 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.sumᵛ
d_sum'7515'_5868 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_5868 ~v0 = du_sum'7515'_5868
du_sum'7515'_5868 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_5868
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.ε
d_ε_5870 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny
d_ε_5870 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_5874 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_5874 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_5876 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_5876 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_5878 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_5878 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_5880 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_5880 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_5882 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_5882 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_5886 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_5886 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_5888 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_5888 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_5890 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_5890 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_5892 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_5892 ~v0 = du_isMagmaIsomorphism_5892
du_isMagmaIsomorphism_5892 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_5892 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_5894 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_5894 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_5894 v2
du_isMagmaMonomorphism_5894 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_5894 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_5896 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_5896 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_5898 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_5898 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_5900 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_5900 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_5902 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_5902 ~v0 ~v1 v2 = du_isRelIsomorphism_5902 v2
du_isRelIsomorphism_5902 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_5902 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_5904 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_5904 ~v0 ~v1 v2 = du_isRelMonomorphism_5904 v2
du_isRelMonomorphism_5904 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_5904 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.surjective
d_surjective_5906 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_5906 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_5908 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_5908 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_5910 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_5910 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_5914 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_5914 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_5916 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_5916 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_5918 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_5918 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_5920 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_5920 ~v0 = du_isMagmaMonomorphism_5920
du_isMagmaMonomorphism_5920 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_5920 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_5922 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_5922 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_5924 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_5924 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_5926 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_5926 ~v0 ~v1 v2 = du_isRelMonomorphism_5926 v2
du_isRelMonomorphism_5926 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_5926 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_5928 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_5928 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_5930 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_5930 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Tx.isValid
d_isValid_5934 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  AgdaAny
d_isValid_5934 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_isValid_3898
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Tx.txAuxData
d_txAuxData_5936 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  Maybe AgdaAny
d_txAuxData_5936 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3900
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Tx.txBody
d_txBody_5938 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876
d_txBody_5938 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3892
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Tx.txSize
d_txSize_5940 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  Integer
d_txSize_5940 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3896
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Tx.txWitnesses
d_txWitnesses_5942 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3872 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3878
d_txWitnesses_5942 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3894
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.collateralInputs
d_collateralInputs_5946 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  AgdaAny
d_collateralInputs_5946 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3960
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.collateralReturn
d_collateralReturn_5948 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  AgdaAny
d_collateralReturn_5948 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralReturn_3962
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.currentTreasury
d_currentTreasury_5950 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  Maybe Integer
d_currentTreasury_5950 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3988
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.mint
d_mint_5952 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  AgdaAny
d_mint_5952 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_mint_3990
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.referenceInputs
d_referenceInputs_5954 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referenceInputs_5954 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3958
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.requiredSignerHashes
d_requiredSignerHashes_5956 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  [AgdaAny]
d_requiredSignerHashes_5956 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_requiredSignerHashes_4006
      v2
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_5958 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  Maybe AgdaAny
d_scriptIntegrityHash_5958 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptIntegrityHash_3992
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.totalCollateral
d_totalCollateral_5960 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  AgdaAny
d_totalCollateral_5960 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_totalCollateral_3964
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txADhash
d_txADhash_5962 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  Maybe AgdaAny
d_txADhash_5962 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3978
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txBalanceIntervals
d_txBalanceIntervals_5964 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txBalanceIntervals_5964 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_4002
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txCerts
d_txCerts_5966 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1478]
d_txCerts_5966 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3970
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txDirectDeposits
d_txDirectDeposits_5968 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txDirectDeposits_5968 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDirectDeposits_4000
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txDonation
d_txDonation_5970 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  Integer
d_txDonation_5970 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDonation_3980
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txFee
d_txFee_5972 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  AgdaAny
d_txFee_5972 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3972
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txGovProposals
d_txGovProposals_5974 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1084]
d_txGovProposals_5974 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3984
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txGovVotes
d_txGovVotes_5976 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1030]
d_txGovVotes_5976 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovVotes_3982
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txGuards
d_txGuards_5978 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_txGuards_5978 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3996
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txId
d_txId_5980 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  AgdaAny
d_txId_5980 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3968
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txIns
d_txIns_5982 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_5982 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3956
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txNetworkId
d_txNetworkId_5984 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  Maybe AgdaAny
d_txNetworkId_5984 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txNetworkId_3986
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txOuts
d_txOuts_5986 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_5986 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3966
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txRequiredTopLevelGuards
d_txRequiredTopLevelGuards_5988 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txRequiredTopLevelGuards_5988 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3998
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txStartingBalanceIntervals
d_txStartingBalanceIntervals_5990 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  AgdaAny
d_txStartingBalanceIntervals_5990 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txStartingBalanceIntervals_4004
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txSubTransactions
d_txSubTransactions_5992 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  AgdaAny
d_txSubTransactions_5992 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3994
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txVldt
d_txVldt_5994 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_5994 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3976
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txWithdrawals
d_txWithdrawals_5996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3876 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_5996 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWithdrawals_3974
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxWitnesses.scripts
d_scripts_6000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3878 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_6000 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scripts_4020
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxWitnesses.scriptsP1
d_scriptsP1_6002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_60 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3878 ->
  [AgdaAny]
d_scriptsP1_6002 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_scriptsP1_4026
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxWitnesses.txData
d_txData_6004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3878 ->
  [AgdaAny]
d_txData_6004 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txData_4022
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxWitnesses.txRedeemers
d_txRedeemers_6006 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3878 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txRedeemers_6006 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_4024
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxWitnesses.vKeySigs
d_vKeySigs_6008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3878 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vKeySigs_6008 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_4018
      (coe v0)
