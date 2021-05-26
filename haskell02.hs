-- Prática 02 de Haskell
-- Nome: Andriza Campanhol

--01
verFebre :: Float -> Bool
verFebre temp = temp > 37.80

comFebre :: [Float] -> [Float]
comFebre templist = filter verFebre templist

--02
comFebre' :: [Float] -> [Float]
comFebre' templist = filter (\temp -> temp > 37.80) templist

--03
itemize :: [String] -> [String]
itemize strlist = map (\str -> "<li>" ++ str ++ "</li>") strlist

--04
bigCircles :: Float -> [Float] -> [Float]
bigCircles num radiuslist = filter (\radius -> pi * (radius^2) > num) radiuslist

--05
--snd -> returns the second item in a tuple (a,b) -> b
quarentena :: [(String,Float)] -> [(String,Float)]
quarentena tuple = filter (\list -> snd list > 37.80) tuple

--outra forma:
--quarentena2 :: [(String,Float)] -> [(String,Float)]
--quarentena2 list = filter (\(_,temp) -> temp > 37.80) list

--06
idadesEm :: [Int] -> Int -> [Int]
idadesEm list year = map (\ano -> year - ano) list

--07
changeNames :: [String] -> [String]
changeNames strlist = map (\str -> if head str == 'A' then "Super " ++ str else str) strlist 

--08
onlyShorts :: [String] -> [String]
onlyShorts strlist = filter (\str -> length str < 5) strlist