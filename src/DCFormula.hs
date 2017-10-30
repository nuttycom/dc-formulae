{-|
Module      : DCFormula
Description : Base types and evaluation primitives for SketchUp dynamic components formulae.

-}
module DCFormula
    ( DCExpr(..)
    ) where

import DCFormula.Prelude
import Text.Parser.Token (double)

DCExpr a 
  = DCNum Double
  | DCArr [a]
  | DCStr Text
  | DCRef   { referent :: Text, attribute :: Text, copy :: Maybe Int }
  | DCUnOp  { op :: Text, arg :: a }
  | DCBinOp { left :: a, op :: Text, right :: a }
  | DCCall  { fname :: Text , args :: [a] }

