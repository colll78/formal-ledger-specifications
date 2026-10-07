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

module MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.Convertible.Core
import qualified MAlonzo.Code.Class.Convertible.Foreign
import qualified MAlonzo.Code.Class.Convertible.Instances
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.HasHsType.Core
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Foreign.Haskell.Coerce
import qualified MAlonzo.Code.Foreign.Haskell.Either
import qualified MAlonzo.Code.Foreign.Haskell.Pair
import qualified MAlonzo.Code.Ledger.Core.Foreign.Address
import qualified MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base
import qualified MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Account
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

import GHC.Generics (Generic)
data Tag = Spend  | Mint  | Cert  | Reward  | Vote  | Propose  | Guard  | Receive 
  deriving (Show, Eq, Generic)
data NativeScript = RequireAllOf [MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.NativeScript] | RequireAnyOf [MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.NativeScript] | RequireMOf Integer [MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.NativeScript] | RequireSig Integer | RequireTimeStart Integer | RequireTimeExpire Integer | RequireGuard MAlonzo.Code.Ledger.Core.Foreign.Address.Credential
  deriving (Show, Eq, Generic)
data HSNativeScript = HSNativeScript {nativeScript :: MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.NativeScript, nsScriptHash :: Integer, nsScriptSize :: Integer}
  deriving (Show, Eq, Generic)
data HSPlutusScript = MkHSPlutusScript {psScriptHash :: Integer, psScriptSize :: Integer, psScriptLanguage :: MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.HSLanguage}
  deriving (Show, Eq, Generic)
data TxWitnesses = MkTxWitnesses {txwVKeySigs :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.HSVKey Integer), txwScripts :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSSet (Either MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.HSNativeScript MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.HSPlutusScript)), txwTxData :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSSet Integer), txwTxRedeemers :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap (MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.Tag, Integer) (Integer, (Integer, Integer)))}
  deriving (Show, Eq, Generic)
type Redeemer = Integer
type RedeemerPtr = (MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.Tag, Integer)
data TxBodySub = MkTxBodySub {txbsubTxIns :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSSet (Integer, Integer)), txbsubReferenceInputs :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSSet (Integer, Integer)), txbsubTxOuts :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap Integer ((Either MAlonzo.Code.Ledger.Core.Foreign.Address.BaseAddr MAlonzo.Code.Ledger.Core.Foreign.Address.BootstrapAddr), (Integer, ((Maybe (Either Integer Integer)), (Maybe (Either MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.HSNativeScript MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.HSPlutusScript)))))), txbsubTxId :: Integer, txbsubTxCerts :: [MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.DCert], txbsubTxWithdrawals :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Core.Foreign.Address.RewardAddress Integer), txbsubTxVldt :: ((Maybe Integer), (Maybe Integer)), txbsubTxADhash :: (Maybe Integer), txbsubTxDonation :: Integer, txbsubTxGovVotes :: [MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.GovVote], txbsubTxGovProposals :: [MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.GovProposal], txbsubTxNetworkId :: (Maybe Integer), txbsubCurrentTreasury :: (Maybe Integer), txbsubMint :: Integer, txbsubScriptIntegrityHash :: (Maybe Integer), txbsubTxGuards :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSSet MAlonzo.Code.Ledger.Core.Foreign.Address.Credential), txbsubTxRequiredTopLevelGuards :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSSet (MAlonzo.Code.Ledger.Core.Foreign.Address.Credential, (Maybe Integer))), txbsubTxDirectDeposits :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Core.Foreign.Address.RewardAddress Integer), txbsubTxBalanceIntervals :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Core.Foreign.Address.Credential MAlonzo.Code.Ledger.Dijkstra.Foreign.Account.BalanceInterval)}
  deriving (Show, Eq, Generic)
data TxSub = MkTxSub {txsubTxBody :: MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.TxBodySub, txsubTxWitnesses :: MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.TxWitnesses, txsubTxSize :: Integer, txsubTxAuxData :: (Maybe Integer)}
  deriving (Show, Eq, Generic)
data TxBodyTop = MkTxBodyTop {txbtopTxIns :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSSet (Integer, Integer)), txbtopReferenceInputs :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSSet (Integer, Integer)), txbtopCollateralInputs :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSSet (Integer, Integer)), txbtopCollateralReturn :: (Maybe ((Either MAlonzo.Code.Ledger.Core.Foreign.Address.BaseAddr MAlonzo.Code.Ledger.Core.Foreign.Address.BootstrapAddr), (Integer, ((Maybe (Either Integer Integer)), (Maybe (Either MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.HSNativeScript MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.HSPlutusScript)))))), txbtopTotalCollateral :: (Maybe Integer), txbtopTxOuts :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap Integer ((Either MAlonzo.Code.Ledger.Core.Foreign.Address.BaseAddr MAlonzo.Code.Ledger.Core.Foreign.Address.BootstrapAddr), (Integer, ((Maybe (Either Integer Integer)), (Maybe (Either MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.HSNativeScript MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.HSPlutusScript)))))), txbtopTxId :: Integer, txbtopTxCerts :: [MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.DCert], txbtopTxFee :: Integer, txbtopTxWithdrawals :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Core.Foreign.Address.RewardAddress Integer), txbtopTxVldt :: ((Maybe Integer), (Maybe Integer)), txbtopTxADhash :: (Maybe Integer), txbtopTxDonation :: Integer, txbtopTxGovVotes :: [MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.GovVote], txbtopTxGovProposals :: [MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.GovProposal], txbtopTxNetworkId :: (Maybe Integer), txbtopCurrentTreasury :: (Maybe Integer), txbtopMint :: Integer, txbtopScriptIntegrityHash :: (Maybe Integer), txbtopTxSubTransactions :: [MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.TxSub], txbtopTxRequiredTopLevelGuards :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSSet (MAlonzo.Code.Ledger.Core.Foreign.Address.Credential, (Maybe Integer))), txbtopTxGuards :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSSet MAlonzo.Code.Ledger.Core.Foreign.Address.Credential), txbtopTxDirectDeposits :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Core.Foreign.Address.RewardAddress Integer), txbtopTxBalanceIntervals :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Core.Foreign.Address.Credential MAlonzo.Code.Ledger.Dijkstra.Foreign.Account.BalanceInterval), txbtopTxStartingBalanceIntervals :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Core.Foreign.Address.Credential MAlonzo.Code.Ledger.Dijkstra.Foreign.Account.BalanceInterval)}
  deriving (Show, Eq, Generic)
data TxTop = MkTxTop {txtopTxBody :: MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.TxBodyTop, txtopTxWitnesses :: MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.TxWitnesses, txtopTxSize :: Integer, txtopIsValid :: Bool, txtopTxAuxData :: (Maybe Integer)}
  deriving (Show, Eq, Generic)
