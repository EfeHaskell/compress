module Main where

-- GZip compression
import qualified Codec.Compression.GZip as GZip

-- import qualified Data.ByteString as ByteString

-- Needed to convert String literals to ByteString
import Data.ByteString.Lazy.Char8(pack)

-- ByteString.writeFile
import qualified Data.ByteString.Lazy as ByteString


main :: IO ()
main = do
  putStrLn "hello world"

  let compressedContent = pack "foobar"
  ByteString.writeFile "foo.gz" $ GZip.compress compressedContent
