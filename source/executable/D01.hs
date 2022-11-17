{-# LANGUAGE TypeApplications #-}

module D01 where

import qualified Linear

p1 :: IO ()
p1 = interact Linear.<|
  lines
  Linear.>>> fmap (read @Int Linear.>>> flip div 3 Linear.>>> subtract 2)
  Linear.>>> sum
  Linear.>>> show
