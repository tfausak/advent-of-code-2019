import qualified D01
import qualified System.Environment as Environment

main :: IO ()
main = do
  arguments <- Environment.getArgs
  case arguments of
    ["1", "1"] -> D01.p1
    _ -> fail $ "unexpected arguments: " <> show arguments
