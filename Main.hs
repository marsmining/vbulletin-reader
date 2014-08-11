module Main where

import Network.HTTP.Conduit
import qualified Data.ByteString.Lazy as L

forumUrl :: String
forumUrl = "http://forums.sherdog.com/forums/f2/"

get :: IO ()
get = simpleHttp forumUrl >>= L.writeFile "foo.txt"

main :: IO ()
main = do
     putStrLn "fetching.."
     get
     putStrLn "done"
     ff

ff :: IO ()
ff = putStrLn "a" >> putStrLn "b"
