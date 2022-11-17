{-# LANGUAGE LinearTypes #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE Safe #-}

module Linear where

(|>) :: a %i -> (a %i -> b) %j -> b
(|>) = flip (<|)
infixl 0 |>

(<|) :: (a %i -> b) %j -> a %i -> b
(<|) = identity
infixr 0 <|

(>>>) :: (a %i -> b) %i -> (b %i -> c) %j -> a %i -> c
(>>>) = flip (<<<)
infixl 9 >>>

(<<<) :: (b %i -> c) %j -> (a %i -> b) %i -> a %i -> c
(<<<) g f = \ x -> g (f x)
infixr 9 <<<

identity :: a %i -> a
identity x = x

flip :: (a %i -> b %j -> c) %k -> b %j -> a %i -> c
flip f y x = f x y