type TxId = Integer
type Ix = Integer
type TxIn = (Integer, Integer)
type ExUnits = (Integer, Integer)
type P1Script = MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.HSNativeScript
type P2Script = MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.HSPlutusScript
type Script = (Either MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.HSNativeScript MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.HSPlutusScript)
type Datum = Integer
type DataHash = Integer
type Value = Integer
type TxOut = ((Either MAlonzo.Code.Ledger.Core.Foreign.Address.BaseAddr MAlonzo.Code.Ledger.Core.Foreign.Address.BootstrapAddr), (Integer, ((Maybe (Either Integer Integer)), (Maybe (Either MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.HSNativeScript MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.HSPlutusScript)))))
type ScriptHash = Integer
type AuxiliaryData = Integer
type Withdrawals = (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Core.Foreign.Address.RewardAddress Integer)
-- Ledger.Dijkstra.Foreign.Transaction.HsTy-Tag
d_HsTy'45'Tag_8 :: MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'Tag_8 = erased
-- Ledger.Dijkstra.Foreign.Transaction.Conv-Tag
d_Conv'45'Tag_10 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'Tag_10
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Spend_42
                -> coe C_Spend_23
              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Mint_44
                -> coe C_Mint_25
              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Cert_46
                -> coe C_Cert_27
              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Reward_48
                -> coe C_Reward_29
              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Vote_50
                -> coe C_Vote_31
              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Propose_52
                -> coe C_Propose_33
              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Guard_54
                -> coe C_Guard_35
              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Receive_56
                -> coe C_Receive_37
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_Spend_23
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Spend_42
              C_Mint_25
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Mint_44
              C_Cert_27
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Cert_46
              C_Reward_29
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Reward_48
              C_Vote_31
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Vote_50
              C_Propose_33
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Propose_52
              C_Guard_35
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Guard_54
              C_Receive_37
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Receive_56
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.Transaction.HsTy-NativeScript
d_HsTy'45'NativeScript_12 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'NativeScript_12 = erased
-- Ledger.Dijkstra.Foreign.Transaction.Conv-NativeScript
d_Conv'45'NativeScript_14 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'NativeScript_14 = coe d_'46'extendedlambda_1313
-- Ledger.Dijkstra.Foreign.Transaction.HsTy-HSNativeScript
d_HsTy'45'HSNativeScript_16 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'HSNativeScript_16 = erased
-- Ledger.Dijkstra.Foreign.Transaction.Conv-HSNativeScript
d_Conv'45'HSNativeScript_18 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'HSNativeScript_18
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.C_constructor_350 v1 v2 v3
                -> coe
                     C_HSNativeScript_2893
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                        d_'46'extendedlambda_1313 v1)
                     (coe v2) (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_HSNativeScript_2893 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.C_constructor_350
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        d_'46'extendedlambda_1313 v1)
                     (coe v2) (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.Transaction.HsTy-HSPlutusScript
d_HsTy'45'HSPlutusScript_20 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'HSPlutusScript_20 = erased
-- Ledger.Dijkstra.Foreign.Transaction.Tag
d_Tag_21 = ()
type T_Tag_21 = Tag
pattern C_Spend_23 = Spend
pattern C_Mint_25 = Mint
pattern C_Cert_27 = Cert
pattern C_Reward_29 = Reward
pattern C_Vote_31 = Vote
pattern C_Propose_33 = Propose
pattern C_Guard_35 = Guard
pattern C_Receive_37 = Receive
check_Spend_23 :: T_Tag_21
check_Spend_23 = Spend
check_Mint_25 :: T_Tag_21
check_Mint_25 = Mint
check_Cert_27 :: T_Tag_21
check_Cert_27 = Cert
check_Reward_29 :: T_Tag_21
check_Reward_29 = Reward
check_Vote_31 :: T_Tag_21
check_Vote_31 = Vote
check_Propose_33 :: T_Tag_21
check_Propose_33 = Propose
check_Guard_35 :: T_Tag_21
check_Guard_35 = Guard
check_Receive_37 :: T_Tag_21
check_Receive_37 = Receive
cover_Tag_21 :: Tag -> ()
cover_Tag_21 x
  = case x of
      Spend -> ()
      Mint -> ()
      Cert -> ()
      Reward -> ()
      Vote -> ()
      Propose -> ()
      Guard -> ()
      Receive -> ()
-- Ledger.Dijkstra.Foreign.Transaction.Conv-HSPlutusScript
d_Conv'45'HSPlutusScript_22 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'HSPlutusScript_22
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.C_MkHSPlutusScript_378 v1 v2 v3
                -> coe
                     C_MkHSPlutusScript_3919 (coe v1) (coe v2)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV1_12
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV1_17
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV2_14
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV2_19
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV3_16
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV3_21
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV4_18
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV4_23
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV1_17
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV1_12
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV2_19
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV2_14
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV3_21
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV3_16
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV4_23
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV4_18
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkHSPlutusScript_3919 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.C_MkHSPlutusScript_378
                     (coe v1) (coe v2)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV1_12
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV1_17
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV2_14
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV2_19
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV3_16
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV3_21
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV4_18
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV4_23
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV1_17
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV1_12
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV2_19
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV2_14
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV3_21
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV3_16
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV4_23
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV4_18
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.Transaction.HsTy-TxWitnesses
d_HsTy'45'TxWitnesses_24 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'TxWitnesses_24 = erased
-- Ledger.Dijkstra.Foreign.Transaction.Conv-TxWitnesses
d_Conv'45'TxWitnesses_26 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'TxWitnesses_26
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3892 v1 v2 v3 v4
                -> coe
                     C_MkTxWitnesses_4939
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_Conv'45'HSVKey_40)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                 (coe d_Conv'45'HSNativeScript_18)
                                 (coe d_Conv'45'HSPlutusScript_22)))
                           v2))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                           v3))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe d_Conv'45'Tag_10)
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkTxWitnesses_4939 v1 v2 v3 v4
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3892
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_DecEq'45'HSVKey_22)
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (\ v5 ->
                              coe
                                MAlonzo.Code.Data.Product.Base.du_map_128
                                (coe
                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_Conv'45'HSVKey_40))
                                (coe
                                   (\ v6 ->
                                      MAlonzo.Code.Class.Convertible.Core.d_from_22
                                        (coe
                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                (coe
                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                   erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                   v5))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                              (coe v1))))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                 (coe d_Conv'45'HSNativeScript_18)
                                 (coe d_Conv'45'HSPlutusScript_22)))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66 (coe v2))))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66 (coe v3))))
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Tag_58
                           MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (\ v5 ->
                              coe
                                MAlonzo.Code.Data.Product.Base.du_map_128
                                (coe
                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                   (coe
                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                      (coe d_Conv'45'Tag_10)
                                      (coe
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                (coe
                                   (\ v6 ->
                                      MAlonzo.Code.Class.Convertible.Core.d_from_22
                                        (coe
                                           MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                           (coe
                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                           (coe
                                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                              (coe
                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                              (coe
                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))))
                                (coe
                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                   erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                   v5))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                              (coe v4))))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub
d_TxBodySub_28 = ()
data T_TxBodySub_28
  = C_constructor_106 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                      [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                      [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1318]
                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 (Maybe Integer) Integer
                      [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_940]
                      [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_994]
                      (Maybe Integer) (Maybe Integer) Integer (Maybe Integer)
                      [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
                      [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub.txIns
d_txIns_68 ::
  T_TxBodySub_28 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_68 v0
  = case coe v0 of
      C_constructor_106 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub.referenceInputs
d_referenceInputs_70 ::
  T_TxBodySub_28 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referenceInputs_70 v0
  = case coe v0 of
      C_constructor_106 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub.txOuts
d_txOuts_72 ::
  T_TxBodySub_28 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_72 v0
  = case coe v0 of
      C_constructor_106 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub.txId
d_txId_74 :: T_TxBodySub_28 -> Integer
d_txId_74 v0
  = case coe v0 of
      C_constructor_106 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub.txCerts
d_txCerts_76 ::
  T_TxBodySub_28 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1318]
d_txCerts_76 v0
  = case coe v0 of
      C_constructor_106 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub.txWithdrawals
d_txWithdrawals_78 ::
  T_TxBodySub_28 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_78 v0
  = case coe v0 of
      C_constructor_106 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub.txVldt
d_txVldt_80 ::
  T_TxBodySub_28 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_80 v0
  = case coe v0 of
      C_constructor_106 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub.txADhash
d_txADhash_82 :: T_TxBodySub_28 -> Maybe Integer
d_txADhash_82 v0
  = case coe v0 of
      C_constructor_106 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub.txDonation
d_txDonation_84 :: T_TxBodySub_28 -> Integer
d_txDonation_84 v0
  = case coe v0 of
      C_constructor_106 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub.txGovVotes
d_txGovVotes_86 ::
  T_TxBodySub_28 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_940]
d_txGovVotes_86 v0
  = case coe v0 of
      C_constructor_106 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub.txGovProposals
d_txGovProposals_88 ::
  T_TxBodySub_28 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_994]
d_txGovProposals_88 v0
  = case coe v0 of
      C_constructor_106 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub.txNetworkId
d_txNetworkId_90 :: T_TxBodySub_28 -> Maybe Integer
d_txNetworkId_90 v0
  = case coe v0 of
      C_constructor_106 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub.currentTreasury
d_currentTreasury_92 :: T_TxBodySub_28 -> Maybe Integer
d_currentTreasury_92 v0
  = case coe v0 of
      C_constructor_106 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub.mint
d_mint_94 :: T_TxBodySub_28 -> Integer
d_mint_94 v0
  = case coe v0 of
      C_constructor_106 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub.scriptIntegrityHash
d_scriptIntegrityHash_96 :: T_TxBodySub_28 -> Maybe Integer
d_scriptIntegrityHash_96 v0
  = case coe v0 of
      C_constructor_106 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub.txGuards
d_txGuards_98 ::
  T_TxBodySub_28 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_txGuards_98 v0
  = case coe v0 of
      C_constructor_106 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub.txRequiredTopLevelGuards
d_txRequiredTopLevelGuards_100 ::
  T_TxBodySub_28 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txRequiredTopLevelGuards_100 v0
  = case coe v0 of
      C_constructor_106 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub.txDirectDeposits
d_txDirectDeposits_102 ::
  T_TxBodySub_28 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txDirectDeposits_102 v0
  = case coe v0 of
      C_constructor_106 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub.txBalanceIntervals
d_txBalanceIntervals_104 ::
  T_TxBodySub_28 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txBalanceIntervals_104 v0
  = case coe v0 of
      C_constructor_106 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.convTxBodySub
d_convTxBodySub_108 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_convTxBodySub_108
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            coe
              C_constructor_106
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3820
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3822
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3830
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3832
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3834
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWithdrawals_3838
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3840
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3842
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDonation_3844
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovVotes_3846
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3848
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txNetworkId_3850
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3852
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_mint_3854
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptIntegrityHash_3856
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3860
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3862
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDirectDeposits_3864
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3866
                 (coe v0))))
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3872
              (coe d_txIns_68 (coe v0)) (coe d_referenceInputs_70 (coe v0))
              (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
              (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
              (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
              (coe d_txOuts_72 (coe v0)) (coe d_txId_74 (coe v0))
              (coe d_txCerts_76 (coe v0))
              (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
              (coe d_txWithdrawals_78 (coe v0)) (coe d_txVldt_80 (coe v0))
              (coe d_txADhash_82 (coe v0)) (coe d_txDonation_84 (coe v0))
              (coe d_txGovVotes_86 (coe v0)) (coe d_txGovProposals_88 (coe v0))
              (coe d_txNetworkId_90 (coe v0)) (coe d_currentTreasury_92 (coe v0))
              (coe d_mint_94 (coe v0)) (coe d_scriptIntegrityHash_96 (coe v0))
              (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
              (coe d_txGuards_98 (coe v0))
              (coe d_txRequiredTopLevelGuards_100 (coe v0))
              (coe d_txDirectDeposits_102 (coe v0))
              (coe d_txBalanceIntervals_104 (coe v0))
              (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
-- Ledger.Dijkstra.Foreign.Transaction._.currentTreasury
d_currentTreasury_176 :: T_TxBodySub_28 -> Maybe Integer
d_currentTreasury_176 v0 = coe d_currentTreasury_92 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction.NativeScript
d_NativeScript_177 = ()
type T_NativeScript_177 = NativeScript
pattern C_RequireAllOf_179 a0 = RequireAllOf a0
pattern C_RequireAnyOf_225 a0 = RequireAnyOf a0
pattern C_RequireMOf_271 a0 a1 = RequireMOf a0 a1
pattern C_RequireSig_331 a0 = RequireSig a0
pattern C_RequireTimeStart_357 a0 = RequireTimeStart a0
pattern C_RequireTimeExpire_395 a0 = RequireTimeExpire a0
pattern C_RequireGuard_433 a0 = RequireGuard a0
check_RequireAllOf_179 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_NativeScript_177 ->
  T_NativeScript_177
check_RequireAllOf_179 = RequireAllOf
check_RequireAnyOf_225 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_NativeScript_177 ->
  T_NativeScript_177
check_RequireAnyOf_225 = RequireAnyOf
check_RequireMOf_271 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_NativeScript_177 ->
  T_NativeScript_177
check_RequireMOf_271 = RequireMOf
check_RequireSig_331 :: Integer -> T_NativeScript_177
check_RequireSig_331 = RequireSig
check_RequireTimeStart_357 :: Integer -> T_NativeScript_177
check_RequireTimeStart_357 = RequireTimeStart
check_RequireTimeExpire_395 :: Integer -> T_NativeScript_177
check_RequireTimeExpire_395 = RequireTimeExpire
check_RequireGuard_433 ::
  MAlonzo.Code.Ledger.Core.Foreign.Address.T_Credential_619 ->
  T_NativeScript_177
check_RequireGuard_433 = RequireGuard
cover_NativeScript_177 :: NativeScript -> ()
cover_NativeScript_177 x
  = case x of
      RequireAllOf _ -> ()
      RequireAnyOf _ -> ()
      RequireMOf _ _ -> ()
      RequireSig _ -> ()
      RequireTimeStart _ -> ()
      RequireTimeExpire _ -> ()
      RequireGuard _ -> ()
-- Ledger.Dijkstra.Foreign.Transaction._.mint
d_mint_178 :: T_TxBodySub_28 -> Integer
d_mint_178 v0 = coe d_mint_94 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.referenceInputs
d_referenceInputs_180 ::
  T_TxBodySub_28 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referenceInputs_180 v0 = coe d_referenceInputs_70 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.scriptIntegrityHash
d_scriptIntegrityHash_182 :: T_TxBodySub_28 -> Maybe Integer
d_scriptIntegrityHash_182 v0
  = coe d_scriptIntegrityHash_96 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txADhash
d_txADhash_184 :: T_TxBodySub_28 -> Maybe Integer
d_txADhash_184 v0 = coe d_txADhash_82 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txBalanceIntervals
d_txBalanceIntervals_186 ::
  T_TxBodySub_28 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txBalanceIntervals_186 v0 = coe d_txBalanceIntervals_104 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txCerts
d_txCerts_188 ::
  T_TxBodySub_28 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1318]
d_txCerts_188 v0 = coe d_txCerts_76 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txDirectDeposits
d_txDirectDeposits_190 ::
  T_TxBodySub_28 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txDirectDeposits_190 v0 = coe d_txDirectDeposits_102 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txDonation
d_txDonation_192 :: T_TxBodySub_28 -> Integer
d_txDonation_192 v0 = coe d_txDonation_84 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txGovProposals
d_txGovProposals_194 ::
  T_TxBodySub_28 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_994]
d_txGovProposals_194 v0 = coe d_txGovProposals_88 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txGovVotes
d_txGovVotes_196 ::
  T_TxBodySub_28 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_940]
d_txGovVotes_196 v0 = coe d_txGovVotes_86 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txGuards
d_txGuards_198 ::
  T_TxBodySub_28 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_txGuards_198 v0 = coe d_txGuards_98 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txId
d_txId_200 :: T_TxBodySub_28 -> Integer
d_txId_200 v0 = coe d_txId_74 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txIns
d_txIns_202 ::
  T_TxBodySub_28 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_202 v0 = coe d_txIns_68 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txNetworkId
d_txNetworkId_204 :: T_TxBodySub_28 -> Maybe Integer
d_txNetworkId_204 v0 = coe d_txNetworkId_90 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txOuts
d_txOuts_206 ::
  T_TxBodySub_28 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_206 v0 = coe d_txOuts_72 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txRequiredTopLevelGuards
d_txRequiredTopLevelGuards_208 ::
  T_TxBodySub_28 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txRequiredTopLevelGuards_208 v0
  = coe d_txRequiredTopLevelGuards_100 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txVldt
d_txVldt_210 ::
  T_TxBodySub_28 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_210 v0 = coe d_txVldt_80 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txWithdrawals
d_txWithdrawals_212 ::
  T_TxBodySub_28 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_212 v0 = coe d_txWithdrawals_78 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction.HsTy-TxBodySub
d_HsTy'45'TxBodySub_214 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'TxBodySub_214 = erased
-- Ledger.Dijkstra.Foreign.Transaction.Conv-TxBodySub
d_Conv'45'TxBodySub_216 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'TxBodySub_216
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              C_constructor_106 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
                -> coe
                     C_MkTxBodySub_16043
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           v1))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           v2))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_236)
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_240))
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                (coe d_Conv'45'HSNativeScript_18)
                                                (coe d_Conv'45'HSPlutusScript_22))))))))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
                     (coe v4)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'DCert_22))
                        v5)
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_244)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))))
                     (coe
                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (coe
                              (\ v20 ->
                                 MAlonzo.Code.Class.Convertible.Core.d_to_20
                                   (coe
                                      MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                      (coe
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                           (coe v7)))
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v8)
                     (coe v9)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'GovVote_120))
                        v10)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovProposal_284))
                        v11)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v12)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v13)
                     (coe v14)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v15)
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_232))
                           v16))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_232)
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                           v17))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_244)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v18))))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_232)
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Foreign.Account.d_Conv'45'BalanceInterval_14)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v19))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkTxBodySub_16043 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
                -> coe
                     C_constructor_106
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66 (coe v1))))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66 (coe v2))))
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (\ v20 ->
                              coe
                                MAlonzo.Code.Data.Product.Base.du_map_128
                                (coe
                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                   (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                (coe
                                   (\ v21 ->
                                      MAlonzo.Code.Class.Convertible.Core.d_from_22
                                        (coe
                                           MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                           (coe
                                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                              (coe
                                                 MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_236)
                                              (coe
                                                 MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_240))
                                           (coe
                                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                              (coe
                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                              (coe
                                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                 (coe
                                                    MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                    (coe
                                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                       (coe
                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                 (coe
                                                    MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                    (coe
                                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                       (coe d_Conv'45'HSNativeScript_18)
                                                       (coe d_Conv'45'HSPlutusScript_22))))))))
                                (coe
                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                   erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                   v20))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                              (coe v3))))
                     (coe v4)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'DCert_22))
                        v5)
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (let v20
                               = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                         coe
                           (let v21
                                  = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
                                      (coe v20) in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_374
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1378
                                       (coe v21)))
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1380
                                          (coe v21))))
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1380
                                       (coe v21))))))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (\ v20 ->
                              coe
                                MAlonzo.Code.Data.Product.Base.du_map_128
                                (coe
                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_244))
                                (coe
                                   (\ v21 ->
                                      MAlonzo.Code.Class.Convertible.Core.d_from_22
                                        (coe
                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                (coe
                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                   erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                   v20))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                              (coe v6))))
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map_128
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                        (coe
                           (\ v20 ->
                              MAlonzo.Code.Class.Convertible.Core.d_from_22
                                (coe
                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                   (coe
                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v7))
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v8)
                     (coe v9)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'GovVote_120))
                        v10)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovProposal_284))
                        v11)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v12)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v13)
                     (coe v14)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v15)
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_232))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                              (coe v16))))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_232)
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                              (coe v17))))
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (let v20
                               = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                         coe
                           (let v21
                                  = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
                                      (coe v20) in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_374
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1378
                                       (coe v21)))
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1380
                                          (coe v21))))
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1380
                                       (coe v21))))))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (\ v20 ->
                              coe
                                MAlonzo.Code.Data.Product.Base.du_map_128
                                (coe
                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_244))
                                (coe
                                   (\ v21 ->
                                      MAlonzo.Code.Class.Convertible.Core.d_from_22
                                        (coe
                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                (coe
                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                   erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                   v20))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                              (coe v18))))
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (let v20
                               = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                         coe
                           (let v21
                                  = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
                                      (coe v20) in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_316
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1380
                                          (coe v21))))
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1380
                                       (coe v21))))))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (\ v20 ->
                              coe
                                MAlonzo.Code.Data.Product.Base.du_map_128
                                (coe
                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_232))
                                (coe
                                   (\ v21 ->
                                      MAlonzo.Code.Class.Convertible.Core.d_from_22
                                        (coe
                                           MAlonzo.Code.Ledger.Dijkstra.Foreign.Account.d_Conv'45'BalanceInterval_14)))
                                (coe
                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                   erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                   v20))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                              (coe v19))))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.Transaction.HsTy-TxBody-TxLevelSub
