-- extension section

-- not supported extension
--{-# LANGUAGE Strict, StrictData #-}


module ContestMain where

-- @@@@@@@@@@@@@@@@@--
-- import section   --
-- @@@@@@@@@@@@@@@@@--
--    import A.B.C( function name )  ...
-- or import A.B.C 

--
import Prelude hiding(
  getLine,
  getContents,
  lines,
  words
  )


-- bytestring


-- containers


-- deepseq


-- regex-posix


-- text
import Data.Text.IO as TIO
import Data.Text as T
-- unordered-containers


-- vectors


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

