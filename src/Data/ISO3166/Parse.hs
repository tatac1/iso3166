module Data.ISO3166.Parse where


import qualified Data.HashMap.Strict as Map
import Data.ISO3166.Types(Country, countries, isoAlpha2)
import Data.Text(Text)

idx_a2  = foldr fld Map.empty countries 
  where
  fld c acc = Map.insert (isoAlpha2 c) c  acc  

parseAlpha2 :: Text -> Maybe Country
parseAlpha2 input = Map.lookup input idx_a2 