d_HsTy'45'TxBody'45'TxLevelSub_218 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'TxBody'45'TxLevelSub_218 = erased
-- Ledger.Dijkstra.Foreign.Transaction.Conv-TxBody-TxLevelSub
d_Conv'45'TxBody'45'TxLevelSub_220 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'TxBody'45'TxLevelSub_220
  = coe
      MAlonzo.Code.Class.Convertible.Core.du__'10814'__76
      (coe d_convTxBodySub_108) (coe d_Conv'45'TxBodySub_216)
-- Ledger.Dijkstra.Foreign.Transaction.TxSub
d_TxSub_222 = ()
data T_TxSub_222
  = C_constructor_240 T_TxBodySub_28
                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3742
                      Integer (Maybe Integer)
-- Ledger.Dijkstra.Foreign.Transaction.TxSub.txBody
d_txBody_232 :: T_TxSub_222 -> T_TxBodySub_28
d_txBody_232 v0
  = case coe v0 of
      C_constructor_240 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxSub.txWitnesses
d_txWitnesses_234 ::
  T_TxSub_222 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3742
d_txWitnesses_234 v0
  = case coe v0 of
      C_constructor_240 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxSub.txSize
d_txSize_236 :: T_TxSub_222 -> Integer
d_txSize_236 v0
  = case coe v0 of
      C_constructor_240 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxSub.txAuxData
d_txAuxData_238 :: T_TxSub_222 -> Maybe Integer
d_txAuxData_238 v0
  = case coe v0 of
      C_constructor_240 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.convTxSub
