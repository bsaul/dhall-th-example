{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE StandaloneDeriving #-}
module MyLib where

import Dhall.TH

Dhall.TH.makeHaskellTypes
  [ SingleConstructor "MyType" "MkMyType" "./src/MyType.dhall"]

deriving instance Show MyType
