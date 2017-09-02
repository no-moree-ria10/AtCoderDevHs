-- extension section



module ContestMain where

-- @@@@@@@@@@@@@@@@@--
-- import section   --
-- @@@@@@@@@@@@@@@@@--
--    import A.B.C( function name )  ...
-- or import A.B.C 



-- bytestring


-- containers


-- deepseq


-- regex-posix


-- text


-- unordered-containers


-- vectors



-- @@@@@@@@@@@@@@@@@--
-- main section     --
-- @@@@@@@@@@@@@@@@@--


main :: IO ()
main = do
  input <- getInput
  putStr . show . getAnswer $ input 

-- main :: IO()
-- main = do
--   putStr $ show getInputAndAnser


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



-- @@@@@@@@@@@@@@@@@@@@@@@@@@--
-- question uniqu section    --
-- ( need to self write)     --
-- @@@@@@@@@@@@@@@@@@@@@@@@@@--





-- @@@@@@@@@@@@@@@@@--
-- util section     --
-- @@@@@@@@@@@@@@@@@--
