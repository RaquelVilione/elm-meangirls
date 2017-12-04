module Decodes exposing (..)
-- ----------------------------------------------------------------------------------------------------------------------
-- IMPORT
-- ----------------------------------------------------------------------------------------------------------------------
import Json.Decode exposing (string,int, field, float, list, Decoder,map2,map3,map4,map5,map6,map7,keyValuePairs, nullable)
import Aliases exposing (..)
-- ----------------------------------------------------------------------------------------------------------------------
-- DECODE
-- ----------------------------------------------------------------------------------------------------------------------
decodeStock : Decoder (List Stock)
decodeStock = 
        field "results" <| list <| map7 Stock (field "id" int)
                                      (field "name" string)
                                      (field "vote_average" float)
                                      (field "poster_path" <| nullable string)
                                      (field "first_air_date" string)
                                      (field "popularity" float)
                                      (field "overview" string)
                                      
decodeRespLogin : Decoder (Int)
decodeRespLogin = field "id" <| int 

decodePopulares : Decoder (List Populares)
decodePopulares = 
        field "results" <| list <| map7 Populares (field "id" int)
                                      (field "name" string)
                                      (field "vote_average" float)
                                      (field "poster_path" <| nullable string)
                                      (field "first_air_date" string)
                                      (field "popularity" float)
                                      (field "overview" string)
                                      
decodeAiringToday : Decoder (List AiringToday)
decodeAiringToday = 
        field "results" <| list <| map7 AiringToday (field "id" int)
                                      (field "name" string)
                                      (field "vote_average" float)
                                      (field "poster_path" <| nullable string)
                                      (field "first_air_date" string)
                                      (field "popularity" float)
                                      (field "overview" string)
                                      
decodeTemporadas : Decoder (List Temporadas)
decodeTemporadas = 
        field "seasons" <| list <| map5 Temporadas  (field "id" int) 
                                                    (field "episode_count" int)
                                                    (field "air_date" string)
                                                    (field "poster_path" string)
                                                    (field "season_number" int)
                                                    
decodeEpisodios : Decoder (List Episodios)
decodeEpisodios = 
        field "episodes" <| list <| map3 Episodios  (field "id" int) 
                                                    (field "episode_number" int)
                                                    (field "name" string)
-- ----------------------------------------------------------------------------------------------------------------------
-- 
-- ----------------------------------------------------------------------------------------------------------------------