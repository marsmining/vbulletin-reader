module Main where

import Network.HTTP.Conduit
import qualified Data.ByteString.Lazy as L
import qualified Text.HTML.TagSoup as S

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

html :: String
html = "<html><body><div id='foo'>woot!</div></body></html>"

gg :: [S.Tag String]
gg = S.parseTags html

hh :: [S.Tag String] -> [S.Tag String]
hh = dropWhile (S.~/= "foo")