d_convTxSub_242 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_convTxSub_242
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            coe
              C_constructor_240
              (coe
                 MAlonzo.Code.Class.Convertible.Core.d_to_20
                 (coe
                    MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                    (coe
                       (\ v1 ->
                          coe
                            C_constructor_106
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3820
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3822
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3830
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3832
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3834
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWithdrawals_3838
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3840
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3842
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDonation_3844
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovVotes_3846
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3848
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txNetworkId_3850
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3852
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_mint_3854
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptIntegrityHash_3856
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3860
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3862
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDirectDeposits_3864
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3866
                               (coe v1))))
                    (coe
                       (\ v1 ->
                          coe
                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3872
                            (coe d_txIns_68 (coe v1)) (coe d_referenceInputs_70 (coe v1))
                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                            (coe d_txOuts_72 (coe v1)) (coe d_txId_74 (coe v1))
                            (coe d_txCerts_76 (coe v1))
                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                            (coe d_txWithdrawals_78 (coe v1)) (coe d_txVldt_80 (coe v1))
                            (coe d_txADhash_82 (coe v1)) (coe d_txDonation_84 (coe v1))
                            (coe d_txGovVotes_86 (coe v1)) (coe d_txGovProposals_88 (coe v1))
                            (coe d_txNetworkId_90 (coe v1)) (coe d_currentTreasury_92 (coe v1))
                            (coe d_mint_94 (coe v1)) (coe d_scriptIntegrityHash_96 (coe v1))
                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                            (coe d_txGuards_98 (coe v1))
                            (coe d_txRequiredTopLevelGuards_100 (coe v1))
                            (coe d_txDirectDeposits_102 (coe v1))
                            (coe d_txBalanceIntervals_104 (coe v1))
                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3756
                    (coe v0)))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3758
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3760
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3764
                 (coe v0))))
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3766
              (coe
                 MAlonzo.Code.Class.Convertible.Core.d_from_22
                 (coe
                    MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                    (coe
                       (\ v1 ->
                          coe
                            C_constructor_106
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3820
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3822
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3830
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3832
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3834
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWithdrawals_3838
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3840
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3842
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDonation_3844
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovVotes_3846
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3848
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txNetworkId_3850
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3852
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_mint_3854
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptIntegrityHash_3856
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3860
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3862
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDirectDeposits_3864
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3866
                               (coe v1))))
                    (coe
                       (\ v1 ->
                          coe
                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3872
                            (coe d_txIns_68 (coe v1)) (coe d_referenceInputs_70 (coe v1))
                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                            (coe d_txOuts_72 (coe v1)) (coe d_txId_74 (coe v1))
                            (coe d_txCerts_76 (coe v1))
                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                            (coe d_txWithdrawals_78 (coe v1)) (coe d_txVldt_80 (coe v1))
                            (coe d_txADhash_82 (coe v1)) (coe d_txDonation_84 (coe v1))
                            (coe d_txGovVotes_86 (coe v1)) (coe d_txGovProposals_88 (coe v1))
                            (coe d_txNetworkId_90 (coe v1)) (coe d_currentTreasury_92 (coe v1))
                            (coe d_mint_94 (coe v1)) (coe d_scriptIntegrityHash_96 (coe v1))
                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                            (coe d_txGuards_98 (coe v1))
                            (coe d_txRequiredTopLevelGuards_100 (coe v1))
                            (coe d_txDirectDeposits_102 (coe v1))
                            (coe d_txBalanceIntervals_104 (coe v1))
                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                 (d_txBody_232 (coe v0)))
              (coe d_txWitnesses_234 (coe v0)) (coe d_txSize_236 (coe v0))
              (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
              (coe d_txAuxData_238 (coe v0))))
-- Ledger.Dijkstra.Foreign.Transaction._.txAuxData
d_txAuxData_264 :: T_TxSub_222 -> Maybe Integer
d_txAuxData_264 v0 = coe d_txAuxData_238 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txBody
d_txBody_266 :: T_TxSub_222 -> T_TxBodySub_28
d_txBody_266 v0 = coe d_txBody_232 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txSize
d_txSize_268 :: T_TxSub_222 -> Integer
d_txSize_268 v0 = coe d_txSize_236 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txWitnesses
d_txWitnesses_270 ::
  T_TxSub_222 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3742
d_txWitnesses_270 v0 = coe d_txWitnesses_234 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction.HsTy-TxSub
d_HsTy'45'TxSub_272 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'TxSub_272 = erased
-- Ledger.Dijkstra.Foreign.Transaction.Conv-TxSub
d_Conv'45'TxSub_274 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'TxSub_274
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              C_constructor_240 v1 v2 v3 v4
                -> coe
                     C_MkTxSub_113389
                     (coe
                        C_MkTxBodySub_16043
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (d_txIns_68 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (d_referenceInputs_70 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_236)
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_240))
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                   (coe d_Conv'45'HSNativeScript_18)
                                                   (coe d_Conv'45'HSPlutusScript_22))))))))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe d_txOuts_72 (coe v1)))))
                        (coe d_txId_74 (coe v1))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'DCert_22))
                           (d_txCerts_76 (coe v1)))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_244)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe d_txWithdrawals_78 (coe v1)))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Class.Convertible.Core.d_to_20
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (coe
                                 (\ v5 ->
                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                      (coe
                                         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                         (coe
                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                              (coe d_txVldt_80 (coe v1))))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                              (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                           (d_txADhash_82 (coe v1)))
                        (coe d_txDonation_84 (coe v1))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'GovVote_120))
                           (d_txGovVotes_86 (coe v1)))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovProposal_284))
                           (d_txGovProposals_88 (coe v1)))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                              (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                           (d_txNetworkId_90 (coe v1)))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                              (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                           (d_currentTreasury_92 (coe v1)))
                        (coe d_mint_94 (coe v1))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                              (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                           (d_scriptIntegrityHash_96 (coe v1)))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_232))
                              (d_txGuards_98 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_232)
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                              (d_txRequiredTopLevelGuards_100 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_244)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe d_txDirectDeposits_102 (coe v1)))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_232)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Foreign.Account.d_Conv'45'BalanceInterval_14)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe d_txBalanceIntervals_104 (coe v1))))))
                     (coe
                        C_MkTxWitnesses_4939
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_Conv'45'HSVKey_40)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3882
                                    (coe v2)))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                    (coe d_Conv'45'HSNativeScript_18)
                                    (coe d_Conv'45'HSPlutusScript_22)))
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scripts_3884
                                 (coe v2))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txData_3886
                                 (coe v2))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                       (coe d_Conv'45'Tag_10)
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3888
                                    (coe v2))))))
                     (coe v3)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkTxSub_113389 v1 v2 v3 v4
                -> coe
                     C_constructor_240
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   C_constructor_106 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
                                     -> coe
                                          C_MkTxBodySub_16043
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                v6))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                v7))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_236)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_240))
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                            (coe
                                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                  (coe
                                                                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                  (coe
                                                                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                     (coe
                                                                        d_Conv'45'HSNativeScript_18)
                                                                     (coe
                                                                        d_Conv'45'HSPlutusScript_22))))))))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v8))))
                                          (coe v9)
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'DCert_22))
                                             v10)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_244)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v11))))
                                          (coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_128
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (coe
                                                   (\ v25 ->
                                                      MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                        (coe
                                                           MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                           (coe
                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                (coe v12)))
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v13)
                                          (coe v14)
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'GovVote_120))
                                             v15)
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovProposal_284))
                                             v16)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v17)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v18)
                                          (coe v19)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v20)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_232))
                                                v21))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_232)
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                v22))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_244)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v23))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_232)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Foreign.Account.d_Conv'45'BalanceInterval_14)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v24))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   C_MkTxBodySub_16043 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
                                     -> coe
                                          C_constructor_106
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_fromList_456
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                                                   (coe v6))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_fromList_456
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                                                   (coe v7))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (\ v25 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                     (coe
                                                        (\ v26 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                (coe
                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_236)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_240))
                                                                (coe
                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                   (coe
                                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                      (coe
                                                                         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                         (coe
                                                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                      (coe
                                                                         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                         (coe
                                                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                            (coe
                                                                               d_Conv'45'HSNativeScript_18)
                                                                            (coe
                                                                               d_Conv'45'HSPlutusScript_22))))))))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v25))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v8))))
                                          (coe v9)
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'DCert_22))
                                             v10)
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (let v25
                                                    = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                              coe
                                                (let v26
                                                       = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
                                                           (coe v25) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_374
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1378
                                                            (coe v26)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1380
                                                               (coe v26))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1380
                                                            (coe v26))))))
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (\ v25 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_244))
                                                     (coe
                                                        (\ v26 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v25))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v11))))
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                             (coe
                                                (\ v25 ->
                                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                erased () erased
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                v12))
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v13)
                                          (coe v14)
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'GovVote_120))
                                             v15)
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovProposal_284))
                                             v16)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v17)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v18)
                                          (coe v19)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v20)
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_fromList_456
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_232))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                                                   (coe v21))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_fromList_456
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_232)
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                                                   (coe v22))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (let v25
                                                    = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                              coe
                                                (let v26
                                                       = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
                                                           (coe v25) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_374
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1378
                                                            (coe v26)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1380
                                                               (coe v26))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1380
                                                            (coe v26))))))
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (\ v25 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_244))
                                                     (coe
                                                        (\ v26 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v25))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v23))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (let v25
                                                    = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                              coe
                                                (let v26
                                                       = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
                                                           (coe v25) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_316
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1380
                                                               (coe v26))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1380
                                                            (coe v26))))))
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (\ v25 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_232))
                                                     (coe
                                                        (\ v26 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.Account.d_Conv'45'BalanceInterval_14)))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v25))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v24))))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3892 v6 v7 v8 v9
                                     -> coe
                                          C_MkTxWitnesses_4939
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_Conv'45'HSVKey_40)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v6))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                      (coe d_Conv'45'HSNativeScript_18)
                                                      (coe d_Conv'45'HSPlutusScript_22)))
                                                v7))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                v8))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                         (coe d_Conv'45'Tag_10)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v9))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   C_MkTxWitnesses_4939 v6 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3892
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_DecEq'45'HSVKey_22)
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (\ v10 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_Conv'45'HSVKey_40))
                                                     (coe
                                                        (\ v11 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v10))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v6))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_fromList_456
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                      (coe d_Conv'45'HSNativeScript_18)
                                                      (coe d_Conv'45'HSPlutusScript_22)))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                                                   (coe v7))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_fromList_456
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                                                   (coe v8))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                                erased () erased
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Tag_58
                                                MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (\ v10 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                           (coe d_Conv'45'Tag_10)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                     (coe
                                                        (\ v11 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                (coe
                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v10))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v9))))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
                     (coe v3)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.Transaction.HsTy-Tx-TxLevelSub
