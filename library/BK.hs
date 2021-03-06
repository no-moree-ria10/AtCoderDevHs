-- extension section
{-# OPTIONS_GHC -O2 -funbox-strict-fields #-}
{-# LANGUAGE BangPatterns      #-}
{-# LANGUAGE CPP               #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TupleSections     #-}
 -- not supported extension
--{-# LANGUAGE Strict, StrictData #-}


module ContestMain where

-- @@@@@@@@@@@@@@@@@--
-- import section   --
-- @@@@@@@@@@@@@@@@@--
--    import A.B.C( function name )  ...
-- or import A.B.C 

--
import           Prelude hiding(
  getLine,
  getContents,
  lines,
  words
  )

-- standard library
import           Control.Monad.ST
import           Control.Applicative
import           Data.Char


-- bytestring
import qualified Data.ByteString.Char8       as B
import qualified Data.ByteString.Unsafe      as B


-- containers


-- deepseq


-- regex-posix


-- text
import           Data.Text.Lazy.IO as TIO
import           Data.Text.Lazy as T
import           Data.Text.Lazy.Read as TR

-- import Data.Text.IO as TIO
-- import Data.Text as T
-- import Data.Text.Read as TR



-- unordered-containers


-- vectors
import           Data.Vector.Unboxed as UV
import           Data.Vector.Unboxed.Mutable as MV


-- mtl


-- @@@@@@@@@@@@@@@@@--
-- main section     --
-- @@@@@@@@@@@@@@@@@--

main :: IO ()
main = do
  input <- getInput
  Prelude.putStr . show . getAnswer $ input 

-- main :: IO()
-- main = do
--   answer <- getInputandanser
--   putStr . show $ answer


-- @@@@@@@@@@@@@@@@@@@@@--
-- I/O DataType section --
-- @@@@@@@@@@@@@@@@@@@@@--
data Input = I (Int,[Int])
  deriving(Show)

data Answer = Yes | No
  deriving(Eq)

instance Show Answer where
  show = undefined


-- @@@@@@@@@@@@@@@@@--
-- answerSection    --
-- @@@@@@@@@@@@@@@@@--
getInput :: IO Input
getInput = undefined

getAnswer :: Input -> Answer 
getAnswer = undefined


getInputAndAnser :: IO Answer
getInputAndAnser = undefined


-- @@@@@@@@@@@@@@@@@@@@@@@@@@--
-- question unique section    --
-- @@@@@@@@@@@@@@@@@@@@@@@@@@--





-- @@@@@@@@@@@@@@@@@--
-- util section     --
-- @@@@@@@@@@@@@@@@@--

-- standard Input Function
gLine :: IO Text
gLine = getLine

gContents :: IO Text
gContents = getContents

-- intVectorFromline 5  ("1 2 3 4 5") -> vector <1,2,3,4,5> 
intVectorFromLine ::Int -> IO ( Vector Int )
intVectorFromLine n = UV.unfoldrN n (B.readInt.B.dropWhile isSpace) <$> B.getLine

pairFromLine :: IO (Int,Int)
pairFromLine = do
  v <- intVectorFromLine 2
  return ( v ! 0, v ! 1)

generatePairVectorFromLine :: Int -> IO ( Vector (Int, Int) )
generatePairVectorFromLine n = generateM n (const pairFromLine)
