{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DeriveGeneric #-}
module MyLib where

import Dhall.TH

Dhall.TH.makeHaskellTypes
  [ SingleConstructor "MyType" "MkMyType" "./src/MyType.dhall"]