d_HsTy'45'Tx'45'TxLevelSub_276 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'Tx'45'TxLevelSub_276 = erased
-- Ledger.Dijkstra.Foreign.Transaction.Conv-Tx-TxLevelSub
d_Conv'45'Tx'45'TxLevelSub_278 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'Tx'45'TxLevelSub_278
  = coe
      MAlonzo.Code.Class.Convertible.Core.du__'10814'__76
      (coe d_convTxSub_242) (coe d_Conv'45'TxSub_274)
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop
d_TxBodyTop_280 = ()
data T_TxBodyTop_280
  = C_constructor_382 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                      [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                      [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                      (Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) (Maybe Integer)
                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                      [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1318]
                      Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 (Maybe Integer) Integer
                      [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_940]
                      [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_994]
                      (Maybe Integer) (Maybe Integer) Integer (Maybe Integer)
                      [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3736]
                      [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                      [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.txIns
d_txIns_332 ::
  T_TxBodyTop_280 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_332 v0
  = case coe v0 of
      C_constructor_382 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.referenceInputs
d_referenceInputs_334 ::
  T_TxBodyTop_280 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referenceInputs_334 v0
  = case coe v0 of
      C_constructor_382 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.collateralInputs
d_collateralInputs_336 ::
  T_TxBodyTop_280 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_336 v0
  = case coe v0 of
      C_constructor_382 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.collateralReturn
d_collateralReturn_338 ::
  T_TxBodyTop_280 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_collateralReturn_338 v0
  = case coe v0 of
      C_constructor_382 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.totalCollateral
d_totalCollateral_340 :: T_TxBodyTop_280 -> Maybe Integer
d_totalCollateral_340 v0
  = case coe v0 of
      C_constructor_382 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.txOuts
d_txOuts_342 ::
  T_TxBodyTop_280 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_342 v0
  = case coe v0 of
      C_constructor_382 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.txId
d_txId_344 :: T_TxBodyTop_280 -> Integer
d_txId_344 v0
  = case coe v0 of
      C_constructor_382 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.txCerts
d_txCerts_346 ::
  T_TxBodyTop_280 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1318]
d_txCerts_346 v0
  = case coe v0 of
      C_constructor_382 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.txFee
d_txFee_348 :: T_TxBodyTop_280 -> Integer
d_txFee_348 v0
  = case coe v0 of
      C_constructor_382 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.txWithdrawals
d_txWithdrawals_350 ::
  T_TxBodyTop_280 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_350 v0
  = case coe v0 of
      C_constructor_382 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.txVldt
d_txVldt_352 ::
  T_TxBodyTop_280 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_352 v0
  = case coe v0 of
      C_constructor_382 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.txADhash
d_txADhash_354 :: T_TxBodyTop_280 -> Maybe Integer
d_txADhash_354 v0
  = case coe v0 of
      C_constructor_382 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.txDonation
d_txDonation_356 :: T_TxBodyTop_280 -> Integer
d_txDonation_356 v0
  = case coe v0 of
      C_constructor_382 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.txGovVotes
d_txGovVotes_358 ::
  T_TxBodyTop_280 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_940]
d_txGovVotes_358 v0
  = case coe v0 of
      C_constructor_382 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.txGovProposals
d_txGovProposals_360 ::
  T_TxBodyTop_280 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_994]
d_txGovProposals_360 v0
  = case coe v0 of
      C_constructor_382 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.txNetworkId
d_txNetworkId_362 :: T_TxBodyTop_280 -> Maybe Integer
d_txNetworkId_362 v0
  = case coe v0 of
      C_constructor_382 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.currentTreasury
d_currentTreasury_364 :: T_TxBodyTop_280 -> Maybe Integer
d_currentTreasury_364 v0
  = case coe v0 of
      C_constructor_382 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.mint
d_mint_366 :: T_TxBodyTop_280 -> Integer
d_mint_366 v0
  = case coe v0 of
      C_constructor_382 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.scriptIntegrityHash
d_scriptIntegrityHash_368 :: T_TxBodyTop_280 -> Maybe Integer
d_scriptIntegrityHash_368 v0
  = case coe v0 of
      C_constructor_382 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.txSubTransactions
d_txSubTransactions_370 ::
  T_TxBodyTop_280 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3736]
d_txSubTransactions_370 v0
  = case coe v0 of
      C_constructor_382 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.txRequiredTopLevelGuards
d_txRequiredTopLevelGuards_372 ::
  T_TxBodyTop_280 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txRequiredTopLevelGuards_372 v0
  = case coe v0 of
      C_constructor_382 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.txGuards
d_txGuards_374 ::
  T_TxBodyTop_280 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_txGuards_374 v0
  = case coe v0 of
      C_constructor_382 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.txDirectDeposits
d_txDirectDeposits_376 ::
  T_TxBodyTop_280 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txDirectDeposits_376 v0
  = case coe v0 of
      C_constructor_382 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.txBalanceIntervals
d_txBalanceIntervals_378 ::
  T_TxBodyTop_280 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txBalanceIntervals_378 v0
  = case coe v0 of
      C_constructor_382 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.txStartingBalanceIntervals
d_txStartingBalanceIntervals_380 ::
  T_TxBodyTop_280 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txStartingBalanceIntervals_380 v0
  = case coe v0 of
      C_constructor_382 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.convTxBodyTop
d_convTxBodyTop_384 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_convTxBodyTop_384
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            coe
              C_constructor_382
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3820
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3822
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3824
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralReturn_3826
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_totalCollateral_3828
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3830
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3832
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3834
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3836
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWithdrawals_3838
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3840
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3842
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDonation_3844
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovVotes_3846
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3848
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txNetworkId_3850
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3852
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_mint_3854
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptIntegrityHash_3856
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3858
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3862
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3860
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDirectDeposits_3864
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3866
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txStartingBalanceIntervals_3868
                 (coe v0))))
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3872
              (coe d_txIns_332 (coe v0)) (coe d_referenceInputs_334 (coe v0))
              (coe d_collateralInputs_336 (coe v0))
              (coe d_collateralReturn_338 (coe v0))
              (coe d_totalCollateral_340 (coe v0)) (coe d_txOuts_342 (coe v0))
              (coe d_txId_344 (coe v0)) (coe d_txCerts_346 (coe v0))
              (coe d_txFee_348 (coe v0)) (coe d_txWithdrawals_350 (coe v0))
              (coe d_txVldt_352 (coe v0)) (coe d_txADhash_354 (coe v0))
              (coe d_txDonation_356 (coe v0)) (coe d_txGovVotes_358 (coe v0))
              (coe d_txGovProposals_360 (coe v0))
              (coe d_txNetworkId_362 (coe v0))
              (coe d_currentTreasury_364 (coe v0)) (coe d_mint_366 (coe v0))
              (coe d_scriptIntegrityHash_368 (coe v0))
              (coe d_txSubTransactions_370 (coe v0))
              (coe d_txGuards_374 (coe v0))
              (coe d_txRequiredTopLevelGuards_372 (coe v0))
              (coe d_txDirectDeposits_376 (coe v0))
              (coe d_txBalanceIntervals_378 (coe v0))
              (coe d_txStartingBalanceIntervals_380 (coe v0))))
-- Ledger.Dijkstra.Foreign.Transaction._.collateralInputs
d_collateralInputs_452 ::
  T_TxBodyTop_280 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_452 v0 = coe d_collateralInputs_336 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.collateralReturn
d_collateralReturn_454 ::
  T_TxBodyTop_280 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_collateralReturn_454 v0 = coe d_collateralReturn_338 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.currentTreasury
d_currentTreasury_456 :: T_TxBodyTop_280 -> Maybe Integer
d_currentTreasury_456 v0 = coe d_currentTreasury_364 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.mint
d_mint_458 :: T_TxBodyTop_280 -> Integer
d_mint_458 v0 = coe d_mint_366 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.referenceInputs
d_referenceInputs_460 ::
  T_TxBodyTop_280 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referenceInputs_460 v0 = coe d_referenceInputs_334 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.scriptIntegrityHash
d_scriptIntegrityHash_462 :: T_TxBodyTop_280 -> Maybe Integer
d_scriptIntegrityHash_462 v0
  = coe d_scriptIntegrityHash_368 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.totalCollateral
d_totalCollateral_464 :: T_TxBodyTop_280 -> Maybe Integer
d_totalCollateral_464 v0 = coe d_totalCollateral_340 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txADhash
d_txADhash_466 :: T_TxBodyTop_280 -> Maybe Integer
d_txADhash_466 v0 = coe d_txADhash_354 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txBalanceIntervals
d_txBalanceIntervals_468 ::
  T_TxBodyTop_280 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txBalanceIntervals_468 v0 = coe d_txBalanceIntervals_378 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txCerts
d_txCerts_470 ::
  T_TxBodyTop_280 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1318]
d_txCerts_470 v0 = coe d_txCerts_346 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txDirectDeposits
d_txDirectDeposits_472 ::
  T_TxBodyTop_280 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txDirectDeposits_472 v0 = coe d_txDirectDeposits_376 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txDonation
d_txDonation_474 :: T_TxBodyTop_280 -> Integer
d_txDonation_474 v0 = coe d_txDonation_356 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txFee
d_txFee_476 :: T_TxBodyTop_280 -> Integer
d_txFee_476 v0 = coe d_txFee_348 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txGovProposals
d_txGovProposals_478 ::
  T_TxBodyTop_280 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_994]
d_txGovProposals_478 v0 = coe d_txGovProposals_360 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txGovVotes
d_txGovVotes_480 ::
  T_TxBodyTop_280 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_940]
d_txGovVotes_480 v0 = coe d_txGovVotes_358 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txGuards
d_txGuards_482 ::
  T_TxBodyTop_280 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_txGuards_482 v0 = coe d_txGuards_374 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txId
d_txId_484 :: T_TxBodyTop_280 -> Integer
d_txId_484 v0 = coe d_txId_344 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txIns
d_txIns_486 ::
  T_TxBodyTop_280 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_486 v0 = coe d_txIns_332 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txNetworkId
d_txNetworkId_488 :: T_TxBodyTop_280 -> Maybe Integer
d_txNetworkId_488 v0 = coe d_txNetworkId_362 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txOuts
d_txOuts_490 ::
  T_TxBodyTop_280 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_490 v0 = coe d_txOuts_342 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txRequiredTopLevelGuards
d_txRequiredTopLevelGuards_492 ::
  T_TxBodyTop_280 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txRequiredTopLevelGuards_492 v0
  = coe d_txRequiredTopLevelGuards_372 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txStartingBalanceIntervals
d_txStartingBalanceIntervals_494 ::
  T_TxBodyTop_280 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txStartingBalanceIntervals_494 v0
  = coe d_txStartingBalanceIntervals_380 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txSubTransactions
d_txSubTransactions_496 ::
  T_TxBodyTop_280 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3736]
d_txSubTransactions_496 v0 = coe d_txSubTransactions_370 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txVldt
d_txVldt_498 ::
  T_TxBodyTop_280 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_498 v0 = coe d_txVldt_352 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txWithdrawals
d_txWithdrawals_500 ::
  T_TxBodyTop_280 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_500 v0 = coe d_txWithdrawals_350 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction.HsTy-TxBodyTop
