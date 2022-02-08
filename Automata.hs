module Automata where

import Data.Set

class Automata a where
    runAutomata :: a -> [Char] -> Bool

class State a where
    label :: a -> String

data DFT a = DFT { states :: [a]
                 , alphabet :: [Char]
                 , transFunc :: a -> Char -> a
                 , startState :: a
                 , acceptStates :: [a]
                 }

data NFT a = NFT { states :: [a]
                 , alphabet :: [Char]
                 , transFunc :: a -> Char -> [a]
                 , startState :: a
                 , acceptStates :: [a]
                 }

instance State Int where
  label n = "State" ++ show n

instance (Eq a, State a) => Automata (DFT a) where
  runAutomata dft "" = elem (startState dft) (acceptStates dft)
  runAutomata dft (s:str)
    | not $ elem s _alphabet = False
    | otherwise = runAutomata (dft { startState = _transFunc _startState s }) str
      where
        _alphabet = alphabet dft
        _transFunc = transFunc dft
        _startState = startState dft

instance (Eq a, State a) => Automata (NFT a) where
  runAutomata nft str = _runAutomata [nft] str
    where
      _runAutomata nfts "" = any (\nft -> elem (startState nft) (acceptStates nft) nfts
      _runAutomata nfts (s:str) | not $ elem s _alphabet = False
                                | otherwise = undefined
      _alphabet = alphabet dft
      _transFunc = transFunc dft
      _startState = startState dft



sequenceDft :: DFT Int
sequenceDft = DFT { states = [1..3]
                  , alphabet = ['0','1']
                  , transFunc = tf
                  , startState = 1
                  , acceptStates = [3] }
                    where
                      tf 1 '0' = 1
                      tf 2 '0' = 1
                      tf 3 '0' = 1
                      tf 1 '1' = 2
                      tf 2 '1' = 3
                      tf 3 '1' = 3
