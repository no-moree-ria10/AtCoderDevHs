-- Tasty makes it easy to test your code. It is a test framework that can
-- combine many different types of tests into one suite. See its website for
-- help: <http://documentup.com/feuerbach/tasty>.
import qualified Test.Tasty
-- Hspec is one of the providers for Tasty. It provides a nice syntax for
-- writing tests. Its website has more info: <https://hspec.github.io>.
import Test.Tasty.Hspec


import qualified ContestMain as CM

main :: IO ()
main = do
    test <- testSpec "AtCoderDevHs" spec
    Test.Tasty.defaultMain test


spec :: Spec
spec = parallel $ do
    it "AnswerTest1" $ do
        (CM.getAnswer testInp1) `shouldBe` testAns1






testInp1 :: CM.Input
testInp1 = undefined

testAns1 :: CM.Answer
testAns1 = undefined