d_HsTy'45'TxBodyTop_502 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'TxBodyTop_502 = erased
-- Ledger.Dijkstra.Foreign.Transaction.Conv-TxBodyTop
d_Conv'45'TxBodyTop_504 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'TxBodyTop_504
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              C_constructor_382 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
                -> coe
                     C_MkTxBodyTop_119633
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           v1))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           v2))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           v3))
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_236)
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_240))
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                          (coe d_Conv'45'HSNativeScript_18)
                                          (coe d_Conv'45'HSPlutusScript_22)))))))
                        v4)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v5)
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_236)
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_240))
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                (coe d_Conv'45'HSNativeScript_18)
                                                (coe d_Conv'45'HSPlutusScript_22))))))))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))))
                     (coe v7)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'DCert_22))
                        v8)
                     (coe v9)
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_244)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10))))
                     (coe
                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (coe
                              (\ v26 ->
                                 MAlonzo.Code.Class.Convertible.Core.d_to_20
                                   (coe
                                      MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                      (coe
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                           (coe v11)))
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v12)
                     (coe v13)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'GovVote_120))
                        v14)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovProposal_284))
                        v15)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v16)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v17)
                     (coe v18)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v19)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe d_Conv'45'Tx'45'TxLevelSub_278))
                        v20)
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_232)
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                           v21))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_232))
                           v22))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_244)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v23))))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_232)
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Foreign.Account.d_Conv'45'BalanceInterval_14)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v24))))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_232)
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Foreign.Account.d_Conv'45'BalanceInterval_14)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v25))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkTxBodyTop_119633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
                -> coe
                     C_constructor_382
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66 (coe v1))))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66 (coe v2))))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66 (coe v3))))
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_236)
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_240))
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                          (coe d_Conv'45'HSNativeScript_18)
                                          (coe d_Conv'45'HSPlutusScript_22)))))))
                        v4)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v5)
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (\ v26 ->
                              coe
                                MAlonzo.Code.Data.Product.Base.du_map_128
                                (coe
                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                   (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                (coe
                                   (\ v27 ->
                                      MAlonzo.Code.Class.Convertible.Core.d_from_22
                                        (coe
                                           MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                           (coe
                                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                              (coe
                                                 MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_236)
                                              (coe
                                                 MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_240))
                                           (coe
                                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                              (coe
                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                              (coe
                                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                 (coe
                                                    MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                    (coe
                                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                       (coe
                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                 (coe
                                                    MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                    (coe
                                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                       (coe d_Conv'45'HSNativeScript_18)
                                                       (coe d_Conv'45'HSPlutusScript_22))))))))
                                (coe
                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                   erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                   v26))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                              (coe v6))))
                     (coe v7)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'DCert_22))
                        v8)
                     (coe v9)
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (let v26
                               = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                         coe
                           (let v27
                                  = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
                                      (coe v26) in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_374
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1378
                                       (coe v27)))
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1380
                                          (coe v27))))
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1380
                                       (coe v27))))))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (\ v26 ->
                              coe
                                MAlonzo.Code.Data.Product.Base.du_map_128
                                (coe
                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_244))
                                (coe
                                   (\ v27 ->
                                      MAlonzo.Code.Class.Convertible.Core.d_from_22
                                        (coe
                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                (coe
                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                   erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                   v26))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                              (coe v10))))
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map_128
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                        (coe
                           (\ v26 ->
                              MAlonzo.Code.Class.Convertible.Core.d_from_22
                                (coe
                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                   (coe
                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v11))
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v12)
                     (coe v13)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'GovVote_120))
                        v14)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovProposal_284))
                        v15)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v16)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v17)
                     (coe v18)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v19)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe d_Conv'45'Tx'45'TxLevelSub_278))
                        v20)
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_232)
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                              (coe v21))))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_232))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                              (coe v22))))
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (let v26
                               = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                         coe
                           (let v27
                                  = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
                                      (coe v26) in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_374
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1378
                                       (coe v27)))
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1380
                                          (coe v27))))
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1380
                                       (coe v27))))))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (\ v26 ->
                              coe
                                MAlonzo.Code.Data.Product.Base.du_map_128
                                (coe
                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_244))
                                (coe
                                   (\ v27 ->
                                      MAlonzo.Code.Class.Convertible.Core.d_from_22
                                        (coe
                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                (coe
                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                   erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                   v26))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                              (coe v23))))
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (let v26
                               = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                         coe
                           (let v27
                                  = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
                                      (coe v26) in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_316
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1380
                                          (coe v27))))
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1380
                                       (coe v27))))))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (\ v26 ->
                              coe
                                MAlonzo.Code.Data.Product.Base.du_map_128
                                (coe
                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_232))
                                (coe
                                   (\ v27 ->
                                      MAlonzo.Code.Class.Convertible.Core.d_from_22
                                        (coe
                                           MAlonzo.Code.Ledger.Dijkstra.Foreign.Account.d_Conv'45'BalanceInterval_14)))
                                (coe
                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                   erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                   v26))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                              (coe v24))))
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (let v26
                               = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                         coe
                           (let v27
                                  = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
                                      (coe v26) in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_316
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1380
                                          (coe v27))))
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1380
                                       (coe v27))))))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (\ v26 ->
                              coe
                                MAlonzo.Code.Data.Product.Base.du_map_128
                                (coe
                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_232))
                                (coe
                                   (\ v27 ->
                                      MAlonzo.Code.Class.Convertible.Core.d_from_22
                                        (coe
                                           MAlonzo.Code.Ledger.Dijkstra.Foreign.Account.d_Conv'45'BalanceInterval_14)))
                                (coe
                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                   erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                   v26))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                              (coe v25))))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.Transaction.HsTy-TxBody-TxLevelTop
d_HsTy'45'TxBody'45'TxLevelTop_506 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'TxBody'45'TxLevelTop_506 = erased
-- Ledger.Dijkstra.Foreign.Transaction.Conv-TxBody-TxLevelTop
d_Conv'45'TxBody'45'TxLevelTop_508 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'TxBody'45'TxLevelTop_508
  = coe
      MAlonzo.Code.Class.Convertible.Core.du__'10814'__76
      (coe d_convTxBodyTop_384) (coe d_Conv'45'TxBodyTop_504)
-- Ledger.Dijkstra.Foreign.Transaction.TxTop
d_TxTop_510 = ()
data T_TxTop_510
  = C_constructor_532 T_TxBodyTop_280
                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3742
                      Integer Bool (Maybe Integer)
-- Ledger.Dijkstra.Foreign.Transaction.TxTop.txBody
d_txBody_522 :: T_TxTop_510 -> T_TxBodyTop_280
d_txBody_522 v0
  = case coe v0 of
      C_constructor_532 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxTop.txWitnesses
d_txWitnesses_524 ::
  T_TxTop_510 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3742
d_txWitnesses_524 v0
  = case coe v0 of
      C_constructor_532 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxTop.txSize
d_txSize_526 :: T_TxTop_510 -> Integer
d_txSize_526 v0
  = case coe v0 of
      C_constructor_532 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxTop.isValid
d_isValid_528 :: T_TxTop_510 -> Bool
d_isValid_528 v0
  = case coe v0 of
      C_constructor_532 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxTop.txAuxData
d_txAuxData_530 :: T_TxTop_510 -> Maybe Integer
d_txAuxData_530 v0
  = case coe v0 of
      C_constructor_532 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.convTxTop
d_convTxTop_534 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_convTxTop_534
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            coe
              C_constructor_532
              (coe
                 MAlonzo.Code.Class.Convertible.Core.d_to_20
                 (coe
                    MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                    (coe
                       (\ v1 ->
                          coe
                            C_constructor_382
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3820
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3822
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3824
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralReturn_3826
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_totalCollateral_3828
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3830
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3832
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3834
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3836
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWithdrawals_3838
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3840
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3842
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDonation_3844
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovVotes_3846
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3848
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txNetworkId_3850
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3852
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_mint_3854
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptIntegrityHash_3856
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3858
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3862
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3860
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDirectDeposits_3864
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3866
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txStartingBalanceIntervals_3868
                               (coe v1))))
                    (coe
                       (\ v1 ->
                          coe
                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3872
                            (coe d_txIns_332 (coe v1)) (coe d_referenceInputs_334 (coe v1))
                            (coe d_collateralInputs_336 (coe v1))
                            (coe d_collateralReturn_338 (coe v1))
                            (coe d_totalCollateral_340 (coe v1)) (coe d_txOuts_342 (coe v1))
                            (coe d_txId_344 (coe v1)) (coe d_txCerts_346 (coe v1))
                            (coe d_txFee_348 (coe v1)) (coe d_txWithdrawals_350 (coe v1))
                            (coe d_txVldt_352 (coe v1)) (coe d_txADhash_354 (coe v1))
                            (coe d_txDonation_356 (coe v1)) (coe d_txGovVotes_358 (coe v1))
                            (coe d_txGovProposals_360 (coe v1))
                            (coe d_txNetworkId_362 (coe v1))
                            (coe d_currentTreasury_364 (coe v1)) (coe d_mint_366 (coe v1))
                            (coe d_scriptIntegrityHash_368 (coe v1))
                            (coe d_txSubTransactions_370 (coe v1))
                            (coe d_txGuards_374 (coe v1))
                            (coe d_txRequiredTopLevelGuards_372 (coe v1))
                            (coe d_txDirectDeposits_376 (coe v1))
                            (coe d_txBalanceIntervals_378 (coe v1))
                            (coe d_txStartingBalanceIntervals_380 (coe v1)))))
                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3756
                    (coe v0)))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3758
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3760
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_isValid_3762
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3764
                 (coe v0))))
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3766
              (coe
                 MAlonzo.Code.Class.Convertible.Core.d_from_22
                 (coe
                    MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                    (coe
                       (\ v1 ->
                          coe
                            C_constructor_382
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3820
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3822
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3824
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralReturn_3826
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_totalCollateral_3828
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3830
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3832
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3834
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3836
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWithdrawals_3838
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3840
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3842
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDonation_3844
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovVotes_3846
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3848
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txNetworkId_3850
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3852
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_mint_3854
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptIntegrityHash_3856
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3858
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3862
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3860
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDirectDeposits_3864
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3866
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txStartingBalanceIntervals_3868
                               (coe v1))))
                    (coe
                       (\ v1 ->
                          coe
                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3872
                            (coe d_txIns_332 (coe v1)) (coe d_referenceInputs_334 (coe v1))
                            (coe d_collateralInputs_336 (coe v1))
                            (coe d_collateralReturn_338 (coe v1))
                            (coe d_totalCollateral_340 (coe v1)) (coe d_txOuts_342 (coe v1))
                            (coe d_txId_344 (coe v1)) (coe d_txCerts_346 (coe v1))
                            (coe d_txFee_348 (coe v1)) (coe d_txWithdrawals_350 (coe v1))
                            (coe d_txVldt_352 (coe v1)) (coe d_txADhash_354 (coe v1))
                            (coe d_txDonation_356 (coe v1)) (coe d_txGovVotes_358 (coe v1))
                            (coe d_txGovProposals_360 (coe v1))
                            (coe d_txNetworkId_362 (coe v1))
                            (coe d_currentTreasury_364 (coe v1)) (coe d_mint_366 (coe v1))
                            (coe d_scriptIntegrityHash_368 (coe v1))
                            (coe d_txSubTransactions_370 (coe v1))
                            (coe d_txGuards_374 (coe v1))
                            (coe d_txRequiredTopLevelGuards_372 (coe v1))
                            (coe d_txDirectDeposits_376 (coe v1))
                            (coe d_txBalanceIntervals_378 (coe v1))
                            (coe d_txStartingBalanceIntervals_380 (coe v1)))))
                 (d_txBody_522 (coe v0)))
              (coe d_txWitnesses_524 (coe v0)) (coe d_txSize_526 (coe v0))
              (coe d_isValid_528 (coe v0)) (coe d_txAuxData_530 (coe v0))))
