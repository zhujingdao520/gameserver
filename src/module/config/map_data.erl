%%----------------------------------------------------
%% 地图数据
%% @author yeahoo2000@gmail.com
%%----------------------------------------------------
-module(map_data).
-include("common.hrl").
-include("map.hrl").
-export(
    [
        startup/0
        ,get/1
        ,all/0
    ]
).

%% 默认启动的地图
startup() ->
    [1].% [1, 30001, 30002, 30003, 30004, 30005, 10001, 10002, 10003].

%% 获取所有的地图
all() ->
    [1, 30001, 30002, 30003, 30004, 30005, 10001, 10002, 10003, 20001, 20002].

get(1 = Id) ->
    {ok, #map_data{
        id = Id
        ,name = <<"瀛洲桃源">>
        ,condition = []
        ,width = 120
        ,height = 68
        ,revive = [
            {15, 56}
        ]
    }};
get(30001 = Id) ->
    {ok, #map_data{
        id = Id
        ,name = <<"恶魔古堡内">>
        ,condition = []
        ,width = 1500
        ,height = 870
        ,revive = [
            {300, 255}
        ]
    }};
get(30002 = Id) ->
    {ok, #map_data{
        id = Id
        ,name = <<"恶魔古堡外">>
        ,condition = []
        ,width = 3000
        ,height = 870
        ,revive = [
            {300, 255}
        ]
    }};
get(30003 = Id) ->
    {ok, #map_data{
        id = Id
        ,name = <<"恶魔古堡内">>
        ,condition = []
        ,width = 3000
        ,height = 870
        ,revive = [
            {300, 255}
        ]
    }};
get(30004 = Id) ->
    {ok, #map_data{
        id = Id
        ,name = <<"山谷">>
        ,condition = []
        ,width = 3000
        ,height = 870
        ,revive = [
            {300, 255}
        ]
    }};

get(30005 = Id) ->
    {ok, #map_data{
        id = Id
        ,name = <<"郊外">>
        ,condition = []
        ,width = 3000
        ,height = 870
        ,revive = [
            {504, 630}
        ]
    }};

get(10001 = Id) ->
    {ok, #map_data{
        id = Id
        ,name = <<"小镇">>
        ,condition = []
        ,width = 3000
        ,height = 870
        ,revive = [
            {504, 630}
        ]
    }};

get(10002 = Id) ->
    {ok, #map_data{
        id = Id
        ,name = <<"红龙圣地">>
        ,condition = []
        ,width = 3000
        ,height = 870
        ,revive = [
            {504, 630}
        ]
    }};

get(10003 = Id) ->
    {ok, #map_data{
        id = Id
        ,name = <<"主城">>
        ,condition = []
        ,width = 3000
        ,height = 870
        ,revive = [
            {504, 630}
        ]
    }};
get(20001 = Id) ->
    {ok, #map_data{
        id = Id
        ,name = <<"龙息之穴">>
        ,condition = []
        ,width = 3000
        ,height = 870
        ,revive = [
            {504, 630}
        ]
    }};
get(20002 = Id) ->
    {ok, #map_data{
        id = Id
        ,name = <<"洋葱测试">>
        ,condition = []
        ,width = 3000
        ,height = 870
        ,revive = [
            {504, 630}
        ]
    }};

get(_ = Id) -> {error, {map_data_not_exists, Id}}.