-- Ledger.Dijkstra.Foreign.Transaction._.isValid
d_isValid_556 :: T_TxTop_510 -> Bool
d_isValid_556 v0 = coe d_isValid_528 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txAuxData
d_txAuxData_558 :: T_TxTop_510 -> Maybe Integer
d_txAuxData_558 v0 = coe d_txAuxData_530 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txBody
d_txBody_560 :: T_TxTop_510 -> T_TxBodyTop_280
d_txBody_560 v0 = coe d_txBody_522 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txSize
d_txSize_562 :: T_TxTop_510 -> Integer
d_txSize_562 v0 = coe d_txSize_526 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txWitnesses
d_txWitnesses_564 ::
  T_TxTop_510 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3742
d_txWitnesses_564 v0 = coe d_txWitnesses_524 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction.HsTy-TxTop
d_HsTy'45'TxTop_566 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'TxTop_566 = erased
-- Ledger.Dijkstra.Foreign.Transaction.Conv-TxTop
d_Conv'45'TxTop_568 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'TxTop_568
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              C_constructor_532 v1 v2 v3 v4 v5
                -> coe
                     C_MkTxTop_292047
                     (coe
                        C_MkTxBodyTop_119633
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (d_txIns_332 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (d_referenceInputs_334 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (d_collateralInputs_336 (coe v1))))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                              (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_236)
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_240))
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                             (coe d_Conv'45'HSNativeScript_18)
                                             (coe d_Conv'45'HSPlutusScript_22)))))))
                           (d_collateralReturn_338 (coe v1)))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                              (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                           (d_totalCollateral_340 (coe v1)))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_236)
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_240))
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                   (coe d_Conv'45'HSNativeScript_18)
                                                   (coe d_Conv'45'HSPlutusScript_22))))))))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe d_txOuts_342 (coe v1)))))
                        (coe d_txId_344 (coe v1))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'DCert_22))
                           (d_txCerts_346 (coe v1)))
                        (coe d_txFee_348 (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_244)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe d_txWithdrawals_350 (coe v1)))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Class.Convertible.Core.d_to_20
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (coe
                                 (\ v6 ->
                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                      (coe
                                         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                         (coe
                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                              (coe d_txVldt_352 (coe v1))))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                              (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                           (d_txADhash_354 (coe v1)))
                        (coe d_txDonation_356 (coe v1))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'GovVote_120))
                           (d_txGovVotes_358 (coe v1)))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovProposal_284))
                           (d_txGovProposals_360 (coe v1)))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                              (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                           (d_txNetworkId_362 (coe v1)))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                              (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                           (d_currentTreasury_364 (coe v1)))
                        (coe d_mint_366 (coe v1))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                              (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                           (d_scriptIntegrityHash_368 (coe v1)))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe d_Conv'45'Tx'45'TxLevelSub_278))
                           (d_txSubTransactions_370 (coe v1)))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_232)
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                              (d_txRequiredTopLevelGuards_372 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_232))
                              (d_txGuards_374 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_244)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe d_txDirectDeposits_376 (coe v1)))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_232)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Foreign.Account.d_Conv'45'BalanceInterval_14)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe d_txBalanceIntervals_378 (coe v1)))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_232)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Foreign.Account.d_Conv'45'BalanceInterval_14)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe d_txStartingBalanceIntervals_380 (coe v1))))))
                     (coe
                        C_MkTxWitnesses_4939
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_Conv'45'HSVKey_40)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3882
                                    (coe v2)))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                    (coe d_Conv'45'HSNativeScript_18)
                                    (coe d_Conv'45'HSPlutusScript_22)))
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scripts_3884
                                 (coe v2))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txData_3886
                                 (coe v2))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                       (coe d_Conv'45'Tag_10)
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3888
                                    (coe v2))))))
                     (coe v3) (coe v4)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v5)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkTxTop_292047 v1 v2 v3 v4 v5
                -> coe
                     C_constructor_532
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   C_constructor_382 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
                                     -> coe
                                          C_MkTxBodyTop_119633
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                v7))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                v8))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                v9))
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_236)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_240))
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                            (coe
                                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                            (coe
                                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                               (coe d_Conv'45'HSNativeScript_18)
                                                               (coe
                                                                  d_Conv'45'HSPlutusScript_22)))))))
                                             v10)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v11)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_236)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_240))
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                            (coe
                                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                  (coe
                                                                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                  (coe
                                                                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                     (coe
                                                                        d_Conv'45'HSNativeScript_18)
                                                                     (coe
                                                                        d_Conv'45'HSPlutusScript_22))))))))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v12))))
                                          (coe v13)
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'DCert_22))
                                             v14)
                                          (coe v15)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_244)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v16))))
                                          (coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_128
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (coe
                                                   (\ v32 ->
                                                      MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                        (coe
                                                           MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                           (coe
                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                (coe v17)))
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v18)
                                          (coe v19)
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'GovVote_120))
                                             v20)
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovProposal_284))
                                             v21)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v22)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v23)
                                          (coe v24)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v25)
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe d_Conv'45'Tx'45'TxLevelSub_278))
                                             v26)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_232)
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                v27))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_232))
                                                v28))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_244)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v29))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_232)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Foreign.Account.d_Conv'45'BalanceInterval_14)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v30))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_232)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Foreign.Account.d_Conv'45'BalanceInterval_14)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v31))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   C_MkTxBodyTop_119633 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
                                     -> coe
                                          C_constructor_382
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_fromList_456
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                                                   (coe v7))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_fromList_456
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                                                   (coe v8))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_fromList_456
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                                                   (coe v9))))
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_236)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_240))
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                            (coe
                                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                            (coe
                                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                               (coe d_Conv'45'HSNativeScript_18)
                                                               (coe
                                                                  d_Conv'45'HSPlutusScript_22)))))))
                                             v10)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v11)
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (\ v32 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                     (coe
                                                        (\ v33 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                (coe
                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_236)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_240))
                                                                (coe
                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                   (coe
                                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                      (coe
                                                                         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                         (coe
                                                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                      (coe
                                                                         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                         (coe
                                                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                            (coe
                                                                               d_Conv'45'HSNativeScript_18)
                                                                            (coe
                                                                               d_Conv'45'HSPlutusScript_22))))))))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v32))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v12))))
                                          (coe v13)
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'DCert_22))
                                             v14)
                                          (coe v15)
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (let v32
                                                    = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                              coe
                                                (let v33
                                                       = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
                                                           (coe v32) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_374
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1378
                                                            (coe v33)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1380
                                                               (coe v33))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1380
                                                            (coe v33))))))
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (\ v32 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_244))
                                                     (coe
                                                        (\ v33 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v32))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v16))))
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                             (coe
                                                (\ v32 ->
                                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                erased () erased
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                v17))
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v18)
                                          (coe v19)
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'GovVote_120))
                                             v20)
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovProposal_284))
                                             v21)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v22)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v23)
                                          (coe v24)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v25)
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe d_Conv'45'Tx'45'TxLevelSub_278))
                                             v26)
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_fromList_456
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_232)
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                                                   (coe v27))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_fromList_456
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_232))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                                                   (coe v28))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (let v32
                                                    = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                              coe
                                                (let v33
                                                       = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
                                                           (coe v32) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_374
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1378
                                                            (coe v33)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1380
                                                               (coe v33))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1380
                                                            (coe v33))))))
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (\ v32 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_244))
                                                     (coe
                                                        (\ v33 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v32))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v29))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (let v32
                                                    = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                              coe
                                                (let v33
                                                       = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
                                                           (coe v32) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_316
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1380
                                                               (coe v33))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1380
                                                            (coe v33))))))
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (\ v32 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_232))
                                                     (coe
                                                        (\ v33 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.Account.d_Conv'45'BalanceInterval_14)))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v32))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v30))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (let v32
                                                    = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                              coe
                                                (let v33
                                                       = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
                                                           (coe v32) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_316
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1380
                                                               (coe v33))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1380
                                                            (coe v33))))))
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (\ v32 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_232))
                                                     (coe
                                                        (\ v33 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.Account.d_Conv'45'BalanceInterval_14)))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v32))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v31))))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3892 v7 v8 v9 v10
                                     -> coe
                                          C_MkTxWitnesses_4939
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_Conv'45'HSVKey_40)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v7))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                      (coe d_Conv'45'HSNativeScript_18)
                                                      (coe d_Conv'45'HSPlutusScript_22)))
                                                v8))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                v9))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                         (coe d_Conv'45'Tag_10)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v10))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   C_MkTxWitnesses_4939 v7 v8 v9 v10
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3892
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_DecEq'45'HSVKey_22)
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (\ v11 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_Conv'45'HSVKey_40))
                                                     (coe
                                                        (\ v12 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v11))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v7))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_fromList_456
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                      (coe d_Conv'45'HSNativeScript_18)
                                                      (coe d_Conv'45'HSPlutusScript_22)))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                                                   (coe v8))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_fromList_456
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                                                   (coe v9))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                                erased () erased
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Tag_58
                                                MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (\ v11 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                           (coe d_Conv'45'Tag_10)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                     (coe
                                                        (\ v12 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                (coe
                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v11))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v10))))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
                     (coe v3) (coe v4)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v5)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.Transaction.HsTy-Tx-TxLevelTop
d_HsTy'45'Tx'45'TxLevelTop_570 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'Tx'45'TxLevelTop_570 = erased
-- Ledger.Dijkstra.Foreign.Transaction.Conv-Tx-TxLevelTop
d_Conv'45'Tx'45'TxLevelTop_572 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'Tx'45'TxLevelTop_572
  = coe
      MAlonzo.Code.Class.Convertible.Core.du__'10814'__76
      (coe d_convTxTop_534) (coe d_Conv'45'TxTop_568)
-- Ledger.Dijkstra.Foreign.Transaction..extendedlambda
d_'46'extendedlambda_1313 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_'46'extendedlambda_1313
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.C_RequireAllOf_338 v1
                -> coe
                     C_RequireAllOf_179
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe d_Conv'45'NativeScript_14))
                        v1)
              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.C_RequireAnyOf_340 v1
                -> coe
                     C_RequireAnyOf_225
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe d_Conv'45'NativeScript_14))
                        v1)
              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.C_RequireMOf_342 v1 v2
                -> coe
                     C_RequireMOf_271 (coe v1)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe d_Conv'45'NativeScript_14))
                        v2)
              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.C_RequireSig_344 v1
                -> coe C_RequireSig_331 (coe v1)
              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.C_RequireTimeStart_346 v1
                -> coe C_RequireTimeStart_357 (coe v1)
              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.C_RequireTimeExpire_348 v1
                -> coe C_RequireTimeExpire_395 (coe v1)
              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.C_RequireGuard_350 v1
                -> coe
                     C_RequireGuard_433
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                           (coe
                              (\ v2 ->
                                 case coe v2 of
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v3
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Foreign.Address.C_KeyHashObj_621
                                          (coe v3)
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v3
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Foreign.Address.C_ScriptObj_635
                                          (coe v3)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v2 ->
                                 case coe v2 of
                                   MAlonzo.Code.Ledger.Core.Foreign.Address.C_KeyHashObj_621 v3
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                                          (coe v3)
                                   MAlonzo.Code.Ledger.Core.Foreign.Address.C_ScriptObj_635 v3
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                                          (coe v3)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_RequireAllOf_179 v1
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.C_RequireAllOf_338
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe d_Conv'45'NativeScript_14))
                        v1)
              C_RequireAnyOf_225 v1
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.C_RequireAnyOf_340
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe d_Conv'45'NativeScript_14))
                        v1)
              C_RequireMOf_271 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.C_RequireMOf_342
                     (coe v1)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe d_Conv'45'NativeScript_14))
                        v2)
              C_RequireSig_331 v1
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.C_RequireSig_344
                     (coe v1)
              C_RequireTimeStart_357 v1
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.C_RequireTimeStart_346
                     (coe v1)
              C_RequireTimeExpire_395 v1
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.C_RequireTimeExpire_348
                     (coe v1)
              C_RequireGuard_433 v1
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.C_RequireGuard_350
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                           (coe
                              (\ v2 ->
                                 case coe v2 of
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v3
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Foreign.Address.C_KeyHashObj_621
                                          (coe v3)
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v3
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Foreign.Address.C_ScriptObj_635
                                          (coe v3)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v2 ->
                                 case coe v2 of
                                   MAlonzo.Code.Ledger.Core.Foreign.Address.C_KeyHashObj_621 v3
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                                          (coe v3)
                                   MAlonzo.Code.Ledger.Core.Foreign.Address.C_ScriptObj_635 v3
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                                          (coe v3)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.Transaction.HSNativeScript
d_HSNativeScript_2891 = ()
type T_HSNativeScript_2891 = HSNativeScript
pattern C_HSNativeScript_2893 a0 a1 a2 = HSNativeScript a0 a1 a2
check_HSNativeScript_2893 ::
  T_NativeScript_177 -> Integer -> Integer -> T_HSNativeScript_2891
check_HSNativeScript_2893 = HSNativeScript
cover_HSNativeScript_2891 :: HSNativeScript -> ()
cover_HSNativeScript_2891 x
  = case x of
      HSNativeScript _ _ _ -> ()
-- Ledger.Dijkstra.Foreign.Transaction.HSPlutusScript
d_HSPlutusScript_3917 = ()
type T_HSPlutusScript_3917 = HSPlutusScript
pattern C_MkHSPlutusScript_3919 a0 a1 a2 = MkHSPlutusScript a0 a1 a2
check_MkHSPlutusScript_3919 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_15 ->
  T_HSPlutusScript_3917
check_MkHSPlutusScript_3919 = MkHSPlutusScript
cover_HSPlutusScript_3917 :: HSPlutusScript -> ()
cover_HSPlutusScript_3917 x
  = case x of
      MkHSPlutusScript _ _ _ -> ()
-- Ledger.Dijkstra.Foreign.Transaction.TxWitnesses
d_TxWitnesses_4937 = ()
type T_TxWitnesses_4937 = TxWitnesses
pattern C_MkTxWitnesses_4939 a0 a1 a2 a3 = MkTxWitnesses a0 a1 a2 a3
check_MkTxWitnesses_4939 ::
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_8381
    Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60
    (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
       () () T_HSNativeScript_2891 T_HSPlutusScript_3917) ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60 Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_Tag_21 Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () Integer Integer)) ->
  T_TxWitnesses_4937
check_MkTxWitnesses_4939 = MkTxWitnesses
cover_TxWitnesses_4937 :: TxWitnesses -> ()
cover_TxWitnesses_4937 x
  = case x of
      MkTxWitnesses _ _ _ _ -> ()
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub
d_TxBodySub_16041 = ()
type T_TxBodySub_16041 = TxBodySub
pattern C_MkTxBodySub_16043 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 = MkTxBodySub a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18
check_MkTxBodySub_16043 ::
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    Integer
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
          () () MAlonzo.Code.Ledger.Core.Foreign.Address.T_BaseAddr_1317
          MAlonzo.Code.Ledger.Core.Foreign.Address.T_BootstrapAddr_3373)
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () Integer
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             () ()
             (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                ()
                (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                   () () Integer Integer))
             (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                ()
                (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                   () () T_HSNativeScript_2891 T_HSPlutusScript_3917))))) ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    () MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.T_DCert_3773 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    MAlonzo.Code.Ledger.Core.Foreign.Address.T_RewardAddress_4557
    Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer)
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer) ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    () MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.T_GovVote_5417 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    () MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.T_GovProposal_1393 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60
    MAlonzo.Code.Ledger.Core.Foreign.Address.T_Credential_619 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Ledger.Core.Foreign.Address.T_Credential_619
       (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer)) ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    MAlonzo.Code.Ledger.Core.Foreign.Address.T_RewardAddress_4557
    Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    MAlonzo.Code.Ledger.Core.Foreign.Address.T_Credential_619
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Account.T_BalanceInterval_919 ->
  T_TxBodySub_16041
check_MkTxBodySub_16043 = MkTxBodySub
cover_TxBodySub_16041 :: TxBodySub -> ()
cover_TxBodySub_16041 x
  = case x of
      MkTxBodySub _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ -> ()
-- Ledger.Dijkstra.Foreign.Transaction.TxSub
d_TxSub_113387 = ()
type T_TxSub_113387 = TxSub
pattern C_MkTxSub_113389 a0 a1 a2 a3 = MkTxSub a0 a1 a2 a3
check_MkTxSub_113389 ::
  T_TxBodySub_16041 ->
  T_TxWitnesses_4937 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_TxSub_113387
check_MkTxSub_113389 = MkTxSub
cover_TxSub_113387 :: TxSub -> ()
cover_TxSub_113387 x
  = case x of
      MkTxSub _ _ _ _ -> ()
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop
d_TxBodyTop_119631 = ()
type T_TxBodyTop_119631 = TxBodyTop
pattern C_MkTxBodyTop_119633 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24 = MkTxBodyTop a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24
check_MkTxBodyTop_119633 ::
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
          () () MAlonzo.Code.Ledger.Core.Foreign.Address.T_BaseAddr_1317
          MAlonzo.Code.Ledger.Core.Foreign.Address.T_BootstrapAddr_3373)
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () Integer
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             () ()
             (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                ()
                (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                   () () Integer Integer))
             (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                ()
                (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                   () () T_HSNativeScript_2891 T_HSPlutusScript_3917))))) ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    Integer
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
          () () MAlonzo.Code.Ledger.Core.Foreign.Address.T_BaseAddr_1317
          MAlonzo.Code.Ledger.Core.Foreign.Address.T_BootstrapAddr_3373)
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () Integer
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             () ()
             (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                ()
                (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                   () () Integer Integer))
             (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                ()
                (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                   () () T_HSNativeScript_2891 T_HSPlutusScript_3917))))) ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    () MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.T_DCert_3773 ->
  Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    MAlonzo.Code.Ledger.Core.Foreign.Address.T_RewardAddress_4557
    Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer)
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer) ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    () MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.T_GovVote_5417 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    () MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.T_GovProposal_1393 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_TxSub_113387 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Ledger.Core.Foreign.Address.T_Credential_619
       (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer)) ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60
    MAlonzo.Code.Ledger.Core.Foreign.Address.T_Credential_619 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    MAlonzo.Code.Ledger.Core.Foreign.Address.T_RewardAddress_4557
    Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    MAlonzo.Code.Ledger.Core.Foreign.Address.T_Credential_619
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Account.T_BalanceInterval_919 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    MAlonzo.Code.Ledger.Core.Foreign.Address.T_Credential_619
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Account.T_BalanceInterval_919 ->
  T_TxBodyTop_119631
check_MkTxBodyTop_119633 = MkTxBodyTop
cover_TxBodyTop_119631 :: TxBodyTop -> ()
cover_TxBodyTop_119631 x
  = case x of
      MkTxBodyTop _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ -> ()
-- Ledger.Dijkstra.Foreign.Transaction.TxTop
d_TxTop_292045 = ()
type T_TxTop_292045 = TxTop
pattern C_MkTxTop_292047 a0 a1 a2 a3 a4 = MkTxTop a0 a1 a2 a3 a4
check_MkTxTop_292047 ::
  T_TxBodyTop_119631 ->
  T_TxWitnesses_4937 ->
  Integer ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_TxTop_292045
check_MkTxTop_292047 = MkTxTop
cover_TxTop_292045 :: TxTop -> ()
cover_TxTop_292045 x
  = case x of
      MkTxTop _ _ _ _ _ -> ()
