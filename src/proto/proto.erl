
%%----------------------------------------------------
%%
%% 该文件由程序生成，不要手动修改
%% @end
%%----------------------------------------------------
-module(proto).
-export([id_to_name/2, name_to_id/1, pack/2, pack/3, unpack/2, unpack/3]).


%% @doc 将协议ID转换成协议名
-spec id_to_name(Type::cli|srv, Id::pos_integer()) ->
    {ok, Name::atom()} | {error, {undefined, Type::cli|srv, Id::pos_integer()}}.

id_to_name(cli, 1001) -> {ok, csdlcj};
id_to_name(srv, 1051) -> {ok, scdlcj};
id_to_name(cli, 1002) -> {ok, csdldl};
id_to_name(srv, 1052) -> {ok, scdldl};
id_to_name(cli, 1003) -> {ok, csdlks};
id_to_name(cli, 1201) -> {ok, cscjqh};
id_to_name(srv, 1251) -> {ok, sccjqh};
id_to_name(cli, 1202) -> {ok, cscjcs};
id_to_name(cli, 1204) -> {ok, cscjrd};
id_to_name(cli, 1211) -> {ok, cscjyd};
id_to_name(srv, 1261) -> {ok, sccjyd};
id_to_name(srv, 1262) -> {ok, sccjcz};
id_to_name(srv, 1263) -> {ok, sccjjr};
id_to_name(srv, 1264) -> {ok, sccjlk};
id_to_name(srv, 1265) -> {ok, sccjzg};
id_to_name(srv, 1266) -> {ok, sccjgj};
id_to_name(srv, 1267) -> {ok, sccjgl};
id_to_name(srv, 1268) -> {ok, sccjgg};
id_to_name(srv, 1269) -> {ok, sccjgd};
id_to_name(srv, 1270) -> {ok, sccjgz};
id_to_name(cli, 2001) -> {ok, csjsxx};
id_to_name(srv, 2051) -> {ok, scjsxx};
id_to_name(cli, 2002) -> {ok, csjsmb};
id_to_name(srv, 2052) -> {ok, scjsmb};
id_to_name(cli, 2003) -> {ok, csjsqt};
id_to_name(srv, 2053) -> {ok, scjsqt};
id_to_name(srv, 2061) -> {ok, scjscz};
id_to_name(srv, 2062) -> {ok, scjstq};
id_to_name(srv, 2063) -> {ok, scjsrb};
id_to_name(srv, 2064) -> {ok, scjssj};
id_to_name(srv, 2065) -> {ok, scjssx};
id_to_name(srv, 2067) -> {ok, scjsxh};
id_to_name(srv, 2068) -> {ok, scjsll};
id_to_name(srv, 2069) -> {ok, scjsjl};
id_to_name(srv, 2070) -> {ok, scjsyb};
id_to_name(srv, 2071) -> {ok, scjsgm};
id_to_name(cli, 2022) -> {ok, csjsst};
id_to_name(srv, 2072) -> {ok, scjsst};
id_to_name(srv, 2073) -> {ok, scjsjf};
id_to_name(cli, 2024) -> {ok, csjswb};
id_to_name(srv, 2074) -> {ok, scjswb};
id_to_name(srv, 2075) -> {ok, scjsai};
id_to_name(srv, 2076) -> {ok, scjsds};
id_to_name(cli, 2027) -> {ok, csjsdp};
id_to_name(srv, 2077) -> {ok, scjsdp};
id_to_name(srv, 2078) -> {ok, scjstd};
id_to_name(cli, 2029) -> {ok, csjssp};
id_to_name(cli, 2201) -> {ok, csrwlb};
id_to_name(srv, 2251) -> {ok, scrwlb};
id_to_name(cli, 2202) -> {ok, csrwjs};
id_to_name(srv, 2252) -> {ok, scrwjs};
id_to_name(cli, 2203) -> {ok, csrwtj};
id_to_name(srv, 2253) -> {ok, scrwtj};
id_to_name(cli, 2204) -> {ok, csrwfq};
id_to_name(srv, 2254) -> {ok, scrwfq};
id_to_name(cli, 2205) -> {ok, csrwxl};
id_to_name(srv, 2255) -> {ok, scrwxl};
id_to_name(cli, 2206) -> {ok, csrwxj};
id_to_name(srv, 2256) -> {ok, scrwxj};
id_to_name(cli, 2207) -> {ok, csrwxw};
id_to_name(srv, 2257) -> {ok, scrwxw};
id_to_name(cli, 2208) -> {ok, csrwxt};
id_to_name(srv, 2258) -> {ok, scrwxt};
id_to_name(cli, 2209) -> {ok, csrwlj};
id_to_name(srv, 2259) -> {ok, scrwlj};
id_to_name(cli, 2210) -> {ok, csrwsx};
id_to_name(srv, 2260) -> {ok, scrwsx};
id_to_name(cli, 2211) -> {ok, csrwjl};
id_to_name(srv, 2261) -> {ok, scrwjl};
id_to_name(srv, 2262) -> {ok, scrwgb};
id_to_name(cli, 2213) -> {ok, csrwcj};
id_to_name(srv, 2263) -> {ok, scrwcj};
id_to_name(cli, 2214) -> {ok, csrwcx};
id_to_name(srv, 2264) -> {ok, scrwcx};
id_to_name(cli, 2401) -> {ok, csfbsj};
id_to_name(srv, 2451) -> {ok, scfbsj};
id_to_name(cli, 2402) -> {ok, csfbzt};
id_to_name(srv, 2452) -> {ok, scfbzt};
id_to_name(cli, 2403) -> {ok, csfbhh};
id_to_name(srv, 2453) -> {ok, scfbhh};
id_to_name(cli, 2404) -> {ok, csfbpz};
id_to_name(srv, 2454) -> {ok, scfbpz};
id_to_name(cli, 2405) -> {ok, csfbwy};
id_to_name(srv, 2455) -> {ok, scfbwy};
id_to_name(cli, 2406) -> {ok, csfbzz};
id_to_name(srv, 2456) -> {ok, scfbzz};
id_to_name(cli, 2407) -> {ok, csfbhc};
id_to_name(srv, 2457) -> {ok, scfbhc};
id_to_name(srv, 2458) -> {ok, scfbxf};
id_to_name(cli, 2409) -> {ok, csfbtj};
id_to_name(srv, 2459) -> {ok, scfbtj};
id_to_name(cli, 2410) -> {ok, csfbxx};
id_to_name(srv, 2460) -> {ok, scfbxx};
id_to_name(cli, 2411) -> {ok, csfbjz};
id_to_name(srv, 2461) -> {ok, scfbjz};
id_to_name(cli, 2412) -> {ok, csfbxz};
id_to_name(srv, 2462) -> {ok, scfbxz};
id_to_name(cli, 2413) -> {ok, csfbxj};
id_to_name(srv, 2463) -> {ok, scfbxj};
id_to_name(cli, 2414) -> {ok, csfbxs};
id_to_name(srv, 2464) -> {ok, scfbxs};
id_to_name(cli, 3001) -> {ok, cswplb};
id_to_name(srv, 3051) -> {ok, scwplb};
id_to_name(cli, 3002) -> {ok, cswpsy};
id_to_name(cli, 3003) -> {ok, cswpdq};
id_to_name(cli, 3004) -> {ok, cswpyd};
id_to_name(srv, 3054) -> {ok, scwpyd};
id_to_name(srv, 3055) -> {ok, scwpbg};
id_to_name(cli, 3006) -> {ok, cswppx};
id_to_name(cli, 3101) -> {ok, cszbxz};
id_to_name(cli, 3102) -> {ok, cszbqh};
id_to_name(srv, 3152) -> {ok, sczbqh};
id_to_name(cli, 3103) -> {ok, cszbxl};
id_to_name(srv, 3153) -> {ok, sczbxl};
id_to_name(cli, 3104) -> {ok, cszbjj};
id_to_name(srv, 3154) -> {ok, sczbjj};
id_to_name(srv, 3155) -> {ok, sczbbg};
id_to_name(cli, 3106) -> {ok, cszbpx};
id_to_name(srv, 3156) -> {ok, sczbpx};
id_to_name(cli, 3107) -> {ok, cszbbx};
id_to_name(srv, 3157) -> {ok, sczbbx};
id_to_name(cli, 3108) -> {ok, cszbyh};
id_to_name(cli, 3110) -> {ok, cszbtd};
id_to_name(srv, 3160) -> {ok, sczbtd};
id_to_name(cli, 3111) -> {ok, cszbtc};
id_to_name(srv, 3161) -> {ok, sczbtc};
id_to_name(cli, 3112) -> {ok, cszbts};
id_to_name(srv, 3162) -> {ok, sczbts};
id_to_name(srv, 3158) -> {ok, sczbyh};
id_to_name(cli, 3201) -> {ok, cszdjw};
id_to_name(srv, 3251) -> {ok, sczdjw};
id_to_name(cli, 3202) -> {ok, cszdfb};
id_to_name(srv, 3252) -> {ok, sczdfb};
id_to_name(cli, 3203) -> {ok, cszdjl};
id_to_name(srv, 3253) -> {ok, sczdjl};
id_to_name(cli, 3204) -> {ok, cszdjr};
id_to_name(srv, 3254) -> {ok, sczdjr};
id_to_name(cli, 3205) -> {ok, cszdxx};
id_to_name(srv, 3255) -> {ok, sczdxx};
id_to_name(cli, 3206) -> {ok, cszdlk};
id_to_name(cli, 3207) -> {ok, cszdcs};
id_to_name(srv, 3257) -> {ok, sczdcs};
id_to_name(cli, 3210) -> {ok, csfbjr};
id_to_name(srv, 3260) -> {ok, scfbjr};
id_to_name(cli, 3211) -> {ok, csfblk};
id_to_name(srv, 3262) -> {ok, scfbjl};
id_to_name(srv, 3266) -> {ok, scgtsd};
id_to_name(srv, 3267) -> {ok, scgtgw};
id_to_name(srv, 3268) -> {ok, scgtph};
id_to_name(cli, 3219) -> {ok, csgtjn};
id_to_name(srv, 3269) -> {ok, scgtjn};
id_to_name(cli, 3220) -> {ok, csgttd};
id_to_name(srv, 3270) -> {ok, scgttd};
id_to_name(srv, 3271) -> {ok, scgtsj};
id_to_name(srv, 3272) -> {ok, scgtss};
id_to_name(srv, 3273) -> {ok, scgttc};
id_to_name(srv, 3274) -> {ok, scgtgj};
id_to_name(cli, 3301) -> {ok, csjnlb};
id_to_name(srv, 3351) -> {ok, scjnlb};
id_to_name(cli, 3302) -> {ok, csjnsj};
id_to_name(srv, 3352) -> {ok, scjnsj};
id_to_name(srv, 3353) -> {ok, scjnxj};
id_to_name(cli, 3401) -> {ok, cszqxx};
id_to_name(srv, 3451) -> {ok, sczqxx};
id_to_name(cli, 3402) -> {ok, cszqpy};
id_to_name(srv, 3452) -> {ok, sczqpy};
id_to_name(cli, 3403) -> {ok, cszqhx};
id_to_name(srv, 3453) -> {ok, sczqhx};
id_to_name(cli, 3404) -> {ok, cszqzz};
id_to_name(srv, 3454) -> {ok, sczqzz};
id_to_name(cli, 3405) -> {ok, cszqjh};
id_to_name(srv, 3455) -> {ok, sczqjh};
id_to_name(cli, 3406) -> {ok, cszqyp};
id_to_name(srv, 3456) -> {ok, sczqyp};
id_to_name(cli, 3501) -> {ok, csjmxl};
id_to_name(srv, 3551) -> {ok, scjmxl};
id_to_name(cli, 3502) -> {ok, csjmsj};
id_to_name(srv, 3552) -> {ok, scjmsj};
id_to_name(cli, 3601) -> {ok, cslsls};
id_to_name(srv, 3651) -> {ok, sclsls};
id_to_name(cli, 3602) -> {ok, cslslb};
id_to_name(srv, 3652) -> {ok, sclslb};
id_to_name(cli, 3603) -> {ok, cslshc};
id_to_name(srv, 3653) -> {ok, sclshc};
id_to_name(cli, 3604) -> {ok, cslsxq};
id_to_name(srv, 3654) -> {ok, sclsxq};
id_to_name(cli, 3605) -> {ok, cslszc};
id_to_name(srv, 3655) -> {ok, sclszc};
id_to_name(srv, 3656) -> {ok, sclsbh};
id_to_name(cli, 3701) -> {ok, csnjdr};
id_to_name(srv, 3751) -> {ok, scnjdr};
id_to_name(cli, 3702) -> {ok, csnjnj};
id_to_name(srv, 3752) -> {ok, scnjnj};
id_to_name(srv, 3753) -> {ok, scnjkn};
id_to_name(cli, 3801) -> {ok, csqddr};
id_to_name(srv, 3851) -> {ok, scqddr};
id_to_name(cli, 3802) -> {ok, csqdds};
id_to_name(srv, 3852) -> {ok, scqdds};
id_to_name(cli, 3803) -> {ok, csqdbq};
id_to_name(srv, 3853) -> {ok, scqdbq};
id_to_name(cli, 3804) -> {ok, csqdzx};
id_to_name(srv, 3854) -> {ok, scqdzx};
id_to_name(cli, 3805) -> {ok, csqdrt};
id_to_name(srv, 3855) -> {ok, scqdrt};
id_to_name(cli, 3901) -> {ok, csjsjq};
id_to_name(srv, 3951) -> {ok, scjsjq};
id_to_name(cli, 3902) -> {ok, csjsjs};
id_to_name(srv, 3952) -> {ok, scjsjs};
id_to_name(cli, 3903) -> {ok, csjscj};
id_to_name(cli, 3904) -> {ok, csjslb};
id_to_name(srv, 3954) -> {ok, scjslb};
id_to_name(cli, 4001) -> {ok, cssdsj};
id_to_name(srv, 4051) -> {ok, scsdsj};
id_to_name(cli, 4002) -> {ok, cssdqx};
id_to_name(cli, 4003) -> {ok, cssdks};
id_to_name(cli, 4004) -> {ok, cssdjs};
id_to_name(cli, 4005) -> {ok, cssdjl};
id_to_name(srv, 4055) -> {ok, scsdjl};
id_to_name(srv, 4056) -> {ok, scsdjh};
id_to_name(cli, 4101) -> {ok, csdmdr};
id_to_name(srv, 4151) -> {ok, scdmdr};
id_to_name(cli, 4102) -> {ok, csdmdd};
id_to_name(srv, 4152) -> {ok, scdmdd};
id_to_name(cli, 4103) -> {ok, csdmes};
id_to_name(srv, 4153) -> {ok, scdmes};
id_to_name(cli, 4104) -> {ok, csdmcr};
id_to_name(srv, 4154) -> {ok, scdmcr};
id_to_name(cli, 4105) -> {ok, csdmtg};
id_to_name(srv, 4155) -> {ok, scdmtg};
id_to_name(cli, 4106) -> {ok, csdmsd};
id_to_name(srv, 4156) -> {ok, scdmsd};
id_to_name(cli, 4107) -> {ok, csdmsr};
id_to_name(srv, 4157) -> {ok, scdmsr};
id_to_name(cli, 4108) -> {ok, csdmls};
id_to_name(cli, 4109) -> {ok, csdmcz};
id_to_name(srv, 4159) -> {ok, scdmcz};
id_to_name(cli, 4201) -> {ok, cszmdr};
id_to_name(srv, 4251) -> {ok, sczmdr};
id_to_name(cli, 4202) -> {ok, cszmcr};
id_to_name(srv, 4252) -> {ok, sczmcr};
id_to_name(cli, 4203) -> {ok, cszmbx};
id_to_name(srv, 4253) -> {ok, sczmbx};
id_to_name(cli, 4204) -> {ok, cszmsd};
id_to_name(srv, 4254) -> {ok, sczmsd};
id_to_name(cli, 4205) -> {ok, cszmgr};
id_to_name(srv, 4255) -> {ok, sczmgr};
id_to_name(cli, 4206) -> {ok, cszmtj};
id_to_name(srv, 4256) -> {ok, sczmtj};
id_to_name(cli, 4207) -> {ok, cszmcz};
id_to_name(srv, 4257) -> {ok, sczmcz};
id_to_name(cli, 4301) -> {ok, csshdr};
id_to_name(srv, 4351) -> {ok, scshdr};
id_to_name(cli, 4302) -> {ok, csshcr};
id_to_name(srv, 4352) -> {ok, scshcr};
id_to_name(cli, 4303) -> {ok, csshrc};
id_to_name(srv, 4353) -> {ok, scshrc};
id_to_name(cli, 4401) -> {ok, csmbgt};
id_to_name(srv, 4451) -> {ok, scmbgt};
id_to_name(cli, 4402) -> {ok, csmbtr};
id_to_name(srv, 4452) -> {ok, scmbtr};
id_to_name(srv, 4453) -> {ok, scmbtf};
id_to_name(cli, 4501) -> {ok, csxbwb};
id_to_name(srv, 4551) -> {ok, scxbwb};
id_to_name(cli, 4502) -> {ok, csxbcs};
id_to_name(cli, 4701) -> {ok, csbzdk};
id_to_name(srv, 4751) -> {ok, scbzdk};
id_to_name(cli, 4702) -> {ok, csbzlq};
id_to_name(srv, 4752) -> {ok, scbzlq};
id_to_name(srv, 4753) -> {ok, scbzsj};
id_to_name(cli, 4801) -> {ok, cszszt};
id_to_name(srv, 4851) -> {ok, sczszt};
id_to_name(cli, 4802) -> {ok, cszskt};
id_to_name(srv, 4852) -> {ok, sczskt};
id_to_name(cli, 4803) -> {ok, cszslq};
id_to_name(srv, 4853) -> {ok, sczslq};
id_to_name(cli, 4901) -> {ok, csgfrq};
id_to_name(srv, 4951) -> {ok, scgfrq};
id_to_name(cli, 4902) -> {ok, csgfgg};
id_to_name(srv, 4952) -> {ok, scgfgg};
id_to_name(cli, 5001) -> {ok, cssclq};
id_to_name(srv, 5051) -> {ok, scsclq};
id_to_name(cli, 5002) -> {ok, csscxx};
id_to_name(srv, 5052) -> {ok, scscxx};
id_to_name(srv, 5151) -> {ok, scdtts};
id_to_name(cli, 5102) -> {ok, csdtdt};
id_to_name(srv, 5532) -> {ok, scyjgj};
id_to_name(cli, 5513) -> {ok, cshdzt};
id_to_name(srv, 5563) -> {ok, schdzt};
id_to_name(srv, 5564) -> {ok, scyjxx};
id_to_name(cli, 7001) -> {ok, cshylb};
id_to_name(srv, 7051) -> {ok, schylb};
id_to_name(cli, 7002) -> {ok, cshycz};
id_to_name(srv, 7052) -> {ok, schycz};
id_to_name(cli, 7101) -> {ok, csltpd};
id_to_name(srv, 7151) -> {ok, scltpd};
id_to_name(cli, 7102) -> {ok, csltsl};
id_to_name(srv, 7152) -> {ok, scltsl};
id_to_name(srv, 7153) -> {ok, scltsn};
id_to_name(cli, 7301) -> {ok, csjjxx};
id_to_name(srv, 7351) -> {ok, scjjxx};
id_to_name(cli, 7302) -> {ok, csjjlq};
id_to_name(srv, 7352) -> {ok, scjjlq};
id_to_name(cli, 7303) -> {ok, csjjcs};
id_to_name(srv, 7353) -> {ok, scjjcs};
id_to_name(srv, 7354) -> {ok, scjjsx};
id_to_name(cli, 7305) -> {ok, csjjzd};
id_to_name(srv, 7355) -> {ok, scjjzd};
id_to_name(cli, 7306) -> {ok, csjjjl};
id_to_name(srv, 7356) -> {ok, scjjjl};
id_to_name(cli, 7307) -> {ok, csjjzb};
id_to_name(srv, 7357) -> {ok, scjjzb};
id_to_name(cli, 7308) -> {ok, csjjck};
id_to_name(srv, 7358) -> {ok, scjjck};
id_to_name(cli, 7309) -> {ok, csjjyx};
id_to_name(srv, 7359) -> {ok, scjjyx};
id_to_name(cli, 7310) -> {ok, csjjls};
id_to_name(srv, 7360) -> {ok, scjjls};
id_to_name(cli, 7401) -> {ok, csbxjb};
id_to_name(srv, 7452) -> {ok, scbxud};
id_to_name(srv, 7453) -> {ok, scbxbd};
id_to_name(srv, 7454) -> {ok, scbxbs};
id_to_name(cli, 7405) -> {ok, csbxgw};
id_to_name(srv, 7455) -> {ok, scbxgw};
id_to_name(cli, 7406) -> {ok, csbxgr};
id_to_name(srv, 7456) -> {ok, scbxgr};
id_to_name(srv, 7457) -> {ok, scbxrn};
id_to_name(cli, 7408) -> {ok, csbxfr};
id_to_name(srv, 7458) -> {ok, scbxfr};
id_to_name(cli, 7409) -> {ok, csbxff};
id_to_name(srv, 7459) -> {ok, scbxff};
id_to_name(srv, 7460) -> {ok, scbxts};
id_to_name(srv, 7461) -> {ok, scbxrw};
id_to_name(srv, 7462) -> {ok, scbxop};
id_to_name(cli, 7413) -> {ok, csbxls};
id_to_name(cli, 7414) -> {ok, csbxif};
id_to_name(srv, 7464) -> {ok, scbxif};
id_to_name(cli, 7501) -> {ok, cszltz};
id_to_name(srv, 7551) -> {ok, sczltz};
id_to_name(cli, 7502) -> {ok, cszlkq};
id_to_name(srv, 7552) -> {ok, sczlkq};
id_to_name(cli, 7503) -> {ok, cszlcr};
id_to_name(srv, 7553) -> {ok, sczlcr};
id_to_name(cli, 7504) -> {ok, cszlff};
id_to_name(cli, 7505) -> {ok, cszlrc};
id_to_name(srv, 7555) -> {ok, sczlrc};
id_to_name(cli, 7601) -> {ok, csdysg};
id_to_name(srv, 7651) -> {ok, scdysg};
id_to_name(cli, 7602) -> {ok, csdyrf};
id_to_name(srv, 7652) -> {ok, scdyrf};
id_to_name(cli, 7603) -> {ok, csdyaf};
id_to_name(cli, 7611) -> {ok, csdytg};
id_to_name(srv, 7653) -> {ok, scdyaf};
id_to_name(cli, 7604) -> {ok, csdyam};
id_to_name(srv, 7655) -> {ok, scdyll};
id_to_name(srv, 7656) -> {ok, scdyjf};
id_to_name(srv, 7659) -> {ok, scdyph};
id_to_name(cli, 7610) -> {ok, csdyfg};
id_to_name(cli, 7701) -> {ok, csptes};
id_to_name(cli, 7702) -> {ok, csptls};
id_to_name(cli, 7703) -> {ok, csptpt};
id_to_name(cli, 7704) -> {ok, csptwi};
id_to_name(srv, 7754) -> {ok, scptwi};
id_to_name(cli, 7705) -> {ok, csptwt};
id_to_name(cli, 7706) -> {ok, csptfc};
id_to_name(srv, 7756) -> {ok, scptfc};
id_to_name(cli, 7707) -> {ok, csptwj};
id_to_name(srv, 7757) -> {ok, scptwj};
id_to_name(srv, 7758) -> {ok, scptrk};
id_to_name(srv, 7759) -> {ok, scptui};
id_to_name(srv, 7760) -> {ok, scptrt};
id_to_name(cli, 8001) -> {ok, csbpcj};
id_to_name(srv, 8051) -> {ok, scbpcj};
id_to_name(cli, 8002) -> {ok, csbplb};
id_to_name(srv, 8052) -> {ok, scbplb};
id_to_name(cli, 8003) -> {ok, csbpcl};
id_to_name(srv, 8053) -> {ok, scbpcl};
id_to_name(cli, 8004) -> {ok, csbpsq};
id_to_name(srv, 8054) -> {ok, scbpsq};
id_to_name(cli, 8005) -> {ok, csbpqx};
id_to_name(srv, 8055) -> {ok, scbpqx};
id_to_name(cli, 8006) -> {ok, csbpal};
id_to_name(srv, 8056) -> {ok, scbpal};
id_to_name(cli, 8007) -> {ok, csbpjr};
id_to_name(srv, 8057) -> {ok, scbpjr};
id_to_name(cli, 8008) -> {ok, csbpaj};
id_to_name(srv, 8058) -> {ok, scbpaj};
id_to_name(cli, 8009) -> {ok, csbpex};
id_to_name(srv, 8059) -> {ok, scbpex};
id_to_name(cli, 8010) -> {ok, csbptc};
id_to_name(srv, 8060) -> {ok, scbptc};
id_to_name(cli, 8011) -> {ok, csbpgg};
id_to_name(srv, 8061) -> {ok, scbpgg};
id_to_name(cli, 8012) -> {ok, csbpjs};
id_to_name(srv, 8062) -> {ok, scbpjs};
id_to_name(cli, 8013) -> {ok, csbpzw};
id_to_name(srv, 8063) -> {ok, scbpzw};
id_to_name(cli, 8014) -> {ok, csbpad};
id_to_name(srv, 8064) -> {ok, scbpad};
id_to_name(cli, 8015) -> {ok, csbpmd};
id_to_name(srv, 8065) -> {ok, scbpmd};
id_to_name(cli, 8016) -> {ok, csbpmj};
id_to_name(srv, 8069) -> {ok, scbpmj};
id_to_name(cli, 8017) -> {ok, csbpth};
id_to_name(srv, 8067) -> {ok, scbpth};
id_to_name(cli, 8018) -> {ok, csbpcr};
id_to_name(srv, 8068) -> {ok, scbpcr};
id_to_name(cli, 8019) -> {ok, csbpcq};
id_to_name(srv, 8070) -> {ok, scbpts};
id_to_name(cli, 8021) -> {ok, csbpjz};
id_to_name(srv, 8071) -> {ok, scbpjz};
id_to_name(cli, 8022) -> {ok, csbpjb};
id_to_name(srv, 8072) -> {ok, scbpjb};
id_to_name(cli, 8023) -> {ok, csbpsj};
id_to_name(srv, 8073) -> {ok, scbpsj};
id_to_name(cli, 8024) -> {ok, csbpxg};
id_to_name(srv, 8074) -> {ok, scbpxg};
id_to_name(cli, 8025) -> {ok, csbpdj};
id_to_name(srv, 8075) -> {ok, scbpdj};
id_to_name(srv, 8076) -> {ok, scbpct};
id_to_name(cli, 8101) -> {ok, cspkpk};
id_to_name(srv, 8151) -> {ok, scpkjg};
id_to_name(cli, 8102) -> {ok, cspkzb};
id_to_name(srv, 8152) -> {ok, scpkzb};
id_to_name(cli, 8103) -> {ok, cspklb};
id_to_name(srv, 8153) -> {ok, scpklb};
id_to_name(cli, 8104) -> {ok, cspkjs};
id_to_name(cli, 8105) -> {ok, cspkbh};
id_to_name(cli, 8106) -> {ok, cspkqb};
id_to_name(srv, 8157) -> {ok, scpkjs};
id_to_name(cli, 8108) -> {ok, cspkbd};
id_to_name(srv, 8158) -> {ok, scpkbd};
id_to_name(cli, 8109) -> {ok, cspkbs};
id_to_name(srv, 8160) -> {ok, scpkdn};
id_to_name(srv, 8161) -> {ok, scpkgb};
id_to_name(cli, 8112) -> {ok, cspkgw};
id_to_name(cli, 8113) -> {ok, cspkai};
id_to_name(srv, 8163) -> {ok, scpkai};
id_to_name(srv, 8162) -> {ok, scpkgw};
id_to_name(cli, 8201) -> {ok, csbzjr};
id_to_name(srv, 8251) -> {ok, scbzjr};
id_to_name(cli, 8202) -> {ok, csbzwj};
id_to_name(srv, 8252) -> {ok, scbzwj};
id_to_name(cli, 8203) -> {ok, csbzbj};
id_to_name(srv, 8253) -> {ok, scbzbj};
id_to_name(cli, 8204) -> {ok, csbztc};
id_to_name(cli, 8205) -> {ok, csbzgw};
id_to_name(srv, 8255) -> {ok, scbzgw};
id_to_name(srv, 8256) -> {ok, scbztc};
id_to_name(cli, 8401) -> {ok, cszrjr};
id_to_name(cli, 8402) -> {ok, cszrgw};
id_to_name(srv, 8452) -> {ok, sczrgw};
id_to_name(cli, 8403) -> {ok, cszrex};
id_to_name(cli, 8404) -> {ok, cszrsj};
id_to_name(srv, 8454) -> {ok, sczrsj};
id_to_name(srv, 8455) -> {ok, sczrph};
id_to_name(srv, 8456) -> {ok, sczrrt};
id_to_name(srv, 8457) -> {ok, sczrcn};
id_to_name(srv, 8458) -> {ok, sczrqs};
id_to_name(cli, 9001) -> {ok, csphlb};
id_to_name(srv, 9051) -> {ok, scphlb};
id_to_name(srv, 9201) -> {ok, scsccs};
id_to_name(cli, 9251) -> {ok, cssccs};
id_to_name(srv, 9202) -> {ok, scscgm};
id_to_name(cli, 9252) -> {ok, csscgm};
id_to_name(srv, 9851) -> {ok, scjshr};
id_to_name(srv, 9852) -> {ok, scjslw};
id_to_name(cli, 9901) -> {ok, csxtxl};
id_to_name(srv, 9951) -> {ok, scxtxl};
id_to_name(cli, 9902) -> {ok, csxtxk};
id_to_name(srv, 9952) -> {ok, scxtxk};
id_to_name(cli, 9911) -> {ok, csxtks};
id_to_name(srv, 9961) -> {ok, scxtks};
id_to_name(cli, 9912) -> {ok, csxtbk};
id_to_name(cli, 9921) -> {ok, csxtyj};
id_to_name(srv, 9971) -> {ok, scxtyj};
id_to_name(srv, 9992) -> {ok, scxt};
id_to_name(srv, 9993) -> {ok, scxtgg};
id_to_name(srv, 9994) -> {ok, scxtts};
id_to_name(cli, 9945) -> {ok, csxtct};
id_to_name(srv, 9995) -> {ok, scxtct};
id_to_name(srv, 9996) -> {ok, scxtxy};
id_to_name(cli, 9947) -> {ok, csxtxt};
id_to_name(srv, 9997) -> {ok, scxtxt};
id_to_name(srv, 9998) -> {ok, scxter};
id_to_name(cli, 9999) -> {ok, csxtgm};

id_to_name(Type, Id) ->
    {error, {undefined, Type, Id}}.

%% @doc 将协议名转换成协议ID
-spec name_to_id(Name::atom()) ->
    {ok, {Type::cli|srv, Id::pos_integer()}} | {error, {undefined, Name::atom()}}.

name_to_id(csdlcj) -> {ok, {cli, 1001}};
name_to_id(scdlcj) -> {ok, {srv, 1051}};
name_to_id(csdldl) -> {ok, {cli, 1002}};
name_to_id(scdldl) -> {ok, {srv, 1052}};
name_to_id(csdlks) -> {ok, {cli, 1003}};
name_to_id(cscjqh) -> {ok, {cli, 1201}};
name_to_id(sccjqh) -> {ok, {srv, 1251}};
name_to_id(cscjcs) -> {ok, {cli, 1202}};
name_to_id(cscjrd) -> {ok, {cli, 1204}};
name_to_id(cscjyd) -> {ok, {cli, 1211}};
name_to_id(sccjyd) -> {ok, {srv, 1261}};
name_to_id(sccjcz) -> {ok, {srv, 1262}};
name_to_id(sccjjr) -> {ok, {srv, 1263}};
name_to_id(sccjlk) -> {ok, {srv, 1264}};
name_to_id(sccjzg) -> {ok, {srv, 1265}};
name_to_id(sccjgj) -> {ok, {srv, 1266}};
name_to_id(sccjgl) -> {ok, {srv, 1267}};
name_to_id(sccjgg) -> {ok, {srv, 1268}};
name_to_id(sccjgd) -> {ok, {srv, 1269}};
name_to_id(sccjgz) -> {ok, {srv, 1270}};
name_to_id(csjsxx) -> {ok, {cli, 2001}};
name_to_id(scjsxx) -> {ok, {srv, 2051}};
name_to_id(csjsmb) -> {ok, {cli, 2002}};
name_to_id(scjsmb) -> {ok, {srv, 2052}};
name_to_id(csjsqt) -> {ok, {cli, 2003}};
name_to_id(scjsqt) -> {ok, {srv, 2053}};
name_to_id(scjscz) -> {ok, {srv, 2061}};
name_to_id(scjstq) -> {ok, {srv, 2062}};
name_to_id(scjsrb) -> {ok, {srv, 2063}};
name_to_id(scjssj) -> {ok, {srv, 2064}};
name_to_id(scjssx) -> {ok, {srv, 2065}};
name_to_id(scjsxh) -> {ok, {srv, 2067}};
name_to_id(scjsll) -> {ok, {srv, 2068}};
name_to_id(scjsjl) -> {ok, {srv, 2069}};
name_to_id(scjsyb) -> {ok, {srv, 2070}};
name_to_id(scjsgm) -> {ok, {srv, 2071}};
name_to_id(csjsst) -> {ok, {cli, 2022}};
name_to_id(scjsst) -> {ok, {srv, 2072}};
name_to_id(scjsjf) -> {ok, {srv, 2073}};
name_to_id(csjswb) -> {ok, {cli, 2024}};
name_to_id(scjswb) -> {ok, {srv, 2074}};
name_to_id(scjsai) -> {ok, {srv, 2075}};
name_to_id(scjsds) -> {ok, {srv, 2076}};
name_to_id(csjsdp) -> {ok, {cli, 2027}};
name_to_id(scjsdp) -> {ok, {srv, 2077}};
name_to_id(scjstd) -> {ok, {srv, 2078}};
name_to_id(csjssp) -> {ok, {cli, 2029}};
name_to_id(csrwlb) -> {ok, {cli, 2201}};
name_to_id(scrwlb) -> {ok, {srv, 2251}};
name_to_id(csrwjs) -> {ok, {cli, 2202}};
name_to_id(scrwjs) -> {ok, {srv, 2252}};
name_to_id(csrwtj) -> {ok, {cli, 2203}};
name_to_id(scrwtj) -> {ok, {srv, 2253}};
name_to_id(csrwfq) -> {ok, {cli, 2204}};
name_to_id(scrwfq) -> {ok, {srv, 2254}};
name_to_id(csrwxl) -> {ok, {cli, 2205}};
name_to_id(scrwxl) -> {ok, {srv, 2255}};
name_to_id(csrwxj) -> {ok, {cli, 2206}};
name_to_id(scrwxj) -> {ok, {srv, 2256}};
name_to_id(csrwxw) -> {ok, {cli, 2207}};
name_to_id(scrwxw) -> {ok, {srv, 2257}};
name_to_id(csrwxt) -> {ok, {cli, 2208}};
name_to_id(scrwxt) -> {ok, {srv, 2258}};
name_to_id(csrwlj) -> {ok, {cli, 2209}};
name_to_id(scrwlj) -> {ok, {srv, 2259}};
name_to_id(csrwsx) -> {ok, {cli, 2210}};
name_to_id(scrwsx) -> {ok, {srv, 2260}};
name_to_id(csrwjl) -> {ok, {cli, 2211}};
name_to_id(scrwjl) -> {ok, {srv, 2261}};
name_to_id(scrwgb) -> {ok, {srv, 2262}};
name_to_id(csrwcj) -> {ok, {cli, 2213}};
name_to_id(scrwcj) -> {ok, {srv, 2263}};
name_to_id(csrwcx) -> {ok, {cli, 2214}};
name_to_id(scrwcx) -> {ok, {srv, 2264}};
name_to_id(csfbsj) -> {ok, {cli, 2401}};
name_to_id(scfbsj) -> {ok, {srv, 2451}};
name_to_id(csfbzt) -> {ok, {cli, 2402}};
name_to_id(scfbzt) -> {ok, {srv, 2452}};
name_to_id(csfbhh) -> {ok, {cli, 2403}};
name_to_id(scfbhh) -> {ok, {srv, 2453}};
name_to_id(csfbpz) -> {ok, {cli, 2404}};
name_to_id(scfbpz) -> {ok, {srv, 2454}};
name_to_id(csfbwy) -> {ok, {cli, 2405}};
name_to_id(scfbwy) -> {ok, {srv, 2455}};
name_to_id(csfbzz) -> {ok, {cli, 2406}};
name_to_id(scfbzz) -> {ok, {srv, 2456}};
name_to_id(csfbhc) -> {ok, {cli, 2407}};
name_to_id(scfbhc) -> {ok, {srv, 2457}};
name_to_id(scfbxf) -> {ok, {srv, 2458}};
name_to_id(csfbtj) -> {ok, {cli, 2409}};
name_to_id(scfbtj) -> {ok, {srv, 2459}};
name_to_id(csfbxx) -> {ok, {cli, 2410}};
name_to_id(scfbxx) -> {ok, {srv, 2460}};
name_to_id(csfbjz) -> {ok, {cli, 2411}};
name_to_id(scfbjz) -> {ok, {srv, 2461}};
name_to_id(csfbxz) -> {ok, {cli, 2412}};
name_to_id(scfbxz) -> {ok, {srv, 2462}};
name_to_id(csfbxj) -> {ok, {cli, 2413}};
name_to_id(scfbxj) -> {ok, {srv, 2463}};
name_to_id(csfbxs) -> {ok, {cli, 2414}};
name_to_id(scfbxs) -> {ok, {srv, 2464}};
name_to_id(cswplb) -> {ok, {cli, 3001}};
name_to_id(scwplb) -> {ok, {srv, 3051}};
name_to_id(cswpsy) -> {ok, {cli, 3002}};
name_to_id(cswpdq) -> {ok, {cli, 3003}};
name_to_id(cswpyd) -> {ok, {cli, 3004}};
name_to_id(scwpyd) -> {ok, {srv, 3054}};
name_to_id(scwpbg) -> {ok, {srv, 3055}};
name_to_id(cswppx) -> {ok, {cli, 3006}};
name_to_id(cszbxz) -> {ok, {cli, 3101}};
name_to_id(cszbqh) -> {ok, {cli, 3102}};
name_to_id(sczbqh) -> {ok, {srv, 3152}};
name_to_id(cszbxl) -> {ok, {cli, 3103}};
name_to_id(sczbxl) -> {ok, {srv, 3153}};
name_to_id(cszbjj) -> {ok, {cli, 3104}};
name_to_id(sczbjj) -> {ok, {srv, 3154}};
name_to_id(sczbbg) -> {ok, {srv, 3155}};
name_to_id(cszbpx) -> {ok, {cli, 3106}};
name_to_id(sczbpx) -> {ok, {srv, 3156}};
name_to_id(cszbbx) -> {ok, {cli, 3107}};
name_to_id(sczbbx) -> {ok, {srv, 3157}};
name_to_id(cszbyh) -> {ok, {cli, 3108}};
name_to_id(cszbtd) -> {ok, {cli, 3110}};
name_to_id(sczbtd) -> {ok, {srv, 3160}};
name_to_id(cszbtc) -> {ok, {cli, 3111}};
name_to_id(sczbtc) -> {ok, {srv, 3161}};
name_to_id(cszbts) -> {ok, {cli, 3112}};
name_to_id(sczbts) -> {ok, {srv, 3162}};
name_to_id(sczbyh) -> {ok, {srv, 3158}};
name_to_id(cszdjw) -> {ok, {cli, 3201}};
name_to_id(sczdjw) -> {ok, {srv, 3251}};
name_to_id(cszdfb) -> {ok, {cli, 3202}};
name_to_id(sczdfb) -> {ok, {srv, 3252}};
name_to_id(cszdjl) -> {ok, {cli, 3203}};
name_to_id(sczdjl) -> {ok, {srv, 3253}};
name_to_id(cszdjr) -> {ok, {cli, 3204}};
name_to_id(sczdjr) -> {ok, {srv, 3254}};
name_to_id(cszdxx) -> {ok, {cli, 3205}};
name_to_id(sczdxx) -> {ok, {srv, 3255}};
name_to_id(cszdlk) -> {ok, {cli, 3206}};
name_to_id(cszdcs) -> {ok, {cli, 3207}};
name_to_id(sczdcs) -> {ok, {srv, 3257}};
name_to_id(csfbjr) -> {ok, {cli, 3210}};
name_to_id(scfbjr) -> {ok, {srv, 3260}};
name_to_id(csfblk) -> {ok, {cli, 3211}};
name_to_id(scfbjl) -> {ok, {srv, 3262}};
name_to_id(scgtsd) -> {ok, {srv, 3266}};
name_to_id(scgtgw) -> {ok, {srv, 3267}};
name_to_id(scgtph) -> {ok, {srv, 3268}};
name_to_id(csgtjn) -> {ok, {cli, 3219}};
name_to_id(scgtjn) -> {ok, {srv, 3269}};
name_to_id(csgttd) -> {ok, {cli, 3220}};
name_to_id(scgttd) -> {ok, {srv, 3270}};
name_to_id(scgtsj) -> {ok, {srv, 3271}};
name_to_id(scgtss) -> {ok, {srv, 3272}};
name_to_id(scgttc) -> {ok, {srv, 3273}};
name_to_id(scgtgj) -> {ok, {srv, 3274}};
name_to_id(csjnlb) -> {ok, {cli, 3301}};
name_to_id(scjnlb) -> {ok, {srv, 3351}};
name_to_id(csjnsj) -> {ok, {cli, 3302}};
name_to_id(scjnsj) -> {ok, {srv, 3352}};
name_to_id(scjnxj) -> {ok, {srv, 3353}};
name_to_id(cszqxx) -> {ok, {cli, 3401}};
name_to_id(sczqxx) -> {ok, {srv, 3451}};
name_to_id(cszqpy) -> {ok, {cli, 3402}};
name_to_id(sczqpy) -> {ok, {srv, 3452}};
name_to_id(cszqhx) -> {ok, {cli, 3403}};
name_to_id(sczqhx) -> {ok, {srv, 3453}};
name_to_id(cszqzz) -> {ok, {cli, 3404}};
name_to_id(sczqzz) -> {ok, {srv, 3454}};
name_to_id(cszqjh) -> {ok, {cli, 3405}};
name_to_id(sczqjh) -> {ok, {srv, 3455}};
name_to_id(cszqyp) -> {ok, {cli, 3406}};
name_to_id(sczqyp) -> {ok, {srv, 3456}};
name_to_id(csjmxl) -> {ok, {cli, 3501}};
name_to_id(scjmxl) -> {ok, {srv, 3551}};
name_to_id(csjmsj) -> {ok, {cli, 3502}};
name_to_id(scjmsj) -> {ok, {srv, 3552}};
name_to_id(cslsls) -> {ok, {cli, 3601}};
name_to_id(sclsls) -> {ok, {srv, 3651}};
name_to_id(cslslb) -> {ok, {cli, 3602}};
name_to_id(sclslb) -> {ok, {srv, 3652}};
name_to_id(cslshc) -> {ok, {cli, 3603}};
name_to_id(sclshc) -> {ok, {srv, 3653}};
name_to_id(cslsxq) -> {ok, {cli, 3604}};
name_to_id(sclsxq) -> {ok, {srv, 3654}};
name_to_id(cslszc) -> {ok, {cli, 3605}};
name_to_id(sclszc) -> {ok, {srv, 3655}};
name_to_id(sclsbh) -> {ok, {srv, 3656}};
name_to_id(csnjdr) -> {ok, {cli, 3701}};
name_to_id(scnjdr) -> {ok, {srv, 3751}};
name_to_id(csnjnj) -> {ok, {cli, 3702}};
name_to_id(scnjnj) -> {ok, {srv, 3752}};
name_to_id(scnjkn) -> {ok, {srv, 3753}};
name_to_id(csqddr) -> {ok, {cli, 3801}};
name_to_id(scqddr) -> {ok, {srv, 3851}};
name_to_id(csqdds) -> {ok, {cli, 3802}};
name_to_id(scqdds) -> {ok, {srv, 3852}};
name_to_id(csqdbq) -> {ok, {cli, 3803}};
name_to_id(scqdbq) -> {ok, {srv, 3853}};
name_to_id(csqdzx) -> {ok, {cli, 3804}};
name_to_id(scqdzx) -> {ok, {srv, 3854}};
name_to_id(csqdrt) -> {ok, {cli, 3805}};
name_to_id(scqdrt) -> {ok, {srv, 3855}};
name_to_id(csjsjq) -> {ok, {cli, 3901}};
name_to_id(scjsjq) -> {ok, {srv, 3951}};
name_to_id(csjsjs) -> {ok, {cli, 3902}};
name_to_id(scjsjs) -> {ok, {srv, 3952}};
name_to_id(csjscj) -> {ok, {cli, 3903}};
name_to_id(csjslb) -> {ok, {cli, 3904}};
name_to_id(scjslb) -> {ok, {srv, 3954}};
name_to_id(cssdsj) -> {ok, {cli, 4001}};
name_to_id(scsdsj) -> {ok, {srv, 4051}};
name_to_id(cssdqx) -> {ok, {cli, 4002}};
name_to_id(cssdks) -> {ok, {cli, 4003}};
name_to_id(cssdjs) -> {ok, {cli, 4004}};
name_to_id(cssdjl) -> {ok, {cli, 4005}};
name_to_id(scsdjl) -> {ok, {srv, 4055}};
name_to_id(scsdjh) -> {ok, {srv, 4056}};
name_to_id(csdmdr) -> {ok, {cli, 4101}};
name_to_id(scdmdr) -> {ok, {srv, 4151}};
name_to_id(csdmdd) -> {ok, {cli, 4102}};
name_to_id(scdmdd) -> {ok, {srv, 4152}};
name_to_id(csdmes) -> {ok, {cli, 4103}};
name_to_id(scdmes) -> {ok, {srv, 4153}};
name_to_id(csdmcr) -> {ok, {cli, 4104}};
name_to_id(scdmcr) -> {ok, {srv, 4154}};
name_to_id(csdmtg) -> {ok, {cli, 4105}};
name_to_id(scdmtg) -> {ok, {srv, 4155}};
name_to_id(csdmsd) -> {ok, {cli, 4106}};
name_to_id(scdmsd) -> {ok, {srv, 4156}};
name_to_id(csdmsr) -> {ok, {cli, 4107}};
name_to_id(scdmsr) -> {ok, {srv, 4157}};
name_to_id(csdmls) -> {ok, {cli, 4108}};
name_to_id(csdmcz) -> {ok, {cli, 4109}};
name_to_id(scdmcz) -> {ok, {srv, 4159}};
name_to_id(cszmdr) -> {ok, {cli, 4201}};
name_to_id(sczmdr) -> {ok, {srv, 4251}};
name_to_id(cszmcr) -> {ok, {cli, 4202}};
name_to_id(sczmcr) -> {ok, {srv, 4252}};
name_to_id(cszmbx) -> {ok, {cli, 4203}};
name_to_id(sczmbx) -> {ok, {srv, 4253}};
name_to_id(cszmsd) -> {ok, {cli, 4204}};
name_to_id(sczmsd) -> {ok, {srv, 4254}};
name_to_id(cszmgr) -> {ok, {cli, 4205}};
name_to_id(sczmgr) -> {ok, {srv, 4255}};
name_to_id(cszmtj) -> {ok, {cli, 4206}};
name_to_id(sczmtj) -> {ok, {srv, 4256}};
name_to_id(cszmcz) -> {ok, {cli, 4207}};
name_to_id(sczmcz) -> {ok, {srv, 4257}};
name_to_id(csshdr) -> {ok, {cli, 4301}};
name_to_id(scshdr) -> {ok, {srv, 4351}};
name_to_id(csshcr) -> {ok, {cli, 4302}};
name_to_id(scshcr) -> {ok, {srv, 4352}};
name_to_id(csshrc) -> {ok, {cli, 4303}};
name_to_id(scshrc) -> {ok, {srv, 4353}};
name_to_id(csmbgt) -> {ok, {cli, 4401}};
name_to_id(scmbgt) -> {ok, {srv, 4451}};
name_to_id(csmbtr) -> {ok, {cli, 4402}};
name_to_id(scmbtr) -> {ok, {srv, 4452}};
name_to_id(scmbtf) -> {ok, {srv, 4453}};
name_to_id(csxbwb) -> {ok, {cli, 4501}};
name_to_id(scxbwb) -> {ok, {srv, 4551}};
name_to_id(csxbcs) -> {ok, {cli, 4502}};
name_to_id(csbzdk) -> {ok, {cli, 4701}};
name_to_id(scbzdk) -> {ok, {srv, 4751}};
name_to_id(csbzlq) -> {ok, {cli, 4702}};
name_to_id(scbzlq) -> {ok, {srv, 4752}};
name_to_id(scbzsj) -> {ok, {srv, 4753}};
name_to_id(cszszt) -> {ok, {cli, 4801}};
name_to_id(sczszt) -> {ok, {srv, 4851}};
name_to_id(cszskt) -> {ok, {cli, 4802}};
name_to_id(sczskt) -> {ok, {srv, 4852}};
name_to_id(cszslq) -> {ok, {cli, 4803}};
name_to_id(sczslq) -> {ok, {srv, 4853}};
name_to_id(csgfrq) -> {ok, {cli, 4901}};
name_to_id(scgfrq) -> {ok, {srv, 4951}};
name_to_id(csgfgg) -> {ok, {cli, 4902}};
name_to_id(scgfgg) -> {ok, {srv, 4952}};
name_to_id(cssclq) -> {ok, {cli, 5001}};
name_to_id(scsclq) -> {ok, {srv, 5051}};
name_to_id(csscxx) -> {ok, {cli, 5002}};
name_to_id(scscxx) -> {ok, {srv, 5052}};
name_to_id(scdtts) -> {ok, {srv, 5151}};
name_to_id(csdtdt) -> {ok, {cli, 5102}};
name_to_id(scyjgj) -> {ok, {srv, 5532}};
name_to_id(cshdzt) -> {ok, {cli, 5513}};
name_to_id(schdzt) -> {ok, {srv, 5563}};
name_to_id(scyjxx) -> {ok, {srv, 5564}};
name_to_id(cshylb) -> {ok, {cli, 7001}};
name_to_id(schylb) -> {ok, {srv, 7051}};
name_to_id(cshycz) -> {ok, {cli, 7002}};
name_to_id(schycz) -> {ok, {srv, 7052}};
name_to_id(csltpd) -> {ok, {cli, 7101}};
name_to_id(scltpd) -> {ok, {srv, 7151}};
name_to_id(csltsl) -> {ok, {cli, 7102}};
name_to_id(scltsl) -> {ok, {srv, 7152}};
name_to_id(scltsn) -> {ok, {srv, 7153}};
name_to_id(csjjxx) -> {ok, {cli, 7301}};
name_to_id(scjjxx) -> {ok, {srv, 7351}};
name_to_id(csjjlq) -> {ok, {cli, 7302}};
name_to_id(scjjlq) -> {ok, {srv, 7352}};
name_to_id(csjjcs) -> {ok, {cli, 7303}};
name_to_id(scjjcs) -> {ok, {srv, 7353}};
name_to_id(scjjsx) -> {ok, {srv, 7354}};
name_to_id(csjjzd) -> {ok, {cli, 7305}};
name_to_id(scjjzd) -> {ok, {srv, 7355}};
name_to_id(csjjjl) -> {ok, {cli, 7306}};
name_to_id(scjjjl) -> {ok, {srv, 7356}};
name_to_id(csjjzb) -> {ok, {cli, 7307}};
name_to_id(scjjzb) -> {ok, {srv, 7357}};
name_to_id(csjjck) -> {ok, {cli, 7308}};
name_to_id(scjjck) -> {ok, {srv, 7358}};
name_to_id(csjjyx) -> {ok, {cli, 7309}};
name_to_id(scjjyx) -> {ok, {srv, 7359}};
name_to_id(csjjls) -> {ok, {cli, 7310}};
name_to_id(scjjls) -> {ok, {srv, 7360}};
name_to_id(csbxjb) -> {ok, {cli, 7401}};
name_to_id(scbxud) -> {ok, {srv, 7452}};
name_to_id(scbxbd) -> {ok, {srv, 7453}};
name_to_id(scbxbs) -> {ok, {srv, 7454}};
name_to_id(csbxgw) -> {ok, {cli, 7405}};
name_to_id(scbxgw) -> {ok, {srv, 7455}};
name_to_id(csbxgr) -> {ok, {cli, 7406}};
name_to_id(scbxgr) -> {ok, {srv, 7456}};
name_to_id(scbxrn) -> {ok, {srv, 7457}};
name_to_id(csbxfr) -> {ok, {cli, 7408}};
name_to_id(scbxfr) -> {ok, {srv, 7458}};
name_to_id(csbxff) -> {ok, {cli, 7409}};
name_to_id(scbxff) -> {ok, {srv, 7459}};
name_to_id(scbxts) -> {ok, {srv, 7460}};
name_to_id(scbxrw) -> {ok, {srv, 7461}};
name_to_id(scbxop) -> {ok, {srv, 7462}};
name_to_id(csbxls) -> {ok, {cli, 7413}};
name_to_id(csbxif) -> {ok, {cli, 7414}};
name_to_id(scbxif) -> {ok, {srv, 7464}};
name_to_id(cszltz) -> {ok, {cli, 7501}};
name_to_id(sczltz) -> {ok, {srv, 7551}};
name_to_id(cszlkq) -> {ok, {cli, 7502}};
name_to_id(sczlkq) -> {ok, {srv, 7552}};
name_to_id(cszlcr) -> {ok, {cli, 7503}};
name_to_id(sczlcr) -> {ok, {srv, 7553}};
name_to_id(cszlff) -> {ok, {cli, 7504}};
name_to_id(cszlrc) -> {ok, {cli, 7505}};
name_to_id(sczlrc) -> {ok, {srv, 7555}};
name_to_id(csdysg) -> {ok, {cli, 7601}};
name_to_id(scdysg) -> {ok, {srv, 7651}};
name_to_id(csdyrf) -> {ok, {cli, 7602}};
name_to_id(scdyrf) -> {ok, {srv, 7652}};
name_to_id(csdyaf) -> {ok, {cli, 7603}};
name_to_id(csdytg) -> {ok, {cli, 7611}};
name_to_id(scdyaf) -> {ok, {srv, 7653}};
name_to_id(csdyam) -> {ok, {cli, 7604}};
name_to_id(scdyll) -> {ok, {srv, 7655}};
name_to_id(scdyjf) -> {ok, {srv, 7656}};
name_to_id(scdyph) -> {ok, {srv, 7659}};
name_to_id(csdyfg) -> {ok, {cli, 7610}};
name_to_id(csptes) -> {ok, {cli, 7701}};
name_to_id(csptls) -> {ok, {cli, 7702}};
name_to_id(csptpt) -> {ok, {cli, 7703}};
name_to_id(csptwi) -> {ok, {cli, 7704}};
name_to_id(scptwi) -> {ok, {srv, 7754}};
name_to_id(csptwt) -> {ok, {cli, 7705}};
name_to_id(csptfc) -> {ok, {cli, 7706}};
name_to_id(scptfc) -> {ok, {srv, 7756}};
name_to_id(csptwj) -> {ok, {cli, 7707}};
name_to_id(scptwj) -> {ok, {srv, 7757}};
name_to_id(scptrk) -> {ok, {srv, 7758}};
name_to_id(scptui) -> {ok, {srv, 7759}};
name_to_id(scptrt) -> {ok, {srv, 7760}};
name_to_id(csbpcj) -> {ok, {cli, 8001}};
name_to_id(scbpcj) -> {ok, {srv, 8051}};
name_to_id(csbplb) -> {ok, {cli, 8002}};
name_to_id(scbplb) -> {ok, {srv, 8052}};
name_to_id(csbpcl) -> {ok, {cli, 8003}};
name_to_id(scbpcl) -> {ok, {srv, 8053}};
name_to_id(csbpsq) -> {ok, {cli, 8004}};
name_to_id(scbpsq) -> {ok, {srv, 8054}};
name_to_id(csbpqx) -> {ok, {cli, 8005}};
name_to_id(scbpqx) -> {ok, {srv, 8055}};
name_to_id(csbpal) -> {ok, {cli, 8006}};
name_to_id(scbpal) -> {ok, {srv, 8056}};
name_to_id(csbpjr) -> {ok, {cli, 8007}};
name_to_id(scbpjr) -> {ok, {srv, 8057}};
name_to_id(csbpaj) -> {ok, {cli, 8008}};
name_to_id(scbpaj) -> {ok, {srv, 8058}};
name_to_id(csbpex) -> {ok, {cli, 8009}};
name_to_id(scbpex) -> {ok, {srv, 8059}};
name_to_id(csbptc) -> {ok, {cli, 8010}};
name_to_id(scbptc) -> {ok, {srv, 8060}};
name_to_id(csbpgg) -> {ok, {cli, 8011}};
name_to_id(scbpgg) -> {ok, {srv, 8061}};
name_to_id(csbpjs) -> {ok, {cli, 8012}};
name_to_id(scbpjs) -> {ok, {srv, 8062}};
name_to_id(csbpzw) -> {ok, {cli, 8013}};
name_to_id(scbpzw) -> {ok, {srv, 8063}};
name_to_id(csbpad) -> {ok, {cli, 8014}};
name_to_id(scbpad) -> {ok, {srv, 8064}};
name_to_id(csbpmd) -> {ok, {cli, 8015}};
name_to_id(scbpmd) -> {ok, {srv, 8065}};
name_to_id(csbpmj) -> {ok, {cli, 8016}};
name_to_id(scbpmj) -> {ok, {srv, 8069}};
name_to_id(csbpth) -> {ok, {cli, 8017}};
name_to_id(scbpth) -> {ok, {srv, 8067}};
name_to_id(csbpcr) -> {ok, {cli, 8018}};
name_to_id(scbpcr) -> {ok, {srv, 8068}};
name_to_id(csbpcq) -> {ok, {cli, 8019}};
name_to_id(scbpts) -> {ok, {srv, 8070}};
name_to_id(csbpjz) -> {ok, {cli, 8021}};
name_to_id(scbpjz) -> {ok, {srv, 8071}};
name_to_id(csbpjb) -> {ok, {cli, 8022}};
name_to_id(scbpjb) -> {ok, {srv, 8072}};
name_to_id(csbpsj) -> {ok, {cli, 8023}};
name_to_id(scbpsj) -> {ok, {srv, 8073}};
name_to_id(csbpxg) -> {ok, {cli, 8024}};
name_to_id(scbpxg) -> {ok, {srv, 8074}};
name_to_id(csbpdj) -> {ok, {cli, 8025}};
name_to_id(scbpdj) -> {ok, {srv, 8075}};
name_to_id(scbpct) -> {ok, {srv, 8076}};
name_to_id(cspkpk) -> {ok, {cli, 8101}};
name_to_id(scpkjg) -> {ok, {srv, 8151}};
name_to_id(cspkzb) -> {ok, {cli, 8102}};
name_to_id(scpkzb) -> {ok, {srv, 8152}};
name_to_id(cspklb) -> {ok, {cli, 8103}};
name_to_id(scpklb) -> {ok, {srv, 8153}};
name_to_id(cspkjs) -> {ok, {cli, 8104}};
name_to_id(cspkbh) -> {ok, {cli, 8105}};
name_to_id(cspkqb) -> {ok, {cli, 8106}};
name_to_id(scpkjs) -> {ok, {srv, 8157}};
name_to_id(cspkbd) -> {ok, {cli, 8108}};
name_to_id(scpkbd) -> {ok, {srv, 8158}};
name_to_id(cspkbs) -> {ok, {cli, 8109}};
name_to_id(scpkdn) -> {ok, {srv, 8160}};
name_to_id(scpkgb) -> {ok, {srv, 8161}};
name_to_id(cspkgw) -> {ok, {cli, 8112}};
name_to_id(cspkai) -> {ok, {cli, 8113}};
name_to_id(scpkai) -> {ok, {srv, 8163}};
name_to_id(scpkgw) -> {ok, {srv, 8162}};
name_to_id(csbzjr) -> {ok, {cli, 8201}};
name_to_id(scbzjr) -> {ok, {srv, 8251}};
name_to_id(csbzwj) -> {ok, {cli, 8202}};
name_to_id(scbzwj) -> {ok, {srv, 8252}};
name_to_id(csbzbj) -> {ok, {cli, 8203}};
name_to_id(scbzbj) -> {ok, {srv, 8253}};
name_to_id(csbztc) -> {ok, {cli, 8204}};
name_to_id(csbzgw) -> {ok, {cli, 8205}};
name_to_id(scbzgw) -> {ok, {srv, 8255}};
name_to_id(scbztc) -> {ok, {srv, 8256}};
name_to_id(cszrjr) -> {ok, {cli, 8401}};
name_to_id(cszrgw) -> {ok, {cli, 8402}};
name_to_id(sczrgw) -> {ok, {srv, 8452}};
name_to_id(cszrex) -> {ok, {cli, 8403}};
name_to_id(cszrsj) -> {ok, {cli, 8404}};
name_to_id(sczrsj) -> {ok, {srv, 8454}};
name_to_id(sczrph) -> {ok, {srv, 8455}};
name_to_id(sczrrt) -> {ok, {srv, 8456}};
name_to_id(sczrcn) -> {ok, {srv, 8457}};
name_to_id(sczrqs) -> {ok, {srv, 8458}};
name_to_id(csphlb) -> {ok, {cli, 9001}};
name_to_id(scphlb) -> {ok, {srv, 9051}};
name_to_id(scsccs) -> {ok, {srv, 9201}};
name_to_id(cssccs) -> {ok, {cli, 9251}};
name_to_id(scscgm) -> {ok, {srv, 9202}};
name_to_id(csscgm) -> {ok, {cli, 9252}};
name_to_id(scjshr) -> {ok, {srv, 9851}};
name_to_id(scjslw) -> {ok, {srv, 9852}};
name_to_id(csxtxl) -> {ok, {cli, 9901}};
name_to_id(scxtxl) -> {ok, {srv, 9951}};
name_to_id(csxtxk) -> {ok, {cli, 9902}};
name_to_id(scxtxk) -> {ok, {srv, 9952}};
name_to_id(csxtks) -> {ok, {cli, 9911}};
name_to_id(scxtks) -> {ok, {srv, 9961}};
name_to_id(csxtbk) -> {ok, {cli, 9912}};
name_to_id(csxtyj) -> {ok, {cli, 9921}};
name_to_id(scxtyj) -> {ok, {srv, 9971}};
name_to_id(scxt) -> {ok, {srv, 9992}};
name_to_id(scxtgg) -> {ok, {srv, 9993}};
name_to_id(scxtts) -> {ok, {srv, 9994}};
name_to_id(csxtct) -> {ok, {cli, 9945}};
name_to_id(scxtct) -> {ok, {srv, 9995}};
name_to_id(scxtxy) -> {ok, {srv, 9996}};
name_to_id(csxtxt) -> {ok, {cli, 9947}};
name_to_id(scxtxt) -> {ok, {srv, 9997}};
name_to_id(scxter) -> {ok, {srv, 9998}};
name_to_id(csxtgm) -> {ok, {cli, 9999}};

name_to_id(Name) ->
    {error, {undefined, Name}}.

%% @doc 打包命令
-spec pack(Name::atom(), Data::tuple()) ->
    {ok, binary()} | {error, {undefined, atom()|pos_integer()}}.
pack(Name, Data) ->
    case name_to_id(Name) of
        {ok, {Type, Id}} ->
            pack(Type, Id, Data);
        {error, Error} ->
            {error, Error}
    end.

-spec pack(Type::cli|srv, Id::pos_integer(), Data::tuple()) ->
    {ok, binary()} | {error, {undefined, pos_integer()}}.

pack(cli, 1001, {V1_login_time, V1_plat_id, V1_server_id, V1_anti_wallow, V1_avatar, V1_profession, V1_role_sex, V1_screen_width, V1_screen_height, V1_package_size, V1_pname, V1_login_str, V1_user_name, V1_imei_number, V1_imsi_number, V1_qudao_number, V1_app_number, V1_user_phone, V1_system_type, V1_phone_model, V1_plat_type, V1_network_type, V1_package_name}) ->
    Data = <<
        V1_login_time:32/little,
        V1_plat_id:32/signed-little,
        V1_server_id:16/signed-little,
        V1_anti_wallow:8/signed,
        V1_avatar:8/signed,
        V1_profession:8/signed,
        V1_role_sex:8/signed,
        V1_screen_width:16/little,
        V1_screen_height:16/little,
        V1_package_size:32/signed-little,
        (byte_size(V1_pname) + 1):16/little, V1_pname/binary, 0,
        (byte_size(V1_login_str) + 1):16/little, V1_login_str/binary, 0,
        (byte_size(V1_user_name) + 1):16/little, V1_user_name/binary, 0,
        (byte_size(V1_imei_number) + 1):16/little, V1_imei_number/binary, 0,
        (byte_size(V1_imsi_number) + 1):16/little, V1_imsi_number/binary, 0,
        (byte_size(V1_qudao_number) + 1):16/little, V1_qudao_number/binary, 0,
        (byte_size(V1_app_number) + 1):16/little, V1_app_number/binary, 0,
        (byte_size(V1_user_phone) + 1):16/little, V1_user_phone/binary, 0,
        (byte_size(V1_system_type) + 1):16/little, V1_system_type/binary, 0,
        (byte_size(V1_phone_model) + 1):16/little, V1_phone_model/binary, 0,
        (byte_size(V1_plat_type) + 1):16/little, V1_plat_type/binary, 0,
        (byte_size(V1_network_type) + 1):16/little, V1_network_type/binary, 0,
        (byte_size(V1_package_name) + 1):16/little, V1_package_name/binary, 0
    >>,
    {ok, protocol:pack(1001, Data)};

pack(srv, 1051, {V1_result, V1_user_id, V1_avatar, V1_profession, V1_level, V1_login_time, V1_server_id, V1_role_sex, V1_user_name, V1_login_str, V1_plat_ticket}) ->
    Data = <<
        V1_result:16/signed-little,
        V1_user_id:32/signed-little,
        V1_avatar:8/signed,
        V1_profession:8/signed,
        V1_level:16/little,
        V1_login_time:32/little,
        V1_server_id:16/signed-little,
        V1_role_sex:8/signed,
        (byte_size(V1_user_name) + 1):16/little, V1_user_name/binary, 0,
        (byte_size(V1_login_str) + 1):16/little, V1_login_str/binary, 0,
        (byte_size(V1_plat_ticket) + 1):16/little, V1_plat_ticket/binary, 0
    >>,
    {ok, protocol:pack(1051, Data)};

pack(cli, 1002, {V1_user_id, V1_login_time, V1_anti_wallow, V1_plat_id, V1_server_id, V1_plat_name, V1_user_name, V1_login_str, V1_imei_number}) ->
    Data = <<
        V1_user_id:32/signed-little,
        V1_login_time:32/little,
        V1_anti_wallow:8/signed,
        V1_plat_id:8/signed,
        V1_server_id:16/signed-little,
        (byte_size(V1_plat_name) + 1):16/little, V1_plat_name/binary, 0,
        (byte_size(V1_user_name) + 1):16/little, V1_user_name/binary, 0,
        (byte_size(V1_login_str) + 1):16/little, V1_login_str/binary, 0,
        (byte_size(V1_imei_number) + 1):16/little, V1_imei_number/binary, 0
    >>,
    {ok, protocol:pack(1002, Data)};

pack(srv, 1052, {V1_result, V1_scene_id, V1_scene_key, V1_last_scene_id, V1_user_id, V1_avatar, V1_professional, V1_level, V1_anti_wallow, V1_plat_id, V1_user_name}) ->
    Data = <<
        V1_result:16/signed-little,
        V1_scene_id:32/signed-little,
        V1_scene_key:32/signed-little,
        V1_last_scene_id:32/signed-little,
        V1_user_id:32/signed-little,
        V1_avatar:8/signed,
        V1_professional:8/signed,
        V1_level:8,
        V1_anti_wallow:8/signed,
        V1_plat_id:32/signed-little,
        (byte_size(V1_user_name) + 1):16/little, V1_user_name/binary, 0
    >>,
    {ok, protocol:pack(1052, Data)};

pack(cli, 1003, {V1_role_id, V1_server_id, V1_role_name, V1_imei_number}) ->
    Data = <<
        V1_role_id:32/signed-little,
        V1_server_id:32/signed-little,
        (byte_size(V1_role_name) + 1):16/little, V1_role_name/binary, 0,
        (byte_size(V1_imei_number) + 1):16/little, V1_imei_number/binary, 0
    >>,
    {ok, protocol:pack(1003, Data)};

pack(cli, 1201, {V1_scene_id, V1_port_id, V1_scene_key}) ->
    Data = <<
        V1_scene_id:16/signed-little,
        V1_port_id:16/signed-little,
        V1_scene_key:32/signed-little
    >>,
    {ok, protocol:pack(1201, Data)};

pack(srv, 1251, {V1_scene_id, V1_scene_key, V1_scene_state, V1_pos_x, V1_pos_y, V1_special_logic_type}) ->
    Data = <<
        V1_scene_id:32/signed-little,
        V1_scene_key:16/signed-little,
        V1_scene_state:16/signed-little,
        V1_pos_x:16/signed-little,
        V1_pos_y:16/signed-little,
        V1_special_logic_type:32/signed-little
    >>,
    {ok, protocol:pack(1251, Data)};

pack(cli, 1202, {V1_scene_id, V1_scene_x, V1_scene_y}) ->
    Data = <<
        V1_scene_id:32/signed-little,
        V1_scene_x:16/signed-little,
        V1_scene_y:16/signed-little
    >>,
    {ok, protocol:pack(1202, Data)};

pack(cli, 1204, {}) ->
    {ok, protocol:pack(1204, <<>>)};

pack(cli, 1211, {V1_x, V1_y, V1_tx, V1_ty}) ->
    Data = <<
        V1_x:16/signed-little,
        V1_y:16/signed-little,
        V1_tx:16/signed-little,
        V1_ty:16/signed-little
    >>,
    {ok, protocol:pack(1211, Data)};

pack(srv, 1261, {V1_scene_id, V1_user_id, V1_x, V1_y, V1_tx, V1_ty}) ->
    Data = <<
        V1_scene_id:32/signed-little,
        V1_user_id:32/signed-little,
        V1_x:16/signed-little,
        V1_y:16/signed-little,
        V1_tx:16/signed-little,
        V1_ty:16/signed-little
    >>,
    {ok, protocol:pack(1261, Data)};

pack(srv, 1262, {V1_scene_id, V1_user_id, V1_x, V1_y}) ->
    Data = <<
        V1_scene_id:32/signed-little,
        V1_user_id:32/signed-little,
        V1_x:16/signed-little,
        V1_y:16/signed-little
    >>,
    {ok, protocol:pack(1262, Data)};

pack(srv, 1263, {V1_scene_id, V1_user_id, V1_user_level, V1_dir, V1_sex, V1_profession, V1_x, V1_y, V1_tx, V1_ty, V1_mount_level, V1_mount_status, V1_sit_status, V1_vip_level, V1_fabao_id, V1_fabao_level, V1_speed, V1_fc, V1_pk_mode, V1_pk_state, V1_action_state, V1_beauty_level, V1_army_id, V1_priv_type, V1_priv_f1, V1_priv_f2, V1_priv_f3, V1_game_name}) ->
    Data = <<
        V1_scene_id:32/signed-little,
        V1_user_id:32/signed-little,
        V1_user_level:8/signed,
        V1_dir:8/signed,
        V1_sex:8/signed,
        V1_profession:8/signed,
        V1_x:16/signed-little,
        V1_y:16/signed-little,
        V1_tx:16/signed-little,
        V1_ty:16/signed-little,
        V1_mount_level:8/signed,
        V1_mount_status:8/signed,
        V1_sit_status:8/signed,
        V1_vip_level:8/signed,
        V1_fabao_id:8/signed,
        V1_fabao_level:8/signed,
        V1_speed:16/signed-little,
        V1_fc:32/signed-little,
        V1_pk_mode:8/signed,
        V1_pk_state:8/signed,
        V1_action_state:8/signed,
        V1_beauty_level:8/signed,
        V1_army_id:16/little,
        V1_priv_type:16/signed-little,
        V1_priv_f1:32/signed-little,
        V1_priv_f2:32/signed-little,
        V1_priv_f3:16/signed-little,
        (byte_size(V1_game_name) + 1):16/little, V1_game_name/binary, 0
    >>,
    {ok, protocol:pack(1263, Data)};

pack(srv, 1264, {V1_scene_id, V1_user_id}) ->
    Data = <<
        V1_scene_id:32/signed-little,
        V1_user_id:32/signed-little
    >>,
    {ok, protocol:pack(1264, Data)};

pack(srv, 1265, {V1_scene_id, V1_user_id, V1_key, V1_value}) ->
    Data = <<
        V1_scene_id:32/signed-little,
        V1_user_id:32/signed-little,
        V1_key:32/signed-little,
        V1_value:32/signed-little
    >>,
    {ok, protocol:pack(1265, Data)};

pack(srv, 1266, {V1_scene_id, V1_type, V1_dir, V1_x, V1_y, V1_tx, V1_ty, V1_speed, V1_id, V1_obj_id, V1_time, V1_level, V1_state, V1_priv_type, V1_priv_f1, V1_priv_f2, V1_priv_f3, V1_name}) ->
    Data = <<
        V1_scene_id:32/signed-little,
        V1_type:8/signed,
        V1_dir:8/signed,
        V1_x:16/signed-little,
        V1_y:16/signed-little,
        V1_tx:16/signed-little,
        V1_ty:16/signed-little,
        V1_speed:16/signed-little,
        V1_id:32/signed-little,
        V1_obj_id:32/signed-little,
        V1_time:32/signed-little,
        V1_level:8/signed,
        V1_state:8/signed,
        V1_priv_type:16/signed-little,
        V1_priv_f1:32/signed-little,
        V1_priv_f2:32/signed-little,
        V1_priv_f3:16/signed-little,
        (byte_size(V1_name) + 1):16/little, V1_name/binary, 0
    >>,
    {ok, protocol:pack(1266, Data)};

pack(srv, 1267, {V1_scene_id, V1_obj_id}) ->
    Data = <<
        V1_scene_id:32/signed-little,
        V1_obj_id:32/signed-little
    >>,
    {ok, protocol:pack(1267, Data)};

pack(srv, 1268, {V1_scene_id, V1_obj_id, V1_key, V1_value}) ->
    Data = <<
        V1_scene_id:32/signed-little,
        V1_obj_id:32/signed-little,
        V1_key:32/signed-little,
        V1_value:32/signed-little
    >>,
    {ok, protocol:pack(1268, Data)};

pack(srv, 1269, {V1_scene_id, V1_obj_id, V1_x, V1_y, V1_tx, V1_ty}) ->
    Data = <<
        V1_scene_id:32/signed-little,
        V1_obj_id:32/signed-little,
        V1_x:16/signed-little,
        V1_y:16/signed-little,
        V1_tx:16/signed-little,
        V1_ty:16/signed-little
    >>,
    {ok, protocol:pack(1269, Data)};

pack(srv, 1270, {V1_scene_id, V1_obj_id, V1_x, V1_y}) ->
    Data = <<
        V1_scene_id:32/signed-little,
        V1_obj_id:32/signed-little,
        V1_x:16/signed-little,
        V1_y:16/signed-little
    >>,
    {ok, protocol:pack(1270, Data)};

pack(cli, 2001, {}) ->
    {ok, protocol:pack(2001, <<>>)};

pack(srv, 2051, {V1_user_id, V1_role_level, V1_professional, V1_sex, V1_headpicture, V1_vip_level, V1_scene_id, V1_scene_x, V1_scene_y, V1_coin, V1_gold, V1_speed, V1_gold_vip, V1_xinghun, V1_jiuli, V1_lingli, V1_silver, V1_score, V1_pk_mode, V1_pk_state, V1_action_state, V1_role_name}) ->
    Data = <<
        V1_user_id:32/signed-little,
        V1_role_level:16/little,
        V1_professional:8/signed,
        V1_sex:8/signed,
        V1_headpicture:8/signed,
        V1_vip_level:16/little,
        V1_scene_id:32/signed-little,
        V1_scene_x:16/signed-little,
        V1_scene_y:16/signed-little,
        V1_coin:32/little,
        V1_gold:32/little,
        V1_speed:32/little,
        V1_gold_vip:32/little,
        V1_xinghun:32/little,
        V1_jiuli:32/little,
        V1_lingli:32/little,
        V1_silver:32/little,
        V1_score:32/little,
        V1_pk_mode:8/signed,
        V1_pk_state:8/signed,
        V1_action_state:8/signed,
        (byte_size(V1_role_name) + 1):16/little, V1_role_name/binary, 0
    >>,
    {ok, protocol:pack(2051, Data)};

pack(cli, 2002, {}) ->
    {ok, protocol:pack(2002, <<>>)};

pack(srv, 2052, {V1_role}) ->
    Data = <<
        (length(V1_role)):16/little, (list_to_binary([<<
            V2_role_id:32/signed-little,
            V2_role_level:16/little,
            V2_role_type:8/signed,
            V2_professional:8/signed,
            V2_sex:16/little,
            V2_headpicture:16/little,
            V2_hp:32/little,
            V2_nuqi:32/little,
            V2_first_hand:32/little,
            V2_attack:32/little,
            V2_defence:32/little,
            V2_chuantourate:32/signed-little,
            V2_baojirate:32/signed-little,
            V2_kangbaorate:32/signed-little,
            V2_mingzhongrate:32/signed-little,
            V2_shanbirate:32/signed-little,
            V2_gedangrate:32/signed-little,
            V2_fc:32/signed-little,
            V2_wind:32/signed-little,
            V2_fire:32/signed-little,
            V2_water:32/signed-little,
            V2_soil:32/signed-little,
            V2_experience:32/little,
            V2_experience_next:32/little,
            V2_army_id:32/little,
            V2_user_post:8,
            V2_army_level:8,
            (byte_size(V2_role_name) + 1):16/little, V2_role_name/binary, 0,
            (byte_size(V2_army_name) + 1):16/little, V2_army_name/binary, 0,
            (length(V2_equip)):16/little, (list_to_binary([<<
                V3_id:32/little,
                V3_quality:16/little,
                V3_zhanhun:16/little,
                V3_strength_num:8,
                V3_index:8,
                (length(V3_baoshi)):8/little, (list_to_binary([<<
                    V4_baoshi_id:32/signed-little
                >> || V4_baoshi_id <- V3_baoshi]))/binary,
                (length(V3_xilian)):8/little, (list_to_binary([<<
                    V4_attr_id:8,
                    V4_star:8,
                    V4_add_value:16/little
                >> || {V4_attr_id, V4_star, V4_add_value} <- V3_xilian]))/binary
            >> || {V3_id, V3_quality, V3_zhanhun, V3_strength_num, V3_index, V3_baoshi, V3_xilian} <- V2_equip]))/binary
        >> || {V2_role_id, V2_role_level, V2_role_type, V2_professional, V2_sex, V2_headpicture, V2_hp, V2_nuqi, V2_first_hand, V2_attack, V2_defence, V2_chuantourate, V2_baojirate, V2_kangbaorate, V2_mingzhongrate, V2_shanbirate, V2_gedangrate, V2_fc, V2_wind, V2_fire, V2_water, V2_soil, V2_experience, V2_experience_next, V2_army_id, V2_user_post, V2_army_level, V2_role_name, V2_army_name, V2_equip} <- V1_role]))/binary
    >>,
    {ok, protocol:pack(2052, Data)};

pack(cli, 2003, {V1_user_id}) ->
    Data = <<
        V1_user_id:32/signed-little
    >>,
    {ok, protocol:pack(2003, Data)};

pack(srv, 2053, {V1_role}) ->
    Data = <<
        (length(V1_role)):16/little, (list_to_binary([<<
            V2_role_id:32/signed-little,
            V2_role_level:16/little,
            V2_role_type:8/signed,
            V2_professional:8/signed,
            V2_sex:16/little,
            V2_headpicture:16/little,
            V2_hp:32/little,
            V2_nuqi:32/little,
            V2_first_hand:32/little,
            V2_attack:32/little,
            V2_defence:32/little,
            V2_chuantourate:32/signed-little,
            V2_baojirate:32/signed-little,
            V2_kangbaorate:32/signed-little,
            V2_mingzhongrate:32/signed-little,
            V2_shanbirate:32/signed-little,
            V2_gedangrate:32/signed-little,
            V2_fc:32/signed-little,
            V2_wind:32/signed-little,
            V2_fire:32/signed-little,
            V2_water:32/signed-little,
            V2_soil:32/signed-little,
            V2_experience:32/little,
            V2_experience_next:32/little,
            V2_army_id:32/little,
            V2_user_post:8,
            V2_army_level:8,
            (byte_size(V2_role_name) + 1):16/little, V2_role_name/binary, 0,
            (byte_size(V2_army_name) + 1):16/little, V2_army_name/binary, 0,
            (length(V2_equip)):16/little, (list_to_binary([<<
                V3_id:32/little,
                V3_quality:16/little,
                V3_zhanhun:16/little,
                V3_strength_num:8,
                V3_index:8,
                (length(V3_baoshi)):8/little, (list_to_binary([<<
                    V4_baoshi_id:32/signed-little
                >> || V4_baoshi_id <- V3_baoshi]))/binary,
                (length(V3_xilian)):8/little, (list_to_binary([<<
                    V4_attr_id:8,
                    V4_star:8,
                    V4_add_value:16/little
                >> || {V4_attr_id, V4_star, V4_add_value} <- V3_xilian]))/binary
            >> || {V3_id, V3_quality, V3_zhanhun, V3_strength_num, V3_index, V3_baoshi, V3_xilian} <- V2_equip]))/binary
        >> || {V2_role_id, V2_role_level, V2_role_type, V2_professional, V2_sex, V2_headpicture, V2_hp, V2_nuqi, V2_first_hand, V2_attack, V2_defence, V2_chuantourate, V2_baojirate, V2_kangbaorate, V2_mingzhongrate, V2_shanbirate, V2_gedangrate, V2_fc, V2_wind, V2_fire, V2_water, V2_soil, V2_experience, V2_experience_next, V2_army_id, V2_user_post, V2_army_level, V2_role_name, V2_army_name, V2_equip} <- V1_role]))/binary
    >>,
    {ok, protocol:pack(2053, Data)};

pack(srv, 2061, {V1_result, V1_gold_all, V1_gold_get}) ->
    Data = <<
        V1_result:32/signed-little,
        V1_gold_all:32/signed-little,
        V1_gold_get:32/signed-little
    >>,
    {ok, protocol:pack(2061, Data)};

pack(srv, 2062, {V1_coin}) ->
    Data = <<
        V1_coin:32/little
    >>,
    {ok, protocol:pack(2062, Data)};

pack(srv, 2063, {V1_gold}) ->
    Data = <<
        V1_gold:32/little
    >>,
    {ok, protocol:pack(2063, Data)};

pack(srv, 2064, {V1_attr_value, V1_attr_type}) ->
    Data = <<
        V1_attr_value:32/signed-little,
        V1_attr_type:8
    >>,
    {ok, protocol:pack(2064, Data)};

pack(srv, 2065, {V1_attr_value, V1_attr_type}) ->
    Data = <<
        V1_attr_value:32/little,
        V1_attr_type:8
    >>,
    {ok, protocol:pack(2065, Data)};

pack(srv, 2067, {V1_xinghun}) ->
    Data = <<
        V1_xinghun:32/little
    >>,
    {ok, protocol:pack(2067, Data)};

pack(srv, 2068, {V1_lingli}) ->
    Data = <<
        V1_lingli:32/little
    >>,
    {ok, protocol:pack(2068, Data)};

pack(srv, 2069, {V1_jiuli}) ->
    Data = <<
        V1_jiuli:32/little
    >>,
    {ok, protocol:pack(2069, Data)};

pack(srv, 2070, {V1_silver}) ->
    Data = <<
        V1_silver:32/little
    >>,
    {ok, protocol:pack(2070, Data)};

pack(srv, 2071, {V1_name}) ->
    Data = <<
        (byte_size(V1_name) + 1):16/little, V1_name/binary, 0
    >>,
    {ok, protocol:pack(2071, Data)};

pack(cli, 2022, {V1_type, V1_id}) ->
    Data = <<
        V1_type:32/little,
        V1_id:32/little
    >>,
    {ok, protocol:pack(2022, Data)};

pack(srv, 2072, {V1_type, V1_id}) ->
    Data = <<
        V1_type:32/little,
        V1_id:32/little
    >>,
    {ok, protocol:pack(2072, Data)};

pack(srv, 2073, {V1_score}) ->
    Data = <<
        V1_score:32/little
    >>,
    {ok, protocol:pack(2073, Data)};

pack(cli, 2024, {}) ->
    {ok, protocol:pack(2024, <<>>)};

pack(srv, 2074, {V1_silver, V1_activity_list}) ->
    Data = <<
        V1_silver:32/little,
        (length(V1_activity_list)):8/little, (list_to_binary([<<
            V2_id:8,
            V2_activity_type:8,
            V2_state:8,
            V2_open_time:32/little
        >> || {V2_id, V2_activity_type, V2_state, V2_open_time} <- V1_activity_list]))/binary
    >>,
    {ok, protocol:pack(2074, Data)};

pack(srv, 2075, {V1_id, V1_activity_type, V1_state, V1_act_silver}) ->
    Data = <<
        V1_id:8,
        V1_activity_type:8,
        V1_state:8,
        V1_act_silver:32/little
    >>,
    {ok, protocol:pack(2075, Data)};

pack(srv, 2076, {}) ->
    {ok, protocol:pack(2076, <<>>)};

pack(cli, 2027, {}) ->
    {ok, protocol:pack(2027, <<>>)};

pack(srv, 2077, {}) ->
    {ok, protocol:pack(2077, <<>>)};

pack(srv, 2078, {}) ->
    {ok, protocol:pack(2078, <<>>)};

pack(cli, 2029, {}) ->
    {ok, protocol:pack(2029, <<>>)};

pack(cli, 2201, {}) ->
    {ok, protocol:pack(2201, <<>>)};

pack(srv, 2251, {V1_can_submit, V1_history, V1_running_task, V1_xs_running_task}) ->
    Data = <<
        (length(V1_can_submit)):16/little, (list_to_binary([<<
            V2_task_id:32/signed-little
        >> || V2_task_id <- V1_can_submit]))/binary,
        (length(V1_history)):16/little, (list_to_binary([<<
            V2_task_id:32/signed-little,
            V2_continue_num:32/signed-little
        >> || {V2_task_id, V2_continue_num} <- V1_history]))/binary,
        (length(V1_running_task)):16/little, (list_to_binary([<<
            V2_id:32/signed-little,
            V2_curr_status:8/signed,
            V2_curr_section:8/signed,
            (length(V2_curr_unit)):16/little, (list_to_binary([<<
                V3_index:16/little,
                V3_curr_num:16/little
            >> || {V3_index, V3_curr_num} <- V2_curr_unit]))/binary
        >> || {V2_id, V2_curr_status, V2_curr_section, V2_curr_unit} <- V1_running_task]))/binary,
        (length(V1_xs_running_task)):16/little, (list_to_binary([<<
            V2_id:32/signed-little,
            V2_task_index:8/signed,
            V2_task_color:8/signed,
            V2_task_level:8/signed,
            V2_curr_status:8/signed,
            V2_curr_section:16/little,
            (length(V2_curr_unit)):16/little, (list_to_binary([<<
                V3_index:16/little,
                V3_curr_num:16/little
            >> || {V3_index, V3_curr_num} <- V2_curr_unit]))/binary
        >> || {V2_id, V2_task_index, V2_task_color, V2_task_level, V2_curr_status, V2_curr_section, V2_curr_unit} <- V1_xs_running_task]))/binary
    >>,
    {ok, protocol:pack(2251, Data)};

pack(cli, 2202, {V1_task_id}) ->
    Data = <<
        V1_task_id:32/signed-little
    >>,
    {ok, protocol:pack(2202, Data)};

pack(srv, 2252, {V1_can_submit, V1_running_task}) ->
    Data = <<
        (length(V1_can_submit)):16/little, (list_to_binary([<<
            V2_task_id:32/signed-little
        >> || V2_task_id <- V1_can_submit]))/binary,
        (length(V1_running_task)):16/little, (list_to_binary([<<
            V2_id:32/signed-little,
            V2_curr_status:8/signed,
            V2_curr_section:8/signed,
            (length(V2_curr_unit)):16/little, (list_to_binary([<<
                V3_index:16/little,
                V3_curr_num:16/little
            >> || {V3_index, V3_curr_num} <- V2_curr_unit]))/binary
        >> || {V2_id, V2_curr_status, V2_curr_section, V2_curr_unit} <- V1_running_task]))/binary
    >>,
    {ok, protocol:pack(2252, Data)};

pack(cli, 2203, {V1_task_id}) ->
    Data = <<
        V1_task_id:32/signed-little
    >>,
    {ok, protocol:pack(2203, Data)};

pack(srv, 2253, {V1_task_id}) ->
    Data = <<
        V1_task_id:32/signed-little
    >>,
    {ok, protocol:pack(2253, Data)};

pack(cli, 2204, {V1_task_id}) ->
    Data = <<
        V1_task_id:32/signed-little
    >>,
    {ok, protocol:pack(2204, Data)};

pack(srv, 2254, {V1_task_id}) ->
    Data = <<
        V1_task_id:32/signed-little
    >>,
    {ok, protocol:pack(2254, Data)};

pack(cli, 2205, {}) ->
    {ok, protocol:pack(2205, <<>>)};

pack(srv, 2255, {V1_star_val, V1_get_reward, V1_task_curr_count, V1_refresh_count, V1_xs_running_task}) ->
    Data = <<
        V1_star_val:8/signed,
        V1_get_reward:8/signed,
        V1_task_curr_count:8/signed,
        V1_refresh_count:16/little,
        (length(V1_xs_running_task)):16/little, (list_to_binary([<<
            V2_id:32/signed-little,
            V2_task_index:8/signed,
            V2_task_color:8/signed,
            V2_task_level:8/signed,
            V2_curr_status:8/signed,
            V2_curr_section:16/little,
            (length(V2_curr_unit)):16/little, (list_to_binary([<<
                V3_index:16/little,
                V3_curr_num:16/little
            >> || {V3_index, V3_curr_num} <- V2_curr_unit]))/binary
        >> || {V2_id, V2_task_index, V2_task_color, V2_task_level, V2_curr_status, V2_curr_section, V2_curr_unit} <- V1_xs_running_task]))/binary
    >>,
    {ok, protocol:pack(2255, Data)};

pack(cli, 2206, {V1_task_id, V1_task_index}) ->
    Data = <<
        V1_task_id:32/signed-little,
        V1_task_index:32/signed-little
    >>,
    {ok, protocol:pack(2206, Data)};

pack(srv, 2256, {V1_task_id, V1_task_index, V1_xs_running_task}) ->
    Data = <<
        V1_task_id:32/signed-little,
        V1_task_index:16/little,
        (length(V1_xs_running_task)):16/little, (list_to_binary([<<
            V2_id:32/signed-little,
            V2_task_index:8/signed,
            V2_task_color:8/signed,
            V2_task_level:8/signed,
            V2_curr_status:8/signed,
            V2_curr_section:16/little,
            (length(V2_curr_unit)):16/little, (list_to_binary([<<
                V3_index:16/little,
                V3_curr_num:16/little
            >> || {V3_index, V3_curr_num} <- V2_curr_unit]))/binary
        >> || {V2_id, V2_task_index, V2_task_color, V2_task_level, V2_curr_status, V2_curr_section, V2_curr_unit} <- V1_xs_running_task]))/binary
    >>,
    {ok, protocol:pack(2256, Data)};

pack(cli, 2207, {V1_task_id}) ->
    Data = <<
        V1_task_id:32/signed-little
    >>,
    {ok, protocol:pack(2207, Data)};

pack(srv, 2257, {V1_task_id, V1_task_index}) ->
    Data = <<
        V1_task_id:32/signed-little,
        V1_task_index:32/signed-little
    >>,
    {ok, protocol:pack(2257, Data)};

pack(cli, 2208, {V1_task_id}) ->
    Data = <<
        V1_task_id:32/signed-little
    >>,
    {ok, protocol:pack(2208, Data)};

pack(srv, 2258, {V1_task_id, V1_task_index}) ->
    Data = <<
        V1_task_id:32/little,
        V1_task_index:32/little
    >>,
    {ok, protocol:pack(2258, Data)};

pack(cli, 2209, {V1_task_id, V1_task_index}) ->
    Data = <<
        V1_task_id:32/signed-little,
        V1_task_index:32/signed-little
    >>,
    {ok, protocol:pack(2209, Data)};

pack(srv, 2259, {V1_task_id, V1_task_index}) ->
    Data = <<
        V1_task_id:32/little,
        V1_task_index:32/little
    >>,
    {ok, protocol:pack(2259, Data)};

pack(cli, 2210, {V1_op_type}) ->
    Data = <<
        V1_op_type:32/signed-little
    >>,
    {ok, protocol:pack(2210, Data)};

pack(srv, 2260, {V1_free_refresh_times, V1_xs_running_task}) ->
    Data = <<
        V1_free_refresh_times:32/little,
        (length(V1_xs_running_task)):16/little, (list_to_binary([<<
            V2_id:32/signed-little,
            V2_task_index:8/signed,
            V2_task_color:8/signed,
            V2_task_level:8/signed,
            V2_curr_status:8/signed,
            V2_curr_section:16/little,
            (length(V2_curr_unit)):16/little, (list_to_binary([<<
                V3_index:16/little,
                V3_curr_num:16/little
            >> || {V3_index, V3_curr_num} <- V2_curr_unit]))/binary
        >> || {V2_id, V2_task_index, V2_task_color, V2_task_level, V2_curr_status, V2_curr_section, V2_curr_unit} <- V1_xs_running_task]))/binary
    >>,
    {ok, protocol:pack(2260, Data)};

pack(cli, 2211, {}) ->
    {ok, protocol:pack(2211, <<>>)};

pack(srv, 2261, {V1_gold_sub, V1_orange_state, V1_remain_time_orange}) ->
    Data = <<
        V1_gold_sub:16/little,
        V1_orange_state:16/little,
        V1_remain_time_orange:32/little
    >>,
    {ok, protocol:pack(2261, Data)};

pack(srv, 2262, {V1_running_task}) ->
    Data = <<
        (length(V1_running_task)):16/little, (list_to_binary([<<
            V2_id:32/signed-little,
            V2_curr_status:8/signed,
            V2_curr_section:8/signed,
            (length(V2_curr_unit)):16/little, (list_to_binary([<<
                V3_index:16/little,
                V3_curr_num:16/little
            >> || {V3_index, V3_curr_num} <- V2_curr_unit]))/binary
        >> || {V2_id, V2_curr_status, V2_curr_section, V2_curr_unit} <- V1_running_task]))/binary
    >>,
    {ok, protocol:pack(2262, Data)};

pack(cli, 2213, {}) ->
    {ok, protocol:pack(2213, <<>>)};

pack(srv, 2263, {V1_task_id}) ->
    Data = <<
        V1_task_id:32/little
    >>,
    {ok, protocol:pack(2263, Data)};

pack(cli, 2214, {V1_map_id}) ->
    Data = <<
        V1_map_id:16/little
    >>,
    {ok, protocol:pack(2214, Data)};

pack(srv, 2264, {V1_collect_list}) ->
    Data = <<
        (length(V1_collect_list)):8/little, (list_to_binary([<<
            V2_id:32/little,
            V2_state:8
        >> || {V2_id, V2_state} <- V1_collect_list]))/binary
    >>,
    {ok, protocol:pack(2264, Data)};

pack(cli, 2401, {}) ->
    {ok, protocol:pack(2401, <<>>)};

pack(srv, 2451, {V1_fabao_level, V1_zizhi_level, V1_quality_level, V1_fabao_exp, V1_quality_exp, V1_zizhi_list, V1_fabao_list}) ->
    Data = <<
        V1_fabao_level:16/little,
        V1_zizhi_level:8,
        V1_quality_level:8,
        V1_fabao_exp:32/little,
        V1_quality_exp:32/little,
        (length(V1_zizhi_list)):8/little, (list_to_binary([<<
            V2_zizhi_id:16/little,
            V2_zizhi_level:16/little
        >> || {V2_zizhi_id, V2_zizhi_level} <- V1_zizhi_list]))/binary,
        (length(V1_fabao_list)):8/little, (list_to_binary([<<
            V2_fabao_id:8,
            V2_fabao_state:8,
            V2_group_index:16/little,
            V2_body_id:16/little,
            (length(V2_skill_group)):8/little, (list_to_binary([<<
                V3_skill1:8,
                V3_skill2:8,
                V3_skill3:8,
                V3_skill4:8
            >> || {V3_skill1, V3_skill2, V3_skill3, V3_skill4} <- V2_skill_group]))/binary
        >> || {V2_fabao_id, V2_fabao_state, V2_group_index, V2_body_id, V2_skill_group} <- V1_fabao_list]))/binary
    >>,
    {ok, protocol:pack(2451, Data)};

pack(cli, 2402, {V1_fabao_id, V1_fabao_state}) ->
    Data = <<
        V1_fabao_id:16/little,
        V1_fabao_state:16/little
    >>,
    {ok, protocol:pack(2402, Data)};

pack(srv, 2452, {V1_fabao_state_change_list}) ->
    Data = <<
        (length(V1_fabao_state_change_list)):8/little, (list_to_binary([<<
            V2_fabao_id:16/little,
            V2_fabao_state:16/little
        >> || {V2_fabao_id, V2_fabao_state} <- V1_fabao_state_change_list]))/binary
    >>,
    {ok, protocol:pack(2452, Data)};

pack(cli, 2403, {V1_fabao_id}) ->
    Data = <<
        V1_fabao_id:16/little
    >>,
    {ok, protocol:pack(2403, Data)};

pack(srv, 2453, {V1_fabao_id, V1_huanhua_level, V1_attr_list}) ->
    Data = <<
        V1_fabao_id:16/little,
        V1_huanhua_level:8/signed,
        (length(V1_attr_list)):8/little, (list_to_binary([<<
            V2_attr_id:8,
            V2_value:32/little
        >> || {V2_attr_id, V2_value} <- V1_attr_list]))/binary
    >>,
    {ok, protocol:pack(2453, Data)};

pack(cli, 2404, {V1_fabao_id}) ->
    Data = <<
        V1_fabao_id:16/little
    >>,
    {ok, protocol:pack(2404, Data)};

pack(srv, 2454, {V1_fabao_id, V1_curr_exp, V1_quality_level, V1_attr_list}) ->
    Data = <<
        V1_fabao_id:16/little,
        V1_curr_exp:32/signed-little,
        V1_quality_level:16/little,
        (length(V1_attr_list)):8/little, (list_to_binary([<<
            V2_attr_id:8,
            V2_value:32/little
        >> || {V2_attr_id, V2_value} <- V1_attr_list]))/binary
    >>,
    {ok, protocol:pack(2454, Data)};

pack(cli, 2405, {V1_fabao_id, V1_is_atuo_feed}) ->
    Data = <<
        V1_fabao_id:16/little,
        V1_is_atuo_feed:8
    >>,
    {ok, protocol:pack(2405, Data)};

pack(srv, 2455, {V1_fabao_id, V1_feed_exp, V1_lingli_value, V1_fabao_level, V1_add_exp, V1_attr_list}) ->
    Data = <<
        V1_fabao_id:16/little,
        V1_feed_exp:32/signed-little,
        V1_lingli_value:32/signed-little,
        V1_fabao_level:16/little,
        V1_add_exp:32/little,
        (length(V1_attr_list)):8/little, (list_to_binary([<<
            V2_attr_id:8,
            V2_value:32/little
        >> || {V2_attr_id, V2_value} <- V1_attr_list]))/binary
    >>,
    {ok, protocol:pack(2455, Data)};

pack(cli, 2406, {V1_fabao_id, V1_attr_type}) ->
    Data = <<
        V1_fabao_id:16/little,
        V1_attr_type:8/signed
    >>,
    {ok, protocol:pack(2406, Data)};

pack(srv, 2456, {V1_fabao_id, V1_zizhi_id, V1_zizhi_level, V1_zizhi_list}) ->
    Data = <<
        V1_fabao_id:16/little,
        V1_zizhi_id:16/little,
        V1_zizhi_level:16/little,
        (length(V1_zizhi_list)):8/little, (list_to_binary([<<
            V2_attr_id:8,
            V2_zizhi_val:32/little
        >> || {V2_attr_id, V2_zizhi_val} <- V1_zizhi_list]))/binary
    >>,
    {ok, protocol:pack(2456, Data)};

pack(cli, 2407, {V1_target_fabao_id, V1_source_fabao_id}) ->
    Data = <<
        V1_target_fabao_id:16/little,
        V1_source_fabao_id:16/little
    >>,
    {ok, protocol:pack(2407, Data)};

pack(srv, 2457, {V1_delete_fabao_id, V1_fabao_list}) ->
    Data = <<
        V1_delete_fabao_id:16/little,
        (length(V1_fabao_list)):8/little, (list_to_binary([<<
            V2_fabao_id:8,
            V2_fabao_state:8,
            V2_group_index:16/little,
            V2_body_id:16/little,
            (length(V2_skill_group)):8/little, (list_to_binary([<<
                V3_skill1:8,
                V3_skill2:8,
                V3_skill3:8,
                V3_skill4:8
            >> || {V3_skill1, V3_skill2, V3_skill3, V3_skill4} <- V2_skill_group]))/binary
        >> || {V2_fabao_id, V2_fabao_state, V2_group_index, V2_body_id, V2_skill_group} <- V1_fabao_list]))/binary
    >>,
    {ok, protocol:pack(2457, Data)};

pack(srv, 2458, {V1_fabao_list}) ->
    Data = <<
        (length(V1_fabao_list)):8/little, (list_to_binary([<<
            V2_fabao_id:8,
            V2_fabao_state:8,
            V2_group_index:16/little,
            V2_body_id:16/little,
            (length(V2_skill_group)):8/little, (list_to_binary([<<
                V3_skill1:8,
                V3_skill2:8,
                V3_skill3:8,
                V3_skill4:8
            >> || {V3_skill1, V3_skill2, V3_skill3, V3_skill4} <- V2_skill_group]))/binary
        >> || {V2_fabao_id, V2_fabao_state, V2_group_index, V2_body_id, V2_skill_group} <- V1_fabao_list]))/binary
    >>,
    {ok, protocol:pack(2458, Data)};

pack(cli, 2409, {}) ->
    {ok, protocol:pack(2409, <<>>)};

pack(srv, 2459, {V1_skill_id_list}) ->
    Data = <<
        (length(V1_skill_id_list)):8/little, (list_to_binary([<<
            V2_skill_id:16/little,
            V2_skill_level:8,
            V2_skill_exp:32/little
        >> || {V2_skill_id, V2_skill_level, V2_skill_exp} <- V1_skill_id_list]))/binary
    >>,
    {ok, protocol:pack(2459, Data)};

pack(cli, 2410, {V1_skill_id}) ->
    Data = <<
        V1_skill_id:8
    >>,
    {ok, protocol:pack(2410, Data)};

pack(srv, 2460, {V1_skill_id, V1_skill_exp, V1_skill_exp}) ->
    Data = <<
        V1_skill_id:8,
        V1_skill_exp:8,
        V1_skill_exp:32/little
    >>,
    {ok, protocol:pack(2460, Data)};

pack(cli, 2411, {V1_fabao_id, V1_skill_id, V1_group_index, V1_slot_id}) ->
    Data = <<
        V1_fabao_id:16/little,
        V1_skill_id:8,
        V1_group_index:8,
        V1_slot_id:8
    >>,
    {ok, protocol:pack(2411, Data)};

pack(srv, 2461, {V1_fabao_id, V1_skill_id, V1_group_index, V1_slot_id}) ->
    Data = <<
        V1_fabao_id:16/little,
        V1_skill_id:8,
        V1_group_index:8,
        V1_slot_id:8
    >>,
    {ok, protocol:pack(2461, Data)};

pack(cli, 2412, {V1_fabao_id, V1_group_index}) ->
    Data = <<
        V1_fabao_id:16/little,
        V1_group_index:8
    >>,
    {ok, protocol:pack(2412, Data)};

pack(srv, 2462, {V1_fabao_id, V1_group_index}) ->
    Data = <<
        V1_fabao_id:16/little,
        V1_group_index:8
    >>,
    {ok, protocol:pack(2462, Data)};

pack(cli, 2413, {V1_skill_id}) ->
    Data = <<
        V1_skill_id:8
    >>,
    {ok, protocol:pack(2413, Data)};

pack(srv, 2463, {V1_skill_id, V1_skill_level, V1_reward_exp, V1_curr_exp}) ->
    Data = <<
        V1_skill_id:8,
        V1_skill_level:8,
        V1_reward_exp:32/little,
        V1_curr_exp:32/little
    >>,
    {ok, protocol:pack(2463, Data)};

pack(cli, 2414, {V1_fabao_id, V1_skill_id, V1_group_index, V1_slot_id}) ->
    Data = <<
        V1_fabao_id:16/little,
        V1_skill_id:8,
        V1_group_index:8,
        V1_slot_id:8
    >>,
    {ok, protocol:pack(2414, Data)};

pack(srv, 2464, {V1_fabao_id, V1_skill_id, V1_group_index, V1_slot_id}) ->
    Data = <<
        V1_fabao_id:16/little,
        V1_skill_id:8,
        V1_group_index:8,
        V1_slot_id:8
    >>,
    {ok, protocol:pack(2464, Data)};

pack(cli, 3001, {}) ->
    {ok, protocol:pack(3001, <<>>)};

pack(srv, 3051, {V1_item}) ->
    Data = <<
        (length(V1_item)):16/little, (list_to_binary([<<
            V2_id:32/little,
            V2_num:32/little,
            V2_time:32/little,
            V2_index:16/little,
            V2_quality:16/little,
            V2_zhanhun:8,
            V2_strength_num:8,
            (length(V2_baoshi)):8/little, (list_to_binary([<<
                V3_baoshi_id:32/signed-little
            >> || V3_baoshi_id <- V2_baoshi]))/binary,
            (length(V2_xilian)):8/little, (list_to_binary([<<
                V3_attr_id:8,
                V3_star:8,
                V3_add_value:16/little
            >> || {V3_attr_id, V3_star, V3_add_value} <- V2_xilian]))/binary
        >> || {V2_id, V2_num, V2_time, V2_index, V2_quality, V2_zhanhun, V2_strength_num, V2_baoshi, V2_xilian} <- V1_item]))/binary
    >>,
    {ok, protocol:pack(3051, Data)};

pack(cli, 3002, {V1_index, V1_count}) ->
    Data = <<
        V1_index:32/signed-little,
        V1_count:16/signed-little
    >>,
    {ok, protocol:pack(3002, Data)};

pack(cli, 3003, {V1_index}) ->
    Data = <<
        V1_index:32/signed-little
    >>,
    {ok, protocol:pack(3003, Data)};

pack(cli, 3004, {V1_index_from, V1_index_to}) ->
    Data = <<
        V1_index_from:16/little,
        V1_index_to:16/little
    >>,
    {ok, protocol:pack(3004, Data)};

pack(srv, 3054, {V1_index_from, V1_index_to}) ->
    Data = <<
        V1_index_from:16/little,
        V1_index_to:16/little
    >>,
    {ok, protocol:pack(3054, Data)};

pack(srv, 3055, {V1_item}) ->
    Data = <<
        (length(V1_item)):16/little, (list_to_binary([<<
            V2_id:32/little,
            V2_num:32/little,
            V2_time:32/little,
            V2_index:16/little,
            V2_quality:16/little,
            V2_zhanhun:8,
            V2_strength_num:8,
            (length(V2_baoshi)):8/little, (list_to_binary([<<
                V3_baoshi_id:32/signed-little
            >> || V3_baoshi_id <- V2_baoshi]))/binary,
            (length(V2_xilian)):8/little, (list_to_binary([<<
                V3_attr_id:8,
                V3_star:8,
                V3_add_value:16/little
            >> || {V3_attr_id, V3_star, V3_add_value} <- V2_xilian]))/binary
        >> || {V2_id, V2_num, V2_time, V2_index, V2_quality, V2_zhanhun, V2_strength_num, V2_baoshi, V2_xilian} <- V1_item]))/binary
    >>,
    {ok, protocol:pack(3055, Data)};

pack(cli, 3006, {}) ->
    {ok, protocol:pack(3006, <<>>)};

pack(cli, 3101, {V1_role_id, V1_index}) ->
    Data = <<
        V1_role_id:16/signed-little,
        V1_index:16/signed-little
    >>,
    {ok, protocol:pack(3101, Data)};

pack(cli, 3102, {V1_index, V1_use_baohu, V1_use_xingyun, V1_auto_buy}) ->
    Data = <<
        V1_index:16/signed-little,
        V1_use_baohu:8/signed,
        V1_use_xingyun:8/signed,
        V1_auto_buy:8/signed
    >>,
    {ok, protocol:pack(3102, Data)};

pack(srv, 3152, {V1_index, V1_is_succeed, V1_strength_num}) ->
    Data = <<
        V1_index:8/signed,
        V1_is_succeed:8/signed,
        V1_strength_num:8/signed
    >>,
    {ok, protocol:pack(3152, Data)};

pack(cli, 3103, {V1_item_id, V1_index, V1_auto_buy, V1_lock}) ->
    Data = <<
        V1_item_id:32/signed-little,
        V1_index:8/signed,
        V1_auto_buy:8/signed,
        (length(V1_lock)):8/little, (list_to_binary([<<
            V2_lock_index:8
        >> || V2_lock_index <- V1_lock]))/binary
    >>,
    {ok, protocol:pack(3103, Data)};

pack(srv, 3153, {V1_index, V1_xilian}) ->
    Data = <<
        V1_index:8/signed,
        (length(V1_xilian)):8/little, (list_to_binary([<<
            V2_attr_id:8,
            V2_star:8,
            V2_add_value:16/little
        >> || {V2_attr_id, V2_star, V2_add_value} <- V1_xilian]))/binary
    >>,
    {ok, protocol:pack(3153, Data)};

pack(cli, 3104, {V1_index, V1_auto_buy}) ->
    Data = <<
        V1_index:8/signed,
        V1_auto_buy:8/signed
    >>,
    {ok, protocol:pack(3104, Data)};

pack(srv, 3154, {V1_index, V1_is_succeed, V1_quality, V1_zhanhun}) ->
    Data = <<
        V1_index:16/signed-little,
        V1_is_succeed:16/signed-little,
        V1_quality:16/signed-little,
        V1_zhanhun:16/signed-little
    >>,
    {ok, protocol:pack(3154, Data)};

pack(srv, 3155, {V1_ope_type, V1_equip_list}) ->
    Data = <<
        V1_ope_type:16/little,
        (length(V1_equip_list)):8/little, (list_to_binary([<<
            V2_id:32/little,
            V2_quality:16/little,
            V2_zhanhun:16/little,
            V2_strength_num:8,
            V2_index:8,
            (length(V2_baoshi)):8/little, (list_to_binary([<<
                V3_baoshi_id:32/signed-little
            >> || V3_baoshi_id <- V2_baoshi]))/binary,
            (length(V2_xilian)):8/little, (list_to_binary([<<
                V3_attr_id:8,
                V3_star:8,
                V3_add_value:16/little
            >> || {V3_attr_id, V3_star, V3_add_value} <- V2_xilian]))/binary
        >> || {V2_id, V2_quality, V2_zhanhun, V2_strength_num, V2_index, V2_baoshi, V2_xilian} <- V1_equip_list]))/binary
    >>,
    {ok, protocol:pack(3155, Data)};

pack(cli, 3106, {V1_item_id, V1_index, V1_lock_data}) ->
    Data = <<
        V1_item_id:32/signed-little,
        V1_index:8/signed,
        (length(V1_lock_data)):8/little, (list_to_binary([<<
            V2_data:8
        >> || V2_data <- V1_lock_data]))/binary
    >>,
    {ok, protocol:pack(3106, Data)};

pack(srv, 3156, {V1_index, V1_xilian_list}) ->
    Data = <<
        V1_index:8/signed,
        (length(V1_xilian_list)):8/little, (list_to_binary([<<
            V2_attr_id:8,
            V2_star:8,
            V2_add_value:16/little
        >> || {V2_attr_id, V2_star, V2_add_value} <- V1_xilian_list]))/binary
    >>,
    {ok, protocol:pack(3156, Data)};

pack(cli, 3107, {V1_index}) ->
    Data = <<
        V1_index:8/signed
    >>,
    {ok, protocol:pack(3107, Data)};

pack(srv, 3157, {V1_result}) ->
    Data = <<
        V1_result:32/signed-little
    >>,
    {ok, protocol:pack(3157, Data)};

pack(cli, 3108, {V1_master_index, V1_slave_index, V1_xilian_index}) ->
    Data = <<
        V1_master_index:16/signed-little,
        V1_slave_index:16/signed-little,
        V1_xilian_index:8/signed
    >>,
    {ok, protocol:pack(3108, Data)};

pack(cli, 3110, {V1_item_id}) ->
    Data = <<
        V1_item_id:32/signed-little
    >>,
    {ok, protocol:pack(3110, Data)};

pack(srv, 3160, {V1_item_id}) ->
    Data = <<
        V1_item_id:32/signed-little
    >>,
    {ok, protocol:pack(3160, Data)};

pack(cli, 3111, {}) ->
    {ok, protocol:pack(3111, <<>>)};

pack(srv, 3161, {V1_blue_hun, V1_golden_hun, V1_purple_hun, V1_orange_hun}) ->
    Data = <<
        V1_blue_hun:32/signed-little,
        V1_golden_hun:32/signed-little,
        V1_purple_hun:32/signed-little,
        V1_orange_hun:32/signed-little
    >>,
    {ok, protocol:pack(3161, Data)};

pack(cli, 3112, {V1_color, V1_card_index, V1_is_gold}) ->
    Data = <<
        V1_color:8/signed,
        V1_card_index:8/signed,
        V1_is_gold:8/signed
    >>,
    {ok, protocol:pack(3112, Data)};

pack(srv, 3162, {V1_color, V1_card_index, V1_hun_index}) ->
    Data = <<
        V1_color:8/signed,
        V1_card_index:8/signed,
        V1_hun_index:8/signed
    >>,
    {ok, protocol:pack(3162, Data)};

pack(srv, 3158, {V1_result}) ->
    Data = <<
        V1_result:32/signed-little
    >>,
    {ok, protocol:pack(3158, Data)};

pack(cli, 3201, {V1_fuben_id, V1_guanqia}) ->
    Data = <<
        V1_fuben_id:16/little,
        V1_guanqia:16/little
    >>,
    {ok, protocol:pack(3201, Data)};

pack(srv, 3251, {V1_coin, V1_gold, V1_experience, V1_winner_id, V1_front_plot, V1_back_plot, V1_role_info, V1_competitor_info, V1_fighting_result, V1_item_rw}) ->
    Data = <<
        V1_coin:32/little,
        V1_gold:32/little,
        V1_experience:32/little,
        V1_winner_id:8/signed,
        V1_front_plot:32/signed-little,
        V1_back_plot:32/signed-little,
        (length(V1_role_info)):8/little, (list_to_binary([<<
            V2_role_id:32/signed-little,
            V2_role_type:8/signed,
            V2_role_level:8/signed,
            V2_professional:8/signed,
            V2_sex:8/signed,
            V2_headpicture:8/signed,
            V2_position:8/signed,
            V2_actor_id:8/signed,
            V2_experience:32/little,
            V2_experience_next:32/little,
            V2_hp:32/little,
            V2_nuqi:32/little,
            V2_nuqi_max:32/little,
            V2_nuqi_skill_id:32/little,
            V2_bo_index:8,
            V2_fabao_id:16/little,
            V2_fabao_huanhua_lev:8,
            V2_fabao_level:16/little,
            V2_fabao_yinji:16/little,
            (byte_size(V2_role_name) + 1):16/little, V2_role_name/binary, 0
        >> || {V2_role_id, V2_role_type, V2_role_level, V2_professional, V2_sex, V2_headpicture, V2_position, V2_actor_id, V2_experience, V2_experience_next, V2_hp, V2_nuqi, V2_nuqi_max, V2_nuqi_skill_id, V2_bo_index, V2_fabao_id, V2_fabao_huanhua_lev, V2_fabao_level, V2_fabao_yinji, V2_role_name} <- V1_role_info]))/binary,
        (length(V1_competitor_info)):8/little, (list_to_binary([<<
            V2_id:32/signed-little,
            V2_monster_level:8/signed,
            V2_position:8/signed,
            V2_actor_id:8/signed,
            V2_is_monster:8/signed,
            V2_hp:32/little,
            V2_nuqi:32/little,
            V2_nuqi_max:32/little,
            V2_bo_index:8/signed,
            V2_curr_hp:32/little,
            (byte_size(V2_monster_name) + 1):16/little, V2_monster_name/binary, 0
        >> || {V2_id, V2_monster_level, V2_position, V2_actor_id, V2_is_monster, V2_hp, V2_nuqi, V2_nuqi_max, V2_bo_index, V2_curr_hp, V2_monster_name} <- V1_competitor_info]))/binary,
        (length(V1_fighting_result)):8/little, (list_to_binary([<<
            V2_curr_bo:8/signed,
            (length(V2_clear_effect)):8/little, (list_to_binary([<<
                V3_fighter_actor:8/signed,
                V3_dot_hp:32/signed-little,
                (length(V3_effect_list)):8/little, (list_to_binary([<<
                    V4_effect_id:16/little
                >> || V4_effect_id <- V3_effect_list]))/binary
            >> || {V3_fighter_actor, V3_dot_hp, V3_effect_list} <- V2_clear_effect]))/binary,
            (length(V2_fighting_list)):8/little, (list_to_binary([<<
                (length(V3_attacker)):8/little, (list_to_binary([<<
                    V4_skill_id:16/little,
                    V4_fighter_id:8,
                    V4_skill_level:8,
                    V4_fabao_skill_id:16/little,
                    (length(V4_attr_list)):8/little, (list_to_binary([<<
                        V5_attr_id:8,
                        V5_attr_value:32/signed-little
                    >> || {V5_attr_id, V5_attr_value} <- V4_attr_list]))/binary,
                    (length(V4_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_buff_list]))/binary,
                    (length(V4_add_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_add_buff_list]))/binary
                >> || {V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list} <- V3_attacker]))/binary,
                (length(V3_defender)):8/little, (list_to_binary([<<
                    V4_buff_id:16/little,
                    V4_effect_type:8,
                    V4_skill_id:16/little,
                    V4_fighter_id:8,
                    V4_skill_level:8,
                    V4_fabao_skill_id:16/little,
                    (length(V4_attr_list)):8/little, (list_to_binary([<<
                        V5_attr_id:8,
                        V5_attr_value:32/signed-little
                    >> || {V5_attr_id, V5_attr_value} <- V4_attr_list]))/binary,
                    (length(V4_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_buff_list]))/binary,
                    (length(V4_add_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_add_buff_list]))/binary
                >> || {V4_buff_id, V4_effect_type, V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list} <- V3_defender]))/binary
            >> || {V3_attacker, V3_defender} <- V2_fighting_list]))/binary,
            (length(V2_action_list)):8/little, (list_to_binary([<<
                V3_action_type:8,
                V3_new_id:32/little,
                V3_old_id:32/little
            >> || {V3_action_type, V3_new_id, V3_old_id} <- V2_action_list]))/binary
        >> || {V2_curr_bo, V2_clear_effect, V2_fighting_list, V2_action_list} <- V1_fighting_result]))/binary,
        (length(V1_item_rw)):8/little, (list_to_binary([<<
            V2_item_id:32/signed-little,
            V2_num:32/signed-little
        >> || {V2_item_id, V2_num} <- V1_item_rw]))/binary
    >>,
    {ok, protocol:pack(3251, Data)};

pack(cli, 3202, {V1_fuben_id, V1_list_id}) ->
    Data = <<
        V1_fuben_id:32/signed-little,
        V1_list_id:32/signed-little
    >>,
    {ok, protocol:pack(3202, Data)};

pack(srv, 3252, {V1_coin, V1_gold, V1_experience, V1_xinghun, V1_winner_id, V1_role_info, V1_competitor_info, V1_fighting_result, V1_item_rw}) ->
    Data = <<
        V1_coin:32/little,
        V1_gold:32/little,
        V1_experience:32/little,
        V1_xinghun:32/little,
        V1_winner_id:8,
        (length(V1_role_info)):8/little, (list_to_binary([<<
            V2_role_id:32/signed-little,
            V2_role_type:8/signed,
            V2_role_level:8/signed,
            V2_professional:8/signed,
            V2_sex:8/signed,
            V2_headpicture:8/signed,
            V2_position:8/signed,
            V2_actor_id:8/signed,
            V2_experience:32/little,
            V2_experience_next:32/little,
            V2_hp:32/little,
            V2_nuqi:32/little,
            V2_nuqi_max:32/little,
            V2_nuqi_skill_id:32/little,
            V2_bo_index:8,
            V2_fabao_id:16/little,
            V2_fabao_huanhua_lev:8,
            V2_fabao_level:16/little,
            V2_fabao_yinji:16/little,
            (byte_size(V2_role_name) + 1):16/little, V2_role_name/binary, 0
        >> || {V2_role_id, V2_role_type, V2_role_level, V2_professional, V2_sex, V2_headpicture, V2_position, V2_actor_id, V2_experience, V2_experience_next, V2_hp, V2_nuqi, V2_nuqi_max, V2_nuqi_skill_id, V2_bo_index, V2_fabao_id, V2_fabao_huanhua_lev, V2_fabao_level, V2_fabao_yinji, V2_role_name} <- V1_role_info]))/binary,
        (length(V1_competitor_info)):8/little, (list_to_binary([<<
            V2_id:32/signed-little,
            V2_monster_level:8/signed,
            V2_position:8/signed,
            V2_actor_id:8/signed,
            V2_is_monster:8/signed,
            V2_hp:32/little,
            V2_nuqi:32/little,
            V2_nuqi_max:32/little,
            V2_bo_index:8/signed,
            V2_curr_hp:32/little,
            (byte_size(V2_monster_name) + 1):16/little, V2_monster_name/binary, 0
        >> || {V2_id, V2_monster_level, V2_position, V2_actor_id, V2_is_monster, V2_hp, V2_nuqi, V2_nuqi_max, V2_bo_index, V2_curr_hp, V2_monster_name} <- V1_competitor_info]))/binary,
        (length(V1_fighting_result)):8/little, (list_to_binary([<<
            V2_curr_bo:8/signed,
            (length(V2_clear_effect)):8/little, (list_to_binary([<<
                V3_fighter_actor:8/signed,
                V3_dot_hp:32/signed-little,
                (length(V3_effect_list)):8/little, (list_to_binary([<<
                    V4_effect_id:16/little
                >> || V4_effect_id <- V3_effect_list]))/binary
            >> || {V3_fighter_actor, V3_dot_hp, V3_effect_list} <- V2_clear_effect]))/binary,
            (length(V2_fighting_list)):8/little, (list_to_binary([<<
                (length(V3_attacker)):8/little, (list_to_binary([<<
                    V4_skill_id:16/little,
                    V4_fighter_id:8,
                    V4_skill_level:8,
                    V4_fabao_skill_id:16/little,
                    (length(V4_attr_list)):8/little, (list_to_binary([<<
                        V5_attr_id:8,
                        V5_attr_value:32/signed-little
                    >> || {V5_attr_id, V5_attr_value} <- V4_attr_list]))/binary,
                    (length(V4_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_buff_list]))/binary,
                    (length(V4_add_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_add_buff_list]))/binary
                >> || {V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list} <- V3_attacker]))/binary,
                (length(V3_defender)):8/little, (list_to_binary([<<
                    V4_buff_id:16/little,
                    V4_effect_type:8,
                    V4_skill_id:16/little,
                    V4_fighter_id:8,
                    V4_skill_level:8,
                    V4_fabao_skill_id:16/little,
                    (length(V4_attr_list)):8/little, (list_to_binary([<<
                        V5_attr_id:8,
                        V5_attr_value:32/signed-little
                    >> || {V5_attr_id, V5_attr_value} <- V4_attr_list]))/binary,
                    (length(V4_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_buff_list]))/binary,
                    (length(V4_add_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_add_buff_list]))/binary
                >> || {V4_buff_id, V4_effect_type, V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list} <- V3_defender]))/binary
            >> || {V3_attacker, V3_defender} <- V2_fighting_list]))/binary,
            (length(V2_action_list)):8/little, (list_to_binary([<<
                V3_action_type:8,
                V3_new_id:32/little,
                V3_old_id:32/little
            >> || {V3_action_type, V3_new_id, V3_old_id} <- V2_action_list]))/binary
        >> || {V2_curr_bo, V2_clear_effect, V2_fighting_list, V2_action_list} <- V1_fighting_result]))/binary,
        (length(V1_item_rw)):8/little, (list_to_binary([<<
            V2_item_id:32/signed-little,
            V2_num:32/signed-little
        >> || {V2_item_id, V2_num} <- V1_item_rw]))/binary
    >>,
    {ok, protocol:pack(3252, Data)};

pack(cli, 3203, {V1_fuben_id, V1_fb_type}) ->
    Data = <<
        V1_fuben_id:32/signed-little,
        V1_fb_type:16/little
    >>,
    {ok, protocol:pack(3203, Data)};

pack(srv, 3253, {V1_coin, V1_gold, V1_experience, V1_xinghun, V1_jiuli, V1_lingli, V1_assess_level, V1_item_reward}) ->
    Data = <<
        V1_coin:32/little,
        V1_gold:32/little,
        V1_experience:32/little,
        V1_xinghun:32/little,
        V1_jiuli:32/little,
        V1_lingli:32/little,
        V1_assess_level:8,
        (length(V1_item_reward)):8/little, (list_to_binary([<<
            V2_item_id:32/signed-little,
            V2_item_num:32/signed-little
        >> || {V2_item_id, V2_item_num} <- V1_item_reward]))/binary
    >>,
    {ok, protocol:pack(3253, Data)};

pack(cli, 3204, {V1_fb_id, V1_fb_type}) ->
    Data = <<
        V1_fb_id:16/little,
        V1_fb_type:16/little
    >>,
    {ok, protocol:pack(3204, Data)};

pack(srv, 3254, {V1_fb_id, V1_fb_type}) ->
    Data = <<
        V1_fb_id:16/little,
        V1_fb_type:16/little
    >>,
    {ok, protocol:pack(3254, Data)};

pack(cli, 3205, {}) ->
    {ok, protocol:pack(3205, <<>>)};

pack(srv, 3255, {V1_common_fuben_list, V1_jingying_fuben_list}) ->
    Data = <<
        (length(V1_common_fuben_list)):8/little, (list_to_binary([<<
            V2_common_fuben_id:32/signed-little
        >> || V2_common_fuben_id <- V1_common_fuben_list]))/binary,
        (length(V1_jingying_fuben_list)):8/little, (list_to_binary([<<
            V2_jingying_fuben_id:32/signed-little
        >> || V2_jingying_fuben_id <- V1_jingying_fuben_list]))/binary
    >>,
    {ok, protocol:pack(3255, Data)};

pack(cli, 3206, {}) ->
    {ok, protocol:pack(3206, <<>>)};

pack(cli, 3207, {V1_fb_id}) ->
    Data = <<
        V1_fb_id:32/little
    >>,
    {ok, protocol:pack(3207, Data)};

pack(srv, 3257, {V1_fb_id, V1_count}) ->
    Data = <<
        V1_fb_id:32/little,
        V1_count:8
    >>,
    {ok, protocol:pack(3257, Data)};

pack(cli, 3210, {V1_scene_id, V1_leader_id}) ->
    Data = <<
        V1_scene_id:32/little,
        V1_leader_id:32/little
    >>,
    {ok, protocol:pack(3210, Data)};

pack(srv, 3260, {V1_scene_id, V1_var_id}) ->
    Data = <<
        V1_scene_id:32/little,
        V1_var_id:32/little
    >>,
    {ok, protocol:pack(3260, Data)};

pack(cli, 3211, {}) ->
    {ok, protocol:pack(3211, <<>>)};

pack(srv, 3262, {V1_reward_list}) ->
    Data = <<
        (length(V1_reward_list)):16/little, (list_to_binary([<<
            V2_r_type:16/little,
            V2_item_id:32/little,
            V2_num:32/little
        >> || {V2_r_type, V2_item_id, V2_num} <- V1_reward_list]))/binary
    >>,
    {ok, protocol:pack(3262, Data)};

pack(srv, 3266, {V1_index, V1_obj_id, V1_type, V1_hp, V1_status}) ->
    Data = <<
        V1_index:16/little,
        V1_obj_id:16/little,
        V1_type:16/little,
        V1_hp:32/little,
        V1_status:16/little
    >>,
    {ok, protocol:pack(3266, Data)};

pack(srv, 3267, {V1_wave, V1_total_wave, V1_next_appear, V1_count_kill, V1_count_left, V1_left_time}) ->
    Data = <<
        V1_wave:16/little,
        V1_total_wave:16/little,
        V1_next_appear:32/little,
        V1_count_kill:16/little,
        V1_count_left:16/little,
        V1_left_time:32/little
    >>,
    {ok, protocol:pack(3267, Data)};

pack(srv, 3268, {V1_rank_list}) ->
    Data = <<
        (length(V1_rank_list)):16/little, (list_to_binary([<<
            V2_rank:16/little,
            V2_hurt:32/little
        >> || {V2_rank, V2_hurt} <- V1_rank_list]))/binary
    >>,
    {ok, protocol:pack(3268, Data)};

pack(cli, 3219, {V1_skill_id, V1_obj_id}) ->
    Data = <<
        V1_skill_id:16/little,
        V1_obj_id:32/little
    >>,
    {ok, protocol:pack(3219, Data)};

pack(srv, 3269, {V1_skill_energy, V1_skill_id, V1_target_list}) ->
    Data = <<
        V1_skill_energy:32/little,
        V1_skill_id:32/little,
        (length(V1_target_list)):16/little, (list_to_binary([<<
            V2_target:32/little
        >> || V2_target <- V1_target_list]))/binary
    >>,
    {ok, protocol:pack(3269, Data)};

pack(cli, 3220, {V1_id}) ->
    Data = <<
        V1_id:32/little
    >>,
    {ok, protocol:pack(3220, Data)};

pack(srv, 3270, {V1_id}) ->
    Data = <<
        V1_id:32/little
    >>,
    {ok, protocol:pack(3270, Data)};

pack(srv, 3271, {V1_skill_energy, V1_skill1_cost, V1_skill2_cost, V1_time_count, V1_list}) ->
    Data = <<
        V1_skill_energy:32/little,
        V1_skill1_cost:32/little,
        V1_skill2_cost:32/little,
        V1_time_count:32/little,
        (length(V1_list)):16/little, (list_to_binary([<<
            V2_index:16/little,
            V2_obj_id:16/little,
            V2_type:16/little,
            V2_hp:32/little,
            V2_total_hp:32/little,
            V2_status:32/little
        >> || {V2_index, V2_obj_id, V2_type, V2_hp, V2_total_hp, V2_status} <- V1_list]))/binary
    >>,
    {ok, protocol:pack(3271, Data)};

pack(srv, 3272, {V1_hurt, V1_yb}) ->
    Data = <<
        V1_hurt:32/little,
        V1_yb:32/little
    >>,
    {ok, protocol:pack(3272, Data)};

pack(srv, 3273, {}) ->
    {ok, protocol:pack(3273, <<>>)};

pack(srv, 3274, {V1_type, V1_self_id, V1_target_id}) ->
    Data = <<
        V1_type:16/little,
        V1_self_id:32/little,
        V1_target_id:32/little
    >>,
    {ok, protocol:pack(3274, Data)};

pack(cli, 3301, {}) ->
    {ok, protocol:pack(3301, <<>>)};

pack(srv, 3351, {V1_user_id, V1_skill}) ->
    Data = <<
        V1_user_id:32/signed-little,
        (length(V1_skill)):16/little, (list_to_binary([<<
            V2_skill_id:32/signed-little,
            V2_skill_level:8/signed,
            V2_skill_type:8/signed,
            V2_skill_exp:32/signed-little,
            (length(V2_all_kill)):16/little, (list_to_binary([<<
                V3_id:16/little,
                V3_level:16/little
            >> || {V3_id, V3_level} <- V2_all_kill]))/binary
        >> || {V2_skill_id, V2_skill_level, V2_skill_type, V2_skill_exp, V2_all_kill} <- V1_skill]))/binary
    >>,
    {ok, protocol:pack(3351, Data)};

pack(cli, 3302, {V1_skill_id, V1_role_id}) ->
    Data = <<
        V1_skill_id:32/signed-little,
        V1_role_id:32/signed-little
    >>,
    {ok, protocol:pack(3302, Data)};

pack(srv, 3352, {V1_skill_id, V1_skill_level, V1_skill_curr_Exp, V1_skill_type, V1_skill_attr_id, V1_skill_attr_level}) ->
    Data = <<
        V1_skill_id:32/signed-little,
        V1_skill_level:32/signed-little,
        V1_skill_curr_Exp:8/signed,
        V1_skill_type:8/signed,
        V1_skill_attr_id:8/signed,
        V1_skill_attr_level:8/signed
    >>,
    {ok, protocol:pack(3352, Data)};

pack(srv, 3353, {V1_skill_id, V1_skill_level}) ->
    Data = <<
        V1_skill_id:32/signed-little,
        V1_skill_level:32/signed-little
    >>,
    {ok, protocol:pack(3353, Data)};

pack(cli, 3401, {}) ->
    {ok, protocol:pack(3401, <<>>)};

pack(srv, 3451, {V1_id, V1_level, V1_exp, V1_status, V1_mount_list}) ->
    Data = <<
        V1_id:8,
        V1_level:8,
        V1_exp:32/little,
        V1_status:8,
        (length(V1_mount_list)):8/little, (list_to_binary([<<
            V2_mount_id:8
        >> || V2_mount_id <- V1_mount_list]))/binary
    >>,
    {ok, protocol:pack(3451, Data)};

pack(cli, 3402, {V1_peiyong_type}) ->
    Data = <<
        V1_peiyong_type:8
    >>,
    {ok, protocol:pack(3402, Data)};

pack(srv, 3452, {V1_id, V1_level, V1_exp, V1_exp_add, V1_baoji_type}) ->
    Data = <<
        V1_id:8,
        V1_level:8,
        V1_exp:32/little,
        V1_exp_add:32/little,
        V1_baoji_type:8
    >>,
    {ok, protocol:pack(3452, Data)};

pack(cli, 3403, {V1_dest_mount_id}) ->
    Data = <<
        V1_dest_mount_id:8
    >>,
    {ok, protocol:pack(3403, Data)};

pack(srv, 3453, {V1_id, V1_level, V1_exp, V1_status}) ->
    Data = <<
        V1_id:8,
        V1_level:8,
        V1_exp:32/little,
        V1_status:8
    >>,
    {ok, protocol:pack(3453, Data)};

pack(cli, 3404, {}) ->
    {ok, protocol:pack(3404, <<>>)};

pack(srv, 3454, {V1_status}) ->
    Data = <<
        V1_status:8
    >>,
    {ok, protocol:pack(3454, Data)};

pack(cli, 3405, {V1_mount_id}) ->
    Data = <<
        V1_mount_id:8
    >>,
    {ok, protocol:pack(3405, Data)};

pack(srv, 3455, {V1_mount_id}) ->
    Data = <<
        V1_mount_id:8
    >>,
    {ok, protocol:pack(3455, Data)};

pack(cli, 3406, {V1_peiyong_type}) ->
    Data = <<
        V1_peiyong_type:8
    >>,
    {ok, protocol:pack(3406, Data)};

pack(srv, 3456, {V1_id, V1_level, V1_exp, V1_exp_add, V1_coin, V1_gold, V1_jiuli}) ->
    Data = <<
        V1_id:8,
        V1_level:8,
        V1_exp:32/little,
        V1_exp_add:32/little,
        V1_coin:32/little,
        V1_gold:32/little,
        V1_jiuli:32/little
    >>,
    {ok, protocol:pack(3456, Data)};

pack(cli, 3501, {V1_id, V1_upgrade_type, V1_is_open_protect}) ->
    Data = <<
        V1_id:32/signed-little,
        V1_upgrade_type:16/signed-little,
        V1_is_open_protect:16/signed-little
    >>,
    {ok, protocol:pack(3501, Data)};

pack(srv, 3551, {V1_id, V1_upgrade_type, V1_level, V1_result}) ->
    Data = <<
        V1_id:16/little,
        V1_upgrade_type:16/little,
        V1_level:32/signed-little,
        V1_result:8
    >>,
    {ok, protocol:pack(3551, Data)};

pack(cli, 3502, {V1_xiulian_jingmai_list}) ->
    Data = <<
        (length(V1_xiulian_jingmai_list)):8/little, (list_to_binary([<<
            V2_jingmai_id:16/signed-little,
            V2_jingmai_level:16/signed-little
        >> || {V2_jingmai_id, V2_jingmai_level} <- V1_xiulian_jingmai_list]))/binary
    >>,
    {ok, protocol:pack(3502, Data)};

pack(srv, 3552, {V1_xiulian_jingmai_list}) ->
    Data = <<
        (length(V1_xiulian_jingmai_list)):8/little, (list_to_binary([<<
            V2_jingmai_level:16/signed-little,
            V2_jingjie_level:16/signed-little
        >> || {V2_jingmai_level, V2_jingjie_level} <- V1_xiulian_jingmai_list]))/binary
    >>,
    {ok, protocol:pack(3552, Data)};

pack(cli, 3601, {V1_ls_type}) ->
    Data = <<
        V1_ls_type:32/little
    >>,
    {ok, protocol:pack(3601, Data)};

pack(srv, 3651, {V1_bs_id, V1_normal_count, V1_advance_count}) ->
    Data = <<
        V1_bs_id:32/little,
        V1_normal_count:16/little,
        V1_advance_count:16/little
    >>,
    {ok, protocol:pack(3651, Data)};

pack(cli, 3602, {}) ->
    {ok, protocol:pack(3602, <<>>)};

pack(srv, 3652, {V1_normal_count, V1_advance_count, V1_bs_list}) ->
    Data = <<
        V1_normal_count:16/little,
        V1_advance_count:16/little,
        (length(V1_bs_list)):16/little, (list_to_binary([<<
            V2_bs_id:16/little,
            V2_bs_count:16/little
        >> || {V2_bs_id, V2_bs_count} <- V1_bs_list]))/binary
    >>,
    {ok, protocol:pack(3652, Data)};

pack(cli, 3603, {V1_eq_index, V1_bs_id}) ->
    Data = <<
        V1_eq_index:16/little,
        V1_bs_id:16/little
    >>,
    {ok, protocol:pack(3603, Data)};

pack(srv, 3653, {V1_eq_index, V1_old_bs_id, V1_new_bs_id}) ->
    Data = <<
        V1_eq_index:32/little,
        V1_old_bs_id:16/little,
        V1_new_bs_id:16/little
    >>,
    {ok, protocol:pack(3653, Data)};

pack(cli, 3604, {V1_eq_index, V1_bs_id}) ->
    Data = <<
        V1_eq_index:16/little,
        V1_bs_id:16/little
    >>,
    {ok, protocol:pack(3604, Data)};

pack(srv, 3654, {V1_eq_index, V1_bs_id}) ->
    Data = <<
        V1_eq_index:16/little,
        V1_bs_id:16/little
    >>,
    {ok, protocol:pack(3654, Data)};

pack(cli, 3605, {V1_eq_index, V1_bs_id}) ->
    Data = <<
        V1_eq_index:16/little,
        V1_bs_id:16/little
    >>,
    {ok, protocol:pack(3605, Data)};

pack(srv, 3655, {V1_eq_index, V1_bs_id}) ->
    Data = <<
        V1_eq_index:16/little,
        V1_bs_id:16/little
    >>,
    {ok, protocol:pack(3655, Data)};

pack(srv, 3656, {V1_item_id, V1_item_num}) ->
    Data = <<
        V1_item_id:16/little,
        V1_item_num:16/signed-little
    >>,
    {ok, protocol:pack(3656, Data)};

pack(cli, 3701, {}) ->
    {ok, protocol:pack(3701, <<>>)};

pack(srv, 3751, {V1_niangjiu_count}) ->
    Data = <<
        V1_niangjiu_count:8
    >>,
    {ok, protocol:pack(3751, Data)};

pack(cli, 3702, {V1_nianjiu_type}) ->
    Data = <<
        V1_nianjiu_type:8
    >>,
    {ok, protocol:pack(3702, Data)};

pack(srv, 3752, {V1_niangjiu_type, V1_kougan_star, V1_chundu_star, V1_jiuxiang_star, V1_niangjiu_level, V1_niangjiu_reward, V1_niangjiu_count}) ->
    Data = <<
        V1_niangjiu_type:8,
        V1_kougan_star:8,
        V1_chundu_star:8,
        V1_jiuxiang_star:8,
        V1_niangjiu_level:8,
        V1_niangjiu_reward:32/little,
        V1_niangjiu_count:8
    >>,
    {ok, protocol:pack(3752, Data)};

pack(srv, 3753, {}) ->
    {ok, protocol:pack(3753, <<>>)};

pack(cli, 3801, {}) ->
    {ok, protocol:pack(3801, <<>>)};

pack(srv, 3851, {V1_curr_day, V1_remain_count, V1_zxreward_count, V1_zxreward_time_count, V1_max_day, V1_sign_list}) ->
    Data = <<
        V1_curr_day:8,
        V1_remain_count:8,
        V1_zxreward_count:8,
        V1_zxreward_time_count:32/little,
        V1_max_day:8,
        (length(V1_sign_list)):8/little, (list_to_binary([<<
            V2_sign_day:8
        >> || V2_sign_day <- V1_sign_list]))/binary
    >>,
    {ok, protocol:pack(3851, Data)};

pack(cli, 3802, {}) ->
    {ok, protocol:pack(3802, <<>>)};

pack(srv, 3852, {V1_day, V1_remain_count}) ->
    Data = <<
        V1_day:8,
        V1_remain_count:8
    >>,
    {ok, protocol:pack(3852, Data)};

pack(cli, 3803, {}) ->
    {ok, protocol:pack(3803, <<>>)};

pack(srv, 3853, {V1_day, V1_remain_count}) ->
    Data = <<
        V1_day:8,
        V1_remain_count:8
    >>,
    {ok, protocol:pack(3853, Data)};

pack(cli, 3804, {}) ->
    {ok, protocol:pack(3804, <<>>)};

pack(srv, 3854, {V1_zxreward_count, V1_zxreward_time_count}) ->
    Data = <<
        V1_zxreward_count:8,
        V1_zxreward_time_count:16/little
    >>,
    {ok, protocol:pack(3854, Data)};

pack(cli, 3805, {}) ->
    {ok, protocol:pack(3805, <<>>)};

pack(srv, 3855, {V1_is_sign, V1_remain_time}) ->
    Data = <<
        V1_is_sign:8,
        V1_remain_time:32/signed-little
    >>,
    {ok, protocol:pack(3855, Data)};

pack(cli, 3901, {V1_story_id}) ->
    Data = <<
        V1_story_id:32/signed-little
    >>,
    {ok, protocol:pack(3901, Data)};

pack(srv, 3951, {V1_is_succeed}) ->
    Data = <<
        V1_is_succeed:32/signed-little
    >>,
    {ok, protocol:pack(3951, Data)};

pack(cli, 3902, {}) ->
    {ok, protocol:pack(3902, <<>>)};

pack(srv, 3952, {V1_plot_list}) ->
    Data = <<
        (length(V1_plot_list)):8/little, (list_to_binary([<<
            V2_plot_id:16/little
        >> || V2_plot_id <- V1_plot_list]))/binary
    >>,
    {ok, protocol:pack(3952, Data)};

pack(cli, 3903, {V1_index}) ->
    Data = <<
        V1_index:16/little
    >>,
    {ok, protocol:pack(3903, Data)};

pack(cli, 3904, {}) ->
    {ok, protocol:pack(3904, <<>>)};

pack(srv, 3954, {V1_recommend_list}) ->
    Data = <<
        (length(V1_recommend_list)):8/little, (list_to_binary([<<
            V2_id:16/little
        >> || V2_id <- V1_recommend_list]))/binary
    >>,
    {ok, protocol:pack(3954, Data)};

pack(cli, 4001, {}) ->
    {ok, protocol:pack(4001, <<>>)};

pack(srv, 4051, {V1_fb_id, V1_fb_type, V1_remain_time, V1_sum_wheel, V1_remain_wheel, V1_saodang_level, V1_saodang_exp, V1_state, V1_exp, V1_coin, V1_reward_jing_value, V1_consume_gold, V1_xinghun, V1_jiuli, V1_lingli, V1_item_list, V1_consume_item_list}) ->
    Data = <<
        V1_fb_id:32/signed-little,
        V1_fb_type:8,
        V1_remain_time:32/little,
        V1_sum_wheel:8,
        V1_remain_wheel:8,
        V1_saodang_level:8,
        V1_saodang_exp:32/signed-little,
        V1_state:8,
        V1_exp:32/little,
        V1_coin:32/little,
        V1_reward_jing_value:8,
        V1_consume_gold:32/little,
        V1_xinghun:32/little,
        V1_jiuli:32/little,
        V1_lingli:32/little,
        (length(V1_item_list)):8/little, (list_to_binary([<<
            V2_item_id:32/signed-little,
            V2_item_num:32/signed-little
        >> || {V2_item_id, V2_item_num} <- V1_item_list]))/binary,
        (length(V1_consume_item_list)):8/little, (list_to_binary([<<
            V2_item_id:32/signed-little,
            V2_item_num:32/signed-little
        >> || {V2_item_id, V2_item_num} <- V1_consume_item_list]))/binary
    >>,
    {ok, protocol:pack(4051, Data)};

pack(cli, 4002, {}) ->
    {ok, protocol:pack(4002, <<>>)};

pack(cli, 4003, {V1_fb_id, V1_fb_type, V1_sum_wheel}) ->
    Data = <<
        V1_fb_id:32/signed-little,
        V1_fb_type:32/signed-little,
        V1_sum_wheel:16/little
    >>,
    {ok, protocol:pack(4003, Data)};

pack(cli, 4004, {}) ->
    {ok, protocol:pack(4004, <<>>)};

pack(cli, 4005, {}) ->
    {ok, protocol:pack(4005, <<>>)};

pack(srv, 4055, {V1_saodang_level, V1_saodang_exp}) ->
    Data = <<
        V1_saodang_level:8,
        V1_saodang_exp:32/little
    >>,
    {ok, protocol:pack(4055, Data)};

pack(srv, 4056, {V1_fb_id, V1_use_wheel}) ->
    Data = <<
        V1_fb_id:32/little,
        V1_use_wheel:8
    >>,
    {ok, protocol:pack(4056, Data)};

pack(cli, 4101, {}) ->
    {ok, protocol:pack(4101, <<>>)};

pack(srv, 4151, {V1_curr_layer}) ->
    Data = <<
        V1_curr_layer:8
    >>,
    {ok, protocol:pack(4151, Data)};

pack(cli, 4102, {}) ->
    {ok, protocol:pack(4102, <<>>)};

pack(srv, 4152, {V1_fight_layer, V1_state, V1_coin, V1_exp, V1_lingli, V1_item_list}) ->
    Data = <<
        V1_fight_layer:8,
        V1_state:8,
        V1_coin:32/little,
        V1_exp:32/little,
        V1_lingli:32/little,
        (length(V1_item_list)):8/little, (list_to_binary([<<
            V2_item_id:32/signed-little,
            V2_item_num:8
        >> || {V2_item_id, V2_item_num} <- V1_item_list]))/binary
    >>,
    {ok, protocol:pack(4152, Data)};

pack(cli, 4103, {V1_layer_id}) ->
    Data = <<
        V1_layer_id:8
    >>,
    {ok, protocol:pack(4103, Data)};

pack(srv, 4153, {V1_layer_id}) ->
    Data = <<
        V1_layer_id:8
    >>,
    {ok, protocol:pack(4153, Data)};

pack(cli, 4104, {V1_layer_id, V1_index}) ->
    Data = <<
        V1_layer_id:8,
        V1_index:8
    >>,
    {ok, protocol:pack(4104, Data)};

pack(srv, 4154, {V1_winner_id, V1_role_info_list, V1_competitor_info, V1_fighting_result}) ->
    Data = <<
        V1_winner_id:8,
        (length(V1_role_info_list)):8/little, (list_to_binary([<<
            V2_role_id:32/signed-little,
            V2_role_type:8/signed,
            V2_role_level:8/signed,
            V2_professional:8/signed,
            V2_sex:8/signed,
            V2_headpicture:8/signed,
            V2_position:8/signed,
            V2_actor_id:8/signed,
            V2_experience:32/little,
            V2_experience_next:32/little,
            V2_hp:32/little,
            V2_nuqi:32/little,
            V2_nuqi_max:32/little,
            V2_nuqi_skill_id:32/little,
            V2_bo_index:8,
            V2_fabao_id:16/little,
            V2_fabao_huanhua_lev:8,
            V2_fabao_level:16/little,
            V2_fabao_yinji:16/little,
            (byte_size(V2_role_name) + 1):16/little, V2_role_name/binary, 0
        >> || {V2_role_id, V2_role_type, V2_role_level, V2_professional, V2_sex, V2_headpicture, V2_position, V2_actor_id, V2_experience, V2_experience_next, V2_hp, V2_nuqi, V2_nuqi_max, V2_nuqi_skill_id, V2_bo_index, V2_fabao_id, V2_fabao_huanhua_lev, V2_fabao_level, V2_fabao_yinji, V2_role_name} <- V1_role_info_list]))/binary,
        (length(V1_competitor_info)):8/little, (list_to_binary([<<
            V2_id:32/signed-little,
            V2_monster_level:8/signed,
            V2_position:8/signed,
            V2_actor_id:8/signed,
            V2_is_monster:8/signed,
            V2_hp:32/little,
            V2_nuqi:32/little,
            V2_nuqi_max:32/little,
            V2_bo_index:8/signed,
            V2_curr_hp:32/little,
            (byte_size(V2_monster_name) + 1):16/little, V2_monster_name/binary, 0
        >> || {V2_id, V2_monster_level, V2_position, V2_actor_id, V2_is_monster, V2_hp, V2_nuqi, V2_nuqi_max, V2_bo_index, V2_curr_hp, V2_monster_name} <- V1_competitor_info]))/binary,
        (length(V1_fighting_result)):8/little, (list_to_binary([<<
            V2_curr_bo:8/signed,
            (length(V2_clear_effect)):8/little, (list_to_binary([<<
                V3_fighter_actor:8/signed,
                V3_dot_hp:32/signed-little,
                (length(V3_effect_list)):8/little, (list_to_binary([<<
                    V4_effect_id:16/little
                >> || V4_effect_id <- V3_effect_list]))/binary
            >> || {V3_fighter_actor, V3_dot_hp, V3_effect_list} <- V2_clear_effect]))/binary,
            (length(V2_fighting_list)):8/little, (list_to_binary([<<
                (length(V3_attacker)):8/little, (list_to_binary([<<
                    V4_skill_id:16/little,
                    V4_fighter_id:8,
                    V4_skill_level:8,
                    V4_fabao_skill_id:16/little,
                    (length(V4_attr_list)):8/little, (list_to_binary([<<
                        V5_attr_id:8,
                        V5_attr_value:32/signed-little
                    >> || {V5_attr_id, V5_attr_value} <- V4_attr_list]))/binary,
                    (length(V4_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_buff_list]))/binary,
                    (length(V4_add_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_add_buff_list]))/binary
                >> || {V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list} <- V3_attacker]))/binary,
                (length(V3_defender)):8/little, (list_to_binary([<<
                    V4_buff_id:16/little,
                    V4_effect_type:8,
                    V4_skill_id:16/little,
                    V4_fighter_id:8,
                    V4_skill_level:8,
                    V4_fabao_skill_id:16/little,
                    (length(V4_attr_list)):8/little, (list_to_binary([<<
                        V5_attr_id:8,
                        V5_attr_value:32/signed-little
                    >> || {V5_attr_id, V5_attr_value} <- V4_attr_list]))/binary,
                    (length(V4_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_buff_list]))/binary,
                    (length(V4_add_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_add_buff_list]))/binary
                >> || {V4_buff_id, V4_effect_type, V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list} <- V3_defender]))/binary
            >> || {V3_attacker, V3_defender} <- V2_fighting_list]))/binary,
            (length(V2_action_list)):8/little, (list_to_binary([<<
                V3_action_type:8,
                V3_new_id:32/little,
                V3_old_id:32/little
            >> || {V3_action_type, V3_new_id, V3_old_id} <- V2_action_list]))/binary
        >> || {V2_curr_bo, V2_clear_effect, V2_fighting_list, V2_action_list} <- V1_fighting_result]))/binary
    >>,
    {ok, protocol:pack(4154, Data)};

pack(cli, 4105, {V1_layer_id}) ->
    Data = <<
        V1_layer_id:8
    >>,
    {ok, protocol:pack(4105, Data)};

pack(srv, 4155, {V1_coin, V1_exp, V1_lingli, V1_item_list}) ->
    Data = <<
        V1_coin:32/little,
        V1_exp:32/little,
        V1_lingli:32/little,
        (length(V1_item_list)):8/little, (list_to_binary([<<
            V2_item_id:32/signed-little,
            V2_item_num:8
        >> || {V2_item_id, V2_item_num} <- V1_item_list]))/binary
    >>,
    {ok, protocol:pack(4155, Data)};

pack(cli, 4106, {V1_max_layer}) ->
    Data = <<
        V1_max_layer:8
    >>,
    {ok, protocol:pack(4106, Data)};

pack(srv, 4156, {V1_curr_layer, V1_coin, V1_exp, V1_lingli, V1_item_list}) ->
    Data = <<
        V1_curr_layer:8,
        V1_coin:32/little,
        V1_exp:32/little,
        V1_lingli:32/little,
        (length(V1_item_list)):8/little, (list_to_binary([<<
            V2_item_id:32/signed-little,
            V2_item_num:8
        >> || {V2_item_id, V2_item_num} <- V1_item_list]))/binary
    >>,
    {ok, protocol:pack(4156, Data)};

pack(cli, 4107, {}) ->
    {ok, protocol:pack(4107, <<>>)};

pack(srv, 4157, {V1_is_success}) ->
    Data = <<
        V1_is_success:8
    >>,
    {ok, protocol:pack(4157, Data)};

pack(cli, 4108, {}) ->
    {ok, protocol:pack(4108, <<>>)};

pack(cli, 4109, {}) ->
    {ok, protocol:pack(4109, <<>>)};

pack(srv, 4159, {V1_curr_layer}) ->
    Data = <<
        V1_curr_layer:8
    >>,
    {ok, protocol:pack(4159, Data)};

pack(cli, 4201, {}) ->
    {ok, protocol:pack(4201, <<>>)};

pack(srv, 4251, {V1_fight_layer, V1_curr_layer, V1_baoxiang_layer, V1_item_list}) ->
    Data = <<
        V1_fight_layer:8,
        V1_curr_layer:8,
        V1_baoxiang_layer:8,
        (length(V1_item_list)):8/little, (list_to_binary([<<
            V2_item_id:32/little,
            V2_item_num:8
        >> || {V2_item_id, V2_item_num} <- V1_item_list]))/binary
    >>,
    {ok, protocol:pack(4251, Data)};

pack(cli, 4202, {V1_layer_id}) ->
    Data = <<
        V1_layer_id:8
    >>,
    {ok, protocol:pack(4202, Data)};

pack(srv, 4252, {V1_coin, V1_exp, V1_winner_id, V1_role_info, V1_competitor_info, V1_fighting_result, V1_item_list}) ->
    Data = <<
        V1_coin:32/little,
        V1_exp:32/little,
        V1_winner_id:8,
        (length(V1_role_info)):8/little, (list_to_binary([<<
            V2_role_id:32/signed-little,
            V2_role_type:8/signed,
            V2_role_level:8/signed,
            V2_professional:8/signed,
            V2_sex:8/signed,
            V2_headpicture:8/signed,
            V2_position:8/signed,
            V2_actor_id:8/signed,
            V2_experience:32/little,
            V2_experience_next:32/little,
            V2_hp:32/little,
            V2_nuqi:32/little,
            V2_nuqi_max:32/little,
            V2_nuqi_skill_id:32/little,
            V2_bo_index:8,
            V2_fabao_id:16/little,
            V2_fabao_huanhua_lev:8,
            V2_fabao_level:16/little,
            V2_fabao_yinji:16/little,
            (byte_size(V2_role_name) + 1):16/little, V2_role_name/binary, 0
        >> || {V2_role_id, V2_role_type, V2_role_level, V2_professional, V2_sex, V2_headpicture, V2_position, V2_actor_id, V2_experience, V2_experience_next, V2_hp, V2_nuqi, V2_nuqi_max, V2_nuqi_skill_id, V2_bo_index, V2_fabao_id, V2_fabao_huanhua_lev, V2_fabao_level, V2_fabao_yinji, V2_role_name} <- V1_role_info]))/binary,
        (length(V1_competitor_info)):8/little, (list_to_binary([<<
            V2_id:32/signed-little,
            V2_monster_level:8/signed,
            V2_position:8/signed,
            V2_actor_id:8/signed,
            V2_is_monster:8/signed,
            V2_hp:32/little,
            V2_nuqi:32/little,
            V2_nuqi_max:32/little,
            V2_bo_index:8/signed,
            V2_curr_hp:32/little,
            (byte_size(V2_monster_name) + 1):16/little, V2_monster_name/binary, 0
        >> || {V2_id, V2_monster_level, V2_position, V2_actor_id, V2_is_monster, V2_hp, V2_nuqi, V2_nuqi_max, V2_bo_index, V2_curr_hp, V2_monster_name} <- V1_competitor_info]))/binary,
        (length(V1_fighting_result)):8/little, (list_to_binary([<<
            V2_curr_bo:8/signed,
            (length(V2_clear_effect)):8/little, (list_to_binary([<<
                V3_fighter_actor:8/signed,
                V3_dot_hp:32/signed-little,
                (length(V3_effect_list)):8/little, (list_to_binary([<<
                    V4_effect_id:16/little
                >> || V4_effect_id <- V3_effect_list]))/binary
            >> || {V3_fighter_actor, V3_dot_hp, V3_effect_list} <- V2_clear_effect]))/binary,
            (length(V2_fighting_list)):8/little, (list_to_binary([<<
                (length(V3_attacker)):8/little, (list_to_binary([<<
                    V4_skill_id:16/little,
                    V4_fighter_id:8,
                    V4_skill_level:8,
                    V4_fabao_skill_id:16/little,
                    (length(V4_attr_list)):8/little, (list_to_binary([<<
                        V5_attr_id:8,
                        V5_attr_value:32/signed-little
                    >> || {V5_attr_id, V5_attr_value} <- V4_attr_list]))/binary,
                    (length(V4_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_buff_list]))/binary,
                    (length(V4_add_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_add_buff_list]))/binary
                >> || {V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list} <- V3_attacker]))/binary,
                (length(V3_defender)):8/little, (list_to_binary([<<
                    V4_buff_id:16/little,
                    V4_effect_type:8,
                    V4_skill_id:16/little,
                    V4_fighter_id:8,
                    V4_skill_level:8,
                    V4_fabao_skill_id:16/little,
                    (length(V4_attr_list)):8/little, (list_to_binary([<<
                        V5_attr_id:8,
                        V5_attr_value:32/signed-little
                    >> || {V5_attr_id, V5_attr_value} <- V4_attr_list]))/binary,
                    (length(V4_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_buff_list]))/binary,
                    (length(V4_add_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_add_buff_list]))/binary
                >> || {V4_buff_id, V4_effect_type, V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list} <- V3_defender]))/binary
            >> || {V3_attacker, V3_defender} <- V2_fighting_list]))/binary,
            (length(V2_action_list)):8/little, (list_to_binary([<<
                V3_action_type:8,
                V3_new_id:32/little,
                V3_old_id:32/little
            >> || {V3_action_type, V3_new_id, V3_old_id} <- V2_action_list]))/binary
        >> || {V2_curr_bo, V2_clear_effect, V2_fighting_list, V2_action_list} <- V1_fighting_result]))/binary,
        (length(V1_item_list)):8/little, (list_to_binary([<<
            V2_item_id:32/signed-little,
            V2_item_num:8
        >> || {V2_item_id, V2_item_num} <- V1_item_list]))/binary
    >>,
    {ok, protocol:pack(4252, Data)};

pack(cli, 4203, {}) ->
    {ok, protocol:pack(4203, <<>>)};

pack(srv, 4253, {V1_item_list}) ->
    Data = <<
        (length(V1_item_list)):8/little, (list_to_binary([<<
            V2_item_id:32/little,
            V2_item_num:8
        >> || {V2_item_id, V2_item_num} <- V1_item_list]))/binary
    >>,
    {ok, protocol:pack(4253, Data)};

pack(cli, 4204, {}) ->
    {ok, protocol:pack(4204, <<>>)};

pack(srv, 4254, {V1_coin, V1_exp, V1_item_list}) ->
    Data = <<
        V1_coin:32/little,
        V1_exp:32/little,
        (length(V1_item_list)):8/little, (list_to_binary([<<
            V2_item_id:32/signed-little,
            V2_item_num:32/signed-little
        >> || {V2_item_id, V2_item_num} <- V1_item_list]))/binary
    >>,
    {ok, protocol:pack(4254, Data)};

pack(cli, 4205, {}) ->
    {ok, protocol:pack(4205, <<>>)};

pack(srv, 4255, {V1_is_success}) ->
    Data = <<
        V1_is_success:8
    >>,
    {ok, protocol:pack(4255, Data)};

pack(cli, 4206, {}) ->
    {ok, protocol:pack(4206, <<>>)};

pack(srv, 4256, {V1_pic_list}) ->
    Data = <<
        (length(V1_pic_list)):8/little, (list_to_binary([<<
            V2_pic_id:32/little
        >> || V2_pic_id <- V1_pic_list]))/binary
    >>,
    {ok, protocol:pack(4256, Data)};

pack(cli, 4207, {}) ->
    {ok, protocol:pack(4207, <<>>)};

pack(srv, 4257, {V1_curr_layer}) ->
    Data = <<
        V1_curr_layer:8
    >>,
    {ok, protocol:pack(4257, Data)};

pack(cli, 4301, {}) ->
    {ok, protocol:pack(4301, <<>>)};

pack(srv, 4351, {V1_challenge_remain, V1_pass, V1_sh_list, V1_hj_list}) ->
    Data = <<
        V1_challenge_remain:8,
        V1_pass:8,
        (length(V1_sh_list)):8/little, (list_to_binary([<<
            V2_id:8,
            V2_state:8
        >> || {V2_id, V2_state} <- V1_sh_list]))/binary,
        (length(V1_hj_list)):8/little, (list_to_binary([<<
            V2_id:8,
            V2_state:8
        >> || {V2_id, V2_state} <- V1_hj_list]))/binary
    >>,
    {ok, protocol:pack(4351, Data)};

pack(cli, 4302, {V1_id}) ->
    Data = <<
        V1_id:32/little
    >>,
    {ok, protocol:pack(4302, Data)};

pack(srv, 4352, {V1_coin, V1_winner_id, V1_id, V1_role_info, V1_competitor_info, V1_fighting_result, V1_item_list}) ->
    Data = <<
        V1_coin:32/little,
        V1_winner_id:8,
        V1_id:8,
        (length(V1_role_info)):8/little, (list_to_binary([<<
            V2_role_id:32/signed-little,
            V2_role_type:8/signed,
            V2_role_level:8/signed,
            V2_professional:8/signed,
            V2_sex:8/signed,
            V2_headpicture:8/signed,
            V2_position:8/signed,
            V2_actor_id:8/signed,
            V2_experience:32/little,
            V2_experience_next:32/little,
            V2_hp:32/little,
            V2_nuqi:32/little,
            V2_nuqi_max:32/little,
            V2_nuqi_skill_id:32/little,
            V2_bo_index:8,
            V2_fabao_id:16/little,
            V2_fabao_huanhua_lev:8,
            V2_fabao_level:16/little,
            V2_fabao_yinji:16/little,
            (byte_size(V2_role_name) + 1):16/little, V2_role_name/binary, 0
        >> || {V2_role_id, V2_role_type, V2_role_level, V2_professional, V2_sex, V2_headpicture, V2_position, V2_actor_id, V2_experience, V2_experience_next, V2_hp, V2_nuqi, V2_nuqi_max, V2_nuqi_skill_id, V2_bo_index, V2_fabao_id, V2_fabao_huanhua_lev, V2_fabao_level, V2_fabao_yinji, V2_role_name} <- V1_role_info]))/binary,
        (length(V1_competitor_info)):8/little, (list_to_binary([<<
            V2_id:32/signed-little,
            V2_monster_level:8/signed,
            V2_position:8/signed,
            V2_actor_id:8/signed,
            V2_is_monster:8/signed,
            V2_hp:32/little,
            V2_nuqi:32/little,
            V2_nuqi_max:32/little,
            V2_bo_index:8/signed,
            V2_curr_hp:32/little,
            (byte_size(V2_monster_name) + 1):16/little, V2_monster_name/binary, 0
        >> || {V2_id, V2_monster_level, V2_position, V2_actor_id, V2_is_monster, V2_hp, V2_nuqi, V2_nuqi_max, V2_bo_index, V2_curr_hp, V2_monster_name} <- V1_competitor_info]))/binary,
        (length(V1_fighting_result)):8/little, (list_to_binary([<<
            V2_curr_bo:8/signed,
            (length(V2_clear_effect)):8/little, (list_to_binary([<<
                V3_fighter_actor:8/signed,
                V3_dot_hp:32/signed-little,
                (length(V3_effect_list)):8/little, (list_to_binary([<<
                    V4_effect_id:16/little
                >> || V4_effect_id <- V3_effect_list]))/binary
            >> || {V3_fighter_actor, V3_dot_hp, V3_effect_list} <- V2_clear_effect]))/binary,
            (length(V2_fighting_list)):8/little, (list_to_binary([<<
                (length(V3_attacker)):8/little, (list_to_binary([<<
                    V4_skill_id:16/little,
                    V4_fighter_id:8,
                    V4_skill_level:8,
                    V4_fabao_skill_id:16/little,
                    (length(V4_attr_list)):8/little, (list_to_binary([<<
                        V5_attr_id:8,
                        V5_attr_value:32/signed-little
                    >> || {V5_attr_id, V5_attr_value} <- V4_attr_list]))/binary,
                    (length(V4_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_buff_list]))/binary,
                    (length(V4_add_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_add_buff_list]))/binary
                >> || {V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list} <- V3_attacker]))/binary,
                (length(V3_defender)):8/little, (list_to_binary([<<
                    V4_buff_id:16/little,
                    V4_effect_type:8,
                    V4_skill_id:16/little,
                    V4_fighter_id:8,
                    V4_skill_level:8,
                    V4_fabao_skill_id:16/little,
                    (length(V4_attr_list)):8/little, (list_to_binary([<<
                        V5_attr_id:8,
                        V5_attr_value:32/signed-little
                    >> || {V5_attr_id, V5_attr_value} <- V4_attr_list]))/binary,
                    (length(V4_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_buff_list]))/binary,
                    (length(V4_add_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_add_buff_list]))/binary
                >> || {V4_buff_id, V4_effect_type, V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list} <- V3_defender]))/binary
            >> || {V3_attacker, V3_defender} <- V2_fighting_list]))/binary,
            (length(V2_action_list)):8/little, (list_to_binary([<<
                V3_action_type:8,
                V3_new_id:32/little,
                V3_old_id:32/little
            >> || {V3_action_type, V3_new_id, V3_old_id} <- V2_action_list]))/binary
        >> || {V2_curr_bo, V2_clear_effect, V2_fighting_list, V2_action_list} <- V1_fighting_result]))/binary,
        (length(V1_item_list)):8/little, (list_to_binary([<<
            V2_item_id:32/signed-little,
            V2_item_num:32/signed-little
        >> || {V2_item_id, V2_item_num} <- V1_item_list]))/binary
    >>,
    {ok, protocol:pack(4352, Data)};

pack(cli, 4303, {V1_id}) ->
    Data = <<
        V1_id:32/signed-little
    >>,
    {ok, protocol:pack(4303, Data)};

pack(srv, 4353, {V1_coin, V1_winner_id, V1_id, V1_role_info, V1_competitor_info, V1_fighting_result, V1_item_list}) ->
    Data = <<
        V1_coin:32/little,
        V1_winner_id:8,
        V1_id:8,
        (length(V1_role_info)):8/little, (list_to_binary([<<
            V2_role_id:32/signed-little,
            V2_role_type:8/signed,
            V2_role_level:8/signed,
            V2_professional:8/signed,
            V2_sex:8/signed,
            V2_headpicture:8/signed,
            V2_position:8/signed,
            V2_actor_id:8/signed,
            V2_experience:32/little,
            V2_experience_next:32/little,
            V2_hp:32/little,
            V2_nuqi:32/little,
            V2_nuqi_max:32/little,
            V2_nuqi_skill_id:32/little,
            V2_bo_index:8,
            V2_fabao_id:16/little,
            V2_fabao_huanhua_lev:8,
            V2_fabao_level:16/little,
            V2_fabao_yinji:16/little,
            (byte_size(V2_role_name) + 1):16/little, V2_role_name/binary, 0
        >> || {V2_role_id, V2_role_type, V2_role_level, V2_professional, V2_sex, V2_headpicture, V2_position, V2_actor_id, V2_experience, V2_experience_next, V2_hp, V2_nuqi, V2_nuqi_max, V2_nuqi_skill_id, V2_bo_index, V2_fabao_id, V2_fabao_huanhua_lev, V2_fabao_level, V2_fabao_yinji, V2_role_name} <- V1_role_info]))/binary,
        (length(V1_competitor_info)):8/little, (list_to_binary([<<
            V2_id:32/signed-little,
            V2_monster_level:8/signed,
            V2_position:8/signed,
            V2_actor_id:8/signed,
            V2_is_monster:8/signed,
            V2_hp:32/little,
            V2_nuqi:32/little,
            V2_nuqi_max:32/little,
            V2_bo_index:8/signed,
            V2_curr_hp:32/little,
            (byte_size(V2_monster_name) + 1):16/little, V2_monster_name/binary, 0
        >> || {V2_id, V2_monster_level, V2_position, V2_actor_id, V2_is_monster, V2_hp, V2_nuqi, V2_nuqi_max, V2_bo_index, V2_curr_hp, V2_monster_name} <- V1_competitor_info]))/binary,
        (length(V1_fighting_result)):8/little, (list_to_binary([<<
            V2_curr_bo:8/signed,
            (length(V2_clear_effect)):8/little, (list_to_binary([<<
                V3_fighter_actor:8/signed,
                V3_dot_hp:32/signed-little,
                (length(V3_effect_list)):8/little, (list_to_binary([<<
                    V4_effect_id:16/little
                >> || V4_effect_id <- V3_effect_list]))/binary
            >> || {V3_fighter_actor, V3_dot_hp, V3_effect_list} <- V2_clear_effect]))/binary,
            (length(V2_fighting_list)):8/little, (list_to_binary([<<
                (length(V3_attacker)):8/little, (list_to_binary([<<
                    V4_skill_id:16/little,
                    V4_fighter_id:8,
                    V4_skill_level:8,
                    V4_fabao_skill_id:16/little,
                    (length(V4_attr_list)):8/little, (list_to_binary([<<
                        V5_attr_id:8,
                        V5_attr_value:32/signed-little
                    >> || {V5_attr_id, V5_attr_value} <- V4_attr_list]))/binary,
                    (length(V4_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_buff_list]))/binary,
                    (length(V4_add_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_add_buff_list]))/binary
                >> || {V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list} <- V3_attacker]))/binary,
                (length(V3_defender)):8/little, (list_to_binary([<<
                    V4_buff_id:16/little,
                    V4_effect_type:8,
                    V4_skill_id:16/little,
                    V4_fighter_id:8,
                    V4_skill_level:8,
                    V4_fabao_skill_id:16/little,
                    (length(V4_attr_list)):8/little, (list_to_binary([<<
                        V5_attr_id:8,
                        V5_attr_value:32/signed-little
                    >> || {V5_attr_id, V5_attr_value} <- V4_attr_list]))/binary,
                    (length(V4_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_buff_list]))/binary,
                    (length(V4_add_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_add_buff_list]))/binary
                >> || {V4_buff_id, V4_effect_type, V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list} <- V3_defender]))/binary
            >> || {V3_attacker, V3_defender} <- V2_fighting_list]))/binary,
            (length(V2_action_list)):8/little, (list_to_binary([<<
                V3_action_type:8,
                V3_new_id:32/little,
                V3_old_id:32/little
            >> || {V3_action_type, V3_new_id, V3_old_id} <- V2_action_list]))/binary
        >> || {V2_curr_bo, V2_clear_effect, V2_fighting_list, V2_action_list} <- V1_fighting_result]))/binary,
        (length(V1_item_list)):8/little, (list_to_binary([<<
            V2_item_id:32/signed-little,
            V2_item_num:32/signed-little
        >> || {V2_item_id, V2_item_num} <- V1_item_list]))/binary
    >>,
    {ok, protocol:pack(4353, Data)};

pack(cli, 4401, {}) ->
    {ok, protocol:pack(4401, <<>>)};

pack(srv, 4451, {V1_is_all_finish, V1_target_state}) ->
    Data = <<
        V1_is_all_finish:16/little,
        (length(V1_target_state)):8/little, (list_to_binary([<<
            V2_index:16/little,
            V2_state:16/little
        >> || {V2_index, V2_state} <- V1_target_state]))/binary
    >>,
    {ok, protocol:pack(4451, Data)};

pack(cli, 4402, {V1_target_index}) ->
    Data = <<
        V1_target_index:32/signed-little
    >>,
    {ok, protocol:pack(4402, Data)};

pack(srv, 4452, {V1_target_type, V1_section_index, V1_unit_index}) ->
    Data = <<
        V1_target_type:8/signed,
        V1_section_index:16/signed-little,
        V1_unit_index:16/signed-little
    >>,
    {ok, protocol:pack(4452, Data)};

pack(srv, 4453, {V1_target_index}) ->
    Data = <<
        V1_target_index:32/signed-little
    >>,
    {ok, protocol:pack(4453, Data)};

pack(cli, 4501, {V1_treasure_id, V1_x, V1_y, V1_index, V1_treasure_index}) ->
    Data = <<
        V1_treasure_id:32/little,
        V1_x:16/little,
        V1_y:16/little,
        V1_index:16/little,
        V1_treasure_index:16/little
    >>,
    {ok, protocol:pack(4501, Data)};

pack(srv, 4551, {V1_treasure_type, V1_reward_type, V1_coin, V1_gold, V1_item_list}) ->
    Data = <<
        V1_treasure_type:8,
        V1_reward_type:8,
        V1_coin:32/little,
        V1_gold:32/little,
        (length(V1_item_list)):8/little, (list_to_binary([<<
            V2_item_id:32/signed-little,
            V2_item_num:8
        >> || {V2_item_id, V2_item_num} <- V1_item_list]))/binary
    >>,
    {ok, protocol:pack(4551, Data)};

pack(cli, 4502, {V1_treasure_id, V1_scene_id, V1_scene_x, V1_scene_y}) ->
    Data = <<
        V1_treasure_id:32/little,
        V1_scene_id:32/little,
        V1_scene_x:16/little,
        V1_scene_y:16/little
    >>,
    {ok, protocol:pack(4502, Data)};

pack(cli, 4701, {}) ->
    {ok, protocol:pack(4701, <<>>)};

pack(srv, 4751, {V1_liveness_val, V1_getreward_count, V1_func_count}) ->
    Data = <<
        V1_liveness_val:32/signed-little,
        V1_getreward_count:32/signed-little,
        (length(V1_func_count)):8/little, (list_to_binary([<<
            V2_func:16/little,
            V2_count:16/little
        >> || {V2_func, V2_count} <- V1_func_count]))/binary
    >>,
    {ok, protocol:pack(4751, Data)};

pack(cli, 4702, {}) ->
    {ok, protocol:pack(4702, <<>>)};

pack(srv, 4752, {V1_liveness_val, V1_reward_count, V1_result}) ->
    Data = <<
        V1_liveness_val:16/little,
        V1_reward_count:16/little,
        V1_result:8
    >>,
    {ok, protocol:pack(4752, Data)};

pack(srv, 4753, {V1_id, V1_count, V1_result}) ->
    Data = <<
        V1_id:16/little,
        V1_count:16/little,
        V1_result:8
    >>,
    {ok, protocol:pack(4753, Data)};

pack(cli, 4801, {}) ->
    {ok, protocol:pack(4801, <<>>)};

pack(srv, 4851, {V1_expire_time, V1_can_get_gold, V1_remain_get_gold}) ->
    Data = <<
        V1_expire_time:32/little,
        V1_can_get_gold:32/little,
        V1_remain_get_gold:32/little
    >>,
    {ok, protocol:pack(4851, Data)};

pack(cli, 4802, {V1_type}) ->
    Data = <<
        V1_type:8
    >>,
    {ok, protocol:pack(4802, Data)};

pack(srv, 4852, {V1_expire_time, V1_can_get_gold, V1_remain_get_gold}) ->
    Data = <<
        V1_expire_time:32/little,
        V1_can_get_gold:32/little,
        V1_remain_get_gold:32/little
    >>,
    {ok, protocol:pack(4852, Data)};

pack(cli, 4803, {}) ->
    {ok, protocol:pack(4803, <<>>)};

pack(srv, 4853, {V1_got_gold}) ->
    Data = <<
        V1_got_gold:32/little
    >>,
    {ok, protocol:pack(4853, Data)};

pack(cli, 4901, {}) ->
    {ok, protocol:pack(4901, <<>>)};

pack(srv, 4951, {V1_gift_data}) ->
    Data = <<
        (length(V1_gift_data)):8/little, (list_to_binary([<<
            V2_gift_id:8
        >> || V2_gift_id <- V1_gift_data]))/binary
    >>,
    {ok, protocol:pack(4951, Data)};

pack(cli, 4902, {V1_gift_id}) ->
    Data = <<
        V1_gift_id:8
    >>,
    {ok, protocol:pack(4902, Data)};

pack(srv, 4952, {V1_gift_id}) ->
    Data = <<
        V1_gift_id:8
    >>,
    {ok, protocol:pack(4952, Data)};

pack(cli, 5001, {V1_gift_id}) ->
    Data = <<
        V1_gift_id:16/little
    >>,
    {ok, protocol:pack(5001, Data)};

pack(srv, 5051, {V1_gift_id}) ->
    Data = <<
        V1_gift_id:16/little
    >>,
    {ok, protocol:pack(5051, Data)};

pack(cli, 5002, {}) ->
    {ok, protocol:pack(5002, <<>>)};

pack(srv, 5052, {V1_is_get_reward, V1_charge_money}) ->
    Data = <<
        V1_is_get_reward:16/little,
        V1_charge_money:32/little
    >>,
    {ok, protocol:pack(5052, Data)};

pack(srv, 5151, {V1_num, V1_question_id}) ->
    Data = <<
        V1_num:8,
        V1_question_id:16/little
    >>,
    {ok, protocol:pack(5151, Data)};

pack(cli, 5102, {V1_question_id, V1_answer_id}) ->
    Data = <<
        V1_question_id:16/little,
        V1_answer_id:8
    >>,
    {ok, protocol:pack(5102, Data)};

pack(srv, 5532, {V1_attack_id, V1_target_id, V1_uid}) ->
    Data = <<
        V1_attack_id:32/little,
        V1_target_id:32/little,
        V1_uid:32/little
    >>,
    {ok, protocol:pack(5532, Data)};

pack(cli, 5513, {V1_act_type}) ->
    Data = <<
        V1_act_type:32/little
    >>,
    {ok, protocol:pack(5513, Data)};

pack(srv, 5563, {V1_act_type, V1_is_open}) ->
    Data = <<
        V1_act_type:32/little,
        V1_is_open:32/little
    >>,
    {ok, protocol:pack(5563, Data)};

pack(srv, 5564, {V1_wave, V1_time, V1_left_time}) ->
    Data = <<
        V1_wave:16/little,
        V1_time:32/little,
        V1_left_time:32/little
    >>,
    {ok, protocol:pack(5564, Data)};

pack(cli, 7001, {}) ->
    {ok, protocol:pack(7001, <<>>)};

pack(srv, 7051, {V1_friend_list, V1_black_list}) ->
    Data = <<
        (length(V1_friend_list)):8/little, (list_to_binary([<<
            V2_user_id:32/little,
            V2_user_lv:8,
            V2_sex:8,
            V2_is_online:8,
            (byte_size(V2_user_name) + 1):16/little, V2_user_name/binary, 0
        >> || {V2_user_id, V2_user_lv, V2_sex, V2_is_online, V2_user_name} <- V1_friend_list]))/binary,
        (length(V1_black_list)):8/little, (list_to_binary([<<
            V2_user_id:32/little,
            V2_user_lv:8,
            V2_sex:8,
            V2_is_online:8,
            (byte_size(V2_user_name) + 1):16/little, V2_user_name/binary, 0
        >> || {V2_user_id, V2_user_lv, V2_sex, V2_is_online, V2_user_name} <- V1_black_list]))/binary
    >>,
    {ok, protocol:pack(7051, Data)};

pack(cli, 7002, {V1_user_id, V1_op_type, V1_user_name}) ->
    Data = <<
        V1_user_id:32/little,
        V1_op_type:8,
        (byte_size(V1_user_name) + 1):16/little, V1_user_name/binary, 0
    >>,
    {ok, protocol:pack(7002, Data)};

pack(srv, 7052, {V1_result, V1_op_type}) ->
    Data = <<
        V1_result:32/signed-little,
        V1_op_type:8
    >>,
    {ok, protocol:pack(7052, Data)};

pack(cli, 7101, {V1_channel_id, V1_data_type, V1_msg}) ->
    Data = <<
        V1_channel_id:16/little,
        V1_data_type:16/little,
        (byte_size(V1_msg) + 1):16/little, V1_msg/binary, 0
    >>,
    {ok, protocol:pack(7101, Data)};

pack(srv, 7151, {V1_role_id, V1_level, V1_profession, V1_channel_id, V1_data_type, V1_role_name, V1_msg}) ->
    Data = <<
        V1_role_id:32/little,
        V1_level:8/signed,
        V1_profession:8/signed,
        V1_channel_id:16/little,
        V1_data_type:16/little,
        (byte_size(V1_role_name) + 1):16/little, V1_role_name/binary, 0,
        (byte_size(V1_msg) + 1):16/little, V1_msg/binary, 0
    >>,
    {ok, protocol:pack(7151, Data)};

pack(cli, 7102, {V1_role_id, V1_data_type, V1_msg}) ->
    Data = <<
        V1_role_id:32/little,
        V1_data_type:16/little,
        (byte_size(V1_msg) + 1):16/little, V1_msg/binary, 0
    >>,
    {ok, protocol:pack(7102, Data)};

pack(srv, 7152, {V1_role_id, V1_result}) ->
    Data = <<
        V1_role_id:32/little,
        V1_result:32/signed-little
    >>,
    {ok, protocol:pack(7152, Data)};

pack(srv, 7153, {V1_time, V1_role_id, V1_level, V1_profession, V1_data_type, V1_role_name, V1_msg}) ->
    Data = <<
        V1_time:32/little,
        V1_role_id:32/little,
        V1_level:8,
        V1_profession:8,
        V1_data_type:16/little,
        (byte_size(V1_role_name) + 1):16/little, V1_role_name/binary, 0,
        (byte_size(V1_msg) + 1):16/little, V1_msg/binary, 0
    >>,
    {ok, protocol:pack(7153, Data)};

pack(cli, 7301, {}) ->
    {ok, protocol:pack(7301, <<>>)};

pack(srv, 7351, {V1_curr_rank_index, V1_remain_get_time, V1_remain_cd_time, V1_continue_win_count, V1_has_buy_times, V1_box_color, V1_remain_battle_times, V1_competitor_info}) ->
    Data = <<
        V1_curr_rank_index:16/little,
        V1_remain_get_time:32/little,
        V1_remain_cd_time:32/little,
        V1_continue_win_count:16/little,
        V1_has_buy_times:16/little,
        V1_box_color:8/signed,
        V1_remain_battle_times:8/signed,
        (length(V1_competitor_info)):8/little, (list_to_binary([<<
            V2_user_id:32/signed-little,
            V2_profession:8,
            V2_role_level:8,
            V2_rank_index:16/little,
            V2_role_fc:32/little,
            (byte_size(V2_user_name) + 1):16/little, V2_user_name/binary, 0
        >> || {V2_user_id, V2_profession, V2_role_level, V2_rank_index, V2_role_fc, V2_user_name} <- V1_competitor_info]))/binary
    >>,
    {ok, protocol:pack(7351, Data)};

pack(cli, 7302, {}) ->
    {ok, protocol:pack(7302, <<>>)};

pack(srv, 7352, {V1_remain_cd_time}) ->
    Data = <<
        V1_remain_cd_time:32/signed-little
    >>,
    {ok, protocol:pack(7352, Data)};

pack(cli, 7303, {}) ->
    {ok, protocol:pack(7303, <<>>)};

pack(srv, 7353, {V1_has_buy_times, V1_remain_battle_times}) ->
    Data = <<
        V1_has_buy_times:16/little,
        V1_remain_battle_times:16/little
    >>,
    {ok, protocol:pack(7353, Data)};

pack(srv, 7354, {}) ->
    {ok, protocol:pack(7354, <<>>)};

pack(cli, 7305, {V1_user_id, V1_target_rank_index}) ->
    Data = <<
        V1_user_id:32/signed-little,
        V1_target_rank_index:32/signed-little
    >>,
    {ok, protocol:pack(7305, Data)};

pack(srv, 7355, {V1_exp_reward, V1_xinghun_reward, V1_jiuli_reward, V1_battle_result, V1_role_info, V1_competitor_info, V1_fighting_result}) ->
    Data = <<
        V1_exp_reward:32/little,
        V1_xinghun_reward:16/little,
        V1_jiuli_reward:16/little,
        V1_battle_result:8/signed,
        (length(V1_role_info)):8/little, (list_to_binary([<<
            V2_role_id:32/signed-little,
            V2_role_type:8/signed,
            V2_role_level:8/signed,
            V2_professional:8/signed,
            V2_sex:8/signed,
            V2_headpicture:8/signed,
            V2_position:8/signed,
            V2_actor_id:8/signed,
            V2_experience:32/little,
            V2_experience_next:32/little,
            V2_hp:32/little,
            V2_nuqi:32/little,
            V2_nuqi_max:32/little,
            V2_nuqi_skill_id:32/little,
            V2_bo_index:8,
            V2_fabao_id:16/little,
            V2_fabao_huanhua_lev:8,
            V2_fabao_level:16/little,
            V2_fabao_yinji:16/little,
            (byte_size(V2_role_name) + 1):16/little, V2_role_name/binary, 0
        >> || {V2_role_id, V2_role_type, V2_role_level, V2_professional, V2_sex, V2_headpicture, V2_position, V2_actor_id, V2_experience, V2_experience_next, V2_hp, V2_nuqi, V2_nuqi_max, V2_nuqi_skill_id, V2_bo_index, V2_fabao_id, V2_fabao_huanhua_lev, V2_fabao_level, V2_fabao_yinji, V2_role_name} <- V1_role_info]))/binary,
        (length(V1_competitor_info)):8/little, (list_to_binary([<<
            V2_role_id:32/signed-little,
            V2_role_type:8/signed,
            V2_role_level:8/signed,
            V2_professional:8/signed,
            V2_sex:8/signed,
            V2_headpicture:8/signed,
            V2_position:8/signed,
            V2_actor_id:8/signed,
            V2_experience:32/little,
            V2_experience_next:32/little,
            V2_hp:32/little,
            V2_nuqi:32/little,
            V2_nuqi_max:32/little,
            V2_nuqi_skill_id:32/little,
            V2_bo_index:8,
            V2_fabao_id:16/little,
            V2_fabao_huanhua_lev:8,
            V2_fabao_level:16/little,
            V2_fabao_yinji:16/little,
            (byte_size(V2_role_name) + 1):16/little, V2_role_name/binary, 0
        >> || {V2_role_id, V2_role_type, V2_role_level, V2_professional, V2_sex, V2_headpicture, V2_position, V2_actor_id, V2_experience, V2_experience_next, V2_hp, V2_nuqi, V2_nuqi_max, V2_nuqi_skill_id, V2_bo_index, V2_fabao_id, V2_fabao_huanhua_lev, V2_fabao_level, V2_fabao_yinji, V2_role_name} <- V1_competitor_info]))/binary,
        (length(V1_fighting_result)):8/little, (list_to_binary([<<
            V2_curr_bo:8/signed,
            (length(V2_clear_effect)):8/little, (list_to_binary([<<
                V3_fighter_actor:8/signed,
                V3_dot_hp:32/signed-little,
                (length(V3_effect_list)):8/little, (list_to_binary([<<
                    V4_effect_id:16/little
                >> || V4_effect_id <- V3_effect_list]))/binary
            >> || {V3_fighter_actor, V3_dot_hp, V3_effect_list} <- V2_clear_effect]))/binary,
            (length(V2_fighting_list)):8/little, (list_to_binary([<<
                (length(V3_attacker)):8/little, (list_to_binary([<<
                    V4_skill_id:16/little,
                    V4_fighter_id:8,
                    V4_skill_level:8,
                    V4_fabao_skill_id:16/little,
                    (length(V4_attr_list)):8/little, (list_to_binary([<<
                        V5_attr_id:8,
                        V5_attr_value:32/signed-little
                    >> || {V5_attr_id, V5_attr_value} <- V4_attr_list]))/binary,
                    (length(V4_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_buff_list]))/binary,
                    (length(V4_add_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_add_buff_list]))/binary
                >> || {V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list} <- V3_attacker]))/binary,
                (length(V3_defender)):8/little, (list_to_binary([<<
                    V4_buff_id:16/little,
                    V4_effect_type:8,
                    V4_skill_id:16/little,
                    V4_fighter_id:8,
                    V4_skill_level:8,
                    V4_fabao_skill_id:16/little,
                    (length(V4_attr_list)):8/little, (list_to_binary([<<
                        V5_attr_id:8,
                        V5_attr_value:32/signed-little
                    >> || {V5_attr_id, V5_attr_value} <- V4_attr_list]))/binary,
                    (length(V4_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_buff_list]))/binary,
                    (length(V4_add_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_add_buff_list]))/binary
                >> || {V4_buff_id, V4_effect_type, V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list} <- V3_defender]))/binary
            >> || {V3_attacker, V3_defender} <- V2_fighting_list]))/binary,
            (length(V2_action_list)):8/little, (list_to_binary([<<
                V3_action_type:8,
                V3_new_id:32/little,
                V3_old_id:32/little
            >> || {V3_action_type, V3_new_id, V3_old_id} <- V2_action_list]))/binary
        >> || {V2_curr_bo, V2_clear_effect, V2_fighting_list, V2_action_list} <- V1_fighting_result]))/binary
    >>,
    {ok, protocol:pack(7355, Data)};

pack(cli, 7306, {}) ->
    {ok, protocol:pack(7306, <<>>)};

pack(srv, 7356, {V1_xinghun, V1_jiuli, V1_remain_get_time}) ->
    Data = <<
        V1_xinghun:16/little,
        V1_jiuli:16/little,
        V1_remain_get_time:32/little
    >>,
    {ok, protocol:pack(7356, Data)};

pack(cli, 7307, {}) ->
    {ok, protocol:pack(7307, <<>>)};

pack(srv, 7357, {V1_top_report, V1_my_report}) ->
    Data = <<
        (length(V1_top_report)):8/little, (list_to_binary([<<
            V2_attacker_id:32/little,
            V2_defender_id:32/little,
            V2_battle_time:32/little,
            V2_battle_result:8,
            V2_attacker_rank:32/little,
            V2_defender_rank:32/little,
            V2_record_id:32/little,
            (byte_size(V2_attacker_name) + 1):16/little, V2_attacker_name/binary, 0,
            (byte_size(V2_defender_name) + 1):16/little, V2_defender_name/binary, 0
        >> || {V2_attacker_id, V2_defender_id, V2_battle_time, V2_battle_result, V2_attacker_rank, V2_defender_rank, V2_record_id, V2_attacker_name, V2_defender_name} <- V1_top_report]))/binary,
        (length(V1_my_report)):8/little, (list_to_binary([<<
            V2_attacker_id:32/little,
            V2_defender_id:32/little,
            V2_battle_time:32/little,
            V2_battle_result:8,
            V2_attacker_rank:32/little,
            V2_defender_rank:32/little,
            V2_record_id:32/little,
            (byte_size(V2_attacker_name) + 1):16/little, V2_attacker_name/binary, 0,
            (byte_size(V2_defender_name) + 1):16/little, V2_defender_name/binary, 0
        >> || {V2_attacker_id, V2_defender_id, V2_battle_time, V2_battle_result, V2_attacker_rank, V2_defender_rank, V2_record_id, V2_attacker_name, V2_defender_name} <- V1_my_report]))/binary
    >>,
    {ok, protocol:pack(7357, Data)};

pack(cli, 7308, {V1_record_id}) ->
    Data = <<
        V1_record_id:32/little
    >>,
    {ok, protocol:pack(7308, Data)};

pack(srv, 7358, {V1_battle_result, V1_role_info, V1_competitor_info, V1_fighting_result}) ->
    Data = <<
        V1_battle_result:8/signed,
        (length(V1_role_info)):8/little, (list_to_binary([<<
            V2_role_id:32/signed-little,
            V2_role_type:8/signed,
            V2_role_level:8/signed,
            V2_professional:8/signed,
            V2_sex:8/signed,
            V2_headpicture:8/signed,
            V2_position:8/signed,
            V2_actor_id:8/signed,
            V2_experience:32/little,
            V2_experience_next:32/little,
            V2_hp:32/little,
            V2_nuqi:32/little,
            V2_nuqi_max:32/little,
            V2_nuqi_skill_id:32/little,
            V2_bo_index:8,
            V2_fabao_id:16/little,
            V2_fabao_huanhua_lev:8,
            V2_fabao_level:16/little,
            V2_fabao_yinji:16/little,
            (byte_size(V2_role_name) + 1):16/little, V2_role_name/binary, 0
        >> || {V2_role_id, V2_role_type, V2_role_level, V2_professional, V2_sex, V2_headpicture, V2_position, V2_actor_id, V2_experience, V2_experience_next, V2_hp, V2_nuqi, V2_nuqi_max, V2_nuqi_skill_id, V2_bo_index, V2_fabao_id, V2_fabao_huanhua_lev, V2_fabao_level, V2_fabao_yinji, V2_role_name} <- V1_role_info]))/binary,
        (length(V1_competitor_info)):8/little, (list_to_binary([<<
            V2_role_id:32/signed-little,
            V2_role_type:8/signed,
            V2_role_level:8/signed,
            V2_professional:8/signed,
            V2_sex:8/signed,
            V2_headpicture:8/signed,
            V2_position:8/signed,
            V2_actor_id:8/signed,
            V2_experience:32/little,
            V2_experience_next:32/little,
            V2_hp:32/little,
            V2_nuqi:32/little,
            V2_nuqi_max:32/little,
            V2_nuqi_skill_id:32/little,
            V2_bo_index:8,
            V2_fabao_id:16/little,
            V2_fabao_huanhua_lev:8,
            V2_fabao_level:16/little,
            V2_fabao_yinji:16/little,
            (byte_size(V2_role_name) + 1):16/little, V2_role_name/binary, 0
        >> || {V2_role_id, V2_role_type, V2_role_level, V2_professional, V2_sex, V2_headpicture, V2_position, V2_actor_id, V2_experience, V2_experience_next, V2_hp, V2_nuqi, V2_nuqi_max, V2_nuqi_skill_id, V2_bo_index, V2_fabao_id, V2_fabao_huanhua_lev, V2_fabao_level, V2_fabao_yinji, V2_role_name} <- V1_competitor_info]))/binary,
        (length(V1_fighting_result)):8/little, (list_to_binary([<<
            V2_curr_bo:8/signed,
            (length(V2_clear_effect)):8/little, (list_to_binary([<<
                V3_fighter_actor:8/signed,
                V3_dot_hp:32/signed-little,
                (length(V3_effect_list)):8/little, (list_to_binary([<<
                    V4_effect_id:16/little
                >> || V4_effect_id <- V3_effect_list]))/binary
            >> || {V3_fighter_actor, V3_dot_hp, V3_effect_list} <- V2_clear_effect]))/binary,
            (length(V2_fighting_list)):8/little, (list_to_binary([<<
                (length(V3_attacker)):8/little, (list_to_binary([<<
                    V4_skill_id:16/little,
                    V4_fighter_id:8,
                    V4_skill_level:8,
                    V4_fabao_skill_id:16/little,
                    (length(V4_attr_list)):8/little, (list_to_binary([<<
                        V5_attr_id:8,
                        V5_attr_value:32/signed-little
                    >> || {V5_attr_id, V5_attr_value} <- V4_attr_list]))/binary,
                    (length(V4_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_buff_list]))/binary,
                    (length(V4_add_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_add_buff_list]))/binary
                >> || {V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list} <- V3_attacker]))/binary,
                (length(V3_defender)):8/little, (list_to_binary([<<
                    V4_buff_id:16/little,
                    V4_effect_type:8,
                    V4_skill_id:16/little,
                    V4_fighter_id:8,
                    V4_skill_level:8,
                    V4_fabao_skill_id:16/little,
                    (length(V4_attr_list)):8/little, (list_to_binary([<<
                        V5_attr_id:8,
                        V5_attr_value:32/signed-little
                    >> || {V5_attr_id, V5_attr_value} <- V4_attr_list]))/binary,
                    (length(V4_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_buff_list]))/binary,
                    (length(V4_add_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_add_buff_list]))/binary
                >> || {V4_buff_id, V4_effect_type, V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list} <- V3_defender]))/binary
            >> || {V3_attacker, V3_defender} <- V2_fighting_list]))/binary,
            (length(V2_action_list)):8/little, (list_to_binary([<<
                V3_action_type:8,
                V3_new_id:32/little,
                V3_old_id:32/little
            >> || {V3_action_type, V3_new_id, V3_old_id} <- V2_action_list]))/binary
        >> || {V2_curr_bo, V2_clear_effect, V2_fighting_list, V2_action_list} <- V1_fighting_result]))/binary
    >>,
    {ok, protocol:pack(7358, Data)};

pack(cli, 7309, {}) ->
    {ok, protocol:pack(7309, <<>>)};

pack(srv, 7359, {V1_rank_list}) ->
    Data = <<
        (length(V1_rank_list)):8/little, (list_to_binary([<<
            V2_user_id:32/little,
            V2_role_level:8,
            V2_role_fc:32/little,
            V2_profession:8,
            (byte_size(V2_user_name) + 1):16/little, V2_user_name/binary, 0
        >> || {V2_user_id, V2_role_level, V2_role_fc, V2_profession, V2_user_name} <- V1_rank_list]))/binary
    >>,
    {ok, protocol:pack(7359, Data)};

pack(cli, 7310, {}) ->
    {ok, protocol:pack(7310, <<>>)};

pack(srv, 7360, {V1_remain_get_time}) ->
    Data = <<
        V1_remain_get_time:32/signed-little
    >>,
    {ok, protocol:pack(7360, Data)};

pack(cli, 7401, {}) ->
    {ok, protocol:pack(7401, <<>>)};

pack(srv, 7452, {V1_s_damage, V1_s_damage_rate}) ->
    Data = <<
        V1_s_damage:32/signed-little,
        V1_s_damage_rate:32/signed-little
    >>,
    {ok, protocol:pack(7452, Data)};

pack(srv, 7453, {V1_s_damage, V1_user_id}) ->
    Data = <<
        V1_s_damage:32/signed-little,
        V1_user_id:32/signed-little
    >>,
    {ok, protocol:pack(7453, Data)};

pack(srv, 7454, {V1_status}) ->
    Data = <<
        V1_status:32/signed-little
    >>,
    {ok, protocol:pack(7454, Data)};

pack(cli, 7405, {}) ->
    {ok, protocol:pack(7405, <<>>)};

pack(srv, 7455, {V1_result, V1_encourage}) ->
    Data = <<
        V1_result:16/little,
        V1_encourage:16/little
    >>,
    {ok, protocol:pack(7455, Data)};

pack(cli, 7406, {}) ->
    {ok, protocol:pack(7406, <<>>)};

pack(srv, 7456, {V1_result}) ->
    Data = <<
        V1_result:32/signed-little
    >>,
    {ok, protocol:pack(7456, Data)};

pack(srv, 7457, {V1_rank_list}) ->
    Data = <<
        (length(V1_rank_list)):8/little, (list_to_binary([<<
            V2_damage:32/signed-little,
            V2_damage_rate:32/signed-little
        >> || {V2_damage, V2_damage_rate} <- V1_rank_list]))/binary
    >>,
    {ok, protocol:pack(7457, Data)};

pack(cli, 7408, {}) ->
    {ok, protocol:pack(7408, <<>>)};

pack(srv, 7458, {V1_coin, V1_experience, V1_winner_id, V1_role_info_list, V1_competitor_info, V1_fighting_result}) ->
    Data = <<
        V1_coin:32/little,
        V1_experience:32/little,
        V1_winner_id:8,
        (length(V1_role_info_list)):8/little, (list_to_binary([<<
            V2_role_id:32/signed-little,
            V2_role_type:8/signed,
            V2_role_level:8/signed,
            V2_professional:8/signed,
            V2_sex:8/signed,
            V2_headpicture:8/signed,
            V2_position:8/signed,
            V2_actor_id:8/signed,
            V2_experience:32/little,
            V2_experience_next:32/little,
            V2_hp:32/little,
            V2_nuqi:32/little,
            V2_nuqi_max:32/little,
            V2_nuqi_skill_id:32/little,
            V2_bo_index:8,
            V2_fabao_id:16/little,
            V2_fabao_huanhua_lev:8,
            V2_fabao_level:16/little,
            V2_fabao_yinji:16/little,
            (byte_size(V2_role_name) + 1):16/little, V2_role_name/binary, 0
        >> || {V2_role_id, V2_role_type, V2_role_level, V2_professional, V2_sex, V2_headpicture, V2_position, V2_actor_id, V2_experience, V2_experience_next, V2_hp, V2_nuqi, V2_nuqi_max, V2_nuqi_skill_id, V2_bo_index, V2_fabao_id, V2_fabao_huanhua_lev, V2_fabao_level, V2_fabao_yinji, V2_role_name} <- V1_role_info_list]))/binary,
        (length(V1_competitor_info)):8/little, (list_to_binary([<<
            V2_id:32/signed-little,
            V2_monster_level:8/signed,
            V2_position:8/signed,
            V2_actor_id:8/signed,
            V2_is_monster:8/signed,
            V2_hp:32/little,
            V2_nuqi:32/little,
            V2_nuqi_max:32/little,
            V2_bo_index:8/signed,
            V2_curr_hp:32/little,
            (byte_size(V2_monster_name) + 1):16/little, V2_monster_name/binary, 0
        >> || {V2_id, V2_monster_level, V2_position, V2_actor_id, V2_is_monster, V2_hp, V2_nuqi, V2_nuqi_max, V2_bo_index, V2_curr_hp, V2_monster_name} <- V1_competitor_info]))/binary,
        (length(V1_fighting_result)):8/little, (list_to_binary([<<
            V2_curr_bo:8/signed,
            (length(V2_clear_effect)):8/little, (list_to_binary([<<
                V3_fighter_actor:8/signed,
                V3_dot_hp:32/signed-little,
                (length(V3_effect_list)):8/little, (list_to_binary([<<
                    V4_effect_id:16/little
                >> || V4_effect_id <- V3_effect_list]))/binary
            >> || {V3_fighter_actor, V3_dot_hp, V3_effect_list} <- V2_clear_effect]))/binary,
            (length(V2_fighting_list)):8/little, (list_to_binary([<<
                (length(V3_attacker)):8/little, (list_to_binary([<<
                    V4_skill_id:16/little,
                    V4_fighter_id:8,
                    V4_skill_level:8,
                    V4_fabao_skill_id:16/little,
                    (length(V4_attr_list)):8/little, (list_to_binary([<<
                        V5_attr_id:8,
                        V5_attr_value:32/signed-little
                    >> || {V5_attr_id, V5_attr_value} <- V4_attr_list]))/binary,
                    (length(V4_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_buff_list]))/binary,
                    (length(V4_add_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_add_buff_list]))/binary
                >> || {V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list} <- V3_attacker]))/binary,
                (length(V3_defender)):8/little, (list_to_binary([<<
                    V4_buff_id:16/little,
                    V4_effect_type:8,
                    V4_skill_id:16/little,
                    V4_fighter_id:8,
                    V4_skill_level:8,
                    V4_fabao_skill_id:16/little,
                    (length(V4_attr_list)):8/little, (list_to_binary([<<
                        V5_attr_id:8,
                        V5_attr_value:32/signed-little
                    >> || {V5_attr_id, V5_attr_value} <- V4_attr_list]))/binary,
                    (length(V4_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_buff_list]))/binary,
                    (length(V4_add_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_add_buff_list]))/binary
                >> || {V4_buff_id, V4_effect_type, V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list} <- V3_defender]))/binary
            >> || {V3_attacker, V3_defender} <- V2_fighting_list]))/binary,
            (length(V2_action_list)):8/little, (list_to_binary([<<
                V3_action_type:8,
                V3_new_id:32/little,
                V3_old_id:32/little
            >> || {V3_action_type, V3_new_id, V3_old_id} <- V2_action_list]))/binary
        >> || {V2_curr_bo, V2_clear_effect, V2_fighting_list, V2_action_list} <- V1_fighting_result]))/binary
    >>,
    {ok, protocol:pack(7458, Data)};

pack(cli, 7409, {}) ->
    {ok, protocol:pack(7409, <<>>)};

pack(srv, 7459, {V1_death_cd, V1_hard_cd, V1_remain_time}) ->
    Data = <<
        V1_death_cd:32/signed-little,
        V1_hard_cd:32/signed-little,
        V1_remain_time:32/signed-little
    >>,
    {ok, protocol:pack(7459, Data)};

pack(srv, 7460, {V1_remain_time}) ->
    Data = <<
        V1_remain_time:32/signed-little
    >>,
    {ok, protocol:pack(7460, Data)};

pack(srv, 7461, {V1_reward_type, V1_reward_rank, V1_reward_coin, V1_reward_exp}) ->
    Data = <<
        V1_reward_type:16/little,
        V1_reward_rank:16/little,
        V1_reward_coin:32/little,
        V1_reward_exp:32/little
    >>,
    {ok, protocol:pack(7461, Data)};

pack(srv, 7462, {V1_activity_type, V1_activity_status, V1_activity_round}) ->
    Data = <<
        V1_activity_type:16/little,
        V1_activity_status:16/little,
        V1_activity_round:32/signed-little
    >>,
    {ok, protocol:pack(7462, Data)};

pack(cli, 7413, {}) ->
    {ok, protocol:pack(7413, <<>>)};

pack(cli, 7414, {}) ->
    {ok, protocol:pack(7414, <<>>)};

pack(srv, 7464, {V1_result, V1_waiting_time, V1_remain_time, V1_boss_id, V1_boss_hp_max, V1_boss_hp_cur, V1_boss_pos_x, V1_boss_pos_y, V1_role_pos_x, V1_role_pos_y, V1_encourage, V1_death_cd, V1_hard_cd}) ->
    Data = <<
        V1_result:32/signed-little,
        V1_waiting_time:32/signed-little,
        V1_remain_time:32/signed-little,
        V1_boss_id:32/signed-little,
        V1_boss_hp_max:32/signed-little,
        V1_boss_hp_cur:32/signed-little,
        V1_boss_pos_x:16/little,
        V1_boss_pos_y:16/little,
        V1_role_pos_x:16/little,
        V1_role_pos_y:16/little,
        V1_encourage:16/little,
        V1_death_cd:16/little,
        V1_hard_cd:16/little
    >>,
    {ok, protocol:pack(7464, Data)};

pack(cli, 7501, {V1_monster_id, V1_obj_id}) ->
    Data = <<
        V1_monster_id:32/little,
        V1_obj_id:32/little
    >>,
    {ok, protocol:pack(7501, Data)};

pack(srv, 7551, {V1_coin, V1_xinghun, V1_winner_id, V1_role_info, V1_competitor_info, V1_fighting_result, V1_item_rw}) ->
    Data = <<
        V1_coin:32/little,
        V1_xinghun:32/little,
        V1_winner_id:8,
        (length(V1_role_info)):8/little, (list_to_binary([<<
            V2_role_id:32/signed-little,
            V2_role_type:8/signed,
            V2_role_level:8/signed,
            V2_professional:8/signed,
            V2_sex:8/signed,
            V2_headpicture:8/signed,
            V2_position:8/signed,
            V2_actor_id:8/signed,
            V2_experience:32/little,
            V2_experience_next:32/little,
            V2_hp:32/little,
            V2_nuqi:32/little,
            V2_nuqi_max:32/little,
            V2_nuqi_skill_id:32/little,
            V2_bo_index:8,
            V2_fabao_id:16/little,
            V2_fabao_huanhua_lev:8,
            V2_fabao_level:16/little,
            V2_fabao_yinji:16/little,
            (byte_size(V2_role_name) + 1):16/little, V2_role_name/binary, 0
        >> || {V2_role_id, V2_role_type, V2_role_level, V2_professional, V2_sex, V2_headpicture, V2_position, V2_actor_id, V2_experience, V2_experience_next, V2_hp, V2_nuqi, V2_nuqi_max, V2_nuqi_skill_id, V2_bo_index, V2_fabao_id, V2_fabao_huanhua_lev, V2_fabao_level, V2_fabao_yinji, V2_role_name} <- V1_role_info]))/binary,
        (length(V1_competitor_info)):8/little, (list_to_binary([<<
            V2_id:32/signed-little,
            V2_monster_level:8/signed,
            V2_position:8/signed,
            V2_actor_id:8/signed,
            V2_is_monster:8/signed,
            V2_hp:32/little,
            V2_nuqi:32/little,
            V2_nuqi_max:32/little,
            V2_bo_index:8/signed,
            V2_curr_hp:32/little,
            (byte_size(V2_monster_name) + 1):16/little, V2_monster_name/binary, 0
        >> || {V2_id, V2_monster_level, V2_position, V2_actor_id, V2_is_monster, V2_hp, V2_nuqi, V2_nuqi_max, V2_bo_index, V2_curr_hp, V2_monster_name} <- V1_competitor_info]))/binary,
        (length(V1_fighting_result)):8/little, (list_to_binary([<<
            V2_curr_bo:8/signed,
            (length(V2_clear_effect)):8/little, (list_to_binary([<<
                V3_fighter_actor:8/signed,
                V3_dot_hp:32/signed-little,
                (length(V3_effect_list)):8/little, (list_to_binary([<<
                    V4_effect_id:16/little
                >> || V4_effect_id <- V3_effect_list]))/binary
            >> || {V3_fighter_actor, V3_dot_hp, V3_effect_list} <- V2_clear_effect]))/binary,
            (length(V2_fighting_list)):8/little, (list_to_binary([<<
                (length(V3_attacker)):8/little, (list_to_binary([<<
                    V4_skill_id:16/little,
                    V4_fighter_id:8,
                    V4_skill_level:8,
                    V4_fabao_skill_id:16/little,
                    (length(V4_attr_list)):8/little, (list_to_binary([<<
                        V5_attr_id:8,
                        V5_attr_value:32/signed-little
                    >> || {V5_attr_id, V5_attr_value} <- V4_attr_list]))/binary,
                    (length(V4_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_buff_list]))/binary,
                    (length(V4_add_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_add_buff_list]))/binary
                >> || {V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list} <- V3_attacker]))/binary,
                (length(V3_defender)):8/little, (list_to_binary([<<
                    V4_buff_id:16/little,
                    V4_effect_type:8,
                    V4_skill_id:16/little,
                    V4_fighter_id:8,
                    V4_skill_level:8,
                    V4_fabao_skill_id:16/little,
                    (length(V4_attr_list)):8/little, (list_to_binary([<<
                        V5_attr_id:8,
                        V5_attr_value:32/signed-little
                    >> || {V5_attr_id, V5_attr_value} <- V4_attr_list]))/binary,
                    (length(V4_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_buff_list]))/binary,
                    (length(V4_add_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_add_buff_list]))/binary
                >> || {V4_buff_id, V4_effect_type, V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list} <- V3_defender]))/binary
            >> || {V3_attacker, V3_defender} <- V2_fighting_list]))/binary,
            (length(V2_action_list)):8/little, (list_to_binary([<<
                V3_action_type:8,
                V3_new_id:32/little,
                V3_old_id:32/little
            >> || {V3_action_type, V3_new_id, V3_old_id} <- V2_action_list]))/binary
        >> || {V2_curr_bo, V2_clear_effect, V2_fighting_list, V2_action_list} <- V1_fighting_result]))/binary,
        (length(V1_item_rw)):8/little, (list_to_binary([<<
            V2_item_id:32/signed-little,
            V2_num:8
        >> || {V2_item_id, V2_num} <- V1_item_rw]))/binary
    >>,
    {ok, protocol:pack(7551, Data)};

pack(cli, 7502, {V1_action, V1_scene_id, V1_obj_id}) ->
    Data = <<
        V1_action:8,
        V1_scene_id:32/little,
        V1_obj_id:32/little
    >>,
    {ok, protocol:pack(7502, Data)};

pack(srv, 7552, {V1_collect}) ->
    Data = <<
        V1_collect:8
    >>,
    {ok, protocol:pack(7552, Data)};

pack(cli, 7503, {V1_scene_id, V1_obj_id}) ->
    Data = <<
        V1_scene_id:32/little,
        V1_obj_id:32/little
    >>,
    {ok, protocol:pack(7503, Data)};

pack(srv, 7553, {V1_type, V1_num, V1_item_list}) ->
    Data = <<
        V1_type:8,
        V1_num:32/little,
        (length(V1_item_list)):8/little, (list_to_binary([<<
            V2_item_id:32/little,
            V2_num:8
        >> || {V2_item_id, V2_num} <- V1_item_list]))/binary
    >>,
    {ok, protocol:pack(7553, Data)};

pack(cli, 7504, {}) ->
    {ok, protocol:pack(7504, <<>>)};

pack(cli, 7505, {V1_monster_id}) ->
    Data = <<
        V1_monster_id:32/little
    >>,
    {ok, protocol:pack(7505, Data)};

pack(srv, 7555, {V1_monster_id, V1_remain_count}) ->
    Data = <<
        V1_monster_id:32/little,
        V1_remain_count:8
    >>,
    {ok, protocol:pack(7555, Data)};

pack(cli, 7601, {V1_sg_type, V1_is_auto_fish, V1_obj_id, V1_fish_zone}) ->
    Data = <<
        V1_sg_type:8,
        V1_is_auto_fish:8,
        V1_obj_id:16/little,
        V1_fish_zone:8
    >>,
    {ok, protocol:pack(7601, Data)};

pack(srv, 7651, {V1_result, V1_auto_fish_num, V1_silver, V1_matiral_type, V1_item_list}) ->
    Data = <<
        V1_result:8,
        V1_auto_fish_num:8,
        V1_silver:16/little,
        V1_matiral_type:8,
        (length(V1_item_list)):8/little, (list_to_binary([<<
            V2_item_id:32/little,
            V2_num:8
        >> || {V2_item_id, V2_num} <- V1_item_list]))/binary
    >>,
    {ok, protocol:pack(7651, Data)};

pack(cli, 7602, {}) ->
    {ok, protocol:pack(7602, <<>>)};

pack(srv, 7652, {V1_auto_fish_num}) ->
    Data = <<
        V1_auto_fish_num:8
    >>,
    {ok, protocol:pack(7652, Data)};

pack(cli, 7603, {}) ->
    {ok, protocol:pack(7603, <<>>)};

pack(cli, 7611, {V1_fb_id, V1_fb_type, V1_fb_pass_id}) ->
    Data = <<
        V1_fb_id:16/little,
        V1_fb_type:16/little,
        V1_fb_pass_id:16/little
    >>,
    {ok, protocol:pack(7611, Data)};

pack(srv, 7653, {V1_result, V1_auto_fish_num}) ->
    Data = <<
        V1_result:8,
        V1_auto_fish_num:8
    >>,
    {ok, protocol:pack(7653, Data)};

pack(cli, 7604, {V1_state}) ->
    Data = <<
        V1_state:8
    >>,
    {ok, protocol:pack(7604, Data)};

pack(srv, 7655, {V1_winner_id, V1_fish_zone, V1_role_info, V1_competitor_info, V1_fighting_result}) ->
    Data = <<
        V1_winner_id:8,
        V1_fish_zone:8,
        (length(V1_role_info)):8/little, (list_to_binary([<<
            V2_role_id:32/signed-little,
            V2_role_type:8/signed,
            V2_role_level:8/signed,
            V2_professional:8/signed,
            V2_sex:8/signed,
            V2_headpicture:8/signed,
            V2_position:8/signed,
            V2_actor_id:8/signed,
            V2_experience:32/little,
            V2_experience_next:32/little,
            V2_hp:32/little,
            V2_nuqi:32/little,
            V2_nuqi_max:32/little,
            V2_nuqi_skill_id:32/little,
            V2_bo_index:8,
            V2_fabao_id:16/little,
            V2_fabao_huanhua_lev:8,
            V2_fabao_level:16/little,
            V2_fabao_yinji:16/little,
            (byte_size(V2_role_name) + 1):16/little, V2_role_name/binary, 0
        >> || {V2_role_id, V2_role_type, V2_role_level, V2_professional, V2_sex, V2_headpicture, V2_position, V2_actor_id, V2_experience, V2_experience_next, V2_hp, V2_nuqi, V2_nuqi_max, V2_nuqi_skill_id, V2_bo_index, V2_fabao_id, V2_fabao_huanhua_lev, V2_fabao_level, V2_fabao_yinji, V2_role_name} <- V1_role_info]))/binary,
        (length(V1_competitor_info)):8/little, (list_to_binary([<<
            V2_id:32/signed-little,
            V2_monster_level:8/signed,
            V2_position:8/signed,
            V2_actor_id:8/signed,
            V2_is_monster:8/signed,
            V2_hp:32/little,
            V2_nuqi:32/little,
            V2_nuqi_max:32/little,
            V2_bo_index:8/signed,
            V2_curr_hp:32/little,
            (byte_size(V2_monster_name) + 1):16/little, V2_monster_name/binary, 0
        >> || {V2_id, V2_monster_level, V2_position, V2_actor_id, V2_is_monster, V2_hp, V2_nuqi, V2_nuqi_max, V2_bo_index, V2_curr_hp, V2_monster_name} <- V1_competitor_info]))/binary,
        (length(V1_fighting_result)):8/little, (list_to_binary([<<
            V2_curr_bo:8/signed,
            (length(V2_clear_effect)):8/little, (list_to_binary([<<
                V3_fighter_actor:8/signed,
                V3_dot_hp:32/signed-little,
                (length(V3_effect_list)):8/little, (list_to_binary([<<
                    V4_effect_id:16/little
                >> || V4_effect_id <- V3_effect_list]))/binary
            >> || {V3_fighter_actor, V3_dot_hp, V3_effect_list} <- V2_clear_effect]))/binary,
            (length(V2_fighting_list)):8/little, (list_to_binary([<<
                (length(V3_attacker)):8/little, (list_to_binary([<<
                    V4_skill_id:16/little,
                    V4_fighter_id:8,
                    V4_skill_level:8,
                    V4_fabao_skill_id:16/little,
                    (length(V4_attr_list)):8/little, (list_to_binary([<<
                        V5_attr_id:8,
                        V5_attr_value:32/signed-little
                    >> || {V5_attr_id, V5_attr_value} <- V4_attr_list]))/binary,
                    (length(V4_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_buff_list]))/binary,
                    (length(V4_add_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_add_buff_list]))/binary
                >> || {V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list} <- V3_attacker]))/binary,
                (length(V3_defender)):8/little, (list_to_binary([<<
                    V4_buff_id:16/little,
                    V4_effect_type:8,
                    V4_skill_id:16/little,
                    V4_fighter_id:8,
                    V4_skill_level:8,
                    V4_fabao_skill_id:16/little,
                    (length(V4_attr_list)):8/little, (list_to_binary([<<
                        V5_attr_id:8,
                        V5_attr_value:32/signed-little
                    >> || {V5_attr_id, V5_attr_value} <- V4_attr_list]))/binary,
                    (length(V4_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_buff_list]))/binary,
                    (length(V4_add_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_add_buff_list]))/binary
                >> || {V4_buff_id, V4_effect_type, V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list} <- V3_defender]))/binary
            >> || {V3_attacker, V3_defender} <- V2_fighting_list]))/binary,
            (length(V2_action_list)):8/little, (list_to_binary([<<
                V3_action_type:8,
                V3_new_id:32/little,
                V3_old_id:32/little
            >> || {V3_action_type, V3_new_id, V3_old_id} <- V2_action_list]))/binary
        >> || {V2_curr_bo, V2_clear_effect, V2_fighting_list, V2_action_list} <- V1_fighting_result]))/binary
    >>,
    {ok, protocol:pack(7655, Data)};

pack(srv, 7656, {V1_remain_time, V1_perfect, V1_gold_fish, V1_silver}) ->
    Data = <<
        V1_remain_time:16/little,
        V1_perfect:16/little,
        V1_gold_fish:32/little,
        V1_silver:32/little
    >>,
    {ok, protocol:pack(7656, Data)};

pack(srv, 7659, {V1_rank_list}) ->
    Data = <<
        (length(V1_rank_list)):8/little, (list_to_binary([<<
            V2_fish_num:32/signed-little,
            (byte_size(V2_user_name) + 1):16/little, V2_user_name/binary, 0
        >> || {V2_fish_num, V2_user_name} <- V1_rank_list]))/binary
    >>,
    {ok, protocol:pack(7659, Data)};

pack(cli, 7610, {}) ->
    {ok, protocol:pack(7610, <<>>)};

pack(cli, 7701, {}) ->
    {ok, protocol:pack(7701, <<>>)};

pack(cli, 7702, {}) ->
    {ok, protocol:pack(7702, <<>>)};

pack(cli, 7703, {V1_hole}) ->
    Data = <<
        V1_hole:8
    >>,
    {ok, protocol:pack(7703, Data)};

pack(cli, 7704, {}) ->
    {ok, protocol:pack(7704, <<>>)};

pack(srv, 7754, {V1_result, V1_water, V1_disinsection, V1_put_insect}) ->
    Data = <<
        V1_result:8,
        V1_water:8,
        V1_disinsection:8,
        V1_put_insect:8
    >>,
    {ok, protocol:pack(7754, Data)};

pack(cli, 7705, {V1_obj_id}) ->
    Data = <<
        V1_obj_id:8
    >>,
    {ok, protocol:pack(7705, Data)};

pack(cli, 7706, {V1_action, V1_obj_id}) ->
    Data = <<
        V1_action:8,
        V1_obj_id:8
    >>,
    {ok, protocol:pack(7706, Data)};

pack(srv, 7756, {V1_action, V1_coin}) ->
    Data = <<
        V1_action:8,
        V1_coin:32/little
    >>,
    {ok, protocol:pack(7756, Data)};

pack(cli, 7707, {}) ->
    {ok, protocol:pack(7707, <<>>)};

pack(srv, 7757, {V1_tree_hole}) ->
    Data = <<
        V1_tree_hole:8
    >>,
    {ok, protocol:pack(7757, Data)};

pack(srv, 7758, {V1_rank_list}) ->
    Data = <<
        (length(V1_rank_list)):8/little, (list_to_binary([<<
            V2_rank:32/little
        >> || V2_rank <- V1_rank_list]))/binary
    >>,
    {ok, protocol:pack(7758, Data)};

pack(srv, 7759, {V1_silver}) ->
    Data = <<
        V1_silver:32/little
    >>,
    {ok, protocol:pack(7759, Data)};

pack(srv, 7760, {V1_remain_time}) ->
    Data = <<
        V1_remain_time:32/little
    >>,
    {ok, protocol:pack(7760, Data)};

pack(cli, 8001, {V1_sub_type, V1_army_name}) ->
    Data = <<
        V1_sub_type:8,
        (byte_size(V1_army_name) + 1):16/little, V1_army_name/binary, 0
    >>,
    {ok, protocol:pack(8001, Data)};

pack(srv, 8051, {V1_army_list}) ->
    Data = <<
        (length(V1_army_list)):8/little, (list_to_binary([<<
            V2_army_id:32/little,
            V2_army_level:8,
            V2_army_exp:32/little,
            V2_army_rank:16/little,
            V2_curr_member:16/little,
            V2_max_member:16/little,
            V2_user_id:32/little,
            V2_user_job:8,
            V2_user_fc:32/little,
            (byte_size(V2_user_name) + 1):16/little, V2_user_name/binary, 0,
            (byte_size(V2_army_name) + 1):16/little, V2_army_name/binary, 0,
            (byte_size(V2_notice) + 1):16/little, V2_notice/binary, 0
        >> || {V2_army_id, V2_army_level, V2_army_exp, V2_army_rank, V2_curr_member, V2_max_member, V2_user_id, V2_user_job, V2_user_fc, V2_user_name, V2_army_name, V2_notice} <- V1_army_list]))/binary
    >>,
    {ok, protocol:pack(8051, Data)};

pack(cli, 8002, {}) ->
    {ok, protocol:pack(8002, <<>>)};

pack(srv, 8052, {V1_army_list, V1_user_apply_list}) ->
    Data = <<
        (length(V1_army_list)):8/little, (list_to_binary([<<
            V2_army_id:32/little,
            V2_army_level:8,
            V2_army_exp:32/little,
            V2_army_rank:16/little,
            V2_curr_member:16/little,
            V2_max_member:16/little,
            V2_user_id:32/little,
            V2_user_job:8,
            V2_user_fc:32/little,
            (byte_size(V2_user_name) + 1):16/little, V2_user_name/binary, 0,
            (byte_size(V2_army_name) + 1):16/little, V2_army_name/binary, 0,
            (byte_size(V2_notice) + 1):16/little, V2_notice/binary, 0
        >> || {V2_army_id, V2_army_level, V2_army_exp, V2_army_rank, V2_curr_member, V2_max_member, V2_user_id, V2_user_job, V2_user_fc, V2_user_name, V2_army_name, V2_notice} <- V1_army_list]))/binary,
        (length(V1_user_apply_list)):8/little, (list_to_binary([<<
            V2_army_id:32/little
        >> || V2_army_id <- V1_user_apply_list]))/binary
    >>,
    {ok, protocol:pack(8052, Data)};

pack(cli, 8003, {V1_army_id}) ->
    Data = <<
        V1_army_id:32/little
    >>,
    {ok, protocol:pack(8003, Data)};

pack(srv, 8053, {V1_army_id, V1_army_member_list}) ->
    Data = <<
        V1_army_id:32/little,
        (length(V1_army_member_list)):8/little, (list_to_binary([<<
            V2_user_id:32/little,
            V2_user_level:16/little,
            V2_user_job:8,
            V2_user_fc:32/little,
            V2_arena_rank:32/little,
            V2_user_post:8,
            V2_is_online:8,
            V2_last_login_time:32/little,
            V2_xian_gong:32/little,
            (byte_size(V2_user_name) + 1):16/little, V2_user_name/binary, 0
        >> || {V2_user_id, V2_user_level, V2_user_job, V2_user_fc, V2_arena_rank, V2_user_post, V2_is_online, V2_last_login_time, V2_xian_gong, V2_user_name} <- V1_army_member_list]))/binary
    >>,
    {ok, protocol:pack(8053, Data)};

pack(cli, 8004, {V1_army_id}) ->
    Data = <<
        V1_army_id:32/little
    >>,
    {ok, protocol:pack(8004, Data)};

pack(srv, 8054, {V1_result}) ->
    Data = <<
        V1_result:8
    >>,
    {ok, protocol:pack(8054, Data)};

pack(cli, 8005, {V1_army_id}) ->
    Data = <<
        V1_army_id:32/little
    >>,
    {ok, protocol:pack(8005, Data)};

pack(srv, 8055, {V1_army_id}) ->
    Data = <<
        V1_army_id:32/little
    >>,
    {ok, protocol:pack(8055, Data)};

pack(cli, 8006, {V1_army_id}) ->
    Data = <<
        V1_army_id:32/little
    >>,
    {ok, protocol:pack(8006, Data)};

pack(srv, 8056, {V1_army_id, V1_apply_list}) ->
    Data = <<
        V1_army_id:32/little,
        (length(V1_apply_list)):8/little, (list_to_binary([<<
            V2_user_id:32/little,
            V2_user_fc:32/little,
            V2_user_level:16/little,
            (byte_size(V2_user_name) + 1):16/little, V2_user_name/binary, 0
        >> || {V2_user_id, V2_user_fc, V2_user_level, V2_user_name} <- V1_apply_list]))/binary
    >>,
    {ok, protocol:pack(8056, Data)};

pack(cli, 8007, {V1_army_id, V1_user_id, V1_is_consent}) ->
    Data = <<
        V1_army_id:32/little,
        V1_user_id:32/little,
        V1_is_consent:8
    >>,
    {ok, protocol:pack(8007, Data)};

pack(srv, 8057, {V1_army_list}) ->
    Data = <<
        (length(V1_army_list)):8/little, (list_to_binary([<<
            V2_army_id:32/little,
            V2_army_level:8,
            V2_army_exp:32/little,
            V2_army_rank:16/little,
            V2_curr_member:16/little,
            V2_max_member:16/little,
            V2_user_id:32/little,
            V2_user_job:8,
            V2_user_fc:32/little,
            (byte_size(V2_user_name) + 1):16/little, V2_user_name/binary, 0,
            (byte_size(V2_army_name) + 1):16/little, V2_army_name/binary, 0,
            (byte_size(V2_notice) + 1):16/little, V2_notice/binary, 0
        >> || {V2_army_id, V2_army_level, V2_army_exp, V2_army_rank, V2_curr_member, V2_max_member, V2_user_id, V2_user_job, V2_user_fc, V2_user_name, V2_army_name, V2_notice} <- V1_army_list]))/binary
    >>,
    {ok, protocol:pack(8057, Data)};

pack(cli, 8008, {V1_army_id, V1_is_consent}) ->
    Data = <<
        V1_army_id:32/little,
        V1_is_consent:8
    >>,
    {ok, protocol:pack(8008, Data)};

pack(srv, 8058, {V1_user_id_list}) ->
    Data = <<
        (length(V1_user_id_list)):8/little, (list_to_binary([<<
            V2_user_id:32/little
        >> || V2_user_id <- V1_user_id_list]))/binary
    >>,
    {ok, protocol:pack(8058, Data)};

pack(cli, 8009, {}) ->
    {ok, protocol:pack(8009, <<>>)};

pack(srv, 8059, {V1_result}) ->
    Data = <<
        V1_result:8
    >>,
    {ok, protocol:pack(8059, Data)};

pack(cli, 8010, {V1_user_id}) ->
    Data = <<
        V1_user_id:32/little
    >>,
    {ok, protocol:pack(8010, Data)};

pack(srv, 8060, {V1_user_id}) ->
    Data = <<
        V1_user_id:32/little
    >>,
    {ok, protocol:pack(8060, Data)};

pack(cli, 8011, {V1_notice}) ->
    Data = <<
        (byte_size(V1_notice) + 1):16/little, V1_notice/binary, 0
    >>,
    {ok, protocol:pack(8011, Data)};

pack(srv, 8061, {V1_result}) ->
    Data = <<
        V1_result:8
    >>,
    {ok, protocol:pack(8061, Data)};

pack(cli, 8012, {}) ->
    {ok, protocol:pack(8012, <<>>)};

pack(srv, 8062, {V1_result}) ->
    Data = <<
        V1_result:8
    >>,
    {ok, protocol:pack(8062, Data)};

pack(cli, 8013, {V1_user_id, V1_user_post}) ->
    Data = <<
        V1_user_id:32/little,
        V1_user_post:8
    >>,
    {ok, protocol:pack(8013, Data)};

pack(srv, 8063, {V1_user_id, V1_user_post}) ->
    Data = <<
        V1_user_id:32/little,
        V1_user_post:8
    >>,
    {ok, protocol:pack(8063, Data)};

pack(cli, 8014, {V1_army_id}) ->
    Data = <<
        V1_army_id:32/little
    >>,
    {ok, protocol:pack(8014, Data)};

pack(srv, 8064, {V1_army_list}) ->
    Data = <<
        (length(V1_army_list)):8/little, (list_to_binary([<<
            V2_army_id:32/little,
            V2_army_level:8,
            V2_army_exp:32/little,
            V2_army_rank:16/little,
            V2_curr_member:16/little,
            V2_max_member:16/little,
            V2_user_id:32/little,
            V2_user_job:8,
            V2_user_fc:32/little,
            (byte_size(V2_user_name) + 1):16/little, V2_user_name/binary, 0,
            (byte_size(V2_army_name) + 1):16/little, V2_army_name/binary, 0,
            (byte_size(V2_notice) + 1):16/little, V2_notice/binary, 0
        >> || {V2_army_id, V2_army_level, V2_army_exp, V2_army_rank, V2_curr_member, V2_max_member, V2_user_id, V2_user_job, V2_user_fc, V2_user_name, V2_army_name, V2_notice} <- V1_army_list]))/binary
    >>,
    {ok, protocol:pack(8064, Data)};

pack(cli, 8015, {V1_user_id}) ->
    Data = <<
        V1_user_id:32/little
    >>,
    {ok, protocol:pack(8015, Data)};

pack(srv, 8065, {V1_army_member_list}) ->
    Data = <<
        (length(V1_army_member_list)):8/little, (list_to_binary([<<
            V2_user_id:32/little,
            V2_user_level:16/little,
            V2_user_job:8,
            V2_user_fc:32/little,
            V2_arena_rank:32/little,
            V2_user_post:8,
            V2_is_online:8,
            V2_last_login_time:32/little,
            V2_xian_gong:32/little,
            (byte_size(V2_user_name) + 1):16/little, V2_user_name/binary, 0
        >> || {V2_user_id, V2_user_level, V2_user_job, V2_user_fc, V2_arena_rank, V2_user_post, V2_is_online, V2_last_login_time, V2_xian_gong, V2_user_name} <- V1_army_member_list]))/binary
    >>,
    {ok, protocol:pack(8065, Data)};

pack(cli, 8016, {}) ->
    {ok, protocol:pack(8016, <<>>)};

pack(srv, 8069, {V1_result}) ->
    Data = <<
        V1_result:8
    >>,
    {ok, protocol:pack(8069, Data)};

pack(cli, 8017, {}) ->
    {ok, protocol:pack(8017, <<>>)};

pack(srv, 8067, {V1_result}) ->
    Data = <<
        V1_result:8
    >>,
    {ok, protocol:pack(8067, Data)};

pack(cli, 8018, {V1_user_id}) ->
    Data = <<
        V1_user_id:32/little
    >>,
    {ok, protocol:pack(8018, Data)};

pack(srv, 8068, {V1_result}) ->
    Data = <<
        V1_result:8
    >>,
    {ok, protocol:pack(8068, Data)};

pack(cli, 8019, {}) ->
    {ok, protocol:pack(8019, <<>>)};

pack(srv, 8070, {}) ->
    {ok, protocol:pack(8070, <<>>)};

pack(cli, 8021, {V1_build_type}) ->
    Data = <<
        V1_build_type:16/little
    >>,
    {ok, protocol:pack(8021, Data)};

pack(srv, 8071, {V1_build_type, V1_build_level}) ->
    Data = <<
        V1_build_type:16/little,
        V1_build_level:16/little
    >>,
    {ok, protocol:pack(8071, Data)};

pack(cli, 8022, {V1_army_id}) ->
    Data = <<
        V1_army_id:16/little
    >>,
    {ok, protocol:pack(8022, Data)};

pack(srv, 8072, {V1_build_list}) ->
    Data = <<
        (length(V1_build_list)):8/little, (list_to_binary([<<
            V2_build_type:16/little,
            V2_build_level:16/little
        >> || {V2_build_type, V2_build_level} <- V1_build_list]))/binary
    >>,
    {ok, protocol:pack(8072, Data)};

pack(cli, 8023, {}) ->
    {ok, protocol:pack(8023, <<>>)};

pack(srv, 8073, {V1_new_level, V1_gong_xian}) ->
    Data = <<
        V1_new_level:8,
        V1_gong_xian:32/little
    >>,
    {ok, protocol:pack(8073, Data)};

pack(cli, 8024, {}) ->
    {ok, protocol:pack(8024, <<>>)};

pack(srv, 8074, {V1_gong_xian}) ->
    Data = <<
        V1_gong_xian:32/little
    >>,
    {ok, protocol:pack(8074, Data)};

pack(cli, 8025, {V1_army_id}) ->
    Data = <<
        V1_army_id:16/little
    >>,
    {ok, protocol:pack(8025, Data)};

pack(srv, 8075, {V1_army_level}) ->
    Data = <<
        V1_army_level:8
    >>,
    {ok, protocol:pack(8075, Data)};

pack(srv, 8076, {V1_col_time_list}) ->
    Data = <<
        (length(V1_col_time_list)):8/little, (list_to_binary([<<
            V2_collect_id:16/little,
            V2_time:16/little
        >> || {V2_collect_id, V2_time} <- V1_col_time_list]))/binary
    >>,
    {ok, protocol:pack(8076, Data)};

pack(cli, 8101, {V1_action_type, V1_def_user_id}) ->
    Data = <<
        V1_action_type:16/little,
        V1_def_user_id:32/little
    >>,
    {ok, protocol:pack(8101, Data)};

pack(srv, 8151, {V1_atk_user_id, V1_def_user_id, V1_is_win, V1_battle_round, V1_record_id}) ->
    Data = <<
        V1_atk_user_id:32/little,
        V1_def_user_id:32/little,
        V1_is_win:16/little,
        V1_battle_round:16/little,
        V1_record_id:32/little
    >>,
    {ok, protocol:pack(8151, Data)};

pack(cli, 8102, {V1_record_id}) ->
    Data = <<
        V1_record_id:32/little
    >>,
    {ok, protocol:pack(8102, Data)};

pack(srv, 8152, {V1_battle_result, V1_role_info, V1_competitor_info, V1_fighting_result}) ->
    Data = <<
        V1_battle_result:8,
        (length(V1_role_info)):8/little, (list_to_binary([<<
            V2_role_id:32/signed-little,
            V2_role_type:8/signed,
            V2_role_level:8/signed,
            V2_professional:8/signed,
            V2_sex:8/signed,
            V2_headpicture:8/signed,
            V2_position:8/signed,
            V2_actor_id:8/signed,
            V2_experience:32/little,
            V2_experience_next:32/little,
            V2_hp:32/little,
            V2_nuqi:32/little,
            V2_nuqi_max:32/little,
            V2_nuqi_skill_id:32/little,
            V2_bo_index:8,
            V2_fabao_id:16/little,
            V2_fabao_huanhua_lev:8,
            V2_fabao_level:16/little,
            V2_fabao_yinji:16/little,
            (byte_size(V2_role_name) + 1):16/little, V2_role_name/binary, 0
        >> || {V2_role_id, V2_role_type, V2_role_level, V2_professional, V2_sex, V2_headpicture, V2_position, V2_actor_id, V2_experience, V2_experience_next, V2_hp, V2_nuqi, V2_nuqi_max, V2_nuqi_skill_id, V2_bo_index, V2_fabao_id, V2_fabao_huanhua_lev, V2_fabao_level, V2_fabao_yinji, V2_role_name} <- V1_role_info]))/binary,
        (length(V1_competitor_info)):8/little, (list_to_binary([<<
            V2_role_id:32/signed-little,
            V2_role_type:8/signed,
            V2_role_level:8/signed,
            V2_professional:8/signed,
            V2_sex:8/signed,
            V2_headpicture:8/signed,
            V2_position:8/signed,
            V2_actor_id:8/signed,
            V2_experience:32/little,
            V2_experience_next:32/little,
            V2_hp:32/little,
            V2_nuqi:32/little,
            V2_nuqi_max:32/little,
            V2_nuqi_skill_id:32/little,
            V2_bo_index:8,
            V2_fabao_id:16/little,
            V2_fabao_huanhua_lev:8,
            V2_fabao_level:16/little,
            V2_fabao_yinji:16/little,
            (byte_size(V2_role_name) + 1):16/little, V2_role_name/binary, 0
        >> || {V2_role_id, V2_role_type, V2_role_level, V2_professional, V2_sex, V2_headpicture, V2_position, V2_actor_id, V2_experience, V2_experience_next, V2_hp, V2_nuqi, V2_nuqi_max, V2_nuqi_skill_id, V2_bo_index, V2_fabao_id, V2_fabao_huanhua_lev, V2_fabao_level, V2_fabao_yinji, V2_role_name} <- V1_competitor_info]))/binary,
        (length(V1_fighting_result)):8/little, (list_to_binary([<<
            V2_curr_bo:8/signed,
            (length(V2_clear_effect)):8/little, (list_to_binary([<<
                V3_fighter_actor:8/signed,
                V3_dot_hp:32/signed-little,
                (length(V3_effect_list)):8/little, (list_to_binary([<<
                    V4_effect_id:16/little
                >> || V4_effect_id <- V3_effect_list]))/binary
            >> || {V3_fighter_actor, V3_dot_hp, V3_effect_list} <- V2_clear_effect]))/binary,
            (length(V2_fighting_list)):8/little, (list_to_binary([<<
                (length(V3_attacker)):8/little, (list_to_binary([<<
                    V4_skill_id:16/little,
                    V4_fighter_id:8,
                    V4_skill_level:8,
                    V4_fabao_skill_id:16/little,
                    (length(V4_attr_list)):8/little, (list_to_binary([<<
                        V5_attr_id:8,
                        V5_attr_value:32/signed-little
                    >> || {V5_attr_id, V5_attr_value} <- V4_attr_list]))/binary,
                    (length(V4_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_buff_list]))/binary,
                    (length(V4_add_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_add_buff_list]))/binary
                >> || {V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list} <- V3_attacker]))/binary,
                (length(V3_defender)):8/little, (list_to_binary([<<
                    V4_buff_id:16/little,
                    V4_effect_type:8,
                    V4_skill_id:16/little,
                    V4_fighter_id:8,
                    V4_skill_level:8,
                    V4_fabao_skill_id:16/little,
                    (length(V4_attr_list)):8/little, (list_to_binary([<<
                        V5_attr_id:8,
                        V5_attr_value:32/signed-little
                    >> || {V5_attr_id, V5_attr_value} <- V4_attr_list]))/binary,
                    (length(V4_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_buff_list]))/binary,
                    (length(V4_add_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_add_buff_list]))/binary
                >> || {V4_buff_id, V4_effect_type, V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list} <- V3_defender]))/binary
            >> || {V3_attacker, V3_defender} <- V2_fighting_list]))/binary,
            (length(V2_action_list)):8/little, (list_to_binary([<<
                V3_action_type:8,
                V3_new_id:32/little,
                V3_old_id:32/little
            >> || {V3_action_type, V3_new_id, V3_old_id} <- V2_action_list]))/binary
        >> || {V2_curr_bo, V2_clear_effect, V2_fighting_list, V2_action_list} <- V1_fighting_result]))/binary
    >>,
    {ok, protocol:pack(8152, Data)};

pack(cli, 8103, {}) ->
    {ok, protocol:pack(8103, <<>>)};

pack(srv, 8153, {V1_battle_record_list}) ->
    Data = <<
        (length(V1_battle_record_list)):8/little, (list_to_binary([<<
            V2_type:16/little,
            V2_record_id:32/little,
            V2_battle_result:16/little,
            (byte_size(V2_atk_name) + 1):16/little, V2_atk_name/binary, 0,
            (byte_size(V2_def_name) + 1):16/little, V2_def_name/binary, 0
        >> || {V2_type, V2_record_id, V2_battle_result, V2_atk_name, V2_def_name} <- V1_battle_record_list]))/binary
    >>,
    {ok, protocol:pack(8153, Data)};

pack(cli, 8104, {V1_action_type}) ->
    Data = <<
        V1_action_type:16/little
    >>,
    {ok, protocol:pack(8104, Data)};

pack(cli, 8105, {}) ->
    {ok, protocol:pack(8105, <<>>)};

pack(cli, 8106, {}) ->
    {ok, protocol:pack(8106, <<>>)};

pack(srv, 8157, {V1_scene_id, V1_scene_state}) ->
    Data = <<
        V1_scene_id:32/little,
        V1_scene_state:16/little
    >>,
    {ok, protocol:pack(8157, Data)};

pack(cli, 8108, {}) ->
    {ok, protocol:pack(8108, <<>>)};

pack(srv, 8158, {V1_expire, V1_timeout, V1_cur_energy, V1_max_energy}) ->
    Data = <<
        V1_expire:32/little,
        V1_timeout:16/little,
        V1_cur_energy:16/little,
        V1_max_energy:16/little
    >>,
    {ok, protocol:pack(8158, Data)};

pack(cli, 8109, {}) ->
    {ok, protocol:pack(8109, <<>>)};

pack(srv, 8160, {V1_cur_energy}) ->
    Data = <<
        V1_cur_energy:16/little
    >>,
    {ok, protocol:pack(8160, Data)};

pack(srv, 8161, {V1_winner_id, V1_role_info, V1_competitor_info, V1_fighting_result}) ->
    Data = <<
        V1_winner_id:8,
        (length(V1_role_info)):8/little, (list_to_binary([<<
            V2_role_id:32/signed-little,
            V2_role_type:8/signed,
            V2_role_level:8/signed,
            V2_professional:8/signed,
            V2_sex:8/signed,
            V2_headpicture:8/signed,
            V2_position:8/signed,
            V2_actor_id:8/signed,
            V2_experience:32/little,
            V2_experience_next:32/little,
            V2_hp:32/little,
            V2_nuqi:32/little,
            V2_nuqi_max:32/little,
            V2_nuqi_skill_id:32/little,
            V2_bo_index:8,
            V2_fabao_id:16/little,
            V2_fabao_huanhua_lev:8,
            V2_fabao_level:16/little,
            V2_fabao_yinji:16/little,
            (byte_size(V2_role_name) + 1):16/little, V2_role_name/binary, 0
        >> || {V2_role_id, V2_role_type, V2_role_level, V2_professional, V2_sex, V2_headpicture, V2_position, V2_actor_id, V2_experience, V2_experience_next, V2_hp, V2_nuqi, V2_nuqi_max, V2_nuqi_skill_id, V2_bo_index, V2_fabao_id, V2_fabao_huanhua_lev, V2_fabao_level, V2_fabao_yinji, V2_role_name} <- V1_role_info]))/binary,
        (length(V1_competitor_info)):8/little, (list_to_binary([<<
            V2_id:32/signed-little,
            V2_monster_level:8/signed,
            V2_position:8/signed,
            V2_actor_id:8/signed,
            V2_is_monster:8/signed,
            V2_hp:32/little,
            V2_nuqi:32/little,
            V2_nuqi_max:32/little,
            V2_bo_index:8/signed,
            V2_curr_hp:32/little,
            (byte_size(V2_monster_name) + 1):16/little, V2_monster_name/binary, 0
        >> || {V2_id, V2_monster_level, V2_position, V2_actor_id, V2_is_monster, V2_hp, V2_nuqi, V2_nuqi_max, V2_bo_index, V2_curr_hp, V2_monster_name} <- V1_competitor_info]))/binary,
        (length(V1_fighting_result)):8/little, (list_to_binary([<<
            V2_curr_bo:8/signed,
            (length(V2_clear_effect)):8/little, (list_to_binary([<<
                V3_fighter_actor:8/signed,
                V3_dot_hp:32/signed-little,
                (length(V3_effect_list)):8/little, (list_to_binary([<<
                    V4_effect_id:16/little
                >> || V4_effect_id <- V3_effect_list]))/binary
            >> || {V3_fighter_actor, V3_dot_hp, V3_effect_list} <- V2_clear_effect]))/binary,
            (length(V2_fighting_list)):8/little, (list_to_binary([<<
                (length(V3_attacker)):8/little, (list_to_binary([<<
                    V4_skill_id:16/little,
                    V4_fighter_id:8,
                    V4_skill_level:8,
                    V4_fabao_skill_id:16/little,
                    (length(V4_attr_list)):8/little, (list_to_binary([<<
                        V5_attr_id:8,
                        V5_attr_value:32/signed-little
                    >> || {V5_attr_id, V5_attr_value} <- V4_attr_list]))/binary,
                    (length(V4_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_buff_list]))/binary,
                    (length(V4_add_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_add_buff_list]))/binary
                >> || {V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list} <- V3_attacker]))/binary,
                (length(V3_defender)):8/little, (list_to_binary([<<
                    V4_buff_id:16/little,
                    V4_effect_type:8,
                    V4_skill_id:16/little,
                    V4_fighter_id:8,
                    V4_skill_level:8,
                    V4_fabao_skill_id:16/little,
                    (length(V4_attr_list)):8/little, (list_to_binary([<<
                        V5_attr_id:8,
                        V5_attr_value:32/signed-little
                    >> || {V5_attr_id, V5_attr_value} <- V4_attr_list]))/binary,
                    (length(V4_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_buff_list]))/binary,
                    (length(V4_add_buff_list)):8/little, (list_to_binary([<<
                        V5_buff_id:16/little
                    >> || V5_buff_id <- V4_add_buff_list]))/binary
                >> || {V4_buff_id, V4_effect_type, V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list} <- V3_defender]))/binary
            >> || {V3_attacker, V3_defender} <- V2_fighting_list]))/binary,
            (length(V2_action_list)):8/little, (list_to_binary([<<
                V3_action_type:8,
                V3_new_id:32/little,
                V3_old_id:32/little
            >> || {V3_action_type, V3_new_id, V3_old_id} <- V2_action_list]))/binary
        >> || {V2_curr_bo, V2_clear_effect, V2_fighting_list, V2_action_list} <- V1_fighting_result]))/binary
    >>,
    {ok, protocol:pack(8161, Data)};

pack(cli, 8112, {V1_map_id, V1_monster_point_id, V1_monster_type, V1_param1, V1_param2}) ->
    Data = <<
        V1_map_id:16/little,
        V1_monster_point_id:16/little,
        V1_monster_type:16/little,
        V1_param1:16/little,
        V1_param2:32/little
    >>,
    {ok, protocol:pack(8112, Data)};

pack(cli, 8113, {V1_monster_obj_id}) ->
    Data = <<
        V1_monster_obj_id:32/little
    >>,
    {ok, protocol:pack(8113, Data)};

pack(srv, 8163, {V1_atk_user_id, V1_monster_obj_id, V1_is_win, V1_battle_round, V1_record_id}) ->
    Data = <<
        V1_atk_user_id:32/little,
        V1_monster_obj_id:32/little,
        V1_is_win:16/little,
        V1_battle_round:16/little,
        V1_record_id:32/little
    >>,
    {ok, protocol:pack(8163, Data)};

pack(srv, 8162, {V1_user_id, V1_monster_point_id, V1_is_win, V1_battle_round, V1_record_id, V1_monster_type, V1_param1, V1_param2}) ->
    Data = <<
        V1_user_id:32/little,
        V1_monster_point_id:32/little,
        V1_is_win:16/little,
        V1_battle_round:16/little,
        V1_record_id:32/little,
        V1_monster_type:16/little,
        V1_param1:16/little,
        V1_param2:32/little
    >>,
    {ok, protocol:pack(8162, Data)};

pack(cli, 8201, {}) ->
    {ok, protocol:pack(8201, <<>>)};

pack(srv, 8251, {V1_result}) ->
    Data = <<
        V1_result:16/little
    >>,
    {ok, protocol:pack(8251, Data)};

pack(cli, 8202, {}) ->
    {ok, protocol:pack(8202, <<>>)};

pack(srv, 8252, {V1_encourage_num, V1_winner_num, V1_revive_time, V1_remain_time, V1_next_push_time, V1_bz_remain_num}) ->
    Data = <<
        V1_encourage_num:16/little,
        V1_winner_num:32/little,
        V1_revive_time:16/little,
        V1_remain_time:32/little,
        V1_next_push_time:32/little,
        V1_bz_remain_num:16/little
    >>,
    {ok, protocol:pack(8252, Data)};

pack(cli, 8203, {}) ->
    {ok, protocol:pack(8203, <<>>)};

pack(srv, 8253, {V1_coin}) ->
    Data = <<
        V1_coin:32/little
    >>,
    {ok, protocol:pack(8253, Data)};

pack(cli, 8204, {}) ->
    {ok, protocol:pack(8204, <<>>)};

pack(cli, 8205, {}) ->
    {ok, protocol:pack(8205, <<>>)};

pack(srv, 8255, {V1_encourage_num}) ->
    Data = <<
        V1_encourage_num:16/little
    >>,
    {ok, protocol:pack(8255, Data)};

pack(srv, 8256, {V1_next_push_time, V1_bz_remain_num}) ->
    Data = <<
        V1_next_push_time:32/little,
        V1_bz_remain_num:16/little
    >>,
    {ok, protocol:pack(8256, Data)};

pack(cli, 8401, {}) ->
    {ok, protocol:pack(8401, <<>>)};

pack(cli, 8402, {}) ->
    {ok, protocol:pack(8402, <<>>)};

pack(srv, 8452, {V1_encourage_num}) ->
    Data = <<
        V1_encourage_num:16/little
    >>,
    {ok, protocol:pack(8452, Data)};

pack(cli, 8403, {}) ->
    {ok, protocol:pack(8403, <<>>)};

pack(cli, 8404, {}) ->
    {ok, protocol:pack(8404, <<>>)};

pack(srv, 8454, {V1_encourage_num, V1_revive_time, V1_remain_time, V1_next_refresh_time, V1_sum_xg, V1_sum_resource_num, V1_kill_enemy_num, V1_winner_num, V1_silver, V1_army_rank_list}) ->
    Data = <<
        V1_encourage_num:16/little,
        V1_revive_time:16/little,
        V1_remain_time:32/little,
        V1_next_refresh_time:32/little,
        V1_sum_xg:16/little,
        V1_sum_resource_num:16/little,
        V1_kill_enemy_num:16/little,
        V1_winner_num:16/little,
        V1_silver:32/little,
        (length(V1_army_rank_list)):16/little, (list_to_binary([<<
            (byte_size(V2_army_name) + 1):16/little, V2_army_name/binary, 0,
            V2_resource_num:16/little
        >> || {V2_army_name, V2_resource_num} <- V1_army_rank_list]))/binary
    >>,
    {ok, protocol:pack(8454, Data)};

pack(srv, 8455, {V1_army_rank_list}) ->
    Data = <<
        (length(V1_army_rank_list)):16/little, (list_to_binary([<<
            (byte_size(V2_army_name) + 1):16/little, V2_army_name/binary, 0,
            V2_resource_num:16/little
        >> || {V2_army_name, V2_resource_num} <- V1_army_rank_list]))/binary
    >>,
    {ok, protocol:pack(8455, Data)};

pack(srv, 8456, {V1_type, V1_resource_type, V1_xg, V1_gx, V1_kill_num, V1_winner_num, V1_silver}) ->
    Data = <<
        V1_type:16/little,
        V1_resource_type:16/little,
        V1_xg:16/little,
        V1_gx:16/little,
        V1_kill_num:16/little,
        V1_winner_num:16/little,
        V1_silver:32/little
    >>,
    {ok, protocol:pack(8456, Data)};

pack(srv, 8457, {V1_resource_num, V1_army_name}) ->
    Data = <<
        V1_resource_num:16/little,
        (byte_size(V1_army_name) + 1):16/little, V1_army_name/binary, 0
    >>,
    {ok, protocol:pack(8457, Data)};

pack(srv, 8458, {V1_sum_xg, V1_sum_resource_num, V1_kill_enemy_num, V1_silver, V1_self_army_resource, V1_self_army_rank, V1_rank_list}) ->
    Data = <<
        V1_sum_xg:16/little,
        V1_sum_resource_num:16/little,
        V1_kill_enemy_num:16/little,
        V1_silver:16/little,
        V1_self_army_resource:16/little,
        V1_self_army_rank:16/little,
        (length(V1_rank_list)):16/little, (list_to_binary([<<
            (byte_size(V2_army_name) + 1):16/little, V2_army_name/binary, 0,
            V2_resource_num:16/little
        >> || {V2_army_name, V2_resource_num} <- V1_rank_list]))/binary
    >>,
    {ok, protocol:pack(8458, Data)};

pack(cli, 9001, {V1_rank_type}) ->
    Data = <<
        V1_rank_type:8
    >>,
    {ok, protocol:pack(9001, Data)};

pack(srv, 9051, {V1_rank_type, V1_last_refresh_time, V1_rank_list}) ->
    Data = <<
        V1_rank_type:8,
        V1_last_refresh_time:32/signed-little,
        (length(V1_rank_list)):8/little, (list_to_binary([<<
            V2_rank_id:16/little,
            V2_user_id:32/little,
            V2_job:8,
            V2_sex:8,
            V2_user_level:32/little,
            V2_role_fc:32/little,
            V2_rank_data:32/little,
            V2_other_data:32/little,
            (byte_size(V2_user_name) + 1):16/little, V2_user_name/binary, 0,
            (byte_size(V2_army_name) + 1):16/little, V2_army_name/binary, 0
        >> || {V2_rank_id, V2_user_id, V2_job, V2_sex, V2_user_level, V2_role_fc, V2_rank_data, V2_other_data, V2_user_name, V2_army_name} <- V1_rank_list]))/binary
    >>,
    {ok, protocol:pack(9051, Data)};

pack(srv, 9201, {V1_index, V1_num}) ->
    Data = <<
        V1_index:16/little,
        V1_num:16/little
    >>,
    {ok, protocol:pack(9201, Data)};

pack(cli, 9251, {V1_result}) ->
    Data = <<
        V1_result:8
    >>,
    {ok, protocol:pack(9251, Data)};

pack(srv, 9202, {V1_item_id, V1_item_num, V1_shop_type, V1_vip_level}) ->
    Data = <<
        V1_item_id:32/little,
        V1_item_num:16/little,
        V1_shop_type:16/little,
        V1_vip_level:8
    >>,
    {ok, protocol:pack(9202, Data)};

pack(cli, 9252, {V1_reslut}) ->
    Data = <<
        V1_reslut:8
    >>,
    {ok, protocol:pack(9252, Data)};

pack(srv, 9851, {V1_vip_level, V1_vip_value}) ->
    Data = <<
        V1_vip_level:32/signed-little,
        V1_vip_value:32/signed-little
    >>,
    {ok, protocol:pack(9851, Data)};

pack(srv, 9852, {V1_gift_id}) ->
    Data = <<
        V1_gift_id:32/signed-little
    >>,
    {ok, protocol:pack(9852, Data)};

pack(cli, 9901, {}) ->
    {ok, protocol:pack(9901, <<>>)};

pack(srv, 9951, {V1_function}) ->
    Data = <<
        (length(V1_function)):16/little, (list_to_binary([<<
            V2_function_id:32/signed-little
        >> || V2_function_id <- V1_function]))/binary
    >>,
    {ok, protocol:pack(9951, Data)};

pack(cli, 9902, {V1_newfunc_id}) ->
    Data = <<
        V1_newfunc_id:32/signed-little
    >>,
    {ok, protocol:pack(9902, Data)};

pack(srv, 9952, {V1_is_succ}) ->
    Data = <<
        V1_is_succ:32/signed-little
    >>,
    {ok, protocol:pack(9952, Data)};

pack(cli, 9911, {}) ->
    {ok, protocol:pack(9911, <<>>)};

pack(srv, 9961, {V1_data}) ->
    Data = <<
        (byte_size(V1_data) + 1):16/little, V1_data/binary, 0
    >>,
    {ok, protocol:pack(9961, Data)};

pack(cli, 9912, {V1_data}) ->
    Data = <<
        (byte_size(V1_data) + 1):16/little, V1_data/binary, 0
    >>,
    {ok, protocol:pack(9912, Data)};

pack(cli, 9921, {V1_operation_type, V1_mail}) ->
    Data = <<
        V1_operation_type:32/signed-little,
        (length(V1_mail)):16/little, (list_to_binary([<<
            V2_mail_id:32/signed-little
        >> || V2_mail_id <- V1_mail]))/binary
    >>,
    {ok, protocol:pack(9921, Data)};

pack(srv, 9971, {V1_operation_type, V1_mail}) ->
    Data = <<
        V1_operation_type:32/signed-little,
        (length(V1_mail)):16/little, (list_to_binary([<<
            V2_mail_id:32/signed-little
        >> || V2_mail_id <- V1_mail]))/binary
    >>,
    {ok, protocol:pack(9971, Data)};

pack(srv, 9992, {V1_item_list, V1_gain_list}) ->
    Data = <<
        (length(V1_item_list)):8/little, (list_to_binary([<<
            V2_item_id:32/little,
            V2_num:32/little
        >> || {V2_item_id, V2_num} <- V1_item_list]))/binary,
        (length(V1_gain_list)):8/little, (list_to_binary([<<
            V2_r_type:8,
            V2_r_value:32/little
        >> || {V2_r_type, V2_r_value} <- V1_gain_list]))/binary
    >>,
    {ok, protocol:pack(9992, Data)};

pack(srv, 9993, {V1_time, V1_roll_speed, V1_roll_count, V1_disp_region, V1_notice_type, V1_notice}) ->
    Data = <<
        V1_time:32/little,
        V1_roll_speed:8,
        V1_roll_count:8,
        V1_disp_region:8,
        V1_notice_type:8,
        (byte_size(V1_notice) + 1):16/little, V1_notice/binary, 0
    >>,
    {ok, protocol:pack(9993, Data)};

pack(srv, 9994, {V1_type, V1_parms}) ->
    Data = <<
        V1_type:16/signed-little,
        (byte_size(V1_parms) + 1):16/little, V1_parms/binary, 0
    >>,
    {ok, protocol:pack(9994, Data)};

pack(cli, 9945, {}) ->
    {ok, protocol:pack(9945, <<>>)};

pack(srv, 9995, {V1_timestamp}) ->
    Data = <<
        V1_timestamp:32/little
    >>,
    {ok, protocol:pack(9995, Data)};

pack(srv, 9996, {}) ->
    {ok, protocol:pack(9996, <<>>)};

pack(cli, 9947, {}) ->
    {ok, protocol:pack(9947, <<>>)};

pack(srv, 9997, {}) ->
    {ok, protocol:pack(9997, <<>>)};

pack(srv, 9998, {V1_result, V1_call_msg_type, V1_parms}) ->
    Data = <<
        V1_result:32/signed-little,
        V1_call_msg_type:16/signed-little,
        (byte_size(V1_parms) + 1):16/little, V1_parms/binary, 0
    >>,
    {ok, protocol:pack(9998, Data)};

pack(cli, 9999, {V1_channel_id, V1_cmd}) ->
    Data = <<
        V1_channel_id:16/little,
        (byte_size(V1_cmd) + 1):16/little, V1_cmd/binary, 0
    >>,
    {ok, protocol:pack(9999, Data)};

pack(_Type, Id, _Data) ->
    {error, {undefined, Id}}.

%% @doc 解包命令
-spec unpack(Name::atom(), Data::binary()) ->
    {ok, tuple()} | {error, {undefined, atom()|pos_integer()}}.
unpack(Name, Data) ->
    case name_to_id(Name) of
        {ok, {Type, Id}} ->
            unpack(Type, Id, Data);
        {error, Error} ->
            {error, Error}
    end.

-spec unpack(Type::cli|srv, Id::pos_integer(), Data::binary()) ->
    {ok, tuple()} | {error, {undefined, pos_integer()}}.

unpack(srv, 1001, _B1) ->

    {V1_login_time, _B2} = protocol:uint32(_B1),
    {V1_plat_id, _B3} = protocol:int32(_B2),
    {V1_server_id, _B4} = protocol:int16(_B3),
    {V1_anti_wallow, _B5} = protocol:int8(_B4),
    {V1_avatar, _B6} = protocol:int8(_B5),
    {V1_profession, _B7} = protocol:int8(_B6),
    {V1_role_sex, _B8} = protocol:int8(_B7),
    {V1_screen_width, _B9} = protocol:uint16(_B8),
    {V1_screen_height, _B10} = protocol:uint16(_B9),
    {V1_package_size, _B11} = protocol:int32(_B10),
    {V1_pname, _B12} = protocol:string(_B11),
    {V1_login_str, _B13} = protocol:string(_B12),
    {V1_user_name, _B14} = protocol:string(_B13),
    {V1_imei_number, _B15} = protocol:string(_B14),
    {V1_imsi_number, _B16} = protocol:string(_B15),
    {V1_qudao_number, _B17} = protocol:string(_B16),
    {V1_app_number, _B18} = protocol:string(_B17),
    {V1_user_phone, _B19} = protocol:string(_B18),
    {V1_system_type, _B20} = protocol:string(_B19),
    {V1_phone_model, _B21} = protocol:string(_B20),
    {V1_plat_type, _B22} = protocol:string(_B21),
    {V1_network_type, _B23} = protocol:string(_B22),
    {V1_package_name, _B24} = protocol:string(_B23),
    {ok, {V1_login_time, V1_plat_id, V1_server_id, V1_anti_wallow, V1_avatar, V1_profession, V1_role_sex, V1_screen_width, V1_screen_height, V1_package_size, V1_pname, V1_login_str, V1_user_name, V1_imei_number, V1_imsi_number, V1_qudao_number, V1_app_number, V1_user_phone, V1_system_type, V1_phone_model, V1_plat_type, V1_network_type, V1_package_name}};

unpack(cli, 1051, _B1) ->
    {V1_result, _B2} = protocol:int16(_B1),
    {V1_user_id, _B3} = protocol:int32(_B2),
    {V1_avatar, _B4} = protocol:int8(_B3),
    {V1_profession, _B5} = protocol:int8(_B4),
    {V1_level, _B6} = protocol:uint16(_B5),
    {V1_login_time, _B7} = protocol:uint32(_B6),
    {V1_server_id, _B8} = protocol:int16(_B7),
    {V1_role_sex, _B9} = protocol:int8(_B8),
    {V1_user_name, _B10} = protocol:string(_B9),
    {V1_login_str, _B11} = protocol:string(_B10),
    {V1_plat_ticket, _B12} = protocol:string(_B11),
    {ok, {V1_result, V1_user_id, V1_avatar, V1_profession, V1_level, V1_login_time, V1_server_id, V1_role_sex, V1_user_name, V1_login_str, V1_plat_ticket}};

unpack(srv, 1002, _B1) ->
    {V1_user_id, _B2} = protocol:int32(_B1),
    {V1_login_time, _B3} = protocol:uint32(_B2),
    {V1_anti_wallow, _B4} = protocol:int8(_B3),
    {V1_plat_id, _B5} = protocol:int8(_B4),
    {V1_server_id, _B6} = protocol:int16(_B5),
    {V1_plat_name, _B7} = protocol:string(_B6),
    {V1_user_name, _B8} = protocol:string(_B7),
    {V1_login_str, _B9} = protocol:string(_B8),
    {V1_imei_number, _B10} = protocol:string(_B9),
    {ok, {V1_user_id, V1_login_time, V1_anti_wallow, V1_plat_id, V1_server_id, V1_plat_name, V1_user_name, V1_login_str, V1_imei_number}};

unpack(cli, 1052, _B1) ->
    {V1_result, _B2} = protocol:int16(_B1),
    {V1_scene_id, _B3} = protocol:int32(_B2),
    {V1_scene_key, _B4} = protocol:int32(_B3),
    {V1_last_scene_id, _B5} = protocol:int32(_B4),
    {V1_user_id, _B6} = protocol:int32(_B5),
    {V1_avatar, _B7} = protocol:int8(_B6),
    {V1_professional, _B8} = protocol:int8(_B7),
    {V1_level, _B9} = protocol:uint8(_B8),
    {V1_anti_wallow, _B10} = protocol:int8(_B9),
    {V1_plat_id, _B11} = protocol:int32(_B10),
    {V1_user_name, _B12} = protocol:string(_B11),
    {ok, {V1_result, V1_scene_id, V1_scene_key, V1_last_scene_id, V1_user_id, V1_avatar, V1_professional, V1_level, V1_anti_wallow, V1_plat_id, V1_user_name}};

unpack(srv, 1003, _B1) ->
    {V1_role_id, _B2} = protocol:int32(_B1),
    {V1_server_id, _B3} = protocol:int32(_B2),
    {V1_role_name, _B4} = protocol:string(_B3),
    {V1_imei_number, _B5} = protocol:string(_B4),
    {ok, {V1_role_id, V1_server_id, V1_role_name, V1_imei_number}};

unpack(srv, 1201, _B1) ->
    {V1_scene_id, _B2} = protocol:int16(_B1),
    {V1_port_id, _B3} = protocol:int16(_B2),
    {V1_scene_key, _B4} = protocol:int32(_B3),
    {ok, {V1_scene_id, V1_port_id, V1_scene_key}};

unpack(cli, 1251, _B1) ->
    {V1_scene_id, _B2} = protocol:int32(_B1),
    {V1_scene_key, _B3} = protocol:int16(_B2),
    {V1_scene_state, _B4} = protocol:int16(_B3),
    {V1_pos_x, _B5} = protocol:int16(_B4),
    {V1_pos_y, _B6} = protocol:int16(_B5),
    {V1_special_logic_type, _B7} = protocol:int32(_B6),
    {ok, {V1_scene_id, V1_scene_key, V1_scene_state, V1_pos_x, V1_pos_y, V1_special_logic_type}};

unpack(srv, 1202, _B1) ->
    {V1_scene_id, _B2} = protocol:int32(_B1),
    {V1_scene_x, _B3} = protocol:int16(_B2),
    {V1_scene_y, _B4} = protocol:int16(_B3),
    {ok, {V1_scene_id, V1_scene_x, V1_scene_y}};

unpack(srv, 1204, _B1) ->
    {ok, {}};

unpack(srv, 1211, _B1) ->
    {V1_x, _B2} = protocol:int16(_B1),
    {V1_y, _B3} = protocol:int16(_B2),
    {V1_tx, _B4} = protocol:int16(_B3),
    {V1_ty, _B5} = protocol:int16(_B4),
    {ok, {V1_x, V1_y, V1_tx, V1_ty}};

unpack(cli, 1261, _B1) ->
    {V1_scene_id, _B2} = protocol:int32(_B1),
    {V1_user_id, _B3} = protocol:int32(_B2),
    {V1_x, _B4} = protocol:int16(_B3),
    {V1_y, _B5} = protocol:int16(_B4),
    {V1_tx, _B6} = protocol:int16(_B5),
    {V1_ty, _B7} = protocol:int16(_B6),
    {ok, {V1_scene_id, V1_user_id, V1_x, V1_y, V1_tx, V1_ty}};

unpack(cli, 1262, _B1) ->
    {V1_scene_id, _B2} = protocol:int32(_B1),
    {V1_user_id, _B3} = protocol:int32(_B2),
    {V1_x, _B4} = protocol:int16(_B3),
    {V1_y, _B5} = protocol:int16(_B4),
    {ok, {V1_scene_id, V1_user_id, V1_x, V1_y}};

unpack(cli, 1263, _B1) ->
    {V1_scene_id, _B2} = protocol:int32(_B1),
    {V1_user_id, _B3} = protocol:int32(_B2),
    {V1_user_level, _B4} = protocol:int8(_B3),
    {V1_dir, _B5} = protocol:int8(_B4),
    {V1_sex, _B6} = protocol:int8(_B5),
    {V1_profession, _B7} = protocol:int8(_B6),
    {V1_x, _B8} = protocol:int16(_B7),
    {V1_y, _B9} = protocol:int16(_B8),
    {V1_tx, _B10} = protocol:int16(_B9),
    {V1_ty, _B11} = protocol:int16(_B10),
    {V1_mount_level, _B12} = protocol:int8(_B11),
    {V1_mount_status, _B13} = protocol:int8(_B12),
    {V1_sit_status, _B14} = protocol:int8(_B13),
    {V1_vip_level, _B15} = protocol:int8(_B14),
    {V1_fabao_id, _B16} = protocol:int8(_B15),
    {V1_fabao_level, _B17} = protocol:int8(_B16),
    {V1_speed, _B18} = protocol:int16(_B17),
    {V1_fc, _B19} = protocol:int32(_B18),
    {V1_pk_mode, _B20} = protocol:int8(_B19),
    {V1_pk_state, _B21} = protocol:int8(_B20),
    {V1_action_state, _B22} = protocol:int8(_B21),
    {V1_beauty_level, _B23} = protocol:int8(_B22),
    {V1_army_id, _B24} = protocol:uint16(_B23),
    {V1_priv_type, _B25} = protocol:int16(_B24),
    {V1_priv_f1, _B26} = protocol:int32(_B25),
    {V1_priv_f2, _B27} = protocol:int32(_B26),
    {V1_priv_f3, _B28} = protocol:int16(_B27),
    {V1_game_name, _B29} = protocol:string(_B28),
    {ok, {V1_scene_id, V1_user_id, V1_user_level, V1_dir, V1_sex, V1_profession, V1_x, V1_y, V1_tx, V1_ty, V1_mount_level, V1_mount_status, V1_sit_status, V1_vip_level, V1_fabao_id, V1_fabao_level, V1_speed, V1_fc, V1_pk_mode, V1_pk_state, V1_action_state, V1_beauty_level, V1_army_id, V1_priv_type, V1_priv_f1, V1_priv_f2, V1_priv_f3, V1_game_name}};

unpack(cli, 1264, _B1) ->
    {V1_scene_id, _B2} = protocol:int32(_B1),
    {V1_user_id, _B3} = protocol:int32(_B2),
    {ok, {V1_scene_id, V1_user_id}};

unpack(cli, 1265, _B1) ->
    {V1_scene_id, _B2} = protocol:int32(_B1),
    {V1_user_id, _B3} = protocol:int32(_B2),
    {V1_key, _B4} = protocol:int32(_B3),
    {V1_value, _B5} = protocol:int32(_B4),
    {ok, {V1_scene_id, V1_user_id, V1_key, V1_value}};

unpack(cli, 1266, _B1) ->
    {V1_scene_id, _B2} = protocol:int32(_B1),
    {V1_type, _B3} = protocol:int8(_B2),
    {V1_dir, _B4} = protocol:int8(_B3),
    {V1_x, _B5} = protocol:int16(_B4),
    {V1_y, _B6} = protocol:int16(_B5),
    {V1_tx, _B7} = protocol:int16(_B6),
    {V1_ty, _B8} = protocol:int16(_B7),
    {V1_speed, _B9} = protocol:int16(_B8),
    {V1_id, _B10} = protocol:int32(_B9),
    {V1_obj_id, _B11} = protocol:int32(_B10),
    {V1_time, _B12} = protocol:int32(_B11),
    {V1_level, _B13} = protocol:int8(_B12),
    {V1_state, _B14} = protocol:int8(_B13),
    {V1_priv_type, _B15} = protocol:int16(_B14),
    {V1_priv_f1, _B16} = protocol:int32(_B15),
    {V1_priv_f2, _B17} = protocol:int32(_B16),
    {V1_priv_f3, _B18} = protocol:int16(_B17),
    {V1_name, _B19} = protocol:string(_B18),
    {ok, {V1_scene_id, V1_type, V1_dir, V1_x, V1_y, V1_tx, V1_ty, V1_speed, V1_id, V1_obj_id, V1_time, V1_level, V1_state, V1_priv_type, V1_priv_f1, V1_priv_f2, V1_priv_f3, V1_name}};

unpack(cli, 1267, _B1) ->
    {V1_scene_id, _B2} = protocol:int32(_B1),
    {V1_obj_id, _B3} = protocol:int32(_B2),
    {ok, {V1_scene_id, V1_obj_id}};

unpack(cli, 1268, _B1) ->
    {V1_scene_id, _B2} = protocol:int32(_B1),
    {V1_obj_id, _B3} = protocol:int32(_B2),
    {V1_key, _B4} = protocol:int32(_B3),
    {V1_value, _B5} = protocol:int32(_B4),
    {ok, {V1_scene_id, V1_obj_id, V1_key, V1_value}};

unpack(cli, 1269, _B1) ->
    {V1_scene_id, _B2} = protocol:int32(_B1),
    {V1_obj_id, _B3} = protocol:int32(_B2),
    {V1_x, _B4} = protocol:int16(_B3),
    {V1_y, _B5} = protocol:int16(_B4),
    {V1_tx, _B6} = protocol:int16(_B5),
    {V1_ty, _B7} = protocol:int16(_B6),
    {ok, {V1_scene_id, V1_obj_id, V1_x, V1_y, V1_tx, V1_ty}};

unpack(cli, 1270, _B1) ->
    {V1_scene_id, _B2} = protocol:int32(_B1),
    {V1_obj_id, _B3} = protocol:int32(_B2),
    {V1_x, _B4} = protocol:int16(_B3),
    {V1_y, _B5} = protocol:int16(_B4),
    {ok, {V1_scene_id, V1_obj_id, V1_x, V1_y}};

unpack(srv, 2001, _B1) ->
    {ok, {}};

unpack(cli, 2051, _B1) ->
    {V1_user_id, _B2} = protocol:int32(_B1),
    {V1_role_level, _B3} = protocol:uint16(_B2),
    {V1_professional, _B4} = protocol:int8(_B3),
    {V1_sex, _B5} = protocol:int8(_B4),
    {V1_headpicture, _B6} = protocol:int8(_B5),
    {V1_vip_level, _B7} = protocol:uint16(_B6),
    {V1_scene_id, _B8} = protocol:int32(_B7),
    {V1_scene_x, _B9} = protocol:int16(_B8),
    {V1_scene_y, _B10} = protocol:int16(_B9),
    {V1_coin, _B11} = protocol:uint32(_B10),
    {V1_gold, _B12} = protocol:uint32(_B11),
    {V1_speed, _B13} = protocol:uint32(_B12),
    {V1_gold_vip, _B14} = protocol:uint32(_B13),
    {V1_xinghun, _B15} = protocol:uint32(_B14),
    {V1_jiuli, _B16} = protocol:uint32(_B15),
    {V1_lingli, _B17} = protocol:uint32(_B16),
    {V1_silver, _B18} = protocol:uint32(_B17),
    {V1_score, _B19} = protocol:uint32(_B18),
    {V1_pk_mode, _B20} = protocol:int8(_B19),
    {V1_pk_state, _B21} = protocol:int8(_B20),
    {V1_action_state, _B22} = protocol:int8(_B21),
    {V1_role_name, _B23} = protocol:string(_B22),
    {ok, {V1_user_id, V1_role_level, V1_professional, V1_sex, V1_headpicture, V1_vip_level, V1_scene_id, V1_scene_x, V1_scene_y, V1_coin, V1_gold, V1_speed, V1_gold_vip, V1_xinghun, V1_jiuli, V1_lingli, V1_silver, V1_score, V1_pk_mode, V1_pk_state, V1_action_state, V1_role_name}};

unpack(srv, 2002, _B1) ->
    {ok, {}};

unpack(cli, 2052, _B1) ->
    {V1_role, _B47} = protocol:array(_B1, fun(_B2) ->
        {V2_role_id, _B3} = protocol:int32(_B2),
        {V2_role_level, _B4} = protocol:uint16(_B3),
        {V2_role_type, _B5} = protocol:int8(_B4),
        {V2_professional, _B6} = protocol:int8(_B5),
        {V2_sex, _B7} = protocol:uint16(_B6),
        {V2_headpicture, _B8} = protocol:uint16(_B7),
        {V2_hp, _B9} = protocol:uint32(_B8),
        {V2_nuqi, _B10} = protocol:uint32(_B9),
        {V2_first_hand, _B11} = protocol:uint32(_B10),
        {V2_attack, _B12} = protocol:uint32(_B11),
        {V2_defence, _B13} = protocol:uint32(_B12),
        {V2_chuantourate, _B14} = protocol:int32(_B13),
        {V2_baojirate, _B15} = protocol:int32(_B14),
        {V2_kangbaorate, _B16} = protocol:int32(_B15),
        {V2_mingzhongrate, _B17} = protocol:int32(_B16),
        {V2_shanbirate, _B18} = protocol:int32(_B17),
        {V2_gedangrate, _B19} = protocol:int32(_B18),
        {V2_fc, _B20} = protocol:int32(_B19),
        {V2_wind, _B21} = protocol:int32(_B20),
        {V2_fire, _B22} = protocol:int32(_B21),
        {V2_water, _B23} = protocol:int32(_B22),
        {V2_soil, _B24} = protocol:int32(_B23),
        {V2_experience, _B25} = protocol:uint32(_B24),
        {V2_experience_next, _B26} = protocol:uint32(_B25),
        {V2_army_id, _B27} = protocol:uint32(_B26),
        {V2_user_post, _B28} = protocol:uint8(_B27),
        {V2_army_level, _B29} = protocol:uint8(_B28),
        {V2_role_name, _B30} = protocol:string(_B29),
        {V2_army_name, _B31} = protocol:string(_B30),
        {V2_equip, _B46} = protocol:array(_B31, fun(_B32) ->
            {V3_id, _B33} = protocol:uint32(_B32),
            {V3_quality, _B34} = protocol:uint16(_B33),
            {V3_zhanhun, _B35} = protocol:uint16(_B34),
            {V3_strength_num, _B36} = protocol:uint8(_B35),
            {V3_index, _B37} = protocol:uint8(_B36),
            {V3_baoshi, _B40} = protocol:array8(_B37, fun(_B38) ->
                {V4_baoshi_id, _B39} = protocol:int32(_B38),
                {{V4_baoshi_id}, _B39}
            end),
            {V3_xilian, _B45} = protocol:array8(_B40, fun(_B41) ->
                {V4_attr_id, _B42} = protocol:uint8(_B41),
                {V4_star, _B43} = protocol:uint8(_B42),
                {V4_add_value, _B44} = protocol:uint16(_B43),
                {{V4_attr_id, V4_star, V4_add_value}, _B44}
            end),
            {{V3_id, V3_quality, V3_zhanhun, V3_strength_num, V3_index, V3_baoshi, V3_xilian}, _B45}
        end),
        {{V2_role_id, V2_role_level, V2_role_type, V2_professional, V2_sex, V2_headpicture, V2_hp, V2_nuqi, V2_first_hand, V2_attack, V2_defence, V2_chuantourate, V2_baojirate, V2_kangbaorate, V2_mingzhongrate, V2_shanbirate, V2_gedangrate, V2_fc, V2_wind, V2_fire, V2_water, V2_soil, V2_experience, V2_experience_next, V2_army_id, V2_user_post, V2_army_level, V2_role_name, V2_army_name, V2_equip}, _B46}
    end),
    {ok, {V1_role}};

unpack(srv, 2003, _B1) ->
    {V1_user_id, _B2} = protocol:int32(_B1),
    {ok, {V1_user_id}};

unpack(cli, 2053, _B1) ->
    {V1_role, _B47} = protocol:array(_B1, fun(_B2) ->
        {V2_role_id, _B3} = protocol:int32(_B2),
        {V2_role_level, _B4} = protocol:uint16(_B3),
        {V2_role_type, _B5} = protocol:int8(_B4),
        {V2_professional, _B6} = protocol:int8(_B5),
        {V2_sex, _B7} = protocol:uint16(_B6),
        {V2_headpicture, _B8} = protocol:uint16(_B7),
        {V2_hp, _B9} = protocol:uint32(_B8),
        {V2_nuqi, _B10} = protocol:uint32(_B9),
        {V2_first_hand, _B11} = protocol:uint32(_B10),
        {V2_attack, _B12} = protocol:uint32(_B11),
        {V2_defence, _B13} = protocol:uint32(_B12),
        {V2_chuantourate, _B14} = protocol:int32(_B13),
        {V2_baojirate, _B15} = protocol:int32(_B14),
        {V2_kangbaorate, _B16} = protocol:int32(_B15),
        {V2_mingzhongrate, _B17} = protocol:int32(_B16),
        {V2_shanbirate, _B18} = protocol:int32(_B17),
        {V2_gedangrate, _B19} = protocol:int32(_B18),
        {V2_fc, _B20} = protocol:int32(_B19),
        {V2_wind, _B21} = protocol:int32(_B20),
        {V2_fire, _B22} = protocol:int32(_B21),
        {V2_water, _B23} = protocol:int32(_B22),
        {V2_soil, _B24} = protocol:int32(_B23),
        {V2_experience, _B25} = protocol:uint32(_B24),
        {V2_experience_next, _B26} = protocol:uint32(_B25),
        {V2_army_id, _B27} = protocol:uint32(_B26),
        {V2_user_post, _B28} = protocol:uint8(_B27),
        {V2_army_level, _B29} = protocol:uint8(_B28),
        {V2_role_name, _B30} = protocol:string(_B29),
        {V2_army_name, _B31} = protocol:string(_B30),
        {V2_equip, _B46} = protocol:array(_B31, fun(_B32) ->
            {V3_id, _B33} = protocol:uint32(_B32),
            {V3_quality, _B34} = protocol:uint16(_B33),
            {V3_zhanhun, _B35} = protocol:uint16(_B34),
            {V3_strength_num, _B36} = protocol:uint8(_B35),
            {V3_index, _B37} = protocol:uint8(_B36),
            {V3_baoshi, _B40} = protocol:array8(_B37, fun(_B38) ->
                {V4_baoshi_id, _B39} = protocol:int32(_B38),
                {{V4_baoshi_id}, _B39}
            end),
            {V3_xilian, _B45} = protocol:array8(_B40, fun(_B41) ->
                {V4_attr_id, _B42} = protocol:uint8(_B41),
                {V4_star, _B43} = protocol:uint8(_B42),
                {V4_add_value, _B44} = protocol:uint16(_B43),
                {{V4_attr_id, V4_star, V4_add_value}, _B44}
            end),
            {{V3_id, V3_quality, V3_zhanhun, V3_strength_num, V3_index, V3_baoshi, V3_xilian}, _B45}
        end),
        {{V2_role_id, V2_role_level, V2_role_type, V2_professional, V2_sex, V2_headpicture, V2_hp, V2_nuqi, V2_first_hand, V2_attack, V2_defence, V2_chuantourate, V2_baojirate, V2_kangbaorate, V2_mingzhongrate, V2_shanbirate, V2_gedangrate, V2_fc, V2_wind, V2_fire, V2_water, V2_soil, V2_experience, V2_experience_next, V2_army_id, V2_user_post, V2_army_level, V2_role_name, V2_army_name, V2_equip}, _B46}
    end),
    {ok, {V1_role}};

unpack(cli, 2061, _B1) ->
    {V1_result, _B2} = protocol:int32(_B1),
    {V1_gold_all, _B3} = protocol:int32(_B2),
    {V1_gold_get, _B4} = protocol:int32(_B3),
    {ok, {V1_result, V1_gold_all, V1_gold_get}};

unpack(cli, 2062, _B1) ->
    {V1_coin, _B2} = protocol:uint32(_B1),
    {ok, {V1_coin}};

unpack(cli, 2063, _B1) ->
    {V1_gold, _B2} = protocol:uint32(_B1),
    {ok, {V1_gold}};

unpack(cli, 2064, _B1) ->
    {V1_attr_value, _B2} = protocol:int32(_B1),
    {V1_attr_type, _B3} = protocol:uint8(_B2),
    {ok, {V1_attr_value, V1_attr_type}};

unpack(cli, 2065, _B1) ->
    {V1_attr_value, _B2} = protocol:uint32(_B1),
    {V1_attr_type, _B3} = protocol:uint8(_B2),
    {ok, {V1_attr_value, V1_attr_type}};

unpack(cli, 2067, _B1) ->
    {V1_xinghun, _B2} = protocol:uint32(_B1),
    {ok, {V1_xinghun}};

unpack(cli, 2068, _B1) ->
    {V1_lingli, _B2} = protocol:uint32(_B1),
    {ok, {V1_lingli}};

unpack(cli, 2069, _B1) ->
    {V1_jiuli, _B2} = protocol:uint32(_B1),
    {ok, {V1_jiuli}};

unpack(cli, 2070, _B1) ->
    {V1_silver, _B2} = protocol:uint32(_B1),
    {ok, {V1_silver}};

unpack(cli, 2071, _B1) ->
    {V1_name, _B2} = protocol:string(_B1),
    {ok, {V1_name}};

unpack(srv, 2022, _B1) ->
    {V1_type, _B2} = protocol:uint32(_B1),
    {V1_id, _B3} = protocol:uint32(_B2),
    {ok, {V1_type, V1_id}};

unpack(cli, 2072, _B1) ->
    {V1_type, _B2} = protocol:uint32(_B1),
    {V1_id, _B3} = protocol:uint32(_B2),
    {ok, {V1_type, V1_id}};

unpack(cli, 2073, _B1) ->
    {V1_score, _B2} = protocol:uint32(_B1),
    {ok, {V1_score}};

unpack(srv, 2024, _B1) ->
    {ok, {}};

unpack(cli, 2074, _B1) ->
    {V1_silver, _B2} = protocol:uint32(_B1),
    {V1_activity_list, _B8} = protocol:array8(_B2, fun(_B3) ->
        {V2_id, _B4} = protocol:uint8(_B3),
        {V2_activity_type, _B5} = protocol:uint8(_B4),
        {V2_state, _B6} = protocol:uint8(_B5),
        {V2_open_time, _B7} = protocol:uint32(_B6),
        {{V2_id, V2_activity_type, V2_state, V2_open_time}, _B7}
    end),
    {ok, {V1_silver, V1_activity_list}};

unpack(cli, 2075, _B1) ->
    {V1_id, _B2} = protocol:uint8(_B1),
    {V1_activity_type, _B3} = protocol:uint8(_B2),
    {V1_state, _B4} = protocol:uint8(_B3),
    {V1_act_silver, _B5} = protocol:uint32(_B4),
    {ok, {V1_id, V1_activity_type, V1_state, V1_act_silver}};

unpack(cli, 2076, _B1) ->
    {ok, {}};

unpack(srv, 2027, _B1) ->
    {ok, {}};

unpack(cli, 2077, _B1) ->
    {ok, {}};

unpack(cli, 2078, _B1) ->
    {ok, {}};

unpack(srv, 2029, _B1) ->
    {ok, {}};

unpack(srv, 2201, _B1) ->
    {ok, {}};

unpack(cli, 2251, _B1) ->
    {V1_can_submit, _B4} = protocol:array(_B1, fun(_B2) ->
        {V2_task_id, _B3} = protocol:int32(_B2),
        {{V2_task_id}, _B3}
    end),
    {V1_history, _B8} = protocol:array(_B4, fun(_B5) ->
        {V2_task_id, _B6} = protocol:int32(_B5),
        {V2_continue_num, _B7} = protocol:int32(_B6),
        {{V2_task_id, V2_continue_num}, _B7}
    end),
    {V1_running_task, _B17} = protocol:array(_B8, fun(_B9) ->
        {V2_id, _B10} = protocol:int32(_B9),
        {V2_curr_status, _B11} = protocol:int8(_B10),
        {V2_curr_section, _B12} = protocol:int8(_B11),
        {V2_curr_unit, _B16} = protocol:array(_B12, fun(_B13) ->
            {V3_index, _B14} = protocol:uint16(_B13),
            {V3_curr_num, _B15} = protocol:uint16(_B14),
            {{V3_index, V3_curr_num}, _B15}
        end),
        {{V2_id, V2_curr_status, V2_curr_section, V2_curr_unit}, _B16}
    end),
    {V1_xs_running_task, _B29} = protocol:array(_B17, fun(_B18) ->
        {V2_id, _B19} = protocol:int32(_B18),
        {V2_task_index, _B20} = protocol:int8(_B19),
        {V2_task_color, _B21} = protocol:int8(_B20),
        {V2_task_level, _B22} = protocol:int8(_B21),
        {V2_curr_status, _B23} = protocol:int8(_B22),
        {V2_curr_section, _B24} = protocol:uint16(_B23),
        {V2_curr_unit, _B28} = protocol:array(_B24, fun(_B25) ->
            {V3_index, _B26} = protocol:uint16(_B25),
            {V3_curr_num, _B27} = protocol:uint16(_B26),
            {{V3_index, V3_curr_num}, _B27}
        end),
        {{V2_id, V2_task_index, V2_task_color, V2_task_level, V2_curr_status, V2_curr_section, V2_curr_unit}, _B28}
    end),
    {ok, {V1_can_submit, V1_history, V1_running_task, V1_xs_running_task}};

unpack(srv, 2202, _B1) ->
    {V1_task_id, _B2} = protocol:int32(_B1),
    {ok, {V1_task_id}};

unpack(cli, 2252, _B1) ->
    {V1_can_submit, _B4} = protocol:array(_B1, fun(_B2) ->
        {V2_task_id, _B3} = protocol:int32(_B2),
        {{V2_task_id}, _B3}
    end),
    {V1_running_task, _B13} = protocol:array(_B4, fun(_B5) ->
        {V2_id, _B6} = protocol:int32(_B5),
        {V2_curr_status, _B7} = protocol:int8(_B6),
        {V2_curr_section, _B8} = protocol:int8(_B7),
        {V2_curr_unit, _B12} = protocol:array(_B8, fun(_B9) ->
            {V3_index, _B10} = protocol:uint16(_B9),
            {V3_curr_num, _B11} = protocol:uint16(_B10),
            {{V3_index, V3_curr_num}, _B11}
        end),
        {{V2_id, V2_curr_status, V2_curr_section, V2_curr_unit}, _B12}
    end),
    {ok, {V1_can_submit, V1_running_task}};

unpack(srv, 2203, _B1) ->
    {V1_task_id, _B2} = protocol:int32(_B1),
    {ok, {V1_task_id}};

unpack(cli, 2253, _B1) ->
    {V1_task_id, _B2} = protocol:int32(_B1),
    {ok, {V1_task_id}};

unpack(srv, 2204, _B1) ->
    {V1_task_id, _B2} = protocol:int32(_B1),
    {ok, {V1_task_id}};

unpack(cli, 2254, _B1) ->
    {V1_task_id, _B2} = protocol:int32(_B1),
    {ok, {V1_task_id}};

unpack(srv, 2205, _B1) ->
    {ok, {}};

unpack(cli, 2255, _B1) ->
    {V1_star_val, _B2} = protocol:int8(_B1),
    {V1_get_reward, _B3} = protocol:int8(_B2),
    {V1_task_curr_count, _B4} = protocol:int8(_B3),
    {V1_refresh_count, _B5} = protocol:uint16(_B4),
    {V1_xs_running_task, _B17} = protocol:array(_B5, fun(_B6) ->
        {V2_id, _B7} = protocol:int32(_B6),
        {V2_task_index, _B8} = protocol:int8(_B7),
        {V2_task_color, _B9} = protocol:int8(_B8),
        {V2_task_level, _B10} = protocol:int8(_B9),
        {V2_curr_status, _B11} = protocol:int8(_B10),
        {V2_curr_section, _B12} = protocol:uint16(_B11),
        {V2_curr_unit, _B16} = protocol:array(_B12, fun(_B13) ->
            {V3_index, _B14} = protocol:uint16(_B13),
            {V3_curr_num, _B15} = protocol:uint16(_B14),
            {{V3_index, V3_curr_num}, _B15}
        end),
        {{V2_id, V2_task_index, V2_task_color, V2_task_level, V2_curr_status, V2_curr_section, V2_curr_unit}, _B16}
    end),
    {ok, {V1_star_val, V1_get_reward, V1_task_curr_count, V1_refresh_count, V1_xs_running_task}};

unpack(srv, 2206, _B1) ->
    {V1_task_id, _B2} = protocol:int32(_B1),
    {V1_task_index, _B3} = protocol:int32(_B2),
    {ok, {V1_task_id, V1_task_index}};

unpack(cli, 2256, _B1) ->
    {V1_task_id, _B2} = protocol:int32(_B1),
    {V1_task_index, _B3} = protocol:uint16(_B2),
    {V1_xs_running_task, _B15} = protocol:array(_B3, fun(_B4) ->
        {V2_id, _B5} = protocol:int32(_B4),
        {V2_task_index, _B6} = protocol:int8(_B5),
        {V2_task_color, _B7} = protocol:int8(_B6),
        {V2_task_level, _B8} = protocol:int8(_B7),
        {V2_curr_status, _B9} = protocol:int8(_B8),
        {V2_curr_section, _B10} = protocol:uint16(_B9),
        {V2_curr_unit, _B14} = protocol:array(_B10, fun(_B11) ->
            {V3_index, _B12} = protocol:uint16(_B11),
            {V3_curr_num, _B13} = protocol:uint16(_B12),
            {{V3_index, V3_curr_num}, _B13}
        end),
        {{V2_id, V2_task_index, V2_task_color, V2_task_level, V2_curr_status, V2_curr_section, V2_curr_unit}, _B14}
    end),
    {ok, {V1_task_id, V1_task_index, V1_xs_running_task}};

unpack(srv, 2207, _B1) ->
    {V1_task_id, _B2} = protocol:int32(_B1),
    {ok, {V1_task_id}};

unpack(cli, 2257, _B1) ->
    {V1_task_id, _B2} = protocol:int32(_B1),
    {V1_task_index, _B3} = protocol:int32(_B2),
    {ok, {V1_task_id, V1_task_index}};

unpack(srv, 2208, _B1) ->
    {V1_task_id, _B2} = protocol:int32(_B1),
    {ok, {V1_task_id}};

unpack(cli, 2258, _B1) ->
    {V1_task_id, _B2} = protocol:uint32(_B1),
    {V1_task_index, _B3} = protocol:uint32(_B2),
    {ok, {V1_task_id, V1_task_index}};

unpack(srv, 2209, _B1) ->
    {V1_task_id, _B2} = protocol:int32(_B1),
    {V1_task_index, _B3} = protocol:int32(_B2),
    {ok, {V1_task_id, V1_task_index}};

unpack(cli, 2259, _B1) ->
    {V1_task_id, _B2} = protocol:uint32(_B1),
    {V1_task_index, _B3} = protocol:uint32(_B2),
    {ok, {V1_task_id, V1_task_index}};

unpack(srv, 2210, _B1) ->
    {V1_op_type, _B2} = protocol:int32(_B1),
    {ok, {V1_op_type}};

unpack(cli, 2260, _B1) ->
    {V1_free_refresh_times, _B2} = protocol:uint32(_B1),
    {V1_xs_running_task, _B14} = protocol:array(_B2, fun(_B3) ->
        {V2_id, _B4} = protocol:int32(_B3),
        {V2_task_index, _B5} = protocol:int8(_B4),
        {V2_task_color, _B6} = protocol:int8(_B5),
        {V2_task_level, _B7} = protocol:int8(_B6),
        {V2_curr_status, _B8} = protocol:int8(_B7),
        {V2_curr_section, _B9} = protocol:uint16(_B8),
        {V2_curr_unit, _B13} = protocol:array(_B9, fun(_B10) ->
            {V3_index, _B11} = protocol:uint16(_B10),
            {V3_curr_num, _B12} = protocol:uint16(_B11),
            {{V3_index, V3_curr_num}, _B12}
        end),
        {{V2_id, V2_task_index, V2_task_color, V2_task_level, V2_curr_status, V2_curr_section, V2_curr_unit}, _B13}
    end),
    {ok, {V1_free_refresh_times, V1_xs_running_task}};

unpack(srv, 2211, _B1) ->
    {ok, {}};

unpack(cli, 2261, _B1) ->
    {V1_gold_sub, _B2} = protocol:uint16(_B1),
    {V1_orange_state, _B3} = protocol:uint16(_B2),
    {V1_remain_time_orange, _B4} = protocol:uint32(_B3),
    {ok, {V1_gold_sub, V1_orange_state, V1_remain_time_orange}};

unpack(cli, 2262, _B1) ->
    {V1_running_task, _B10} = protocol:array(_B1, fun(_B2) ->
        {V2_id, _B3} = protocol:int32(_B2),
        {V2_curr_status, _B4} = protocol:int8(_B3),
        {V2_curr_section, _B5} = protocol:int8(_B4),
        {V2_curr_unit, _B9} = protocol:array(_B5, fun(_B6) ->
            {V3_index, _B7} = protocol:uint16(_B6),
            {V3_curr_num, _B8} = protocol:uint16(_B7),
            {{V3_index, V3_curr_num}, _B8}
        end),
        {{V2_id, V2_curr_status, V2_curr_section, V2_curr_unit}, _B9}
    end),
    {ok, {V1_running_task}};

unpack(srv, 2213, _B1) ->
    {ok, {}};

unpack(cli, 2263, _B1) ->
    {V1_task_id, _B2} = protocol:uint32(_B1),
    {ok, {V1_task_id}};

unpack(srv, 2214, _B1) ->
    {V1_map_id, _B2} = protocol:uint16(_B1),
    {ok, {V1_map_id}};

unpack(cli, 2264, _B1) ->
    {V1_collect_list, _B5} = protocol:array8(_B1, fun(_B2) ->
        {V2_id, _B3} = protocol:uint32(_B2),
        {V2_state, _B4} = protocol:uint8(_B3),
        {{V2_id, V2_state}, _B4}
    end),
    {ok, {V1_collect_list}};

unpack(srv, 2401, _B1) ->
    {ok, {}};

unpack(cli, 2451, _B1) ->
    {V1_fabao_level, _B2} = protocol:uint16(_B1),
    {V1_zizhi_level, _B3} = protocol:uint8(_B2),
    {V1_quality_level, _B4} = protocol:uint8(_B3),
    {V1_fabao_exp, _B5} = protocol:uint32(_B4),
    {V1_quality_exp, _B6} = protocol:uint32(_B5),
    {V1_zizhi_list, _B10} = protocol:array8(_B6, fun(_B7) ->
        {V2_zizhi_id, _B8} = protocol:uint16(_B7),
        {V2_zizhi_level, _B9} = protocol:uint16(_B8),
        {{V2_zizhi_id, V2_zizhi_level}, _B9}
    end),
    {V1_fabao_list, _B22} = protocol:array8(_B10, fun(_B11) ->
        {V2_fabao_id, _B12} = protocol:uint8(_B11),
        {V2_fabao_state, _B13} = protocol:uint8(_B12),
        {V2_group_index, _B14} = protocol:uint16(_B13),
        {V2_body_id, _B15} = protocol:uint16(_B14),
        {V2_skill_group, _B21} = protocol:array8(_B15, fun(_B16) ->
            {V3_skill1, _B17} = protocol:uint8(_B16),
            {V3_skill2, _B18} = protocol:uint8(_B17),
            {V3_skill3, _B19} = protocol:uint8(_B18),
            {V3_skill4, _B20} = protocol:uint8(_B19),
            {{V3_skill1, V3_skill2, V3_skill3, V3_skill4}, _B20}
        end),
        {{V2_fabao_id, V2_fabao_state, V2_group_index, V2_body_id, V2_skill_group}, _B21}
    end),
    {ok, {V1_fabao_level, V1_zizhi_level, V1_quality_level, V1_fabao_exp, V1_quality_exp, V1_zizhi_list, V1_fabao_list}};

unpack(srv, 2402, _B1) ->
    {V1_fabao_id, _B2} = protocol:uint16(_B1),
    {V1_fabao_state, _B3} = protocol:uint16(_B2),
    {ok, {V1_fabao_id, V1_fabao_state}};

unpack(cli, 2452, _B1) ->
    {V1_fabao_state_change_list, _B5} = protocol:array8(_B1, fun(_B2) ->
        {V2_fabao_id, _B3} = protocol:uint16(_B2),
        {V2_fabao_state, _B4} = protocol:uint16(_B3),
        {{V2_fabao_id, V2_fabao_state}, _B4}
    end),
    {ok, {V1_fabao_state_change_list}};

unpack(srv, 2403, _B1) ->
    {V1_fabao_id, _B2} = protocol:uint16(_B1),
    {ok, {V1_fabao_id}};

unpack(cli, 2453, _B1) ->
    {V1_fabao_id, _B2} = protocol:uint16(_B1),
    {V1_huanhua_level, _B3} = protocol:int8(_B2),
    {V1_attr_list, _B7} = protocol:array8(_B3, fun(_B4) ->
        {V2_attr_id, _B5} = protocol:uint8(_B4),
        {V2_value, _B6} = protocol:uint32(_B5),
        {{V2_attr_id, V2_value}, _B6}
    end),
    {ok, {V1_fabao_id, V1_huanhua_level, V1_attr_list}};

unpack(srv, 2404, _B1) ->
    {V1_fabao_id, _B2} = protocol:uint16(_B1),
    {ok, {V1_fabao_id}};

unpack(cli, 2454, _B1) ->
    {V1_fabao_id, _B2} = protocol:uint16(_B1),
    {V1_curr_exp, _B3} = protocol:int32(_B2),
    {V1_quality_level, _B4} = protocol:uint16(_B3),
    {V1_attr_list, _B8} = protocol:array8(_B4, fun(_B5) ->
        {V2_attr_id, _B6} = protocol:uint8(_B5),
        {V2_value, _B7} = protocol:uint32(_B6),
        {{V2_attr_id, V2_value}, _B7}
    end),
    {ok, {V1_fabao_id, V1_curr_exp, V1_quality_level, V1_attr_list}};

unpack(srv, 2405, _B1) ->
    {V1_fabao_id, _B2} = protocol:uint16(_B1),
    {V1_is_atuo_feed, _B3} = protocol:uint8(_B2),
    {ok, {V1_fabao_id, V1_is_atuo_feed}};

unpack(cli, 2455, _B1) ->
    {V1_fabao_id, _B2} = protocol:uint16(_B1),
    {V1_feed_exp, _B3} = protocol:int32(_B2),
    {V1_lingli_value, _B4} = protocol:int32(_B3),
    {V1_fabao_level, _B5} = protocol:uint16(_B4),
    {V1_add_exp, _B6} = protocol:uint32(_B5),
    {V1_attr_list, _B10} = protocol:array8(_B6, fun(_B7) ->
        {V2_attr_id, _B8} = protocol:uint8(_B7),
        {V2_value, _B9} = protocol:uint32(_B8),
        {{V2_attr_id, V2_value}, _B9}
    end),
    {ok, {V1_fabao_id, V1_feed_exp, V1_lingli_value, V1_fabao_level, V1_add_exp, V1_attr_list}};

unpack(srv, 2406, _B1) ->
    {V1_fabao_id, _B2} = protocol:uint16(_B1),
    {V1_attr_type, _B3} = protocol:int8(_B2),
    {ok, {V1_fabao_id, V1_attr_type}};

unpack(cli, 2456, _B1) ->
    {V1_fabao_id, _B2} = protocol:uint16(_B1),
    {V1_zizhi_id, _B3} = protocol:uint16(_B2),
    {V1_zizhi_level, _B4} = protocol:uint16(_B3),
    {V1_zizhi_list, _B8} = protocol:array8(_B4, fun(_B5) ->
        {V2_attr_id, _B6} = protocol:uint8(_B5),
        {V2_zizhi_val, _B7} = protocol:uint32(_B6),
        {{V2_attr_id, V2_zizhi_val}, _B7}
    end),
    {ok, {V1_fabao_id, V1_zizhi_id, V1_zizhi_level, V1_zizhi_list}};

unpack(srv, 2407, _B1) ->
    {V1_target_fabao_id, _B2} = protocol:uint16(_B1),
    {V1_source_fabao_id, _B3} = protocol:uint16(_B2),
    {ok, {V1_target_fabao_id, V1_source_fabao_id}};

unpack(cli, 2457, _B1) ->
    {V1_delete_fabao_id, _B2} = protocol:uint16(_B1),
    {V1_fabao_list, _B14} = protocol:array8(_B2, fun(_B3) ->
        {V2_fabao_id, _B4} = protocol:uint8(_B3),
        {V2_fabao_state, _B5} = protocol:uint8(_B4),
        {V2_group_index, _B6} = protocol:uint16(_B5),
        {V2_body_id, _B7} = protocol:uint16(_B6),
        {V2_skill_group, _B13} = protocol:array8(_B7, fun(_B8) ->
            {V3_skill1, _B9} = protocol:uint8(_B8),
            {V3_skill2, _B10} = protocol:uint8(_B9),
            {V3_skill3, _B11} = protocol:uint8(_B10),
            {V3_skill4, _B12} = protocol:uint8(_B11),
            {{V3_skill1, V3_skill2, V3_skill3, V3_skill4}, _B12}
        end),
        {{V2_fabao_id, V2_fabao_state, V2_group_index, V2_body_id, V2_skill_group}, _B13}
    end),
    {ok, {V1_delete_fabao_id, V1_fabao_list}};

unpack(cli, 2458, _B1) ->
    {V1_fabao_list, _B13} = protocol:array8(_B1, fun(_B2) ->
        {V2_fabao_id, _B3} = protocol:uint8(_B2),
        {V2_fabao_state, _B4} = protocol:uint8(_B3),
        {V2_group_index, _B5} = protocol:uint16(_B4),
        {V2_body_id, _B6} = protocol:uint16(_B5),
        {V2_skill_group, _B12} = protocol:array8(_B6, fun(_B7) ->
            {V3_skill1, _B8} = protocol:uint8(_B7),
            {V3_skill2, _B9} = protocol:uint8(_B8),
            {V3_skill3, _B10} = protocol:uint8(_B9),
            {V3_skill4, _B11} = protocol:uint8(_B10),
            {{V3_skill1, V3_skill2, V3_skill3, V3_skill4}, _B11}
        end),
        {{V2_fabao_id, V2_fabao_state, V2_group_index, V2_body_id, V2_skill_group}, _B12}
    end),
    {ok, {V1_fabao_list}};

unpack(srv, 2409, _B1) ->
    {ok, {}};

unpack(cli, 2459, _B1) ->
    {V1_skill_id_list, _B6} = protocol:array8(_B1, fun(_B2) ->
        {V2_skill_id, _B3} = protocol:uint16(_B2),
        {V2_skill_level, _B4} = protocol:uint8(_B3),
        {V2_skill_exp, _B5} = protocol:uint32(_B4),
        {{V2_skill_id, V2_skill_level, V2_skill_exp}, _B5}
    end),
    {ok, {V1_skill_id_list}};

unpack(srv, 2410, _B1) ->
    {V1_skill_id, _B2} = protocol:uint8(_B1),
    {ok, {V1_skill_id}};

unpack(cli, 2460, _B1) ->
    {V1_skill_id, _B2} = protocol:uint8(_B1),
    {V1_skill_exp, _B3} = protocol:uint8(_B2),
    {V1_skill_exp, _B4} = protocol:uint32(_B3),
    {ok, {V1_skill_id, V1_skill_exp, V1_skill_exp}};

unpack(srv, 2411, _B1) ->
    {V1_fabao_id, _B2} = protocol:uint16(_B1),
    {V1_skill_id, _B3} = protocol:uint8(_B2),
    {V1_group_index, _B4} = protocol:uint8(_B3),
    {V1_slot_id, _B5} = protocol:uint8(_B4),
    {ok, {V1_fabao_id, V1_skill_id, V1_group_index, V1_slot_id}};

unpack(cli, 2461, _B1) ->
    {V1_fabao_id, _B2} = protocol:uint16(_B1),
    {V1_skill_id, _B3} = protocol:uint8(_B2),
    {V1_group_index, _B4} = protocol:uint8(_B3),
    {V1_slot_id, _B5} = protocol:uint8(_B4),
    {ok, {V1_fabao_id, V1_skill_id, V1_group_index, V1_slot_id}};

unpack(srv, 2412, _B1) ->
    {V1_fabao_id, _B2} = protocol:uint16(_B1),
    {V1_group_index, _B3} = protocol:uint8(_B2),
    {ok, {V1_fabao_id, V1_group_index}};

unpack(cli, 2462, _B1) ->
    {V1_fabao_id, _B2} = protocol:uint16(_B1),
    {V1_group_index, _B3} = protocol:uint8(_B2),
    {ok, {V1_fabao_id, V1_group_index}};

unpack(srv, 2413, _B1) ->
    {V1_skill_id, _B2} = protocol:uint8(_B1),
    {ok, {V1_skill_id}};

unpack(cli, 2463, _B1) ->
    {V1_skill_id, _B2} = protocol:uint8(_B1),
    {V1_skill_level, _B3} = protocol:uint8(_B2),
    {V1_reward_exp, _B4} = protocol:uint32(_B3),
    {V1_curr_exp, _B5} = protocol:uint32(_B4),
    {ok, {V1_skill_id, V1_skill_level, V1_reward_exp, V1_curr_exp}};

unpack(srv, 2414, _B1) ->
    {V1_fabao_id, _B2} = protocol:uint16(_B1),
    {V1_skill_id, _B3} = protocol:uint8(_B2),
    {V1_group_index, _B4} = protocol:uint8(_B3),
    {V1_slot_id, _B5} = protocol:uint8(_B4),
    {ok, {V1_fabao_id, V1_skill_id, V1_group_index, V1_slot_id}};

unpack(cli, 2464, _B1) ->
    {V1_fabao_id, _B2} = protocol:uint16(_B1),
    {V1_skill_id, _B3} = protocol:uint8(_B2),
    {V1_group_index, _B4} = protocol:uint8(_B3),
    {V1_slot_id, _B5} = protocol:uint8(_B4),
    {ok, {V1_fabao_id, V1_skill_id, V1_group_index, V1_slot_id}};

unpack(srv, 3001, _B1) ->
    {ok, {}};

unpack(cli, 3051, _B1) ->
    {V1_item, _B18} = protocol:array(_B1, fun(_B2) ->
        {V2_id, _B3} = protocol:uint32(_B2),
        {V2_num, _B4} = protocol:uint32(_B3),
        {V2_time, _B5} = protocol:uint32(_B4),
        {V2_index, _B6} = protocol:uint16(_B5),
        {V2_quality, _B7} = protocol:uint16(_B6),
        {V2_zhanhun, _B8} = protocol:uint8(_B7),
        {V2_strength_num, _B9} = protocol:uint8(_B8),
        {V2_baoshi, _B12} = protocol:array8(_B9, fun(_B10) ->
            {V3_baoshi_id, _B11} = protocol:int32(_B10),
            {{V3_baoshi_id}, _B11}
        end),
        {V2_xilian, _B17} = protocol:array8(_B12, fun(_B13) ->
            {V3_attr_id, _B14} = protocol:uint8(_B13),
            {V3_star, _B15} = protocol:uint8(_B14),
            {V3_add_value, _B16} = protocol:uint16(_B15),
            {{V3_attr_id, V3_star, V3_add_value}, _B16}
        end),
        {{V2_id, V2_num, V2_time, V2_index, V2_quality, V2_zhanhun, V2_strength_num, V2_baoshi, V2_xilian}, _B17}
    end),
    {ok, {V1_item}};

unpack(srv, 3002, _B1) ->
    {V1_index, _B2} = protocol:int32(_B1),
    {V1_count, _B3} = protocol:int16(_B2),
    {ok, {V1_index, V1_count}};

unpack(srv, 3003, _B1) ->
    {V1_index, _B2} = protocol:int32(_B1),
    {ok, {V1_index}};

unpack(srv, 3004, _B1) ->
    {V1_index_from, _B2} = protocol:uint16(_B1),
    {V1_index_to, _B3} = protocol:uint16(_B2),
    {ok, {V1_index_from, V1_index_to}};

unpack(cli, 3054, _B1) ->
    {V1_index_from, _B2} = protocol:uint16(_B1),
    {V1_index_to, _B3} = protocol:uint16(_B2),
    {ok, {V1_index_from, V1_index_to}};

unpack(cli, 3055, _B1) ->
    {V1_item, _B18} = protocol:array(_B1, fun(_B2) ->
        {V2_id, _B3} = protocol:uint32(_B2),
        {V2_num, _B4} = protocol:uint32(_B3),
        {V2_time, _B5} = protocol:uint32(_B4),
        {V2_index, _B6} = protocol:uint16(_B5),
        {V2_quality, _B7} = protocol:uint16(_B6),
        {V2_zhanhun, _B8} = protocol:uint8(_B7),
        {V2_strength_num, _B9} = protocol:uint8(_B8),
        {V2_baoshi, _B12} = protocol:array8(_B9, fun(_B10) ->
            {V3_baoshi_id, _B11} = protocol:int32(_B10),
            {{V3_baoshi_id}, _B11}
        end),
        {V2_xilian, _B17} = protocol:array8(_B12, fun(_B13) ->
            {V3_attr_id, _B14} = protocol:uint8(_B13),
            {V3_star, _B15} = protocol:uint8(_B14),
            {V3_add_value, _B16} = protocol:uint16(_B15),
            {{V3_attr_id, V3_star, V3_add_value}, _B16}
        end),
        {{V2_id, V2_num, V2_time, V2_index, V2_quality, V2_zhanhun, V2_strength_num, V2_baoshi, V2_xilian}, _B17}
    end),
    {ok, {V1_item}};

unpack(srv, 3006, _B1) ->
    {ok, {}};

unpack(srv, 3101, _B1) ->
    {V1_role_id, _B2} = protocol:int16(_B1),
    {V1_index, _B3} = protocol:int16(_B2),
    {ok, {V1_role_id, V1_index}};

unpack(srv, 3102, _B1) ->
    {V1_index, _B2} = protocol:int16(_B1),
    {V1_use_baohu, _B3} = protocol:int8(_B2),
    {V1_use_xingyun, _B4} = protocol:int8(_B3),
    {V1_auto_buy, _B5} = protocol:int8(_B4),
    {ok, {V1_index, V1_use_baohu, V1_use_xingyun, V1_auto_buy}};

unpack(cli, 3152, _B1) ->
    {V1_index, _B2} = protocol:int8(_B1),
    {V1_is_succeed, _B3} = protocol:int8(_B2),
    {V1_strength_num, _B4} = protocol:int8(_B3),
    {ok, {V1_index, V1_is_succeed, V1_strength_num}};

unpack(srv, 3103, _B1) ->
    {V1_item_id, _B2} = protocol:int32(_B1),
    {V1_index, _B3} = protocol:int8(_B2),
    {V1_auto_buy, _B4} = protocol:int8(_B3),
    {V1_lock, _B7} = protocol:array8(_B4, fun(_B5) ->
        {V2_lock_index, _B6} = protocol:uint8(_B5),
        {{V2_lock_index}, _B6}
    end),
    {ok, {V1_item_id, V1_index, V1_auto_buy, V1_lock}};

unpack(cli, 3153, _B1) ->
    {V1_index, _B2} = protocol:int8(_B1),
    {V1_xilian, _B7} = protocol:array8(_B2, fun(_B3) ->
        {V2_attr_id, _B4} = protocol:uint8(_B3),
        {V2_star, _B5} = protocol:uint8(_B4),
        {V2_add_value, _B6} = protocol:uint16(_B5),
        {{V2_attr_id, V2_star, V2_add_value}, _B6}
    end),
    {ok, {V1_index, V1_xilian}};

unpack(srv, 3104, _B1) ->
    {V1_index, _B2} = protocol:int8(_B1),
    {V1_auto_buy, _B3} = protocol:int8(_B2),
    {ok, {V1_index, V1_auto_buy}};

unpack(cli, 3154, _B1) ->
    {V1_index, _B2} = protocol:int16(_B1),
    {V1_is_succeed, _B3} = protocol:int16(_B2),
    {V1_quality, _B4} = protocol:int16(_B3),
    {V1_zhanhun, _B5} = protocol:int16(_B4),
    {ok, {V1_index, V1_is_succeed, V1_quality, V1_zhanhun}};

unpack(cli, 3155, _B1) ->
    {V1_ope_type, _B2} = protocol:uint16(_B1),
    {V1_equip_list, _B17} = protocol:array8(_B2, fun(_B3) ->
        {V2_id, _B4} = protocol:uint32(_B3),
        {V2_quality, _B5} = protocol:uint16(_B4),
        {V2_zhanhun, _B6} = protocol:uint16(_B5),
        {V2_strength_num, _B7} = protocol:uint8(_B6),
        {V2_index, _B8} = protocol:uint8(_B7),
        {V2_baoshi, _B11} = protocol:array8(_B8, fun(_B9) ->
            {V3_baoshi_id, _B10} = protocol:int32(_B9),
            {{V3_baoshi_id}, _B10}
        end),
        {V2_xilian, _B16} = protocol:array8(_B11, fun(_B12) ->
            {V3_attr_id, _B13} = protocol:uint8(_B12),
            {V3_star, _B14} = protocol:uint8(_B13),
            {V3_add_value, _B15} = protocol:uint16(_B14),
            {{V3_attr_id, V3_star, V3_add_value}, _B15}
        end),
        {{V2_id, V2_quality, V2_zhanhun, V2_strength_num, V2_index, V2_baoshi, V2_xilian}, _B16}
    end),
    {ok, {V1_ope_type, V1_equip_list}};

unpack(srv, 3106, _B1) ->
    {V1_item_id, _B2} = protocol:int32(_B1),
    {V1_index, _B3} = protocol:int8(_B2),
    {V1_lock_data, _B6} = protocol:array8(_B3, fun(_B4) ->
        {V2_data, _B5} = protocol:uint8(_B4),
        {{V2_data}, _B5}
    end),
    {ok, {V1_item_id, V1_index, V1_lock_data}};

unpack(cli, 3156, _B1) ->
    {V1_index, _B2} = protocol:int8(_B1),
    {V1_xilian_list, _B7} = protocol:array8(_B2, fun(_B3) ->
        {V2_attr_id, _B4} = protocol:uint8(_B3),
        {V2_star, _B5} = protocol:uint8(_B4),
        {V2_add_value, _B6} = protocol:uint16(_B5),
        {{V2_attr_id, V2_star, V2_add_value}, _B6}
    end),
    {ok, {V1_index, V1_xilian_list}};

unpack(srv, 3107, _B1) ->
    {V1_index, _B2} = protocol:int8(_B1),
    {ok, {V1_index}};

unpack(cli, 3157, _B1) ->
    {V1_result, _B2} = protocol:int32(_B1),
    {ok, {V1_result}};

unpack(srv, 3108, _B1) ->
    {V1_master_index, _B2} = protocol:int16(_B1),
    {V1_slave_index, _B3} = protocol:int16(_B2),
    {V1_xilian_index, _B4} = protocol:int8(_B3),
    {ok, {V1_master_index, V1_slave_index, V1_xilian_index}};

unpack(srv, 3110, _B1) ->
    {V1_item_id, _B2} = protocol:int32(_B1),
    {ok, {V1_item_id}};

unpack(cli, 3160, _B1) ->
    {V1_item_id, _B2} = protocol:int32(_B1),
    {ok, {V1_item_id}};

unpack(srv, 3111, _B1) ->
    {ok, {}};

unpack(cli, 3161, _B1) ->
    {V1_blue_hun, _B2} = protocol:int32(_B1),
    {V1_golden_hun, _B3} = protocol:int32(_B2),
    {V1_purple_hun, _B4} = protocol:int32(_B3),
    {V1_orange_hun, _B5} = protocol:int32(_B4),
    {ok, {V1_blue_hun, V1_golden_hun, V1_purple_hun, V1_orange_hun}};

unpack(srv, 3112, _B1) ->
    {V1_color, _B2} = protocol:int8(_B1),
    {V1_card_index, _B3} = protocol:int8(_B2),
    {V1_is_gold, _B4} = protocol:int8(_B3),
    {ok, {V1_color, V1_card_index, V1_is_gold}};

unpack(cli, 3162, _B1) ->
    {V1_color, _B2} = protocol:int8(_B1),
    {V1_card_index, _B3} = protocol:int8(_B2),
    {V1_hun_index, _B4} = protocol:int8(_B3),
    {ok, {V1_color, V1_card_index, V1_hun_index}};

unpack(cli, 3158, _B1) ->
    {V1_result, _B2} = protocol:int32(_B1),
    {ok, {V1_result}};

unpack(srv, 3201, _B1) ->
    {V1_fuben_id, _B2} = protocol:uint16(_B1),
    {V1_guanqia, _B3} = protocol:uint16(_B2),
    {ok, {V1_fuben_id, V1_guanqia}};

unpack(cli, 3251, _B1) ->
    {V1_coin, _B2} = protocol:uint32(_B1),
    {V1_gold, _B3} = protocol:uint32(_B2),
    {V1_experience, _B4} = protocol:uint32(_B3),
    {V1_winner_id, _B5} = protocol:int8(_B4),
    {V1_front_plot, _B6} = protocol:int32(_B5),
    {V1_back_plot, _B7} = protocol:int32(_B6),
    {V1_role_info, _B29} = protocol:array8(_B7, fun(_B8) ->
        {V2_role_id, _B9} = protocol:int32(_B8),
        {V2_role_type, _B10} = protocol:int8(_B9),
        {V2_role_level, _B11} = protocol:int8(_B10),
        {V2_professional, _B12} = protocol:int8(_B11),
        {V2_sex, _B13} = protocol:int8(_B12),
        {V2_headpicture, _B14} = protocol:int8(_B13),
        {V2_position, _B15} = protocol:int8(_B14),
        {V2_actor_id, _B16} = protocol:int8(_B15),
        {V2_experience, _B17} = protocol:uint32(_B16),
        {V2_experience_next, _B18} = protocol:uint32(_B17),
        {V2_hp, _B19} = protocol:uint32(_B18),
        {V2_nuqi, _B20} = protocol:uint32(_B19),
        {V2_nuqi_max, _B21} = protocol:uint32(_B20),
        {V2_nuqi_skill_id, _B22} = protocol:uint32(_B21),
        {V2_bo_index, _B23} = protocol:uint8(_B22),
        {V2_fabao_id, _B24} = protocol:uint16(_B23),
        {V2_fabao_huanhua_lev, _B25} = protocol:uint8(_B24),
        {V2_fabao_level, _B26} = protocol:uint16(_B25),
        {V2_fabao_yinji, _B27} = protocol:uint16(_B26),
        {V2_role_name, _B28} = protocol:string(_B27),
        {{V2_role_id, V2_role_type, V2_role_level, V2_professional, V2_sex, V2_headpicture, V2_position, V2_actor_id, V2_experience, V2_experience_next, V2_hp, V2_nuqi, V2_nuqi_max, V2_nuqi_skill_id, V2_bo_index, V2_fabao_id, V2_fabao_huanhua_lev, V2_fabao_level, V2_fabao_yinji, V2_role_name}, _B28}
    end),
    {V1_competitor_info, _B42} = protocol:array8(_B29, fun(_B30) ->
        {V2_id, _B31} = protocol:int32(_B30),
        {V2_monster_level, _B32} = protocol:int8(_B31),
        {V2_position, _B33} = protocol:int8(_B32),
        {V2_actor_id, _B34} = protocol:int8(_B33),
        {V2_is_monster, _B35} = protocol:int8(_B34),
        {V2_hp, _B36} = protocol:uint32(_B35),
        {V2_nuqi, _B37} = protocol:uint32(_B36),
        {V2_nuqi_max, _B38} = protocol:uint32(_B37),
        {V2_bo_index, _B39} = protocol:int8(_B38),
        {V2_curr_hp, _B40} = protocol:uint32(_B39),
        {V2_monster_name, _B41} = protocol:string(_B40),
        {{V2_id, V2_monster_level, V2_position, V2_actor_id, V2_is_monster, V2_hp, V2_nuqi, V2_nuqi_max, V2_bo_index, V2_curr_hp, V2_monster_name}, _B41}
    end),
    {V1_fighting_result, _B93} = protocol:array8(_B42, fun(_B43) ->
        {V2_curr_bo, _B44} = protocol:int8(_B43),
        {V2_clear_effect, _B51} = protocol:array8(_B44, fun(_B45) ->
            {V3_fighter_actor, _B46} = protocol:int8(_B45),
            {V3_dot_hp, _B47} = protocol:int32(_B46),
            {V3_effect_list, _B50} = protocol:array8(_B47, fun(_B48) ->
                {V4_effect_id, _B49} = protocol:uint16(_B48),
                {{V4_effect_id}, _B49}
            end),
            {{V3_fighter_actor, V3_dot_hp, V3_effect_list}, _B50}
        end),
        {V2_fighting_list, _B87} = protocol:array8(_B51, fun(_B52) ->
            {V3_attacker, _B68} = protocol:array8(_B52, fun(_B53) ->
                {V4_skill_id, _B54} = protocol:uint16(_B53),
                {V4_fighter_id, _B55} = protocol:uint8(_B54),
                {V4_skill_level, _B56} = protocol:uint8(_B55),
                {V4_fabao_skill_id, _B57} = protocol:uint16(_B56),
                {V4_attr_list, _B61} = protocol:array8(_B57, fun(_B58) ->
                    {V5_attr_id, _B59} = protocol:uint8(_B58),
                    {V5_attr_value, _B60} = protocol:int32(_B59),
                    {{V5_attr_id, V5_attr_value}, _B60}
                end),
                {V4_buff_list, _B64} = protocol:array8(_B61, fun(_B62) ->
                    {V5_buff_id, _B63} = protocol:uint16(_B62),
                    {{V5_buff_id}, _B63}
                end),
                {V4_add_buff_list, _B67} = protocol:array8(_B64, fun(_B65) ->
                    {V5_buff_id, _B66} = protocol:uint16(_B65),
                    {{V5_buff_id}, _B66}
                end),
                {{V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list}, _B67}
            end),
            {V3_defender, _B86} = protocol:array8(_B68, fun(_B69) ->
                {V4_buff_id, _B70} = protocol:uint16(_B69),
                {V4_effect_type, _B71} = protocol:uint8(_B70),
                {V4_skill_id, _B72} = protocol:uint16(_B71),
                {V4_fighter_id, _B73} = protocol:uint8(_B72),
                {V4_skill_level, _B74} = protocol:uint8(_B73),
                {V4_fabao_skill_id, _B75} = protocol:uint16(_B74),
                {V4_attr_list, _B79} = protocol:array8(_B75, fun(_B76) ->
                    {V5_attr_id, _B77} = protocol:uint8(_B76),
                    {V5_attr_value, _B78} = protocol:int32(_B77),
                    {{V5_attr_id, V5_attr_value}, _B78}
                end),
                {V4_buff_list, _B82} = protocol:array8(_B79, fun(_B80) ->
                    {V5_buff_id, _B81} = protocol:uint16(_B80),
                    {{V5_buff_id}, _B81}
                end),
                {V4_add_buff_list, _B85} = protocol:array8(_B82, fun(_B83) ->
                    {V5_buff_id, _B84} = protocol:uint16(_B83),
                    {{V5_buff_id}, _B84}
                end),
                {{V4_buff_id, V4_effect_type, V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list}, _B85}
            end),
            {{V3_attacker, V3_defender}, _B86}
        end),
        {V2_action_list, _B92} = protocol:array8(_B87, fun(_B88) ->
            {V3_action_type, _B89} = protocol:uint8(_B88),
            {V3_new_id, _B90} = protocol:uint32(_B89),
            {V3_old_id, _B91} = protocol:uint32(_B90),
            {{V3_action_type, V3_new_id, V3_old_id}, _B91}
        end),
        {{V2_curr_bo, V2_clear_effect, V2_fighting_list, V2_action_list}, _B92}
    end),
    {V1_item_rw, _B97} = protocol:array8(_B93, fun(_B94) ->
        {V2_item_id, _B95} = protocol:int32(_B94),
        {V2_num, _B96} = protocol:int32(_B95),
        {{V2_item_id, V2_num}, _B96}
    end),
    {ok, {V1_coin, V1_gold, V1_experience, V1_winner_id, V1_front_plot, V1_back_plot, V1_role_info, V1_competitor_info, V1_fighting_result, V1_item_rw}};

unpack(srv, 3202, _B1) ->
    {V1_fuben_id, _B2} = protocol:int32(_B1),
    {V1_list_id, _B3} = protocol:int32(_B2),
    {ok, {V1_fuben_id, V1_list_id}};

unpack(cli, 3252, _B1) ->
    {V1_coin, _B2} = protocol:uint32(_B1),
    {V1_gold, _B3} = protocol:uint32(_B2),
    {V1_experience, _B4} = protocol:uint32(_B3),
    {V1_xinghun, _B5} = protocol:uint32(_B4),
    {V1_winner_id, _B6} = protocol:uint8(_B5),
    {V1_role_info, _B28} = protocol:array8(_B6, fun(_B7) ->
        {V2_role_id, _B8} = protocol:int32(_B7),
        {V2_role_type, _B9} = protocol:int8(_B8),
        {V2_role_level, _B10} = protocol:int8(_B9),
        {V2_professional, _B11} = protocol:int8(_B10),
        {V2_sex, _B12} = protocol:int8(_B11),
        {V2_headpicture, _B13} = protocol:int8(_B12),
        {V2_position, _B14} = protocol:int8(_B13),
        {V2_actor_id, _B15} = protocol:int8(_B14),
        {V2_experience, _B16} = protocol:uint32(_B15),
        {V2_experience_next, _B17} = protocol:uint32(_B16),
        {V2_hp, _B18} = protocol:uint32(_B17),
        {V2_nuqi, _B19} = protocol:uint32(_B18),
        {V2_nuqi_max, _B20} = protocol:uint32(_B19),
        {V2_nuqi_skill_id, _B21} = protocol:uint32(_B20),
        {V2_bo_index, _B22} = protocol:uint8(_B21),
        {V2_fabao_id, _B23} = protocol:uint16(_B22),
        {V2_fabao_huanhua_lev, _B24} = protocol:uint8(_B23),
        {V2_fabao_level, _B25} = protocol:uint16(_B24),
        {V2_fabao_yinji, _B26} = protocol:uint16(_B25),
        {V2_role_name, _B27} = protocol:string(_B26),
        {{V2_role_id, V2_role_type, V2_role_level, V2_professional, V2_sex, V2_headpicture, V2_position, V2_actor_id, V2_experience, V2_experience_next, V2_hp, V2_nuqi, V2_nuqi_max, V2_nuqi_skill_id, V2_bo_index, V2_fabao_id, V2_fabao_huanhua_lev, V2_fabao_level, V2_fabao_yinji, V2_role_name}, _B27}
    end),
    {V1_competitor_info, _B41} = protocol:array8(_B28, fun(_B29) ->
        {V2_id, _B30} = protocol:int32(_B29),
        {V2_monster_level, _B31} = protocol:int8(_B30),
        {V2_position, _B32} = protocol:int8(_B31),
        {V2_actor_id, _B33} = protocol:int8(_B32),
        {V2_is_monster, _B34} = protocol:int8(_B33),
        {V2_hp, _B35} = protocol:uint32(_B34),
        {V2_nuqi, _B36} = protocol:uint32(_B35),
        {V2_nuqi_max, _B37} = protocol:uint32(_B36),
        {V2_bo_index, _B38} = protocol:int8(_B37),
        {V2_curr_hp, _B39} = protocol:uint32(_B38),
        {V2_monster_name, _B40} = protocol:string(_B39),
        {{V2_id, V2_monster_level, V2_position, V2_actor_id, V2_is_monster, V2_hp, V2_nuqi, V2_nuqi_max, V2_bo_index, V2_curr_hp, V2_monster_name}, _B40}
    end),
    {V1_fighting_result, _B92} = protocol:array8(_B41, fun(_B42) ->
        {V2_curr_bo, _B43} = protocol:int8(_B42),
        {V2_clear_effect, _B50} = protocol:array8(_B43, fun(_B44) ->
            {V3_fighter_actor, _B45} = protocol:int8(_B44),
            {V3_dot_hp, _B46} = protocol:int32(_B45),
            {V3_effect_list, _B49} = protocol:array8(_B46, fun(_B47) ->
                {V4_effect_id, _B48} = protocol:uint16(_B47),
                {{V4_effect_id}, _B48}
            end),
            {{V3_fighter_actor, V3_dot_hp, V3_effect_list}, _B49}
        end),
        {V2_fighting_list, _B86} = protocol:array8(_B50, fun(_B51) ->
            {V3_attacker, _B67} = protocol:array8(_B51, fun(_B52) ->
                {V4_skill_id, _B53} = protocol:uint16(_B52),
                {V4_fighter_id, _B54} = protocol:uint8(_B53),
                {V4_skill_level, _B55} = protocol:uint8(_B54),
                {V4_fabao_skill_id, _B56} = protocol:uint16(_B55),
                {V4_attr_list, _B60} = protocol:array8(_B56, fun(_B57) ->
                    {V5_attr_id, _B58} = protocol:uint8(_B57),
                    {V5_attr_value, _B59} = protocol:int32(_B58),
                    {{V5_attr_id, V5_attr_value}, _B59}
                end),
                {V4_buff_list, _B63} = protocol:array8(_B60, fun(_B61) ->
                    {V5_buff_id, _B62} = protocol:uint16(_B61),
                    {{V5_buff_id}, _B62}
                end),
                {V4_add_buff_list, _B66} = protocol:array8(_B63, fun(_B64) ->
                    {V5_buff_id, _B65} = protocol:uint16(_B64),
                    {{V5_buff_id}, _B65}
                end),
                {{V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list}, _B66}
            end),
            {V3_defender, _B85} = protocol:array8(_B67, fun(_B68) ->
                {V4_buff_id, _B69} = protocol:uint16(_B68),
                {V4_effect_type, _B70} = protocol:uint8(_B69),
                {V4_skill_id, _B71} = protocol:uint16(_B70),
                {V4_fighter_id, _B72} = protocol:uint8(_B71),
                {V4_skill_level, _B73} = protocol:uint8(_B72),
                {V4_fabao_skill_id, _B74} = protocol:uint16(_B73),
                {V4_attr_list, _B78} = protocol:array8(_B74, fun(_B75) ->
                    {V5_attr_id, _B76} = protocol:uint8(_B75),
                    {V5_attr_value, _B77} = protocol:int32(_B76),
                    {{V5_attr_id, V5_attr_value}, _B77}
                end),
                {V4_buff_list, _B81} = protocol:array8(_B78, fun(_B79) ->
                    {V5_buff_id, _B80} = protocol:uint16(_B79),
                    {{V5_buff_id}, _B80}
                end),
                {V4_add_buff_list, _B84} = protocol:array8(_B81, fun(_B82) ->
                    {V5_buff_id, _B83} = protocol:uint16(_B82),
                    {{V5_buff_id}, _B83}
                end),
                {{V4_buff_id, V4_effect_type, V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list}, _B84}
            end),
            {{V3_attacker, V3_defender}, _B85}
        end),
        {V2_action_list, _B91} = protocol:array8(_B86, fun(_B87) ->
            {V3_action_type, _B88} = protocol:uint8(_B87),
            {V3_new_id, _B89} = protocol:uint32(_B88),
            {V3_old_id, _B90} = protocol:uint32(_B89),
            {{V3_action_type, V3_new_id, V3_old_id}, _B90}
        end),
        {{V2_curr_bo, V2_clear_effect, V2_fighting_list, V2_action_list}, _B91}
    end),
    {V1_item_rw, _B96} = protocol:array8(_B92, fun(_B93) ->
        {V2_item_id, _B94} = protocol:int32(_B93),
        {V2_num, _B95} = protocol:int32(_B94),
        {{V2_item_id, V2_num}, _B95}
    end),
    {ok, {V1_coin, V1_gold, V1_experience, V1_xinghun, V1_winner_id, V1_role_info, V1_competitor_info, V1_fighting_result, V1_item_rw}};

unpack(srv, 3203, _B1) ->
    {V1_fuben_id, _B2} = protocol:int32(_B1),
    {V1_fb_type, _B3} = protocol:uint16(_B2),
    {ok, {V1_fuben_id, V1_fb_type}};

unpack(cli, 3253, _B1) ->
    {V1_coin, _B2} = protocol:uint32(_B1),
    {V1_gold, _B3} = protocol:uint32(_B2),
    {V1_experience, _B4} = protocol:uint32(_B3),
    {V1_xinghun, _B5} = protocol:uint32(_B4),
    {V1_jiuli, _B6} = protocol:uint32(_B5),
    {V1_lingli, _B7} = protocol:uint32(_B6),
    {V1_assess_level, _B8} = protocol:uint8(_B7),
    {V1_item_reward, _B12} = protocol:array8(_B8, fun(_B9) ->
        {V2_item_id, _B10} = protocol:int32(_B9),
        {V2_item_num, _B11} = protocol:int32(_B10),
        {{V2_item_id, V2_item_num}, _B11}
    end),
    {ok, {V1_coin, V1_gold, V1_experience, V1_xinghun, V1_jiuli, V1_lingli, V1_assess_level, V1_item_reward}};

unpack(srv, 3204, _B1) ->
    {V1_fb_id, _B2} = protocol:uint16(_B1),
    {V1_fb_type, _B3} = protocol:uint16(_B2),
    {ok, {V1_fb_id, V1_fb_type}};

unpack(cli, 3254, _B1) ->
    {V1_fb_id, _B2} = protocol:uint16(_B1),
    {V1_fb_type, _B3} = protocol:uint16(_B2),
    {ok, {V1_fb_id, V1_fb_type}};

unpack(srv, 3205, _B1) ->
    {ok, {}};

unpack(cli, 3255, _B1) ->
    {V1_common_fuben_list, _B4} = protocol:array8(_B1, fun(_B2) ->
        {V2_common_fuben_id, _B3} = protocol:int32(_B2),
        {{V2_common_fuben_id}, _B3}
    end),
    {V1_jingying_fuben_list, _B7} = protocol:array8(_B4, fun(_B5) ->
        {V2_jingying_fuben_id, _B6} = protocol:int32(_B5),
        {{V2_jingying_fuben_id}, _B6}
    end),
    {ok, {V1_common_fuben_list, V1_jingying_fuben_list}};

unpack(srv, 3206, _B1) ->
    {ok, {}};

unpack(srv, 3207, _B1) ->
    {V1_fb_id, _B2} = protocol:uint32(_B1),
    {ok, {V1_fb_id}};

unpack(cli, 3257, _B1) ->
    {V1_fb_id, _B2} = protocol:uint32(_B1),
    {V1_count, _B3} = protocol:uint8(_B2),
    {ok, {V1_fb_id, V1_count}};

unpack(srv, 3210, _B1) ->
    {V1_scene_id, _B2} = protocol:uint32(_B1),
    {V1_leader_id, _B3} = protocol:uint32(_B2),
    {ok, {V1_scene_id, V1_leader_id}};

unpack(cli, 3260, _B1) ->
    {V1_scene_id, _B2} = protocol:uint32(_B1),
    {V1_var_id, _B3} = protocol:uint32(_B2),
    {ok, {V1_scene_id, V1_var_id}};

unpack(srv, 3211, _B1) ->
    {ok, {}};

unpack(cli, 3262, _B1) ->
    {V1_reward_list, _B6} = protocol:array(_B1, fun(_B2) ->
        {V2_r_type, _B3} = protocol:uint16(_B2),
        {V2_item_id, _B4} = protocol:uint32(_B3),
        {V2_num, _B5} = protocol:uint32(_B4),
        {{V2_r_type, V2_item_id, V2_num}, _B5}
    end),
    {ok, {V1_reward_list}};

unpack(cli, 3266, _B1) ->
    {V1_index, _B2} = protocol:uint16(_B1),
    {V1_obj_id, _B3} = protocol:uint16(_B2),
    {V1_type, _B4} = protocol:uint16(_B3),
    {V1_hp, _B5} = protocol:uint32(_B4),
    {V1_status, _B6} = protocol:uint16(_B5),
    {ok, {V1_index, V1_obj_id, V1_type, V1_hp, V1_status}};

unpack(cli, 3267, _B1) ->
    {V1_wave, _B2} = protocol:uint16(_B1),
    {V1_total_wave, _B3} = protocol:uint16(_B2),
    {V1_next_appear, _B4} = protocol:uint32(_B3),
    {V1_count_kill, _B5} = protocol:uint16(_B4),
    {V1_count_left, _B6} = protocol:uint16(_B5),
    {V1_left_time, _B7} = protocol:uint32(_B6),
    {ok, {V1_wave, V1_total_wave, V1_next_appear, V1_count_kill, V1_count_left, V1_left_time}};

unpack(cli, 3268, _B1) ->
    {V1_rank_list, _B5} = protocol:array(_B1, fun(_B2) ->
        {V2_rank, _B3} = protocol:uint16(_B2),
        {V2_hurt, _B4} = protocol:uint32(_B3),
        {{V2_rank, V2_hurt}, _B4}
    end),
    {ok, {V1_rank_list}};

unpack(srv, 3219, _B1) ->
    {V1_skill_id, _B2} = protocol:uint16(_B1),
    {V1_obj_id, _B3} = protocol:uint32(_B2),
    {ok, {V1_skill_id, V1_obj_id}};

unpack(cli, 3269, _B1) ->
    {V1_skill_energy, _B2} = protocol:uint32(_B1),
    {V1_skill_id, _B3} = protocol:uint32(_B2),
    {V1_target_list, _B6} = protocol:array(_B3, fun(_B4) ->
        {V2_target, _B5} = protocol:uint32(_B4),
        {{V2_target}, _B5}
    end),
    {ok, {V1_skill_energy, V1_skill_id, V1_target_list}};

unpack(srv, 3220, _B1) ->
    {V1_id, _B2} = protocol:uint32(_B1),
    {ok, {V1_id}};

unpack(cli, 3270, _B1) ->
    {V1_id, _B2} = protocol:uint32(_B1),
    {ok, {V1_id}};

unpack(cli, 3271, _B1) ->
    {V1_skill_energy, _B2} = protocol:uint32(_B1),
    {V1_skill1_cost, _B3} = protocol:uint32(_B2),
    {V1_skill2_cost, _B4} = protocol:uint32(_B3),
    {V1_time_count, _B5} = protocol:uint32(_B4),
    {V1_list, _B13} = protocol:array(_B5, fun(_B6) ->
        {V2_index, _B7} = protocol:uint16(_B6),
        {V2_obj_id, _B8} = protocol:uint16(_B7),
        {V2_type, _B9} = protocol:uint16(_B8),
        {V2_hp, _B10} = protocol:uint32(_B9),
        {V2_total_hp, _B11} = protocol:uint32(_B10),
        {V2_status, _B12} = protocol:uint32(_B11),
        {{V2_index, V2_obj_id, V2_type, V2_hp, V2_total_hp, V2_status}, _B12}
    end),
    {ok, {V1_skill_energy, V1_skill1_cost, V1_skill2_cost, V1_time_count, V1_list}};

unpack(cli, 3272, _B1) ->
    {V1_hurt, _B2} = protocol:uint32(_B1),
    {V1_yb, _B3} = protocol:uint32(_B2),
    {ok, {V1_hurt, V1_yb}};

unpack(cli, 3273, _B1) ->
    {ok, {}};

unpack(cli, 3274, _B1) ->
    {V1_type, _B2} = protocol:uint16(_B1),
    {V1_self_id, _B3} = protocol:uint32(_B2),
    {V1_target_id, _B4} = protocol:uint32(_B3),
    {ok, {V1_type, V1_self_id, V1_target_id}};

unpack(srv, 3301, _B1) ->
    {ok, {}};

unpack(cli, 3351, _B1) ->
    {V1_user_id, _B2} = protocol:int32(_B1),
    {V1_skill, _B12} = protocol:array(_B2, fun(_B3) ->
        {V2_skill_id, _B4} = protocol:int32(_B3),
        {V2_skill_level, _B5} = protocol:int8(_B4),
        {V2_skill_type, _B6} = protocol:int8(_B5),
        {V2_skill_exp, _B7} = protocol:int32(_B6),
        {V2_all_kill, _B11} = protocol:array(_B7, fun(_B8) ->
            {V3_id, _B9} = protocol:uint16(_B8),
            {V3_level, _B10} = protocol:uint16(_B9),
            {{V3_id, V3_level}, _B10}
        end),
        {{V2_skill_id, V2_skill_level, V2_skill_type, V2_skill_exp, V2_all_kill}, _B11}
    end),
    {ok, {V1_user_id, V1_skill}};

unpack(srv, 3302, _B1) ->
    {V1_skill_id, _B2} = protocol:int32(_B1),
    {V1_role_id, _B3} = protocol:int32(_B2),
    {ok, {V1_skill_id, V1_role_id}};

unpack(cli, 3352, _B1) ->
    {V1_skill_id, _B2} = protocol:int32(_B1),
    {V1_skill_level, _B3} = protocol:int32(_B2),
    {V1_skill_curr_Exp, _B4} = protocol:int8(_B3),
    {V1_skill_type, _B5} = protocol:int8(_B4),
    {V1_skill_attr_id, _B6} = protocol:int8(_B5),
    {V1_skill_attr_level, _B7} = protocol:int8(_B6),
    {ok, {V1_skill_id, V1_skill_level, V1_skill_curr_Exp, V1_skill_type, V1_skill_attr_id, V1_skill_attr_level}};

unpack(cli, 3353, _B1) ->
    {V1_skill_id, _B2} = protocol:int32(_B1),
    {V1_skill_level, _B3} = protocol:int32(_B2),
    {ok, {V1_skill_id, V1_skill_level}};

unpack(srv, 3401, _B1) ->
    {ok, {}};

unpack(cli, 3451, _B1) ->
    {V1_id, _B2} = protocol:uint8(_B1),
    {V1_level, _B3} = protocol:uint8(_B2),
    {V1_exp, _B4} = protocol:uint32(_B3),
    {V1_status, _B5} = protocol:uint8(_B4),
    {V1_mount_list, _B8} = protocol:array8(_B5, fun(_B6) ->
        {V2_mount_id, _B7} = protocol:uint8(_B6),
        {{V2_mount_id}, _B7}
    end),
    {ok, {V1_id, V1_level, V1_exp, V1_status, V1_mount_list}};

unpack(srv, 3402, _B1) ->
    {V1_peiyong_type, _B2} = protocol:uint8(_B1),
    {ok, {V1_peiyong_type}};

unpack(cli, 3452, _B1) ->
    {V1_id, _B2} = protocol:uint8(_B1),
    {V1_level, _B3} = protocol:uint8(_B2),
    {V1_exp, _B4} = protocol:uint32(_B3),
    {V1_exp_add, _B5} = protocol:uint32(_B4),
    {V1_baoji_type, _B6} = protocol:uint8(_B5),
    {ok, {V1_id, V1_level, V1_exp, V1_exp_add, V1_baoji_type}};

unpack(srv, 3403, _B1) ->
    {V1_dest_mount_id, _B2} = protocol:uint8(_B1),
    {ok, {V1_dest_mount_id}};

unpack(cli, 3453, _B1) ->
    {V1_id, _B2} = protocol:uint8(_B1),
    {V1_level, _B3} = protocol:uint8(_B2),
    {V1_exp, _B4} = protocol:uint32(_B3),
    {V1_status, _B5} = protocol:uint8(_B4),
    {ok, {V1_id, V1_level, V1_exp, V1_status}};

unpack(srv, 3404, _B1) ->
    {ok, {}};

unpack(cli, 3454, _B1) ->
    {V1_status, _B2} = protocol:uint8(_B1),
    {ok, {V1_status}};

unpack(srv, 3405, _B1) ->
    {V1_mount_id, _B2} = protocol:uint8(_B1),
    {ok, {V1_mount_id}};

unpack(cli, 3455, _B1) ->
    {V1_mount_id, _B2} = protocol:uint8(_B1),
    {ok, {V1_mount_id}};

unpack(srv, 3406, _B1) ->
    {V1_peiyong_type, _B2} = protocol:uint8(_B1),
    {ok, {V1_peiyong_type}};

unpack(cli, 3456, _B1) ->
    {V1_id, _B2} = protocol:uint8(_B1),
    {V1_level, _B3} = protocol:uint8(_B2),
    {V1_exp, _B4} = protocol:uint32(_B3),
    {V1_exp_add, _B5} = protocol:uint32(_B4),
    {V1_coin, _B6} = protocol:uint32(_B5),
    {V1_gold, _B7} = protocol:uint32(_B6),
    {V1_jiuli, _B8} = protocol:uint32(_B7),
    {ok, {V1_id, V1_level, V1_exp, V1_exp_add, V1_coin, V1_gold, V1_jiuli}};

unpack(srv, 3501, _B1) ->
    {V1_id, _B2} = protocol:int32(_B1),
    {V1_upgrade_type, _B3} = protocol:int16(_B2),
    {V1_is_open_protect, _B4} = protocol:int16(_B3),
    {ok, {V1_id, V1_upgrade_type, V1_is_open_protect}};

unpack(cli, 3551, _B1) ->
    {V1_id, _B2} = protocol:uint16(_B1),
    {V1_upgrade_type, _B3} = protocol:uint16(_B2),
    {V1_level, _B4} = protocol:int32(_B3),
    {V1_result, _B5} = protocol:uint8(_B4),
    {ok, {V1_id, V1_upgrade_type, V1_level, V1_result}};

unpack(srv, 3502, _B1) ->
    {V1_xiulian_jingmai_list, _B5} = protocol:array8(_B1, fun(_B2) ->
        {V2_jingmai_id, _B3} = protocol:int16(_B2),
        {V2_jingmai_level, _B4} = protocol:int16(_B3),
        {{V2_jingmai_id, V2_jingmai_level}, _B4}
    end),
    {ok, {V1_xiulian_jingmai_list}};

unpack(cli, 3552, _B1) ->
    {V1_xiulian_jingmai_list, _B5} = protocol:array8(_B1, fun(_B2) ->
        {V2_jingmai_level, _B3} = protocol:int16(_B2),
        {V2_jingjie_level, _B4} = protocol:int16(_B3),
        {{V2_jingmai_level, V2_jingjie_level}, _B4}
    end),
    {ok, {V1_xiulian_jingmai_list}};

unpack(srv, 3601, _B1) ->
    {V1_ls_type, _B2} = protocol:uint32(_B1),
    {ok, {V1_ls_type}};

unpack(cli, 3651, _B1) ->
    {V1_bs_id, _B2} = protocol:uint32(_B1),
    {V1_normal_count, _B3} = protocol:uint16(_B2),
    {V1_advance_count, _B4} = protocol:uint16(_B3),
    {ok, {V1_bs_id, V1_normal_count, V1_advance_count}};

unpack(srv, 3602, _B1) ->
    {ok, {}};

unpack(cli, 3652, _B1) ->
    {V1_normal_count, _B2} = protocol:uint16(_B1),
    {V1_advance_count, _B3} = protocol:uint16(_B2),
    {V1_bs_list, _B7} = protocol:array(_B3, fun(_B4) ->
        {V2_bs_id, _B5} = protocol:uint16(_B4),
        {V2_bs_count, _B6} = protocol:uint16(_B5),
        {{V2_bs_id, V2_bs_count}, _B6}
    end),
    {ok, {V1_normal_count, V1_advance_count, V1_bs_list}};

unpack(srv, 3603, _B1) ->
    {V1_eq_index, _B2} = protocol:uint16(_B1),
    {V1_bs_id, _B3} = protocol:uint16(_B2),
    {ok, {V1_eq_index, V1_bs_id}};

unpack(cli, 3653, _B1) ->
    {V1_eq_index, _B2} = protocol:uint32(_B1),
    {V1_old_bs_id, _B3} = protocol:uint16(_B2),
    {V1_new_bs_id, _B4} = protocol:uint16(_B3),
    {ok, {V1_eq_index, V1_old_bs_id, V1_new_bs_id}};

unpack(srv, 3604, _B1) ->
    {V1_eq_index, _B2} = protocol:uint16(_B1),
    {V1_bs_id, _B3} = protocol:uint16(_B2),
    {ok, {V1_eq_index, V1_bs_id}};

unpack(cli, 3654, _B1) ->
    {V1_eq_index, _B2} = protocol:uint16(_B1),
    {V1_bs_id, _B3} = protocol:uint16(_B2),
    {ok, {V1_eq_index, V1_bs_id}};

unpack(srv, 3605, _B1) ->
    {V1_eq_index, _B2} = protocol:uint16(_B1),
    {V1_bs_id, _B3} = protocol:uint16(_B2),
    {ok, {V1_eq_index, V1_bs_id}};

unpack(cli, 3655, _B1) ->
    {V1_eq_index, _B2} = protocol:uint16(_B1),
    {V1_bs_id, _B3} = protocol:uint16(_B2),
    {ok, {V1_eq_index, V1_bs_id}};

unpack(cli, 3656, _B1) ->
    {V1_item_id, _B2} = protocol:uint16(_B1),
    {V1_item_num, _B3} = protocol:int16(_B2),
    {ok, {V1_item_id, V1_item_num}};

unpack(srv, 3701, _B1) ->
    {ok, {}};

unpack(cli, 3751, _B1) ->
    {V1_niangjiu_count, _B2} = protocol:uint8(_B1),
    {ok, {V1_niangjiu_count}};

unpack(srv, 3702, _B1) ->
    {V1_nianjiu_type, _B2} = protocol:uint8(_B1),
    {ok, {V1_nianjiu_type}};

unpack(cli, 3752, _B1) ->
    {V1_niangjiu_type, _B2} = protocol:uint8(_B1),
    {V1_kougan_star, _B3} = protocol:uint8(_B2),
    {V1_chundu_star, _B4} = protocol:uint8(_B3),
    {V1_jiuxiang_star, _B5} = protocol:uint8(_B4),
    {V1_niangjiu_level, _B6} = protocol:uint8(_B5),
    {V1_niangjiu_reward, _B7} = protocol:uint32(_B6),
    {V1_niangjiu_count, _B8} = protocol:uint8(_B7),
    {ok, {V1_niangjiu_type, V1_kougan_star, V1_chundu_star, V1_jiuxiang_star, V1_niangjiu_level, V1_niangjiu_reward, V1_niangjiu_count}};

unpack(cli, 3753, _B1) ->
    {ok, {}};

unpack(srv, 3801, _B1) ->
    {ok, {}};

unpack(cli, 3851, _B1) ->
    {V1_curr_day, _B2} = protocol:uint8(_B1),
    {V1_remain_count, _B3} = protocol:uint8(_B2),
    {V1_zxreward_count, _B4} = protocol:uint8(_B3),
    {V1_zxreward_time_count, _B5} = protocol:uint32(_B4),
    {V1_max_day, _B6} = protocol:uint8(_B5),
    {V1_sign_list, _B9} = protocol:array8(_B6, fun(_B7) ->
        {V2_sign_day, _B8} = protocol:uint8(_B7),
        {{V2_sign_day}, _B8}
    end),
    {ok, {V1_curr_day, V1_remain_count, V1_zxreward_count, V1_zxreward_time_count, V1_max_day, V1_sign_list}};

unpack(srv, 3802, _B1) ->
    {ok, {}};

unpack(cli, 3852, _B1) ->
    {V1_day, _B2} = protocol:uint8(_B1),
    {V1_remain_count, _B3} = protocol:uint8(_B2),
    {ok, {V1_day, V1_remain_count}};

unpack(srv, 3803, _B1) ->
    {ok, {}};

unpack(cli, 3853, _B1) ->
    {V1_day, _B2} = protocol:uint8(_B1),
    {V1_remain_count, _B3} = protocol:uint8(_B2),
    {ok, {V1_day, V1_remain_count}};

unpack(srv, 3804, _B1) ->
    {ok, {}};

unpack(cli, 3854, _B1) ->
    {V1_zxreward_count, _B2} = protocol:uint8(_B1),
    {V1_zxreward_time_count, _B3} = protocol:uint16(_B2),
    {ok, {V1_zxreward_count, V1_zxreward_time_count}};

unpack(srv, 3805, _B1) ->
    {ok, {}};

unpack(cli, 3855, _B1) ->
    {V1_is_sign, _B2} = protocol:uint8(_B1),
    {V1_remain_time, _B3} = protocol:int32(_B2),
    {ok, {V1_is_sign, V1_remain_time}};

unpack(srv, 3901, _B1) ->
    {V1_story_id, _B2} = protocol:int32(_B1),
    {ok, {V1_story_id}};

unpack(cli, 3951, _B1) ->
    {V1_is_succeed, _B2} = protocol:int32(_B1),
    {ok, {V1_is_succeed}};

unpack(srv, 3902, _B1) ->
    {ok, {}};

unpack(cli, 3952, _B1) ->
    {V1_plot_list, _B4} = protocol:array8(_B1, fun(_B2) ->
        {V2_plot_id, _B3} = protocol:uint16(_B2),
        {{V2_plot_id}, _B3}
    end),
    {ok, {V1_plot_list}};

unpack(srv, 3903, _B1) ->
    {V1_index, _B2} = protocol:uint16(_B1),
    {ok, {V1_index}};

unpack(srv, 3904, _B1) ->
    {ok, {}};

unpack(cli, 3954, _B1) ->
    {V1_recommend_list, _B4} = protocol:array8(_B1, fun(_B2) ->
        {V2_id, _B3} = protocol:uint16(_B2),
        {{V2_id}, _B3}
    end),
    {ok, {V1_recommend_list}};

unpack(srv, 4001, _B1) ->
    {ok, {}};

unpack(cli, 4051, _B1) ->
    {V1_fb_id, _B2} = protocol:int32(_B1),
    {V1_fb_type, _B3} = protocol:uint8(_B2),
    {V1_remain_time, _B4} = protocol:uint32(_B3),
    {V1_sum_wheel, _B5} = protocol:uint8(_B4),
    {V1_remain_wheel, _B6} = protocol:uint8(_B5),
    {V1_saodang_level, _B7} = protocol:uint8(_B6),
    {V1_saodang_exp, _B8} = protocol:int32(_B7),
    {V1_state, _B9} = protocol:uint8(_B8),
    {V1_exp, _B10} = protocol:uint32(_B9),
    {V1_coin, _B11} = protocol:uint32(_B10),
    {V1_reward_jing_value, _B12} = protocol:uint8(_B11),
    {V1_consume_gold, _B13} = protocol:uint32(_B12),
    {V1_xinghun, _B14} = protocol:uint32(_B13),
    {V1_jiuli, _B15} = protocol:uint32(_B14),
    {V1_lingli, _B16} = protocol:uint32(_B15),
    {V1_item_list, _B20} = protocol:array8(_B16, fun(_B17) ->
        {V2_item_id, _B18} = protocol:int32(_B17),
        {V2_item_num, _B19} = protocol:int32(_B18),
        {{V2_item_id, V2_item_num}, _B19}
    end),
    {V1_consume_item_list, _B24} = protocol:array8(_B20, fun(_B21) ->
        {V2_item_id, _B22} = protocol:int32(_B21),
        {V2_item_num, _B23} = protocol:int32(_B22),
        {{V2_item_id, V2_item_num}, _B23}
    end),
    {ok, {V1_fb_id, V1_fb_type, V1_remain_time, V1_sum_wheel, V1_remain_wheel, V1_saodang_level, V1_saodang_exp, V1_state, V1_exp, V1_coin, V1_reward_jing_value, V1_consume_gold, V1_xinghun, V1_jiuli, V1_lingli, V1_item_list, V1_consume_item_list}};

unpack(srv, 4002, _B1) ->
    {ok, {}};

unpack(srv, 4003, _B1) ->
    {V1_fb_id, _B2} = protocol:int32(_B1),
    {V1_fb_type, _B3} = protocol:int32(_B2),
    {V1_sum_wheel, _B4} = protocol:uint16(_B3),
    {ok, {V1_fb_id, V1_fb_type, V1_sum_wheel}};

unpack(srv, 4004, _B1) ->
    {ok, {}};

unpack(srv, 4005, _B1) ->
    {ok, {}};

unpack(cli, 4055, _B1) ->
    {V1_saodang_level, _B2} = protocol:uint8(_B1),
    {V1_saodang_exp, _B3} = protocol:uint32(_B2),
    {ok, {V1_saodang_level, V1_saodang_exp}};

unpack(cli, 4056, _B1) ->
    {V1_fb_id, _B2} = protocol:uint32(_B1),
    {V1_use_wheel, _B3} = protocol:uint8(_B2),
    {ok, {V1_fb_id, V1_use_wheel}};

unpack(srv, 4101, _B1) ->
    {ok, {}};

unpack(cli, 4151, _B1) ->
    {V1_curr_layer, _B2} = protocol:uint8(_B1),
    {ok, {V1_curr_layer}};

unpack(srv, 4102, _B1) ->
    {ok, {}};

unpack(cli, 4152, _B1) ->
    {V1_fight_layer, _B2} = protocol:uint8(_B1),
    {V1_state, _B3} = protocol:uint8(_B2),
    {V1_coin, _B4} = protocol:uint32(_B3),
    {V1_exp, _B5} = protocol:uint32(_B4),
    {V1_lingli, _B6} = protocol:uint32(_B5),
    {V1_item_list, _B10} = protocol:array8(_B6, fun(_B7) ->
        {V2_item_id, _B8} = protocol:int32(_B7),
        {V2_item_num, _B9} = protocol:uint8(_B8),
        {{V2_item_id, V2_item_num}, _B9}
    end),
    {ok, {V1_fight_layer, V1_state, V1_coin, V1_exp, V1_lingli, V1_item_list}};

unpack(srv, 4103, _B1) ->
    {V1_layer_id, _B2} = protocol:uint8(_B1),
    {ok, {V1_layer_id}};

unpack(cli, 4153, _B1) ->
    {V1_layer_id, _B2} = protocol:uint8(_B1),
    {ok, {V1_layer_id}};

unpack(srv, 4104, _B1) ->
    {V1_layer_id, _B2} = protocol:uint8(_B1),
    {V1_index, _B3} = protocol:uint8(_B2),
    {ok, {V1_layer_id, V1_index}};

unpack(cli, 4154, _B1) ->
    {V1_winner_id, _B2} = protocol:uint8(_B1),
    {V1_role_info_list, _B24} = protocol:array8(_B2, fun(_B3) ->
        {V2_role_id, _B4} = protocol:int32(_B3),
        {V2_role_type, _B5} = protocol:int8(_B4),
        {V2_role_level, _B6} = protocol:int8(_B5),
        {V2_professional, _B7} = protocol:int8(_B6),
        {V2_sex, _B8} = protocol:int8(_B7),
        {V2_headpicture, _B9} = protocol:int8(_B8),
        {V2_position, _B10} = protocol:int8(_B9),
        {V2_actor_id, _B11} = protocol:int8(_B10),
        {V2_experience, _B12} = protocol:uint32(_B11),
        {V2_experience_next, _B13} = protocol:uint32(_B12),
        {V2_hp, _B14} = protocol:uint32(_B13),
        {V2_nuqi, _B15} = protocol:uint32(_B14),
        {V2_nuqi_max, _B16} = protocol:uint32(_B15),
        {V2_nuqi_skill_id, _B17} = protocol:uint32(_B16),
        {V2_bo_index, _B18} = protocol:uint8(_B17),
        {V2_fabao_id, _B19} = protocol:uint16(_B18),
        {V2_fabao_huanhua_lev, _B20} = protocol:uint8(_B19),
        {V2_fabao_level, _B21} = protocol:uint16(_B20),
        {V2_fabao_yinji, _B22} = protocol:uint16(_B21),
        {V2_role_name, _B23} = protocol:string(_B22),
        {{V2_role_id, V2_role_type, V2_role_level, V2_professional, V2_sex, V2_headpicture, V2_position, V2_actor_id, V2_experience, V2_experience_next, V2_hp, V2_nuqi, V2_nuqi_max, V2_nuqi_skill_id, V2_bo_index, V2_fabao_id, V2_fabao_huanhua_lev, V2_fabao_level, V2_fabao_yinji, V2_role_name}, _B23}
    end),
    {V1_competitor_info, _B37} = protocol:array8(_B24, fun(_B25) ->
        {V2_id, _B26} = protocol:int32(_B25),
        {V2_monster_level, _B27} = protocol:int8(_B26),
        {V2_position, _B28} = protocol:int8(_B27),
        {V2_actor_id, _B29} = protocol:int8(_B28),
        {V2_is_monster, _B30} = protocol:int8(_B29),
        {V2_hp, _B31} = protocol:uint32(_B30),
        {V2_nuqi, _B32} = protocol:uint32(_B31),
        {V2_nuqi_max, _B33} = protocol:uint32(_B32),
        {V2_bo_index, _B34} = protocol:int8(_B33),
        {V2_curr_hp, _B35} = protocol:uint32(_B34),
        {V2_monster_name, _B36} = protocol:string(_B35),
        {{V2_id, V2_monster_level, V2_position, V2_actor_id, V2_is_monster, V2_hp, V2_nuqi, V2_nuqi_max, V2_bo_index, V2_curr_hp, V2_monster_name}, _B36}
    end),
    {V1_fighting_result, _B88} = protocol:array8(_B37, fun(_B38) ->
        {V2_curr_bo, _B39} = protocol:int8(_B38),
        {V2_clear_effect, _B46} = protocol:array8(_B39, fun(_B40) ->
            {V3_fighter_actor, _B41} = protocol:int8(_B40),
            {V3_dot_hp, _B42} = protocol:int32(_B41),
            {V3_effect_list, _B45} = protocol:array8(_B42, fun(_B43) ->
                {V4_effect_id, _B44} = protocol:uint16(_B43),
                {{V4_effect_id}, _B44}
            end),
            {{V3_fighter_actor, V3_dot_hp, V3_effect_list}, _B45}
        end),
        {V2_fighting_list, _B82} = protocol:array8(_B46, fun(_B47) ->
            {V3_attacker, _B63} = protocol:array8(_B47, fun(_B48) ->
                {V4_skill_id, _B49} = protocol:uint16(_B48),
                {V4_fighter_id, _B50} = protocol:uint8(_B49),
                {V4_skill_level, _B51} = protocol:uint8(_B50),
                {V4_fabao_skill_id, _B52} = protocol:uint16(_B51),
                {V4_attr_list, _B56} = protocol:array8(_B52, fun(_B53) ->
                    {V5_attr_id, _B54} = protocol:uint8(_B53),
                    {V5_attr_value, _B55} = protocol:int32(_B54),
                    {{V5_attr_id, V5_attr_value}, _B55}
                end),
                {V4_buff_list, _B59} = protocol:array8(_B56, fun(_B57) ->
                    {V5_buff_id, _B58} = protocol:uint16(_B57),
                    {{V5_buff_id}, _B58}
                end),
                {V4_add_buff_list, _B62} = protocol:array8(_B59, fun(_B60) ->
                    {V5_buff_id, _B61} = protocol:uint16(_B60),
                    {{V5_buff_id}, _B61}
                end),
                {{V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list}, _B62}
            end),
            {V3_defender, _B81} = protocol:array8(_B63, fun(_B64) ->
                {V4_buff_id, _B65} = protocol:uint16(_B64),
                {V4_effect_type, _B66} = protocol:uint8(_B65),
                {V4_skill_id, _B67} = protocol:uint16(_B66),
                {V4_fighter_id, _B68} = protocol:uint8(_B67),
                {V4_skill_level, _B69} = protocol:uint8(_B68),
                {V4_fabao_skill_id, _B70} = protocol:uint16(_B69),
                {V4_attr_list, _B74} = protocol:array8(_B70, fun(_B71) ->
                    {V5_attr_id, _B72} = protocol:uint8(_B71),
                    {V5_attr_value, _B73} = protocol:int32(_B72),
                    {{V5_attr_id, V5_attr_value}, _B73}
                end),
                {V4_buff_list, _B77} = protocol:array8(_B74, fun(_B75) ->
                    {V5_buff_id, _B76} = protocol:uint16(_B75),
                    {{V5_buff_id}, _B76}
                end),
                {V4_add_buff_list, _B80} = protocol:array8(_B77, fun(_B78) ->
                    {V5_buff_id, _B79} = protocol:uint16(_B78),
                    {{V5_buff_id}, _B79}
                end),
                {{V4_buff_id, V4_effect_type, V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list}, _B80}
            end),
            {{V3_attacker, V3_defender}, _B81}
        end),
        {V2_action_list, _B87} = protocol:array8(_B82, fun(_B83) ->
            {V3_action_type, _B84} = protocol:uint8(_B83),
            {V3_new_id, _B85} = protocol:uint32(_B84),
            {V3_old_id, _B86} = protocol:uint32(_B85),
            {{V3_action_type, V3_new_id, V3_old_id}, _B86}
        end),
        {{V2_curr_bo, V2_clear_effect, V2_fighting_list, V2_action_list}, _B87}
    end),
    {ok, {V1_winner_id, V1_role_info_list, V1_competitor_info, V1_fighting_result}};

unpack(srv, 4105, _B1) ->
    {V1_layer_id, _B2} = protocol:uint8(_B1),
    {ok, {V1_layer_id}};

unpack(cli, 4155, _B1) ->
    {V1_coin, _B2} = protocol:uint32(_B1),
    {V1_exp, _B3} = protocol:uint32(_B2),
    {V1_lingli, _B4} = protocol:uint32(_B3),
    {V1_item_list, _B8} = protocol:array8(_B4, fun(_B5) ->
        {V2_item_id, _B6} = protocol:int32(_B5),
        {V2_item_num, _B7} = protocol:uint8(_B6),
        {{V2_item_id, V2_item_num}, _B7}
    end),
    {ok, {V1_coin, V1_exp, V1_lingli, V1_item_list}};

unpack(srv, 4106, _B1) ->
    {V1_max_layer, _B2} = protocol:uint8(_B1),
    {ok, {V1_max_layer}};

unpack(cli, 4156, _B1) ->
    {V1_curr_layer, _B2} = protocol:uint8(_B1),
    {V1_coin, _B3} = protocol:uint32(_B2),
    {V1_exp, _B4} = protocol:uint32(_B3),
    {V1_lingli, _B5} = protocol:uint32(_B4),
    {V1_item_list, _B9} = protocol:array8(_B5, fun(_B6) ->
        {V2_item_id, _B7} = protocol:int32(_B6),
        {V2_item_num, _B8} = protocol:uint8(_B7),
        {{V2_item_id, V2_item_num}, _B8}
    end),
    {ok, {V1_curr_layer, V1_coin, V1_exp, V1_lingli, V1_item_list}};

unpack(srv, 4107, _B1) ->
    {ok, {}};

unpack(cli, 4157, _B1) ->
    {V1_is_success, _B2} = protocol:uint8(_B1),
    {ok, {V1_is_success}};

unpack(srv, 4108, _B1) ->
    {ok, {}};

unpack(srv, 4109, _B1) ->
    {ok, {}};

unpack(cli, 4159, _B1) ->
    {V1_curr_layer, _B2} = protocol:uint8(_B1),
    {ok, {V1_curr_layer}};

unpack(srv, 4201, _B1) ->
    {ok, {}};

unpack(cli, 4251, _B1) ->
    {V1_fight_layer, _B2} = protocol:uint8(_B1),
    {V1_curr_layer, _B3} = protocol:uint8(_B2),
    {V1_baoxiang_layer, _B4} = protocol:uint8(_B3),
    {V1_item_list, _B8} = protocol:array8(_B4, fun(_B5) ->
        {V2_item_id, _B6} = protocol:uint32(_B5),
        {V2_item_num, _B7} = protocol:uint8(_B6),
        {{V2_item_id, V2_item_num}, _B7}
    end),
    {ok, {V1_fight_layer, V1_curr_layer, V1_baoxiang_layer, V1_item_list}};

unpack(srv, 4202, _B1) ->
    {V1_layer_id, _B2} = protocol:uint8(_B1),
    {ok, {V1_layer_id}};

unpack(cli, 4252, _B1) ->
    {V1_coin, _B2} = protocol:uint32(_B1),
    {V1_exp, _B3} = protocol:uint32(_B2),
    {V1_winner_id, _B4} = protocol:uint8(_B3),
    {V1_role_info, _B26} = protocol:array8(_B4, fun(_B5) ->
        {V2_role_id, _B6} = protocol:int32(_B5),
        {V2_role_type, _B7} = protocol:int8(_B6),
        {V2_role_level, _B8} = protocol:int8(_B7),
        {V2_professional, _B9} = protocol:int8(_B8),
        {V2_sex, _B10} = protocol:int8(_B9),
        {V2_headpicture, _B11} = protocol:int8(_B10),
        {V2_position, _B12} = protocol:int8(_B11),
        {V2_actor_id, _B13} = protocol:int8(_B12),
        {V2_experience, _B14} = protocol:uint32(_B13),
        {V2_experience_next, _B15} = protocol:uint32(_B14),
        {V2_hp, _B16} = protocol:uint32(_B15),
        {V2_nuqi, _B17} = protocol:uint32(_B16),
        {V2_nuqi_max, _B18} = protocol:uint32(_B17),
        {V2_nuqi_skill_id, _B19} = protocol:uint32(_B18),
        {V2_bo_index, _B20} = protocol:uint8(_B19),
        {V2_fabao_id, _B21} = protocol:uint16(_B20),
        {V2_fabao_huanhua_lev, _B22} = protocol:uint8(_B21),
        {V2_fabao_level, _B23} = protocol:uint16(_B22),
        {V2_fabao_yinji, _B24} = protocol:uint16(_B23),
        {V2_role_name, _B25} = protocol:string(_B24),
        {{V2_role_id, V2_role_type, V2_role_level, V2_professional, V2_sex, V2_headpicture, V2_position, V2_actor_id, V2_experience, V2_experience_next, V2_hp, V2_nuqi, V2_nuqi_max, V2_nuqi_skill_id, V2_bo_index, V2_fabao_id, V2_fabao_huanhua_lev, V2_fabao_level, V2_fabao_yinji, V2_role_name}, _B25}
    end),
    {V1_competitor_info, _B39} = protocol:array8(_B26, fun(_B27) ->
        {V2_id, _B28} = protocol:int32(_B27),
        {V2_monster_level, _B29} = protocol:int8(_B28),
        {V2_position, _B30} = protocol:int8(_B29),
        {V2_actor_id, _B31} = protocol:int8(_B30),
        {V2_is_monster, _B32} = protocol:int8(_B31),
        {V2_hp, _B33} = protocol:uint32(_B32),
        {V2_nuqi, _B34} = protocol:uint32(_B33),
        {V2_nuqi_max, _B35} = protocol:uint32(_B34),
        {V2_bo_index, _B36} = protocol:int8(_B35),
        {V2_curr_hp, _B37} = protocol:uint32(_B36),
        {V2_monster_name, _B38} = protocol:string(_B37),
        {{V2_id, V2_monster_level, V2_position, V2_actor_id, V2_is_monster, V2_hp, V2_nuqi, V2_nuqi_max, V2_bo_index, V2_curr_hp, V2_monster_name}, _B38}
    end),
    {V1_fighting_result, _B90} = protocol:array8(_B39, fun(_B40) ->
        {V2_curr_bo, _B41} = protocol:int8(_B40),
        {V2_clear_effect, _B48} = protocol:array8(_B41, fun(_B42) ->
            {V3_fighter_actor, _B43} = protocol:int8(_B42),
            {V3_dot_hp, _B44} = protocol:int32(_B43),
            {V3_effect_list, _B47} = protocol:array8(_B44, fun(_B45) ->
                {V4_effect_id, _B46} = protocol:uint16(_B45),
                {{V4_effect_id}, _B46}
            end),
            {{V3_fighter_actor, V3_dot_hp, V3_effect_list}, _B47}
        end),
        {V2_fighting_list, _B84} = protocol:array8(_B48, fun(_B49) ->
            {V3_attacker, _B65} = protocol:array8(_B49, fun(_B50) ->
                {V4_skill_id, _B51} = protocol:uint16(_B50),
                {V4_fighter_id, _B52} = protocol:uint8(_B51),
                {V4_skill_level, _B53} = protocol:uint8(_B52),
                {V4_fabao_skill_id, _B54} = protocol:uint16(_B53),
                {V4_attr_list, _B58} = protocol:array8(_B54, fun(_B55) ->
                    {V5_attr_id, _B56} = protocol:uint8(_B55),
                    {V5_attr_value, _B57} = protocol:int32(_B56),
                    {{V5_attr_id, V5_attr_value}, _B57}
                end),
                {V4_buff_list, _B61} = protocol:array8(_B58, fun(_B59) ->
                    {V5_buff_id, _B60} = protocol:uint16(_B59),
                    {{V5_buff_id}, _B60}
                end),
                {V4_add_buff_list, _B64} = protocol:array8(_B61, fun(_B62) ->
                    {V5_buff_id, _B63} = protocol:uint16(_B62),
                    {{V5_buff_id}, _B63}
                end),
                {{V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list}, _B64}
            end),
            {V3_defender, _B83} = protocol:array8(_B65, fun(_B66) ->
                {V4_buff_id, _B67} = protocol:uint16(_B66),
                {V4_effect_type, _B68} = protocol:uint8(_B67),
                {V4_skill_id, _B69} = protocol:uint16(_B68),
                {V4_fighter_id, _B70} = protocol:uint8(_B69),
                {V4_skill_level, _B71} = protocol:uint8(_B70),
                {V4_fabao_skill_id, _B72} = protocol:uint16(_B71),
                {V4_attr_list, _B76} = protocol:array8(_B72, fun(_B73) ->
                    {V5_attr_id, _B74} = protocol:uint8(_B73),
                    {V5_attr_value, _B75} = protocol:int32(_B74),
                    {{V5_attr_id, V5_attr_value}, _B75}
                end),
                {V4_buff_list, _B79} = protocol:array8(_B76, fun(_B77) ->
                    {V5_buff_id, _B78} = protocol:uint16(_B77),
                    {{V5_buff_id}, _B78}
                end),
                {V4_add_buff_list, _B82} = protocol:array8(_B79, fun(_B80) ->
                    {V5_buff_id, _B81} = protocol:uint16(_B80),
                    {{V5_buff_id}, _B81}
                end),
                {{V4_buff_id, V4_effect_type, V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list}, _B82}
            end),
            {{V3_attacker, V3_defender}, _B83}
        end),
        {V2_action_list, _B89} = protocol:array8(_B84, fun(_B85) ->
            {V3_action_type, _B86} = protocol:uint8(_B85),
            {V3_new_id, _B87} = protocol:uint32(_B86),
            {V3_old_id, _B88} = protocol:uint32(_B87),
            {{V3_action_type, V3_new_id, V3_old_id}, _B88}
        end),
        {{V2_curr_bo, V2_clear_effect, V2_fighting_list, V2_action_list}, _B89}
    end),
    {V1_item_list, _B94} = protocol:array8(_B90, fun(_B91) ->
        {V2_item_id, _B92} = protocol:int32(_B91),
        {V2_item_num, _B93} = protocol:uint8(_B92),
        {{V2_item_id, V2_item_num}, _B93}
    end),
    {ok, {V1_coin, V1_exp, V1_winner_id, V1_role_info, V1_competitor_info, V1_fighting_result, V1_item_list}};

unpack(srv, 4203, _B1) ->
    {ok, {}};

unpack(cli, 4253, _B1) ->
    {V1_item_list, _B5} = protocol:array8(_B1, fun(_B2) ->
        {V2_item_id, _B3} = protocol:uint32(_B2),
        {V2_item_num, _B4} = protocol:uint8(_B3),
        {{V2_item_id, V2_item_num}, _B4}
    end),
    {ok, {V1_item_list}};

unpack(srv, 4204, _B1) ->
    {ok, {}};

unpack(cli, 4254, _B1) ->
    {V1_coin, _B2} = protocol:uint32(_B1),
    {V1_exp, _B3} = protocol:uint32(_B2),
    {V1_item_list, _B7} = protocol:array8(_B3, fun(_B4) ->
        {V2_item_id, _B5} = protocol:int32(_B4),
        {V2_item_num, _B6} = protocol:int32(_B5),
        {{V2_item_id, V2_item_num}, _B6}
    end),
    {ok, {V1_coin, V1_exp, V1_item_list}};

unpack(srv, 4205, _B1) ->
    {ok, {}};

unpack(cli, 4255, _B1) ->
    {V1_is_success, _B2} = protocol:uint8(_B1),
    {ok, {V1_is_success}};

unpack(srv, 4206, _B1) ->
    {ok, {}};

unpack(cli, 4256, _B1) ->
    {V1_pic_list, _B4} = protocol:array8(_B1, fun(_B2) ->
        {V2_pic_id, _B3} = protocol:uint32(_B2),
        {{V2_pic_id}, _B3}
    end),
    {ok, {V1_pic_list}};

unpack(srv, 4207, _B1) ->
    {ok, {}};

unpack(cli, 4257, _B1) ->
    {V1_curr_layer, _B2} = protocol:uint8(_B1),
    {ok, {V1_curr_layer}};

unpack(srv, 4301, _B1) ->
    {ok, {}};

unpack(cli, 4351, _B1) ->
    {V1_challenge_remain, _B2} = protocol:uint8(_B1),
    {V1_pass, _B3} = protocol:uint8(_B2),
    {V1_sh_list, _B7} = protocol:array8(_B3, fun(_B4) ->
        {V2_id, _B5} = protocol:uint8(_B4),
        {V2_state, _B6} = protocol:uint8(_B5),
        {{V2_id, V2_state}, _B6}
    end),
    {V1_hj_list, _B11} = protocol:array8(_B7, fun(_B8) ->
        {V2_id, _B9} = protocol:uint8(_B8),
        {V2_state, _B10} = protocol:uint8(_B9),
        {{V2_id, V2_state}, _B10}
    end),
    {ok, {V1_challenge_remain, V1_pass, V1_sh_list, V1_hj_list}};

unpack(srv, 4302, _B1) ->
    {V1_id, _B2} = protocol:uint32(_B1),
    {ok, {V1_id}};

unpack(cli, 4352, _B1) ->
    {V1_coin, _B2} = protocol:uint32(_B1),
    {V1_winner_id, _B3} = protocol:uint8(_B2),
    {V1_id, _B4} = protocol:uint8(_B3),
    {V1_role_info, _B26} = protocol:array8(_B4, fun(_B5) ->
        {V2_role_id, _B6} = protocol:int32(_B5),
        {V2_role_type, _B7} = protocol:int8(_B6),
        {V2_role_level, _B8} = protocol:int8(_B7),
        {V2_professional, _B9} = protocol:int8(_B8),
        {V2_sex, _B10} = protocol:int8(_B9),
        {V2_headpicture, _B11} = protocol:int8(_B10),
        {V2_position, _B12} = protocol:int8(_B11),
        {V2_actor_id, _B13} = protocol:int8(_B12),
        {V2_experience, _B14} = protocol:uint32(_B13),
        {V2_experience_next, _B15} = protocol:uint32(_B14),
        {V2_hp, _B16} = protocol:uint32(_B15),
        {V2_nuqi, _B17} = protocol:uint32(_B16),
        {V2_nuqi_max, _B18} = protocol:uint32(_B17),
        {V2_nuqi_skill_id, _B19} = protocol:uint32(_B18),
        {V2_bo_index, _B20} = protocol:uint8(_B19),
        {V2_fabao_id, _B21} = protocol:uint16(_B20),
        {V2_fabao_huanhua_lev, _B22} = protocol:uint8(_B21),
        {V2_fabao_level, _B23} = protocol:uint16(_B22),
        {V2_fabao_yinji, _B24} = protocol:uint16(_B23),
        {V2_role_name, _B25} = protocol:string(_B24),
        {{V2_role_id, V2_role_type, V2_role_level, V2_professional, V2_sex, V2_headpicture, V2_position, V2_actor_id, V2_experience, V2_experience_next, V2_hp, V2_nuqi, V2_nuqi_max, V2_nuqi_skill_id, V2_bo_index, V2_fabao_id, V2_fabao_huanhua_lev, V2_fabao_level, V2_fabao_yinji, V2_role_name}, _B25}
    end),
    {V1_competitor_info, _B39} = protocol:array8(_B26, fun(_B27) ->
        {V2_id, _B28} = protocol:int32(_B27),
        {V2_monster_level, _B29} = protocol:int8(_B28),
        {V2_position, _B30} = protocol:int8(_B29),
        {V2_actor_id, _B31} = protocol:int8(_B30),
        {V2_is_monster, _B32} = protocol:int8(_B31),
        {V2_hp, _B33} = protocol:uint32(_B32),
        {V2_nuqi, _B34} = protocol:uint32(_B33),
        {V2_nuqi_max, _B35} = protocol:uint32(_B34),
        {V2_bo_index, _B36} = protocol:int8(_B35),
        {V2_curr_hp, _B37} = protocol:uint32(_B36),
        {V2_monster_name, _B38} = protocol:string(_B37),
        {{V2_id, V2_monster_level, V2_position, V2_actor_id, V2_is_monster, V2_hp, V2_nuqi, V2_nuqi_max, V2_bo_index, V2_curr_hp, V2_monster_name}, _B38}
    end),
    {V1_fighting_result, _B90} = protocol:array8(_B39, fun(_B40) ->
        {V2_curr_bo, _B41} = protocol:int8(_B40),
        {V2_clear_effect, _B48} = protocol:array8(_B41, fun(_B42) ->
            {V3_fighter_actor, _B43} = protocol:int8(_B42),
            {V3_dot_hp, _B44} = protocol:int32(_B43),
            {V3_effect_list, _B47} = protocol:array8(_B44, fun(_B45) ->
                {V4_effect_id, _B46} = protocol:uint16(_B45),
                {{V4_effect_id}, _B46}
            end),
            {{V3_fighter_actor, V3_dot_hp, V3_effect_list}, _B47}
        end),
        {V2_fighting_list, _B84} = protocol:array8(_B48, fun(_B49) ->
            {V3_attacker, _B65} = protocol:array8(_B49, fun(_B50) ->
                {V4_skill_id, _B51} = protocol:uint16(_B50),
                {V4_fighter_id, _B52} = protocol:uint8(_B51),
                {V4_skill_level, _B53} = protocol:uint8(_B52),
                {V4_fabao_skill_id, _B54} = protocol:uint16(_B53),
                {V4_attr_list, _B58} = protocol:array8(_B54, fun(_B55) ->
                    {V5_attr_id, _B56} = protocol:uint8(_B55),
                    {V5_attr_value, _B57} = protocol:int32(_B56),
                    {{V5_attr_id, V5_attr_value}, _B57}
                end),
                {V4_buff_list, _B61} = protocol:array8(_B58, fun(_B59) ->
                    {V5_buff_id, _B60} = protocol:uint16(_B59),
                    {{V5_buff_id}, _B60}
                end),
                {V4_add_buff_list, _B64} = protocol:array8(_B61, fun(_B62) ->
                    {V5_buff_id, _B63} = protocol:uint16(_B62),
                    {{V5_buff_id}, _B63}
                end),
                {{V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list}, _B64}
            end),
            {V3_defender, _B83} = protocol:array8(_B65, fun(_B66) ->
                {V4_buff_id, _B67} = protocol:uint16(_B66),
                {V4_effect_type, _B68} = protocol:uint8(_B67),
                {V4_skill_id, _B69} = protocol:uint16(_B68),
                {V4_fighter_id, _B70} = protocol:uint8(_B69),
                {V4_skill_level, _B71} = protocol:uint8(_B70),
                {V4_fabao_skill_id, _B72} = protocol:uint16(_B71),
                {V4_attr_list, _B76} = protocol:array8(_B72, fun(_B73) ->
                    {V5_attr_id, _B74} = protocol:uint8(_B73),
                    {V5_attr_value, _B75} = protocol:int32(_B74),
                    {{V5_attr_id, V5_attr_value}, _B75}
                end),
                {V4_buff_list, _B79} = protocol:array8(_B76, fun(_B77) ->
                    {V5_buff_id, _B78} = protocol:uint16(_B77),
                    {{V5_buff_id}, _B78}
                end),
                {V4_add_buff_list, _B82} = protocol:array8(_B79, fun(_B80) ->
                    {V5_buff_id, _B81} = protocol:uint16(_B80),
                    {{V5_buff_id}, _B81}
                end),
                {{V4_buff_id, V4_effect_type, V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list}, _B82}
            end),
            {{V3_attacker, V3_defender}, _B83}
        end),
        {V2_action_list, _B89} = protocol:array8(_B84, fun(_B85) ->
            {V3_action_type, _B86} = protocol:uint8(_B85),
            {V3_new_id, _B87} = protocol:uint32(_B86),
            {V3_old_id, _B88} = protocol:uint32(_B87),
            {{V3_action_type, V3_new_id, V3_old_id}, _B88}
        end),
        {{V2_curr_bo, V2_clear_effect, V2_fighting_list, V2_action_list}, _B89}
    end),
    {V1_item_list, _B94} = protocol:array8(_B90, fun(_B91) ->
        {V2_item_id, _B92} = protocol:int32(_B91),
        {V2_item_num, _B93} = protocol:int32(_B92),
        {{V2_item_id, V2_item_num}, _B93}
    end),
    {ok, {V1_coin, V1_winner_id, V1_id, V1_role_info, V1_competitor_info, V1_fighting_result, V1_item_list}};

unpack(srv, 4303, _B1) ->
    {V1_id, _B2} = protocol:int32(_B1),
    {ok, {V1_id}};

unpack(cli, 4353, _B1) ->
    {V1_coin, _B2} = protocol:uint32(_B1),
    {V1_winner_id, _B3} = protocol:uint8(_B2),
    {V1_id, _B4} = protocol:uint8(_B3),
    {V1_role_info, _B26} = protocol:array8(_B4, fun(_B5) ->
        {V2_role_id, _B6} = protocol:int32(_B5),
        {V2_role_type, _B7} = protocol:int8(_B6),
        {V2_role_level, _B8} = protocol:int8(_B7),
        {V2_professional, _B9} = protocol:int8(_B8),
        {V2_sex, _B10} = protocol:int8(_B9),
        {V2_headpicture, _B11} = protocol:int8(_B10),
        {V2_position, _B12} = protocol:int8(_B11),
        {V2_actor_id, _B13} = protocol:int8(_B12),
        {V2_experience, _B14} = protocol:uint32(_B13),
        {V2_experience_next, _B15} = protocol:uint32(_B14),
        {V2_hp, _B16} = protocol:uint32(_B15),
        {V2_nuqi, _B17} = protocol:uint32(_B16),
        {V2_nuqi_max, _B18} = protocol:uint32(_B17),
        {V2_nuqi_skill_id, _B19} = protocol:uint32(_B18),
        {V2_bo_index, _B20} = protocol:uint8(_B19),
        {V2_fabao_id, _B21} = protocol:uint16(_B20),
        {V2_fabao_huanhua_lev, _B22} = protocol:uint8(_B21),
        {V2_fabao_level, _B23} = protocol:uint16(_B22),
        {V2_fabao_yinji, _B24} = protocol:uint16(_B23),
        {V2_role_name, _B25} = protocol:string(_B24),
        {{V2_role_id, V2_role_type, V2_role_level, V2_professional, V2_sex, V2_headpicture, V2_position, V2_actor_id, V2_experience, V2_experience_next, V2_hp, V2_nuqi, V2_nuqi_max, V2_nuqi_skill_id, V2_bo_index, V2_fabao_id, V2_fabao_huanhua_lev, V2_fabao_level, V2_fabao_yinji, V2_role_name}, _B25}
    end),
    {V1_competitor_info, _B39} = protocol:array8(_B26, fun(_B27) ->
        {V2_id, _B28} = protocol:int32(_B27),
        {V2_monster_level, _B29} = protocol:int8(_B28),
        {V2_position, _B30} = protocol:int8(_B29),
        {V2_actor_id, _B31} = protocol:int8(_B30),
        {V2_is_monster, _B32} = protocol:int8(_B31),
        {V2_hp, _B33} = protocol:uint32(_B32),
        {V2_nuqi, _B34} = protocol:uint32(_B33),
        {V2_nuqi_max, _B35} = protocol:uint32(_B34),
        {V2_bo_index, _B36} = protocol:int8(_B35),
        {V2_curr_hp, _B37} = protocol:uint32(_B36),
        {V2_monster_name, _B38} = protocol:string(_B37),
        {{V2_id, V2_monster_level, V2_position, V2_actor_id, V2_is_monster, V2_hp, V2_nuqi, V2_nuqi_max, V2_bo_index, V2_curr_hp, V2_monster_name}, _B38}
    end),
    {V1_fighting_result, _B90} = protocol:array8(_B39, fun(_B40) ->
        {V2_curr_bo, _B41} = protocol:int8(_B40),
        {V2_clear_effect, _B48} = protocol:array8(_B41, fun(_B42) ->
            {V3_fighter_actor, _B43} = protocol:int8(_B42),
            {V3_dot_hp, _B44} = protocol:int32(_B43),
            {V3_effect_list, _B47} = protocol:array8(_B44, fun(_B45) ->
                {V4_effect_id, _B46} = protocol:uint16(_B45),
                {{V4_effect_id}, _B46}
            end),
            {{V3_fighter_actor, V3_dot_hp, V3_effect_list}, _B47}
        end),
        {V2_fighting_list, _B84} = protocol:array8(_B48, fun(_B49) ->
            {V3_attacker, _B65} = protocol:array8(_B49, fun(_B50) ->
                {V4_skill_id, _B51} = protocol:uint16(_B50),
                {V4_fighter_id, _B52} = protocol:uint8(_B51),
                {V4_skill_level, _B53} = protocol:uint8(_B52),
                {V4_fabao_skill_id, _B54} = protocol:uint16(_B53),
                {V4_attr_list, _B58} = protocol:array8(_B54, fun(_B55) ->
                    {V5_attr_id, _B56} = protocol:uint8(_B55),
                    {V5_attr_value, _B57} = protocol:int32(_B56),
                    {{V5_attr_id, V5_attr_value}, _B57}
                end),
                {V4_buff_list, _B61} = protocol:array8(_B58, fun(_B59) ->
                    {V5_buff_id, _B60} = protocol:uint16(_B59),
                    {{V5_buff_id}, _B60}
                end),
                {V4_add_buff_list, _B64} = protocol:array8(_B61, fun(_B62) ->
                    {V5_buff_id, _B63} = protocol:uint16(_B62),
                    {{V5_buff_id}, _B63}
                end),
                {{V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list}, _B64}
            end),
            {V3_defender, _B83} = protocol:array8(_B65, fun(_B66) ->
                {V4_buff_id, _B67} = protocol:uint16(_B66),
                {V4_effect_type, _B68} = protocol:uint8(_B67),
                {V4_skill_id, _B69} = protocol:uint16(_B68),
                {V4_fighter_id, _B70} = protocol:uint8(_B69),
                {V4_skill_level, _B71} = protocol:uint8(_B70),
                {V4_fabao_skill_id, _B72} = protocol:uint16(_B71),
                {V4_attr_list, _B76} = protocol:array8(_B72, fun(_B73) ->
                    {V5_attr_id, _B74} = protocol:uint8(_B73),
                    {V5_attr_value, _B75} = protocol:int32(_B74),
                    {{V5_attr_id, V5_attr_value}, _B75}
                end),
                {V4_buff_list, _B79} = protocol:array8(_B76, fun(_B77) ->
                    {V5_buff_id, _B78} = protocol:uint16(_B77),
                    {{V5_buff_id}, _B78}
                end),
                {V4_add_buff_list, _B82} = protocol:array8(_B79, fun(_B80) ->
                    {V5_buff_id, _B81} = protocol:uint16(_B80),
                    {{V5_buff_id}, _B81}
                end),
                {{V4_buff_id, V4_effect_type, V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list}, _B82}
            end),
            {{V3_attacker, V3_defender}, _B83}
        end),
        {V2_action_list, _B89} = protocol:array8(_B84, fun(_B85) ->
            {V3_action_type, _B86} = protocol:uint8(_B85),
            {V3_new_id, _B87} = protocol:uint32(_B86),
            {V3_old_id, _B88} = protocol:uint32(_B87),
            {{V3_action_type, V3_new_id, V3_old_id}, _B88}
        end),
        {{V2_curr_bo, V2_clear_effect, V2_fighting_list, V2_action_list}, _B89}
    end),
    {V1_item_list, _B94} = protocol:array8(_B90, fun(_B91) ->
        {V2_item_id, _B92} = protocol:int32(_B91),
        {V2_item_num, _B93} = protocol:int32(_B92),
        {{V2_item_id, V2_item_num}, _B93}
    end),
    {ok, {V1_coin, V1_winner_id, V1_id, V1_role_info, V1_competitor_info, V1_fighting_result, V1_item_list}};

unpack(srv, 4401, _B1) ->
    {ok, {}};

unpack(cli, 4451, _B1) ->
    {V1_is_all_finish, _B2} = protocol:uint16(_B1),
    {V1_target_state, _B6} = protocol:array8(_B2, fun(_B3) ->
        {V2_index, _B4} = protocol:uint16(_B3),
        {V2_state, _B5} = protocol:uint16(_B4),
        {{V2_index, V2_state}, _B5}
    end),
    {ok, {V1_is_all_finish, V1_target_state}};

unpack(srv, 4402, _B1) ->
    {V1_target_index, _B2} = protocol:int32(_B1),
    {ok, {V1_target_index}};

unpack(cli, 4452, _B1) ->
    {V1_target_type, _B2} = protocol:int8(_B1),
    {V1_section_index, _B3} = protocol:int16(_B2),
    {V1_unit_index, _B4} = protocol:int16(_B3),
    {ok, {V1_target_type, V1_section_index, V1_unit_index}};

unpack(cli, 4453, _B1) ->
    {V1_target_index, _B2} = protocol:int32(_B1),
    {ok, {V1_target_index}};

unpack(srv, 4501, _B1) ->
    {V1_treasure_id, _B2} = protocol:uint32(_B1),
    {V1_x, _B3} = protocol:uint16(_B2),
    {V1_y, _B4} = protocol:uint16(_B3),
    {V1_index, _B5} = protocol:uint16(_B4),
    {V1_treasure_index, _B6} = protocol:uint16(_B5),
    {ok, {V1_treasure_id, V1_x, V1_y, V1_index, V1_treasure_index}};

unpack(cli, 4551, _B1) ->
    {V1_treasure_type, _B2} = protocol:uint8(_B1),
    {V1_reward_type, _B3} = protocol:uint8(_B2),
    {V1_coin, _B4} = protocol:uint32(_B3),
    {V1_gold, _B5} = protocol:uint32(_B4),
    {V1_item_list, _B9} = protocol:array8(_B5, fun(_B6) ->
        {V2_item_id, _B7} = protocol:int32(_B6),
        {V2_item_num, _B8} = protocol:uint8(_B7),
        {{V2_item_id, V2_item_num}, _B8}
    end),
    {ok, {V1_treasure_type, V1_reward_type, V1_coin, V1_gold, V1_item_list}};

unpack(srv, 4502, _B1) ->
    {V1_treasure_id, _B2} = protocol:uint32(_B1),
    {V1_scene_id, _B3} = protocol:uint32(_B2),
    {V1_scene_x, _B4} = protocol:uint16(_B3),
    {V1_scene_y, _B5} = protocol:uint16(_B4),
    {ok, {V1_treasure_id, V1_scene_id, V1_scene_x, V1_scene_y}};

unpack(srv, 4701, _B1) ->
    {ok, {}};

unpack(cli, 4751, _B1) ->
    {V1_liveness_val, _B2} = protocol:int32(_B1),
    {V1_getreward_count, _B3} = protocol:int32(_B2),
    {V1_func_count, _B7} = protocol:array8(_B3, fun(_B4) ->
        {V2_func, _B5} = protocol:uint16(_B4),
        {V2_count, _B6} = protocol:uint16(_B5),
        {{V2_func, V2_count}, _B6}
    end),
    {ok, {V1_liveness_val, V1_getreward_count, V1_func_count}};

unpack(srv, 4702, _B1) ->
    {ok, {}};

unpack(cli, 4752, _B1) ->
    {V1_liveness_val, _B2} = protocol:uint16(_B1),
    {V1_reward_count, _B3} = protocol:uint16(_B2),
    {V1_result, _B4} = protocol:uint8(_B3),
    {ok, {V1_liveness_val, V1_reward_count, V1_result}};

unpack(cli, 4753, _B1) ->
    {V1_id, _B2} = protocol:uint16(_B1),
    {V1_count, _B3} = protocol:uint16(_B2),
    {V1_result, _B4} = protocol:uint8(_B3),
    {ok, {V1_id, V1_count, V1_result}};

unpack(srv, 4801, _B1) ->
    {ok, {}};

unpack(cli, 4851, _B1) ->
    {V1_expire_time, _B2} = protocol:uint32(_B1),
    {V1_can_get_gold, _B3} = protocol:uint32(_B2),
    {V1_remain_get_gold, _B4} = protocol:uint32(_B3),
    {ok, {V1_expire_time, V1_can_get_gold, V1_remain_get_gold}};

unpack(srv, 4802, _B1) ->
    {V1_type, _B2} = protocol:uint8(_B1),
    {ok, {V1_type}};

unpack(cli, 4852, _B1) ->
    {V1_expire_time, _B2} = protocol:uint32(_B1),
    {V1_can_get_gold, _B3} = protocol:uint32(_B2),
    {V1_remain_get_gold, _B4} = protocol:uint32(_B3),
    {ok, {V1_expire_time, V1_can_get_gold, V1_remain_get_gold}};

unpack(srv, 4803, _B1) ->
    {ok, {}};

unpack(cli, 4853, _B1) ->
    {V1_got_gold, _B2} = protocol:uint32(_B1),
    {ok, {V1_got_gold}};

unpack(srv, 4901, _B1) ->
    {ok, {}};

unpack(cli, 4951, _B1) ->
    {V1_gift_data, _B4} = protocol:array8(_B1, fun(_B2) ->
        {V2_gift_id, _B3} = protocol:uint8(_B2),
        {{V2_gift_id}, _B3}
    end),
    {ok, {V1_gift_data}};

unpack(srv, 4902, _B1) ->
    {V1_gift_id, _B2} = protocol:uint8(_B1),
    {ok, {V1_gift_id}};

unpack(cli, 4952, _B1) ->
    {V1_gift_id, _B2} = protocol:uint8(_B1),
    {ok, {V1_gift_id}};

unpack(srv, 5001, _B1) ->
    {V1_gift_id, _B2} = protocol:uint16(_B1),
    {ok, {V1_gift_id}};

unpack(cli, 5051, _B1) ->
    {V1_gift_id, _B2} = protocol:uint16(_B1),
    {ok, {V1_gift_id}};

unpack(srv, 5002, _B1) ->
    {ok, {}};

unpack(cli, 5052, _B1) ->
    {V1_is_get_reward, _B2} = protocol:uint16(_B1),
    {V1_charge_money, _B3} = protocol:uint32(_B2),
    {ok, {V1_is_get_reward, V1_charge_money}};

unpack(cli, 5151, _B1) ->
    {V1_num, _B2} = protocol:uint8(_B1),
    {V1_question_id, _B3} = protocol:uint16(_B2),
    {ok, {V1_num, V1_question_id}};

unpack(srv, 5102, _B1) ->
    {V1_question_id, _B2} = protocol:uint16(_B1),
    {V1_answer_id, _B3} = protocol:uint8(_B2),
    {ok, {V1_question_id, V1_answer_id}};

unpack(cli, 5532, _B1) ->
    {V1_attack_id, _B2} = protocol:uint32(_B1),
    {V1_target_id, _B3} = protocol:uint32(_B2),
    {V1_uid, _B4} = protocol:uint32(_B3),
    {ok, {V1_attack_id, V1_target_id, V1_uid}};

unpack(srv, 5513, _B1) ->
    {V1_act_type, _B2} = protocol:uint32(_B1),
    {ok, {V1_act_type}};

unpack(cli, 5563, _B1) ->
    {V1_act_type, _B2} = protocol:uint32(_B1),
    {V1_is_open, _B3} = protocol:uint32(_B2),
    {ok, {V1_act_type, V1_is_open}};

unpack(cli, 5564, _B1) ->
    {V1_wave, _B2} = protocol:uint16(_B1),
    {V1_time, _B3} = protocol:uint32(_B2),
    {V1_left_time, _B4} = protocol:uint32(_B3),
    {ok, {V1_wave, V1_time, V1_left_time}};

unpack(srv, 7001, _B1) ->
    {ok, {}};

unpack(cli, 7051, _B1) ->
    {V1_friend_list, _B8} = protocol:array8(_B1, fun(_B2) ->
        {V2_user_id, _B3} = protocol:uint32(_B2),
        {V2_user_lv, _B4} = protocol:uint8(_B3),
        {V2_sex, _B5} = protocol:uint8(_B4),
        {V2_is_online, _B6} = protocol:uint8(_B5),
        {V2_user_name, _B7} = protocol:string(_B6),
        {{V2_user_id, V2_user_lv, V2_sex, V2_is_online, V2_user_name}, _B7}
    end),
    {V1_black_list, _B15} = protocol:array8(_B8, fun(_B9) ->
        {V2_user_id, _B10} = protocol:uint32(_B9),
        {V2_user_lv, _B11} = protocol:uint8(_B10),
        {V2_sex, _B12} = protocol:uint8(_B11),
        {V2_is_online, _B13} = protocol:uint8(_B12),
        {V2_user_name, _B14} = protocol:string(_B13),
        {{V2_user_id, V2_user_lv, V2_sex, V2_is_online, V2_user_name}, _B14}
    end),
    {ok, {V1_friend_list, V1_black_list}};

unpack(srv, 7002, _B1) ->
    {V1_user_id, _B2} = protocol:uint32(_B1),
    {V1_op_type, _B3} = protocol:uint8(_B2),
    {V1_user_name, _B4} = protocol:string(_B3),
    {ok, {V1_user_id, V1_op_type, V1_user_name}};

unpack(cli, 7052, _B1) ->
    {V1_result, _B2} = protocol:int32(_B1),
    {V1_op_type, _B3} = protocol:uint8(_B2),
    {ok, {V1_result, V1_op_type}};

unpack(srv, 7101, _B1) ->
    {V1_channel_id, _B2} = protocol:uint16(_B1),
    {V1_data_type, _B3} = protocol:uint16(_B2),
    {V1_msg, _B4} = protocol:string(_B3),
    {ok, {V1_channel_id, V1_data_type, V1_msg}};

unpack(cli, 7151, _B1) ->
    {V1_role_id, _B2} = protocol:uint32(_B1),
    {V1_level, _B3} = protocol:int8(_B2),
    {V1_profession, _B4} = protocol:int8(_B3),
    {V1_channel_id, _B5} = protocol:uint16(_B4),
    {V1_data_type, _B6} = protocol:uint16(_B5),
    {V1_role_name, _B7} = protocol:string(_B6),
    {V1_msg, _B8} = protocol:string(_B7),
    {ok, {V1_role_id, V1_level, V1_profession, V1_channel_id, V1_data_type, V1_role_name, V1_msg}};

unpack(srv, 7102, _B1) ->
    {V1_role_id, _B2} = protocol:uint32(_B1),
    {V1_data_type, _B3} = protocol:uint16(_B2),
    {V1_msg, _B4} = protocol:string(_B3),
    {ok, {V1_role_id, V1_data_type, V1_msg}};

unpack(cli, 7152, _B1) ->
    {V1_role_id, _B2} = protocol:uint32(_B1),
    {V1_result, _B3} = protocol:int32(_B2),
    {ok, {V1_role_id, V1_result}};

unpack(cli, 7153, _B1) ->
    {V1_time, _B2} = protocol:uint32(_B1),
    {V1_role_id, _B3} = protocol:uint32(_B2),
    {V1_level, _B4} = protocol:uint8(_B3),
    {V1_profession, _B5} = protocol:uint8(_B4),
    {V1_data_type, _B6} = protocol:uint16(_B5),
    {V1_role_name, _B7} = protocol:string(_B6),
    {V1_msg, _B8} = protocol:string(_B7),
    {ok, {V1_time, V1_role_id, V1_level, V1_profession, V1_data_type, V1_role_name, V1_msg}};

unpack(srv, 7301, _B1) ->
    {ok, {}};

unpack(cli, 7351, _B1) ->
    {V1_curr_rank_index, _B2} = protocol:uint16(_B1),
    {V1_remain_get_time, _B3} = protocol:uint32(_B2),
    {V1_remain_cd_time, _B4} = protocol:uint32(_B3),
    {V1_continue_win_count, _B5} = protocol:uint16(_B4),
    {V1_has_buy_times, _B6} = protocol:uint16(_B5),
    {V1_box_color, _B7} = protocol:int8(_B6),
    {V1_remain_battle_times, _B8} = protocol:int8(_B7),
    {V1_competitor_info, _B16} = protocol:array8(_B8, fun(_B9) ->
        {V2_user_id, _B10} = protocol:int32(_B9),
        {V2_profession, _B11} = protocol:uint8(_B10),
        {V2_role_level, _B12} = protocol:uint8(_B11),
        {V2_rank_index, _B13} = protocol:uint16(_B12),
        {V2_role_fc, _B14} = protocol:uint32(_B13),
        {V2_user_name, _B15} = protocol:string(_B14),
        {{V2_user_id, V2_profession, V2_role_level, V2_rank_index, V2_role_fc, V2_user_name}, _B15}
    end),
    {ok, {V1_curr_rank_index, V1_remain_get_time, V1_remain_cd_time, V1_continue_win_count, V1_has_buy_times, V1_box_color, V1_remain_battle_times, V1_competitor_info}};

unpack(srv, 7302, _B1) ->
    {ok, {}};

unpack(cli, 7352, _B1) ->
    {V1_remain_cd_time, _B2} = protocol:int32(_B1),
    {ok, {V1_remain_cd_time}};

unpack(srv, 7303, _B1) ->
    {ok, {}};

unpack(cli, 7353, _B1) ->
    {V1_has_buy_times, _B2} = protocol:uint16(_B1),
    {V1_remain_battle_times, _B3} = protocol:uint16(_B2),
    {ok, {V1_has_buy_times, V1_remain_battle_times}};

unpack(cli, 7354, _B1) ->
    {ok, {}};

unpack(srv, 7305, _B1) ->
    {V1_user_id, _B2} = protocol:int32(_B1),
    {V1_target_rank_index, _B3} = protocol:int32(_B2),
    {ok, {V1_user_id, V1_target_rank_index}};

unpack(cli, 7355, _B1) ->
    {V1_exp_reward, _B2} = protocol:uint32(_B1),
    {V1_xinghun_reward, _B3} = protocol:uint16(_B2),
    {V1_jiuli_reward, _B4} = protocol:uint16(_B3),
    {V1_battle_result, _B5} = protocol:int8(_B4),
    {V1_role_info, _B27} = protocol:array8(_B5, fun(_B6) ->
        {V2_role_id, _B7} = protocol:int32(_B6),
        {V2_role_type, _B8} = protocol:int8(_B7),
        {V2_role_level, _B9} = protocol:int8(_B8),
        {V2_professional, _B10} = protocol:int8(_B9),
        {V2_sex, _B11} = protocol:int8(_B10),
        {V2_headpicture, _B12} = protocol:int8(_B11),
        {V2_position, _B13} = protocol:int8(_B12),
        {V2_actor_id, _B14} = protocol:int8(_B13),
        {V2_experience, _B15} = protocol:uint32(_B14),
        {V2_experience_next, _B16} = protocol:uint32(_B15),
        {V2_hp, _B17} = protocol:uint32(_B16),
        {V2_nuqi, _B18} = protocol:uint32(_B17),
        {V2_nuqi_max, _B19} = protocol:uint32(_B18),
        {V2_nuqi_skill_id, _B20} = protocol:uint32(_B19),
        {V2_bo_index, _B21} = protocol:uint8(_B20),
        {V2_fabao_id, _B22} = protocol:uint16(_B21),
        {V2_fabao_huanhua_lev, _B23} = protocol:uint8(_B22),
        {V2_fabao_level, _B24} = protocol:uint16(_B23),
        {V2_fabao_yinji, _B25} = protocol:uint16(_B24),
        {V2_role_name, _B26} = protocol:string(_B25),
        {{V2_role_id, V2_role_type, V2_role_level, V2_professional, V2_sex, V2_headpicture, V2_position, V2_actor_id, V2_experience, V2_experience_next, V2_hp, V2_nuqi, V2_nuqi_max, V2_nuqi_skill_id, V2_bo_index, V2_fabao_id, V2_fabao_huanhua_lev, V2_fabao_level, V2_fabao_yinji, V2_role_name}, _B26}
    end),
    {V1_competitor_info, _B49} = protocol:array8(_B27, fun(_B28) ->
        {V2_role_id, _B29} = protocol:int32(_B28),
        {V2_role_type, _B30} = protocol:int8(_B29),
        {V2_role_level, _B31} = protocol:int8(_B30),
        {V2_professional, _B32} = protocol:int8(_B31),
        {V2_sex, _B33} = protocol:int8(_B32),
        {V2_headpicture, _B34} = protocol:int8(_B33),
        {V2_position, _B35} = protocol:int8(_B34),
        {V2_actor_id, _B36} = protocol:int8(_B35),
        {V2_experience, _B37} = protocol:uint32(_B36),
        {V2_experience_next, _B38} = protocol:uint32(_B37),
        {V2_hp, _B39} = protocol:uint32(_B38),
        {V2_nuqi, _B40} = protocol:uint32(_B39),
        {V2_nuqi_max, _B41} = protocol:uint32(_B40),
        {V2_nuqi_skill_id, _B42} = protocol:uint32(_B41),
        {V2_bo_index, _B43} = protocol:uint8(_B42),
        {V2_fabao_id, _B44} = protocol:uint16(_B43),
        {V2_fabao_huanhua_lev, _B45} = protocol:uint8(_B44),
        {V2_fabao_level, _B46} = protocol:uint16(_B45),
        {V2_fabao_yinji, _B47} = protocol:uint16(_B46),
        {V2_role_name, _B48} = protocol:string(_B47),
        {{V2_role_id, V2_role_type, V2_role_level, V2_professional, V2_sex, V2_headpicture, V2_position, V2_actor_id, V2_experience, V2_experience_next, V2_hp, V2_nuqi, V2_nuqi_max, V2_nuqi_skill_id, V2_bo_index, V2_fabao_id, V2_fabao_huanhua_lev, V2_fabao_level, V2_fabao_yinji, V2_role_name}, _B48}
    end),
    {V1_fighting_result, _B100} = protocol:array8(_B49, fun(_B50) ->
        {V2_curr_bo, _B51} = protocol:int8(_B50),
        {V2_clear_effect, _B58} = protocol:array8(_B51, fun(_B52) ->
            {V3_fighter_actor, _B53} = protocol:int8(_B52),
            {V3_dot_hp, _B54} = protocol:int32(_B53),
            {V3_effect_list, _B57} = protocol:array8(_B54, fun(_B55) ->
                {V4_effect_id, _B56} = protocol:uint16(_B55),
                {{V4_effect_id}, _B56}
            end),
            {{V3_fighter_actor, V3_dot_hp, V3_effect_list}, _B57}
        end),
        {V2_fighting_list, _B94} = protocol:array8(_B58, fun(_B59) ->
            {V3_attacker, _B75} = protocol:array8(_B59, fun(_B60) ->
                {V4_skill_id, _B61} = protocol:uint16(_B60),
                {V4_fighter_id, _B62} = protocol:uint8(_B61),
                {V4_skill_level, _B63} = protocol:uint8(_B62),
                {V4_fabao_skill_id, _B64} = protocol:uint16(_B63),
                {V4_attr_list, _B68} = protocol:array8(_B64, fun(_B65) ->
                    {V5_attr_id, _B66} = protocol:uint8(_B65),
                    {V5_attr_value, _B67} = protocol:int32(_B66),
                    {{V5_attr_id, V5_attr_value}, _B67}
                end),
                {V4_buff_list, _B71} = protocol:array8(_B68, fun(_B69) ->
                    {V5_buff_id, _B70} = protocol:uint16(_B69),
                    {{V5_buff_id}, _B70}
                end),
                {V4_add_buff_list, _B74} = protocol:array8(_B71, fun(_B72) ->
                    {V5_buff_id, _B73} = protocol:uint16(_B72),
                    {{V5_buff_id}, _B73}
                end),
                {{V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list}, _B74}
            end),
            {V3_defender, _B93} = protocol:array8(_B75, fun(_B76) ->
                {V4_buff_id, _B77} = protocol:uint16(_B76),
                {V4_effect_type, _B78} = protocol:uint8(_B77),
                {V4_skill_id, _B79} = protocol:uint16(_B78),
                {V4_fighter_id, _B80} = protocol:uint8(_B79),
                {V4_skill_level, _B81} = protocol:uint8(_B80),
                {V4_fabao_skill_id, _B82} = protocol:uint16(_B81),
                {V4_attr_list, _B86} = protocol:array8(_B82, fun(_B83) ->
                    {V5_attr_id, _B84} = protocol:uint8(_B83),
                    {V5_attr_value, _B85} = protocol:int32(_B84),
                    {{V5_attr_id, V5_attr_value}, _B85}
                end),
                {V4_buff_list, _B89} = protocol:array8(_B86, fun(_B87) ->
                    {V5_buff_id, _B88} = protocol:uint16(_B87),
                    {{V5_buff_id}, _B88}
                end),
                {V4_add_buff_list, _B92} = protocol:array8(_B89, fun(_B90) ->
                    {V5_buff_id, _B91} = protocol:uint16(_B90),
                    {{V5_buff_id}, _B91}
                end),
                {{V4_buff_id, V4_effect_type, V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list}, _B92}
            end),
            {{V3_attacker, V3_defender}, _B93}
        end),
        {V2_action_list, _B99} = protocol:array8(_B94, fun(_B95) ->
            {V3_action_type, _B96} = protocol:uint8(_B95),
            {V3_new_id, _B97} = protocol:uint32(_B96),
            {V3_old_id, _B98} = protocol:uint32(_B97),
            {{V3_action_type, V3_new_id, V3_old_id}, _B98}
        end),
        {{V2_curr_bo, V2_clear_effect, V2_fighting_list, V2_action_list}, _B99}
    end),
    {ok, {V1_exp_reward, V1_xinghun_reward, V1_jiuli_reward, V1_battle_result, V1_role_info, V1_competitor_info, V1_fighting_result}};

unpack(srv, 7306, _B1) ->
    {ok, {}};

unpack(cli, 7356, _B1) ->
    {V1_xinghun, _B2} = protocol:uint16(_B1),
    {V1_jiuli, _B3} = protocol:uint16(_B2),
    {V1_remain_get_time, _B4} = protocol:uint32(_B3),
    {ok, {V1_xinghun, V1_jiuli, V1_remain_get_time}};

unpack(srv, 7307, _B1) ->
    {ok, {}};

unpack(cli, 7357, _B1) ->
    {V1_top_report, _B12} = protocol:array8(_B1, fun(_B2) ->
        {V2_attacker_id, _B3} = protocol:uint32(_B2),
        {V2_defender_id, _B4} = protocol:uint32(_B3),
        {V2_battle_time, _B5} = protocol:uint32(_B4),
        {V2_battle_result, _B6} = protocol:uint8(_B5),
        {V2_attacker_rank, _B7} = protocol:uint32(_B6),
        {V2_defender_rank, _B8} = protocol:uint32(_B7),
        {V2_record_id, _B9} = protocol:uint32(_B8),
        {V2_attacker_name, _B10} = protocol:string(_B9),
        {V2_defender_name, _B11} = protocol:string(_B10),
        {{V2_attacker_id, V2_defender_id, V2_battle_time, V2_battle_result, V2_attacker_rank, V2_defender_rank, V2_record_id, V2_attacker_name, V2_defender_name}, _B11}
    end),
    {V1_my_report, _B23} = protocol:array8(_B12, fun(_B13) ->
        {V2_attacker_id, _B14} = protocol:uint32(_B13),
        {V2_defender_id, _B15} = protocol:uint32(_B14),
        {V2_battle_time, _B16} = protocol:uint32(_B15),
        {V2_battle_result, _B17} = protocol:uint8(_B16),
        {V2_attacker_rank, _B18} = protocol:uint32(_B17),
        {V2_defender_rank, _B19} = protocol:uint32(_B18),
        {V2_record_id, _B20} = protocol:uint32(_B19),
        {V2_attacker_name, _B21} = protocol:string(_B20),
        {V2_defender_name, _B22} = protocol:string(_B21),
        {{V2_attacker_id, V2_defender_id, V2_battle_time, V2_battle_result, V2_attacker_rank, V2_defender_rank, V2_record_id, V2_attacker_name, V2_defender_name}, _B22}
    end),
    {ok, {V1_top_report, V1_my_report}};

unpack(srv, 7308, _B1) ->
    {V1_record_id, _B2} = protocol:uint32(_B1),
    {ok, {V1_record_id}};

unpack(cli, 7358, _B1) ->
    {V1_battle_result, _B2} = protocol:int8(_B1),
    {V1_role_info, _B24} = protocol:array8(_B2, fun(_B3) ->
        {V2_role_id, _B4} = protocol:int32(_B3),
        {V2_role_type, _B5} = protocol:int8(_B4),
        {V2_role_level, _B6} = protocol:int8(_B5),
        {V2_professional, _B7} = protocol:int8(_B6),
        {V2_sex, _B8} = protocol:int8(_B7),
        {V2_headpicture, _B9} = protocol:int8(_B8),
        {V2_position, _B10} = protocol:int8(_B9),
        {V2_actor_id, _B11} = protocol:int8(_B10),
        {V2_experience, _B12} = protocol:uint32(_B11),
        {V2_experience_next, _B13} = protocol:uint32(_B12),
        {V2_hp, _B14} = protocol:uint32(_B13),
        {V2_nuqi, _B15} = protocol:uint32(_B14),
        {V2_nuqi_max, _B16} = protocol:uint32(_B15),
        {V2_nuqi_skill_id, _B17} = protocol:uint32(_B16),
        {V2_bo_index, _B18} = protocol:uint8(_B17),
        {V2_fabao_id, _B19} = protocol:uint16(_B18),
        {V2_fabao_huanhua_lev, _B20} = protocol:uint8(_B19),
        {V2_fabao_level, _B21} = protocol:uint16(_B20),
        {V2_fabao_yinji, _B22} = protocol:uint16(_B21),
        {V2_role_name, _B23} = protocol:string(_B22),
        {{V2_role_id, V2_role_type, V2_role_level, V2_professional, V2_sex, V2_headpicture, V2_position, V2_actor_id, V2_experience, V2_experience_next, V2_hp, V2_nuqi, V2_nuqi_max, V2_nuqi_skill_id, V2_bo_index, V2_fabao_id, V2_fabao_huanhua_lev, V2_fabao_level, V2_fabao_yinji, V2_role_name}, _B23}
    end),
    {V1_competitor_info, _B46} = protocol:array8(_B24, fun(_B25) ->
        {V2_role_id, _B26} = protocol:int32(_B25),
        {V2_role_type, _B27} = protocol:int8(_B26),
        {V2_role_level, _B28} = protocol:int8(_B27),
        {V2_professional, _B29} = protocol:int8(_B28),
        {V2_sex, _B30} = protocol:int8(_B29),
        {V2_headpicture, _B31} = protocol:int8(_B30),
        {V2_position, _B32} = protocol:int8(_B31),
        {V2_actor_id, _B33} = protocol:int8(_B32),
        {V2_experience, _B34} = protocol:uint32(_B33),
        {V2_experience_next, _B35} = protocol:uint32(_B34),
        {V2_hp, _B36} = protocol:uint32(_B35),
        {V2_nuqi, _B37} = protocol:uint32(_B36),
        {V2_nuqi_max, _B38} = protocol:uint32(_B37),
        {V2_nuqi_skill_id, _B39} = protocol:uint32(_B38),
        {V2_bo_index, _B40} = protocol:uint8(_B39),
        {V2_fabao_id, _B41} = protocol:uint16(_B40),
        {V2_fabao_huanhua_lev, _B42} = protocol:uint8(_B41),
        {V2_fabao_level, _B43} = protocol:uint16(_B42),
        {V2_fabao_yinji, _B44} = protocol:uint16(_B43),
        {V2_role_name, _B45} = protocol:string(_B44),
        {{V2_role_id, V2_role_type, V2_role_level, V2_professional, V2_sex, V2_headpicture, V2_position, V2_actor_id, V2_experience, V2_experience_next, V2_hp, V2_nuqi, V2_nuqi_max, V2_nuqi_skill_id, V2_bo_index, V2_fabao_id, V2_fabao_huanhua_lev, V2_fabao_level, V2_fabao_yinji, V2_role_name}, _B45}
    end),
    {V1_fighting_result, _B97} = protocol:array8(_B46, fun(_B47) ->
        {V2_curr_bo, _B48} = protocol:int8(_B47),
        {V2_clear_effect, _B55} = protocol:array8(_B48, fun(_B49) ->
            {V3_fighter_actor, _B50} = protocol:int8(_B49),
            {V3_dot_hp, _B51} = protocol:int32(_B50),
            {V3_effect_list, _B54} = protocol:array8(_B51, fun(_B52) ->
                {V4_effect_id, _B53} = protocol:uint16(_B52),
                {{V4_effect_id}, _B53}
            end),
            {{V3_fighter_actor, V3_dot_hp, V3_effect_list}, _B54}
        end),
        {V2_fighting_list, _B91} = protocol:array8(_B55, fun(_B56) ->
            {V3_attacker, _B72} = protocol:array8(_B56, fun(_B57) ->
                {V4_skill_id, _B58} = protocol:uint16(_B57),
                {V4_fighter_id, _B59} = protocol:uint8(_B58),
                {V4_skill_level, _B60} = protocol:uint8(_B59),
                {V4_fabao_skill_id, _B61} = protocol:uint16(_B60),
                {V4_attr_list, _B65} = protocol:array8(_B61, fun(_B62) ->
                    {V5_attr_id, _B63} = protocol:uint8(_B62),
                    {V5_attr_value, _B64} = protocol:int32(_B63),
                    {{V5_attr_id, V5_attr_value}, _B64}
                end),
                {V4_buff_list, _B68} = protocol:array8(_B65, fun(_B66) ->
                    {V5_buff_id, _B67} = protocol:uint16(_B66),
                    {{V5_buff_id}, _B67}
                end),
                {V4_add_buff_list, _B71} = protocol:array8(_B68, fun(_B69) ->
                    {V5_buff_id, _B70} = protocol:uint16(_B69),
                    {{V5_buff_id}, _B70}
                end),
                {{V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list}, _B71}
            end),
            {V3_defender, _B90} = protocol:array8(_B72, fun(_B73) ->
                {V4_buff_id, _B74} = protocol:uint16(_B73),
                {V4_effect_type, _B75} = protocol:uint8(_B74),
                {V4_skill_id, _B76} = protocol:uint16(_B75),
                {V4_fighter_id, _B77} = protocol:uint8(_B76),
                {V4_skill_level, _B78} = protocol:uint8(_B77),
                {V4_fabao_skill_id, _B79} = protocol:uint16(_B78),
                {V4_attr_list, _B83} = protocol:array8(_B79, fun(_B80) ->
                    {V5_attr_id, _B81} = protocol:uint8(_B80),
                    {V5_attr_value, _B82} = protocol:int32(_B81),
                    {{V5_attr_id, V5_attr_value}, _B82}
                end),
                {V4_buff_list, _B86} = protocol:array8(_B83, fun(_B84) ->
                    {V5_buff_id, _B85} = protocol:uint16(_B84),
                    {{V5_buff_id}, _B85}
                end),
                {V4_add_buff_list, _B89} = protocol:array8(_B86, fun(_B87) ->
                    {V5_buff_id, _B88} = protocol:uint16(_B87),
                    {{V5_buff_id}, _B88}
                end),
                {{V4_buff_id, V4_effect_type, V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list}, _B89}
            end),
            {{V3_attacker, V3_defender}, _B90}
        end),
        {V2_action_list, _B96} = protocol:array8(_B91, fun(_B92) ->
            {V3_action_type, _B93} = protocol:uint8(_B92),
            {V3_new_id, _B94} = protocol:uint32(_B93),
            {V3_old_id, _B95} = protocol:uint32(_B94),
            {{V3_action_type, V3_new_id, V3_old_id}, _B95}
        end),
        {{V2_curr_bo, V2_clear_effect, V2_fighting_list, V2_action_list}, _B96}
    end),
    {ok, {V1_battle_result, V1_role_info, V1_competitor_info, V1_fighting_result}};

unpack(srv, 7309, _B1) ->
    {ok, {}};

unpack(cli, 7359, _B1) ->
    {V1_rank_list, _B8} = protocol:array8(_B1, fun(_B2) ->
        {V2_user_id, _B3} = protocol:uint32(_B2),
        {V2_role_level, _B4} = protocol:uint8(_B3),
        {V2_role_fc, _B5} = protocol:uint32(_B4),
        {V2_profession, _B6} = protocol:uint8(_B5),
        {V2_user_name, _B7} = protocol:string(_B6),
        {{V2_user_id, V2_role_level, V2_role_fc, V2_profession, V2_user_name}, _B7}
    end),
    {ok, {V1_rank_list}};

unpack(srv, 7310, _B1) ->
    {ok, {}};

unpack(cli, 7360, _B1) ->
    {V1_remain_get_time, _B2} = protocol:int32(_B1),
    {ok, {V1_remain_get_time}};

unpack(srv, 7401, _B1) ->
    {ok, {}};

unpack(cli, 7452, _B1) ->
    {V1_s_damage, _B2} = protocol:int32(_B1),
    {V1_s_damage_rate, _B3} = protocol:int32(_B2),
    {ok, {V1_s_damage, V1_s_damage_rate}};

unpack(cli, 7453, _B1) ->
    {V1_s_damage, _B2} = protocol:int32(_B1),
    {V1_user_id, _B3} = protocol:int32(_B2),
    {ok, {V1_s_damage, V1_user_id}};

unpack(cli, 7454, _B1) ->
    {V1_status, _B2} = protocol:int32(_B1),
    {ok, {V1_status}};

unpack(srv, 7405, _B1) ->
    {ok, {}};

unpack(cli, 7455, _B1) ->
    {V1_result, _B2} = protocol:uint16(_B1),
    {V1_encourage, _B3} = protocol:uint16(_B2),
    {ok, {V1_result, V1_encourage}};

unpack(srv, 7406, _B1) ->
    {ok, {}};

unpack(cli, 7456, _B1) ->
    {V1_result, _B2} = protocol:int32(_B1),
    {ok, {V1_result}};

unpack(cli, 7457, _B1) ->
    {V1_rank_list, _B5} = protocol:array8(_B1, fun(_B2) ->
        {V2_damage, _B3} = protocol:int32(_B2),
        {V2_damage_rate, _B4} = protocol:int32(_B3),
        {{V2_damage, V2_damage_rate}, _B4}
    end),
    {ok, {V1_rank_list}};

unpack(srv, 7408, _B1) ->
    {ok, {}};

unpack(cli, 7458, _B1) ->
    {V1_coin, _B2} = protocol:uint32(_B1),
    {V1_experience, _B3} = protocol:uint32(_B2),
    {V1_winner_id, _B4} = protocol:uint8(_B3),
    {V1_role_info_list, _B26} = protocol:array8(_B4, fun(_B5) ->
        {V2_role_id, _B6} = protocol:int32(_B5),
        {V2_role_type, _B7} = protocol:int8(_B6),
        {V2_role_level, _B8} = protocol:int8(_B7),
        {V2_professional, _B9} = protocol:int8(_B8),
        {V2_sex, _B10} = protocol:int8(_B9),
        {V2_headpicture, _B11} = protocol:int8(_B10),
        {V2_position, _B12} = protocol:int8(_B11),
        {V2_actor_id, _B13} = protocol:int8(_B12),
        {V2_experience, _B14} = protocol:uint32(_B13),
        {V2_experience_next, _B15} = protocol:uint32(_B14),
        {V2_hp, _B16} = protocol:uint32(_B15),
        {V2_nuqi, _B17} = protocol:uint32(_B16),
        {V2_nuqi_max, _B18} = protocol:uint32(_B17),
        {V2_nuqi_skill_id, _B19} = protocol:uint32(_B18),
        {V2_bo_index, _B20} = protocol:uint8(_B19),
        {V2_fabao_id, _B21} = protocol:uint16(_B20),
        {V2_fabao_huanhua_lev, _B22} = protocol:uint8(_B21),
        {V2_fabao_level, _B23} = protocol:uint16(_B22),
        {V2_fabao_yinji, _B24} = protocol:uint16(_B23),
        {V2_role_name, _B25} = protocol:string(_B24),
        {{V2_role_id, V2_role_type, V2_role_level, V2_professional, V2_sex, V2_headpicture, V2_position, V2_actor_id, V2_experience, V2_experience_next, V2_hp, V2_nuqi, V2_nuqi_max, V2_nuqi_skill_id, V2_bo_index, V2_fabao_id, V2_fabao_huanhua_lev, V2_fabao_level, V2_fabao_yinji, V2_role_name}, _B25}
    end),
    {V1_competitor_info, _B39} = protocol:array8(_B26, fun(_B27) ->
        {V2_id, _B28} = protocol:int32(_B27),
        {V2_monster_level, _B29} = protocol:int8(_B28),
        {V2_position, _B30} = protocol:int8(_B29),
        {V2_actor_id, _B31} = protocol:int8(_B30),
        {V2_is_monster, _B32} = protocol:int8(_B31),
        {V2_hp, _B33} = protocol:uint32(_B32),
        {V2_nuqi, _B34} = protocol:uint32(_B33),
        {V2_nuqi_max, _B35} = protocol:uint32(_B34),
        {V2_bo_index, _B36} = protocol:int8(_B35),
        {V2_curr_hp, _B37} = protocol:uint32(_B36),
        {V2_monster_name, _B38} = protocol:string(_B37),
        {{V2_id, V2_monster_level, V2_position, V2_actor_id, V2_is_monster, V2_hp, V2_nuqi, V2_nuqi_max, V2_bo_index, V2_curr_hp, V2_monster_name}, _B38}
    end),
    {V1_fighting_result, _B90} = protocol:array8(_B39, fun(_B40) ->
        {V2_curr_bo, _B41} = protocol:int8(_B40),
        {V2_clear_effect, _B48} = protocol:array8(_B41, fun(_B42) ->
            {V3_fighter_actor, _B43} = protocol:int8(_B42),
            {V3_dot_hp, _B44} = protocol:int32(_B43),
            {V3_effect_list, _B47} = protocol:array8(_B44, fun(_B45) ->
                {V4_effect_id, _B46} = protocol:uint16(_B45),
                {{V4_effect_id}, _B46}
            end),
            {{V3_fighter_actor, V3_dot_hp, V3_effect_list}, _B47}
        end),
        {V2_fighting_list, _B84} = protocol:array8(_B48, fun(_B49) ->
            {V3_attacker, _B65} = protocol:array8(_B49, fun(_B50) ->
                {V4_skill_id, _B51} = protocol:uint16(_B50),
                {V4_fighter_id, _B52} = protocol:uint8(_B51),
                {V4_skill_level, _B53} = protocol:uint8(_B52),
                {V4_fabao_skill_id, _B54} = protocol:uint16(_B53),
                {V4_attr_list, _B58} = protocol:array8(_B54, fun(_B55) ->
                    {V5_attr_id, _B56} = protocol:uint8(_B55),
                    {V5_attr_value, _B57} = protocol:int32(_B56),
                    {{V5_attr_id, V5_attr_value}, _B57}
                end),
                {V4_buff_list, _B61} = protocol:array8(_B58, fun(_B59) ->
                    {V5_buff_id, _B60} = protocol:uint16(_B59),
                    {{V5_buff_id}, _B60}
                end),
                {V4_add_buff_list, _B64} = protocol:array8(_B61, fun(_B62) ->
                    {V5_buff_id, _B63} = protocol:uint16(_B62),
                    {{V5_buff_id}, _B63}
                end),
                {{V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list}, _B64}
            end),
            {V3_defender, _B83} = protocol:array8(_B65, fun(_B66) ->
                {V4_buff_id, _B67} = protocol:uint16(_B66),
                {V4_effect_type, _B68} = protocol:uint8(_B67),
                {V4_skill_id, _B69} = protocol:uint16(_B68),
                {V4_fighter_id, _B70} = protocol:uint8(_B69),
                {V4_skill_level, _B71} = protocol:uint8(_B70),
                {V4_fabao_skill_id, _B72} = protocol:uint16(_B71),
                {V4_attr_list, _B76} = protocol:array8(_B72, fun(_B73) ->
                    {V5_attr_id, _B74} = protocol:uint8(_B73),
                    {V5_attr_value, _B75} = protocol:int32(_B74),
                    {{V5_attr_id, V5_attr_value}, _B75}
                end),
                {V4_buff_list, _B79} = protocol:array8(_B76, fun(_B77) ->
                    {V5_buff_id, _B78} = protocol:uint16(_B77),
                    {{V5_buff_id}, _B78}
                end),
                {V4_add_buff_list, _B82} = protocol:array8(_B79, fun(_B80) ->
                    {V5_buff_id, _B81} = protocol:uint16(_B80),
                    {{V5_buff_id}, _B81}
                end),
                {{V4_buff_id, V4_effect_type, V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list}, _B82}
            end),
            {{V3_attacker, V3_defender}, _B83}
        end),
        {V2_action_list, _B89} = protocol:array8(_B84, fun(_B85) ->
            {V3_action_type, _B86} = protocol:uint8(_B85),
            {V3_new_id, _B87} = protocol:uint32(_B86),
            {V3_old_id, _B88} = protocol:uint32(_B87),
            {{V3_action_type, V3_new_id, V3_old_id}, _B88}
        end),
        {{V2_curr_bo, V2_clear_effect, V2_fighting_list, V2_action_list}, _B89}
    end),
    {ok, {V1_coin, V1_experience, V1_winner_id, V1_role_info_list, V1_competitor_info, V1_fighting_result}};

unpack(srv, 7409, _B1) ->
    {ok, {}};

unpack(cli, 7459, _B1) ->
    {V1_death_cd, _B2} = protocol:int32(_B1),
    {V1_hard_cd, _B3} = protocol:int32(_B2),
    {V1_remain_time, _B4} = protocol:int32(_B3),
    {ok, {V1_death_cd, V1_hard_cd, V1_remain_time}};

unpack(cli, 7460, _B1) ->
    {V1_remain_time, _B2} = protocol:int32(_B1),
    {ok, {V1_remain_time}};

unpack(cli, 7461, _B1) ->
    {V1_reward_type, _B2} = protocol:uint16(_B1),
    {V1_reward_rank, _B3} = protocol:uint16(_B2),
    {V1_reward_coin, _B4} = protocol:uint32(_B3),
    {V1_reward_exp, _B5} = protocol:uint32(_B4),
    {ok, {V1_reward_type, V1_reward_rank, V1_reward_coin, V1_reward_exp}};

unpack(cli, 7462, _B1) ->
    {V1_activity_type, _B2} = protocol:uint16(_B1),
    {V1_activity_status, _B3} = protocol:uint16(_B2),
    {V1_activity_round, _B4} = protocol:int32(_B3),
    {ok, {V1_activity_type, V1_activity_status, V1_activity_round}};

unpack(srv, 7413, _B1) ->
    {ok, {}};

unpack(srv, 7414, _B1) ->
    {ok, {}};

unpack(cli, 7464, _B1) ->
    {V1_result, _B2} = protocol:int32(_B1),
    {V1_waiting_time, _B3} = protocol:int32(_B2),
    {V1_remain_time, _B4} = protocol:int32(_B3),
    {V1_boss_id, _B5} = protocol:int32(_B4),
    {V1_boss_hp_max, _B6} = protocol:int32(_B5),
    {V1_boss_hp_cur, _B7} = protocol:int32(_B6),
    {V1_boss_pos_x, _B8} = protocol:uint16(_B7),
    {V1_boss_pos_y, _B9} = protocol:uint16(_B8),
    {V1_role_pos_x, _B10} = protocol:uint16(_B9),
    {V1_role_pos_y, _B11} = protocol:uint16(_B10),
    {V1_encourage, _B12} = protocol:uint16(_B11),
    {V1_death_cd, _B13} = protocol:uint16(_B12),
    {V1_hard_cd, _B14} = protocol:uint16(_B13),
    {ok, {V1_result, V1_waiting_time, V1_remain_time, V1_boss_id, V1_boss_hp_max, V1_boss_hp_cur, V1_boss_pos_x, V1_boss_pos_y, V1_role_pos_x, V1_role_pos_y, V1_encourage, V1_death_cd, V1_hard_cd}};

unpack(srv, 7501, _B1) ->
    {V1_monster_id, _B2} = protocol:uint32(_B1),
    {V1_obj_id, _B3} = protocol:uint32(_B2),
    {ok, {V1_monster_id, V1_obj_id}};

unpack(cli, 7551, _B1) ->
    {V1_coin, _B2} = protocol:uint32(_B1),
    {V1_xinghun, _B3} = protocol:uint32(_B2),
    {V1_winner_id, _B4} = protocol:uint8(_B3),
    {V1_role_info, _B26} = protocol:array8(_B4, fun(_B5) ->
        {V2_role_id, _B6} = protocol:int32(_B5),
        {V2_role_type, _B7} = protocol:int8(_B6),
        {V2_role_level, _B8} = protocol:int8(_B7),
        {V2_professional, _B9} = protocol:int8(_B8),
        {V2_sex, _B10} = protocol:int8(_B9),
        {V2_headpicture, _B11} = protocol:int8(_B10),
        {V2_position, _B12} = protocol:int8(_B11),
        {V2_actor_id, _B13} = protocol:int8(_B12),
        {V2_experience, _B14} = protocol:uint32(_B13),
        {V2_experience_next, _B15} = protocol:uint32(_B14),
        {V2_hp, _B16} = protocol:uint32(_B15),
        {V2_nuqi, _B17} = protocol:uint32(_B16),
        {V2_nuqi_max, _B18} = protocol:uint32(_B17),
        {V2_nuqi_skill_id, _B19} = protocol:uint32(_B18),
        {V2_bo_index, _B20} = protocol:uint8(_B19),
        {V2_fabao_id, _B21} = protocol:uint16(_B20),
        {V2_fabao_huanhua_lev, _B22} = protocol:uint8(_B21),
        {V2_fabao_level, _B23} = protocol:uint16(_B22),
        {V2_fabao_yinji, _B24} = protocol:uint16(_B23),
        {V2_role_name, _B25} = protocol:string(_B24),
        {{V2_role_id, V2_role_type, V2_role_level, V2_professional, V2_sex, V2_headpicture, V2_position, V2_actor_id, V2_experience, V2_experience_next, V2_hp, V2_nuqi, V2_nuqi_max, V2_nuqi_skill_id, V2_bo_index, V2_fabao_id, V2_fabao_huanhua_lev, V2_fabao_level, V2_fabao_yinji, V2_role_name}, _B25}
    end),
    {V1_competitor_info, _B39} = protocol:array8(_B26, fun(_B27) ->
        {V2_id, _B28} = protocol:int32(_B27),
        {V2_monster_level, _B29} = protocol:int8(_B28),
        {V2_position, _B30} = protocol:int8(_B29),
        {V2_actor_id, _B31} = protocol:int8(_B30),
        {V2_is_monster, _B32} = protocol:int8(_B31),
        {V2_hp, _B33} = protocol:uint32(_B32),
        {V2_nuqi, _B34} = protocol:uint32(_B33),
        {V2_nuqi_max, _B35} = protocol:uint32(_B34),
        {V2_bo_index, _B36} = protocol:int8(_B35),
        {V2_curr_hp, _B37} = protocol:uint32(_B36),
        {V2_monster_name, _B38} = protocol:string(_B37),
        {{V2_id, V2_monster_level, V2_position, V2_actor_id, V2_is_monster, V2_hp, V2_nuqi, V2_nuqi_max, V2_bo_index, V2_curr_hp, V2_monster_name}, _B38}
    end),
    {V1_fighting_result, _B90} = protocol:array8(_B39, fun(_B40) ->
        {V2_curr_bo, _B41} = protocol:int8(_B40),
        {V2_clear_effect, _B48} = protocol:array8(_B41, fun(_B42) ->
            {V3_fighter_actor, _B43} = protocol:int8(_B42),
            {V3_dot_hp, _B44} = protocol:int32(_B43),
            {V3_effect_list, _B47} = protocol:array8(_B44, fun(_B45) ->
                {V4_effect_id, _B46} = protocol:uint16(_B45),
                {{V4_effect_id}, _B46}
            end),
            {{V3_fighter_actor, V3_dot_hp, V3_effect_list}, _B47}
        end),
        {V2_fighting_list, _B84} = protocol:array8(_B48, fun(_B49) ->
            {V3_attacker, _B65} = protocol:array8(_B49, fun(_B50) ->
                {V4_skill_id, _B51} = protocol:uint16(_B50),
                {V4_fighter_id, _B52} = protocol:uint8(_B51),
                {V4_skill_level, _B53} = protocol:uint8(_B52),
                {V4_fabao_skill_id, _B54} = protocol:uint16(_B53),
                {V4_attr_list, _B58} = protocol:array8(_B54, fun(_B55) ->
                    {V5_attr_id, _B56} = protocol:uint8(_B55),
                    {V5_attr_value, _B57} = protocol:int32(_B56),
                    {{V5_attr_id, V5_attr_value}, _B57}
                end),
                {V4_buff_list, _B61} = protocol:array8(_B58, fun(_B59) ->
                    {V5_buff_id, _B60} = protocol:uint16(_B59),
                    {{V5_buff_id}, _B60}
                end),
                {V4_add_buff_list, _B64} = protocol:array8(_B61, fun(_B62) ->
                    {V5_buff_id, _B63} = protocol:uint16(_B62),
                    {{V5_buff_id}, _B63}
                end),
                {{V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list}, _B64}
            end),
            {V3_defender, _B83} = protocol:array8(_B65, fun(_B66) ->
                {V4_buff_id, _B67} = protocol:uint16(_B66),
                {V4_effect_type, _B68} = protocol:uint8(_B67),
                {V4_skill_id, _B69} = protocol:uint16(_B68),
                {V4_fighter_id, _B70} = protocol:uint8(_B69),
                {V4_skill_level, _B71} = protocol:uint8(_B70),
                {V4_fabao_skill_id, _B72} = protocol:uint16(_B71),
                {V4_attr_list, _B76} = protocol:array8(_B72, fun(_B73) ->
                    {V5_attr_id, _B74} = protocol:uint8(_B73),
                    {V5_attr_value, _B75} = protocol:int32(_B74),
                    {{V5_attr_id, V5_attr_value}, _B75}
                end),
                {V4_buff_list, _B79} = protocol:array8(_B76, fun(_B77) ->
                    {V5_buff_id, _B78} = protocol:uint16(_B77),
                    {{V5_buff_id}, _B78}
                end),
                {V4_add_buff_list, _B82} = protocol:array8(_B79, fun(_B80) ->
                    {V5_buff_id, _B81} = protocol:uint16(_B80),
                    {{V5_buff_id}, _B81}
                end),
                {{V4_buff_id, V4_effect_type, V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list}, _B82}
            end),
            {{V3_attacker, V3_defender}, _B83}
        end),
        {V2_action_list, _B89} = protocol:array8(_B84, fun(_B85) ->
            {V3_action_type, _B86} = protocol:uint8(_B85),
            {V3_new_id, _B87} = protocol:uint32(_B86),
            {V3_old_id, _B88} = protocol:uint32(_B87),
            {{V3_action_type, V3_new_id, V3_old_id}, _B88}
        end),
        {{V2_curr_bo, V2_clear_effect, V2_fighting_list, V2_action_list}, _B89}
    end),
    {V1_item_rw, _B94} = protocol:array8(_B90, fun(_B91) ->
        {V2_item_id, _B92} = protocol:int32(_B91),
        {V2_num, _B93} = protocol:uint8(_B92),
        {{V2_item_id, V2_num}, _B93}
    end),
    {ok, {V1_coin, V1_xinghun, V1_winner_id, V1_role_info, V1_competitor_info, V1_fighting_result, V1_item_rw}};

unpack(srv, 7502, _B1) ->
    {V1_action, _B2} = protocol:uint8(_B1),
    {V1_scene_id, _B3} = protocol:uint32(_B2),
    {V1_obj_id, _B4} = protocol:uint32(_B3),
    {ok, {V1_action, V1_scene_id, V1_obj_id}};

unpack(cli, 7552, _B1) ->
    {V1_collect, _B2} = protocol:uint8(_B1),
    {ok, {V1_collect}};

unpack(srv, 7503, _B1) ->
    {V1_scene_id, _B2} = protocol:uint32(_B1),
    {V1_obj_id, _B3} = protocol:uint32(_B2),
    {ok, {V1_scene_id, V1_obj_id}};

unpack(cli, 7553, _B1) ->
    {V1_type, _B2} = protocol:uint8(_B1),
    {V1_num, _B3} = protocol:uint32(_B2),
    {V1_item_list, _B7} = protocol:array8(_B3, fun(_B4) ->
        {V2_item_id, _B5} = protocol:uint32(_B4),
        {V2_num, _B6} = protocol:uint8(_B5),
        {{V2_item_id, V2_num}, _B6}
    end),
    {ok, {V1_type, V1_num, V1_item_list}};

unpack(srv, 7504, _B1) ->
    {ok, {}};

unpack(srv, 7505, _B1) ->
    {V1_monster_id, _B2} = protocol:uint32(_B1),
    {ok, {V1_monster_id}};

unpack(cli, 7555, _B1) ->
    {V1_monster_id, _B2} = protocol:uint32(_B1),
    {V1_remain_count, _B3} = protocol:uint8(_B2),
    {ok, {V1_monster_id, V1_remain_count}};

unpack(srv, 7601, _B1) ->
    {V1_sg_type, _B2} = protocol:uint8(_B1),
    {V1_is_auto_fish, _B3} = protocol:uint8(_B2),
    {V1_obj_id, _B4} = protocol:uint16(_B3),
    {V1_fish_zone, _B5} = protocol:uint8(_B4),
    {ok, {V1_sg_type, V1_is_auto_fish, V1_obj_id, V1_fish_zone}};

unpack(cli, 7651, _B1) ->
    {V1_result, _B2} = protocol:uint8(_B1),
    {V1_auto_fish_num, _B3} = protocol:uint8(_B2),
    {V1_silver, _B4} = protocol:uint16(_B3),
    {V1_matiral_type, _B5} = protocol:uint8(_B4),
    {V1_item_list, _B9} = protocol:array8(_B5, fun(_B6) ->
        {V2_item_id, _B7} = protocol:uint32(_B6),
        {V2_num, _B8} = protocol:uint8(_B7),
        {{V2_item_id, V2_num}, _B8}
    end),
    {ok, {V1_result, V1_auto_fish_num, V1_silver, V1_matiral_type, V1_item_list}};

unpack(srv, 7602, _B1) ->
    {ok, {}};

unpack(cli, 7652, _B1) ->
    {V1_auto_fish_num, _B2} = protocol:uint8(_B1),
    {ok, {V1_auto_fish_num}};

unpack(srv, 7603, _B1) ->
    {ok, {}};

unpack(srv, 7611, _B1) ->
    {V1_fb_id, _B2} = protocol:uint16(_B1),
    {V1_fb_type, _B3} = protocol:uint16(_B2),
    {V1_fb_pass_id, _B4} = protocol:uint16(_B3),
    {ok, {V1_fb_id, V1_fb_type, V1_fb_pass_id}};

unpack(cli, 7653, _B1) ->
    {V1_result, _B2} = protocol:uint8(_B1),
    {V1_auto_fish_num, _B3} = protocol:uint8(_B2),
    {ok, {V1_result, V1_auto_fish_num}};

unpack(srv, 7604, _B1) ->
    {V1_state, _B2} = protocol:uint8(_B1),
    {ok, {V1_state}};

unpack(cli, 7655, _B1) ->
    {V1_winner_id, _B2} = protocol:uint8(_B1),
    {V1_fish_zone, _B3} = protocol:uint8(_B2),
    {V1_role_info, _B25} = protocol:array8(_B3, fun(_B4) ->
        {V2_role_id, _B5} = protocol:int32(_B4),
        {V2_role_type, _B6} = protocol:int8(_B5),
        {V2_role_level, _B7} = protocol:int8(_B6),
        {V2_professional, _B8} = protocol:int8(_B7),
        {V2_sex, _B9} = protocol:int8(_B8),
        {V2_headpicture, _B10} = protocol:int8(_B9),
        {V2_position, _B11} = protocol:int8(_B10),
        {V2_actor_id, _B12} = protocol:int8(_B11),
        {V2_experience, _B13} = protocol:uint32(_B12),
        {V2_experience_next, _B14} = protocol:uint32(_B13),
        {V2_hp, _B15} = protocol:uint32(_B14),
        {V2_nuqi, _B16} = protocol:uint32(_B15),
        {V2_nuqi_max, _B17} = protocol:uint32(_B16),
        {V2_nuqi_skill_id, _B18} = protocol:uint32(_B17),
        {V2_bo_index, _B19} = protocol:uint8(_B18),
        {V2_fabao_id, _B20} = protocol:uint16(_B19),
        {V2_fabao_huanhua_lev, _B21} = protocol:uint8(_B20),
        {V2_fabao_level, _B22} = protocol:uint16(_B21),
        {V2_fabao_yinji, _B23} = protocol:uint16(_B22),
        {V2_role_name, _B24} = protocol:string(_B23),
        {{V2_role_id, V2_role_type, V2_role_level, V2_professional, V2_sex, V2_headpicture, V2_position, V2_actor_id, V2_experience, V2_experience_next, V2_hp, V2_nuqi, V2_nuqi_max, V2_nuqi_skill_id, V2_bo_index, V2_fabao_id, V2_fabao_huanhua_lev, V2_fabao_level, V2_fabao_yinji, V2_role_name}, _B24}
    end),
    {V1_competitor_info, _B38} = protocol:array8(_B25, fun(_B26) ->
        {V2_id, _B27} = protocol:int32(_B26),
        {V2_monster_level, _B28} = protocol:int8(_B27),
        {V2_position, _B29} = protocol:int8(_B28),
        {V2_actor_id, _B30} = protocol:int8(_B29),
        {V2_is_monster, _B31} = protocol:int8(_B30),
        {V2_hp, _B32} = protocol:uint32(_B31),
        {V2_nuqi, _B33} = protocol:uint32(_B32),
        {V2_nuqi_max, _B34} = protocol:uint32(_B33),
        {V2_bo_index, _B35} = protocol:int8(_B34),
        {V2_curr_hp, _B36} = protocol:uint32(_B35),
        {V2_monster_name, _B37} = protocol:string(_B36),
        {{V2_id, V2_monster_level, V2_position, V2_actor_id, V2_is_monster, V2_hp, V2_nuqi, V2_nuqi_max, V2_bo_index, V2_curr_hp, V2_monster_name}, _B37}
    end),
    {V1_fighting_result, _B89} = protocol:array8(_B38, fun(_B39) ->
        {V2_curr_bo, _B40} = protocol:int8(_B39),
        {V2_clear_effect, _B47} = protocol:array8(_B40, fun(_B41) ->
            {V3_fighter_actor, _B42} = protocol:int8(_B41),
            {V3_dot_hp, _B43} = protocol:int32(_B42),
            {V3_effect_list, _B46} = protocol:array8(_B43, fun(_B44) ->
                {V4_effect_id, _B45} = protocol:uint16(_B44),
                {{V4_effect_id}, _B45}
            end),
            {{V3_fighter_actor, V3_dot_hp, V3_effect_list}, _B46}
        end),
        {V2_fighting_list, _B83} = protocol:array8(_B47, fun(_B48) ->
            {V3_attacker, _B64} = protocol:array8(_B48, fun(_B49) ->
                {V4_skill_id, _B50} = protocol:uint16(_B49),
                {V4_fighter_id, _B51} = protocol:uint8(_B50),
                {V4_skill_level, _B52} = protocol:uint8(_B51),
                {V4_fabao_skill_id, _B53} = protocol:uint16(_B52),
                {V4_attr_list, _B57} = protocol:array8(_B53, fun(_B54) ->
                    {V5_attr_id, _B55} = protocol:uint8(_B54),
                    {V5_attr_value, _B56} = protocol:int32(_B55),
                    {{V5_attr_id, V5_attr_value}, _B56}
                end),
                {V4_buff_list, _B60} = protocol:array8(_B57, fun(_B58) ->
                    {V5_buff_id, _B59} = protocol:uint16(_B58),
                    {{V5_buff_id}, _B59}
                end),
                {V4_add_buff_list, _B63} = protocol:array8(_B60, fun(_B61) ->
                    {V5_buff_id, _B62} = protocol:uint16(_B61),
                    {{V5_buff_id}, _B62}
                end),
                {{V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list}, _B63}
            end),
            {V3_defender, _B82} = protocol:array8(_B64, fun(_B65) ->
                {V4_buff_id, _B66} = protocol:uint16(_B65),
                {V4_effect_type, _B67} = protocol:uint8(_B66),
                {V4_skill_id, _B68} = protocol:uint16(_B67),
                {V4_fighter_id, _B69} = protocol:uint8(_B68),
                {V4_skill_level, _B70} = protocol:uint8(_B69),
                {V4_fabao_skill_id, _B71} = protocol:uint16(_B70),
                {V4_attr_list, _B75} = protocol:array8(_B71, fun(_B72) ->
                    {V5_attr_id, _B73} = protocol:uint8(_B72),
                    {V5_attr_value, _B74} = protocol:int32(_B73),
                    {{V5_attr_id, V5_attr_value}, _B74}
                end),
                {V4_buff_list, _B78} = protocol:array8(_B75, fun(_B76) ->
                    {V5_buff_id, _B77} = protocol:uint16(_B76),
                    {{V5_buff_id}, _B77}
                end),
                {V4_add_buff_list, _B81} = protocol:array8(_B78, fun(_B79) ->
                    {V5_buff_id, _B80} = protocol:uint16(_B79),
                    {{V5_buff_id}, _B80}
                end),
                {{V4_buff_id, V4_effect_type, V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list}, _B81}
            end),
            {{V3_attacker, V3_defender}, _B82}
        end),
        {V2_action_list, _B88} = protocol:array8(_B83, fun(_B84) ->
            {V3_action_type, _B85} = protocol:uint8(_B84),
            {V3_new_id, _B86} = protocol:uint32(_B85),
            {V3_old_id, _B87} = protocol:uint32(_B86),
            {{V3_action_type, V3_new_id, V3_old_id}, _B87}
        end),
        {{V2_curr_bo, V2_clear_effect, V2_fighting_list, V2_action_list}, _B88}
    end),
    {ok, {V1_winner_id, V1_fish_zone, V1_role_info, V1_competitor_info, V1_fighting_result}};

unpack(cli, 7656, _B1) ->
    {V1_remain_time, _B2} = protocol:uint16(_B1),
    {V1_perfect, _B3} = protocol:uint16(_B2),
    {V1_gold_fish, _B4} = protocol:uint32(_B3),
    {V1_silver, _B5} = protocol:uint32(_B4),
    {ok, {V1_remain_time, V1_perfect, V1_gold_fish, V1_silver}};

unpack(cli, 7659, _B1) ->
    {V1_rank_list, _B5} = protocol:array8(_B1, fun(_B2) ->
        {V2_fish_num, _B3} = protocol:int32(_B2),
        {V2_user_name, _B4} = protocol:string(_B3),
        {{V2_fish_num, V2_user_name}, _B4}
    end),
    {ok, {V1_rank_list}};

unpack(srv, 7610, _B1) ->
    {ok, {}};

unpack(srv, 7701, _B1) ->
    {ok, {}};

unpack(srv, 7702, _B1) ->
    {ok, {}};

unpack(srv, 7703, _B1) ->
    {V1_hole, _B2} = protocol:uint8(_B1),
    {ok, {V1_hole}};

unpack(srv, 7704, _B1) ->
    {ok, {}};

unpack(cli, 7754, _B1) ->
    {V1_result, _B2} = protocol:uint8(_B1),
    {V1_water, _B3} = protocol:uint8(_B2),
    {V1_disinsection, _B4} = protocol:uint8(_B3),
    {V1_put_insect, _B5} = protocol:uint8(_B4),
    {ok, {V1_result, V1_water, V1_disinsection, V1_put_insect}};

unpack(srv, 7705, _B1) ->
    {V1_obj_id, _B2} = protocol:uint8(_B1),
    {ok, {V1_obj_id}};

unpack(srv, 7706, _B1) ->
    {V1_action, _B2} = protocol:uint8(_B1),
    {V1_obj_id, _B3} = protocol:uint8(_B2),
    {ok, {V1_action, V1_obj_id}};

unpack(cli, 7756, _B1) ->
    {V1_action, _B2} = protocol:uint8(_B1),
    {V1_coin, _B3} = protocol:uint32(_B2),
    {ok, {V1_action, V1_coin}};

unpack(srv, 7707, _B1) ->
    {ok, {}};

unpack(cli, 7757, _B1) ->
    {V1_tree_hole, _B2} = protocol:uint8(_B1),
    {ok, {V1_tree_hole}};

unpack(cli, 7758, _B1) ->
    {V1_rank_list, _B4} = protocol:array8(_B1, fun(_B2) ->
        {V2_rank, _B3} = protocol:uint32(_B2),
        {{V2_rank}, _B3}
    end),
    {ok, {V1_rank_list}};

unpack(cli, 7759, _B1) ->
    {V1_silver, _B2} = protocol:uint32(_B1),
    {ok, {V1_silver}};

unpack(cli, 7760, _B1) ->
    {V1_remain_time, _B2} = protocol:uint32(_B1),
    {ok, {V1_remain_time}};

unpack(srv, 8001, _B1) ->
    {V1_sub_type, _B2} = protocol:uint8(_B1),
    {V1_army_name, _B3} = protocol:string(_B2),
    {ok, {V1_sub_type, V1_army_name}};

unpack(cli, 8051, _B1) ->
    {V1_army_list, _B15} = protocol:array8(_B1, fun(_B2) ->
        {V2_army_id, _B3} = protocol:uint32(_B2),
        {V2_army_level, _B4} = protocol:uint8(_B3),
        {V2_army_exp, _B5} = protocol:uint32(_B4),
        {V2_army_rank, _B6} = protocol:uint16(_B5),
        {V2_curr_member, _B7} = protocol:uint16(_B6),
        {V2_max_member, _B8} = protocol:uint16(_B7),
        {V2_user_id, _B9} = protocol:uint32(_B8),
        {V2_user_job, _B10} = protocol:uint8(_B9),
        {V2_user_fc, _B11} = protocol:uint32(_B10),
        {V2_user_name, _B12} = protocol:string(_B11),
        {V2_army_name, _B13} = protocol:string(_B12),
        {V2_notice, _B14} = protocol:string(_B13),
        {{V2_army_id, V2_army_level, V2_army_exp, V2_army_rank, V2_curr_member, V2_max_member, V2_user_id, V2_user_job, V2_user_fc, V2_user_name, V2_army_name, V2_notice}, _B14}
    end),
    {ok, {V1_army_list}};

unpack(srv, 8002, _B1) ->
    {ok, {}};

unpack(cli, 8052, _B1) ->
    {V1_army_list, _B15} = protocol:array8(_B1, fun(_B2) ->
        {V2_army_id, _B3} = protocol:uint32(_B2),
        {V2_army_level, _B4} = protocol:uint8(_B3),
        {V2_army_exp, _B5} = protocol:uint32(_B4),
        {V2_army_rank, _B6} = protocol:uint16(_B5),
        {V2_curr_member, _B7} = protocol:uint16(_B6),
        {V2_max_member, _B8} = protocol:uint16(_B7),
        {V2_user_id, _B9} = protocol:uint32(_B8),
        {V2_user_job, _B10} = protocol:uint8(_B9),
        {V2_user_fc, _B11} = protocol:uint32(_B10),
        {V2_user_name, _B12} = protocol:string(_B11),
        {V2_army_name, _B13} = protocol:string(_B12),
        {V2_notice, _B14} = protocol:string(_B13),
        {{V2_army_id, V2_army_level, V2_army_exp, V2_army_rank, V2_curr_member, V2_max_member, V2_user_id, V2_user_job, V2_user_fc, V2_user_name, V2_army_name, V2_notice}, _B14}
    end),
    {V1_user_apply_list, _B18} = protocol:array8(_B15, fun(_B16) ->
        {V2_army_id, _B17} = protocol:uint32(_B16),
        {{V2_army_id}, _B17}
    end),
    {ok, {V1_army_list, V1_user_apply_list}};

unpack(srv, 8003, _B1) ->
    {V1_army_id, _B2} = protocol:uint32(_B1),
    {ok, {V1_army_id}};

unpack(cli, 8053, _B1) ->
    {V1_army_id, _B2} = protocol:uint32(_B1),
    {V1_army_member_list, _B14} = protocol:array8(_B2, fun(_B3) ->
        {V2_user_id, _B4} = protocol:uint32(_B3),
        {V2_user_level, _B5} = protocol:uint16(_B4),
        {V2_user_job, _B6} = protocol:uint8(_B5),
        {V2_user_fc, _B7} = protocol:uint32(_B6),
        {V2_arena_rank, _B8} = protocol:uint32(_B7),
        {V2_user_post, _B9} = protocol:uint8(_B8),
        {V2_is_online, _B10} = protocol:uint8(_B9),
        {V2_last_login_time, _B11} = protocol:uint32(_B10),
        {V2_xian_gong, _B12} = protocol:uint32(_B11),
        {V2_user_name, _B13} = protocol:string(_B12),
        {{V2_user_id, V2_user_level, V2_user_job, V2_user_fc, V2_arena_rank, V2_user_post, V2_is_online, V2_last_login_time, V2_xian_gong, V2_user_name}, _B13}
    end),
    {ok, {V1_army_id, V1_army_member_list}};

unpack(srv, 8004, _B1) ->
    {V1_army_id, _B2} = protocol:uint32(_B1),
    {ok, {V1_army_id}};

unpack(cli, 8054, _B1) ->
    {V1_result, _B2} = protocol:uint8(_B1),
    {ok, {V1_result}};

unpack(srv, 8005, _B1) ->
    {V1_army_id, _B2} = protocol:uint32(_B1),
    {ok, {V1_army_id}};

unpack(cli, 8055, _B1) ->
    {V1_army_id, _B2} = protocol:uint32(_B1),
    {ok, {V1_army_id}};

unpack(srv, 8006, _B1) ->
    {V1_army_id, _B2} = protocol:uint32(_B1),
    {ok, {V1_army_id}};

unpack(cli, 8056, _B1) ->
    {V1_army_id, _B2} = protocol:uint32(_B1),
    {V1_apply_list, _B8} = protocol:array8(_B2, fun(_B3) ->
        {V2_user_id, _B4} = protocol:uint32(_B3),
        {V2_user_fc, _B5} = protocol:uint32(_B4),
        {V2_user_level, _B6} = protocol:uint16(_B5),
        {V2_user_name, _B7} = protocol:string(_B6),
        {{V2_user_id, V2_user_fc, V2_user_level, V2_user_name}, _B7}
    end),
    {ok, {V1_army_id, V1_apply_list}};

unpack(srv, 8007, _B1) ->
    {V1_army_id, _B2} = protocol:uint32(_B1),
    {V1_user_id, _B3} = protocol:uint32(_B2),
    {V1_is_consent, _B4} = protocol:uint8(_B3),
    {ok, {V1_army_id, V1_user_id, V1_is_consent}};

unpack(cli, 8057, _B1) ->
    {V1_army_list, _B15} = protocol:array8(_B1, fun(_B2) ->
        {V2_army_id, _B3} = protocol:uint32(_B2),
        {V2_army_level, _B4} = protocol:uint8(_B3),
        {V2_army_exp, _B5} = protocol:uint32(_B4),
        {V2_army_rank, _B6} = protocol:uint16(_B5),
        {V2_curr_member, _B7} = protocol:uint16(_B6),
        {V2_max_member, _B8} = protocol:uint16(_B7),
        {V2_user_id, _B9} = protocol:uint32(_B8),
        {V2_user_job, _B10} = protocol:uint8(_B9),
        {V2_user_fc, _B11} = protocol:uint32(_B10),
        {V2_user_name, _B12} = protocol:string(_B11),
        {V2_army_name, _B13} = protocol:string(_B12),
        {V2_notice, _B14} = protocol:string(_B13),
        {{V2_army_id, V2_army_level, V2_army_exp, V2_army_rank, V2_curr_member, V2_max_member, V2_user_id, V2_user_job, V2_user_fc, V2_user_name, V2_army_name, V2_notice}, _B14}
    end),
    {ok, {V1_army_list}};

unpack(srv, 8008, _B1) ->
    {V1_army_id, _B2} = protocol:uint32(_B1),
    {V1_is_consent, _B3} = protocol:uint8(_B2),
    {ok, {V1_army_id, V1_is_consent}};

unpack(cli, 8058, _B1) ->
    {V1_user_id_list, _B4} = protocol:array8(_B1, fun(_B2) ->
        {V2_user_id, _B3} = protocol:uint32(_B2),
        {{V2_user_id}, _B3}
    end),
    {ok, {V1_user_id_list}};

unpack(srv, 8009, _B1) ->
    {ok, {}};

unpack(cli, 8059, _B1) ->
    {V1_result, _B2} = protocol:uint8(_B1),
    {ok, {V1_result}};

unpack(srv, 8010, _B1) ->
    {V1_user_id, _B2} = protocol:uint32(_B1),
    {ok, {V1_user_id}};

unpack(cli, 8060, _B1) ->
    {V1_user_id, _B2} = protocol:uint32(_B1),
    {ok, {V1_user_id}};

unpack(srv, 8011, _B1) ->
    {V1_notice, _B2} = protocol:string(_B1),
    {ok, {V1_notice}};

unpack(cli, 8061, _B1) ->
    {V1_result, _B2} = protocol:uint8(_B1),
    {ok, {V1_result}};

unpack(srv, 8012, _B1) ->
    {ok, {}};

unpack(cli, 8062, _B1) ->
    {V1_result, _B2} = protocol:uint8(_B1),
    {ok, {V1_result}};

unpack(srv, 8013, _B1) ->
    {V1_user_id, _B2} = protocol:uint32(_B1),
    {V1_user_post, _B3} = protocol:uint8(_B2),
    {ok, {V1_user_id, V1_user_post}};

unpack(cli, 8063, _B1) ->
    {V1_user_id, _B2} = protocol:uint32(_B1),
    {V1_user_post, _B3} = protocol:uint8(_B2),
    {ok, {V1_user_id, V1_user_post}};

unpack(srv, 8014, _B1) ->
    {V1_army_id, _B2} = protocol:uint32(_B1),
    {ok, {V1_army_id}};

unpack(cli, 8064, _B1) ->
    {V1_army_list, _B15} = protocol:array8(_B1, fun(_B2) ->
        {V2_army_id, _B3} = protocol:uint32(_B2),
        {V2_army_level, _B4} = protocol:uint8(_B3),
        {V2_army_exp, _B5} = protocol:uint32(_B4),
        {V2_army_rank, _B6} = protocol:uint16(_B5),
        {V2_curr_member, _B7} = protocol:uint16(_B6),
        {V2_max_member, _B8} = protocol:uint16(_B7),
        {V2_user_id, _B9} = protocol:uint32(_B8),
        {V2_user_job, _B10} = protocol:uint8(_B9),
        {V2_user_fc, _B11} = protocol:uint32(_B10),
        {V2_user_name, _B12} = protocol:string(_B11),
        {V2_army_name, _B13} = protocol:string(_B12),
        {V2_notice, _B14} = protocol:string(_B13),
        {{V2_army_id, V2_army_level, V2_army_exp, V2_army_rank, V2_curr_member, V2_max_member, V2_user_id, V2_user_job, V2_user_fc, V2_user_name, V2_army_name, V2_notice}, _B14}
    end),
    {ok, {V1_army_list}};

unpack(srv, 8015, _B1) ->
    {V1_user_id, _B2} = protocol:uint32(_B1),
    {ok, {V1_user_id}};

unpack(cli, 8065, _B1) ->
    {V1_army_member_list, _B13} = protocol:array8(_B1, fun(_B2) ->
        {V2_user_id, _B3} = protocol:uint32(_B2),
        {V2_user_level, _B4} = protocol:uint16(_B3),
        {V2_user_job, _B5} = protocol:uint8(_B4),
        {V2_user_fc, _B6} = protocol:uint32(_B5),
        {V2_arena_rank, _B7} = protocol:uint32(_B6),
        {V2_user_post, _B8} = protocol:uint8(_B7),
        {V2_is_online, _B9} = protocol:uint8(_B8),
        {V2_last_login_time, _B10} = protocol:uint32(_B9),
        {V2_xian_gong, _B11} = protocol:uint32(_B10),
        {V2_user_name, _B12} = protocol:string(_B11),
        {{V2_user_id, V2_user_level, V2_user_job, V2_user_fc, V2_arena_rank, V2_user_post, V2_is_online, V2_last_login_time, V2_xian_gong, V2_user_name}, _B12}
    end),
    {ok, {V1_army_member_list}};

unpack(srv, 8016, _B1) ->
    {ok, {}};

unpack(cli, 8069, _B1) ->
    {V1_result, _B2} = protocol:uint8(_B1),
    {ok, {V1_result}};

unpack(srv, 8017, _B1) ->
    {ok, {}};

unpack(cli, 8067, _B1) ->
    {V1_result, _B2} = protocol:uint8(_B1),
    {ok, {V1_result}};

unpack(srv, 8018, _B1) ->
    {V1_user_id, _B2} = protocol:uint32(_B1),
    {ok, {V1_user_id}};

unpack(cli, 8068, _B1) ->
    {V1_result, _B2} = protocol:uint8(_B1),
    {ok, {V1_result}};

unpack(srv, 8019, _B1) ->
    {ok, {}};

unpack(cli, 8070, _B1) ->
    {ok, {}};

unpack(srv, 8021, _B1) ->
    {V1_build_type, _B2} = protocol:uint16(_B1),
    {ok, {V1_build_type}};

unpack(cli, 8071, _B1) ->
    {V1_build_type, _B2} = protocol:uint16(_B1),
    {V1_build_level, _B3} = protocol:uint16(_B2),
    {ok, {V1_build_type, V1_build_level}};

unpack(srv, 8022, _B1) ->
    {V1_army_id, _B2} = protocol:uint16(_B1),
    {ok, {V1_army_id}};

unpack(cli, 8072, _B1) ->
    {V1_build_list, _B5} = protocol:array8(_B1, fun(_B2) ->
        {V2_build_type, _B3} = protocol:uint16(_B2),
        {V2_build_level, _B4} = protocol:uint16(_B3),
        {{V2_build_type, V2_build_level}, _B4}
    end),
    {ok, {V1_build_list}};

unpack(srv, 8023, _B1) ->
    {ok, {}};

unpack(cli, 8073, _B1) ->
    {V1_new_level, _B2} = protocol:uint8(_B1),
    {V1_gong_xian, _B3} = protocol:uint32(_B2),
    {ok, {V1_new_level, V1_gong_xian}};

unpack(srv, 8024, _B1) ->
    {ok, {}};

unpack(cli, 8074, _B1) ->
    {V1_gong_xian, _B2} = protocol:uint32(_B1),
    {ok, {V1_gong_xian}};

unpack(srv, 8025, _B1) ->
    {V1_army_id, _B2} = protocol:uint16(_B1),
    {ok, {V1_army_id}};

unpack(cli, 8075, _B1) ->
    {V1_army_level, _B2} = protocol:uint8(_B1),
    {ok, {V1_army_level}};

unpack(cli, 8076, _B1) ->
    {V1_col_time_list, _B5} = protocol:array8(_B1, fun(_B2) ->
        {V2_collect_id, _B3} = protocol:uint16(_B2),
        {V2_time, _B4} = protocol:uint16(_B3),
        {{V2_collect_id, V2_time}, _B4}
    end),
    {ok, {V1_col_time_list}};

unpack(srv, 8101, _B1) ->
    {V1_action_type, _B2} = protocol:uint16(_B1),
    {V1_def_user_id, _B3} = protocol:uint32(_B2),
    {ok, {V1_action_type, V1_def_user_id}};

unpack(cli, 8151, _B1) ->
    {V1_atk_user_id, _B2} = protocol:uint32(_B1),
    {V1_def_user_id, _B3} = protocol:uint32(_B2),
    {V1_is_win, _B4} = protocol:uint16(_B3),
    {V1_battle_round, _B5} = protocol:uint16(_B4),
    {V1_record_id, _B6} = protocol:uint32(_B5),
    {ok, {V1_atk_user_id, V1_def_user_id, V1_is_win, V1_battle_round, V1_record_id}};

unpack(srv, 8102, _B1) ->
    {V1_record_id, _B2} = protocol:uint32(_B1),
    {ok, {V1_record_id}};

unpack(cli, 8152, _B1) ->
    {V1_battle_result, _B2} = protocol:uint8(_B1),
    {V1_role_info, _B24} = protocol:array8(_B2, fun(_B3) ->
        {V2_role_id, _B4} = protocol:int32(_B3),
        {V2_role_type, _B5} = protocol:int8(_B4),
        {V2_role_level, _B6} = protocol:int8(_B5),
        {V2_professional, _B7} = protocol:int8(_B6),
        {V2_sex, _B8} = protocol:int8(_B7),
        {V2_headpicture, _B9} = protocol:int8(_B8),
        {V2_position, _B10} = protocol:int8(_B9),
        {V2_actor_id, _B11} = protocol:int8(_B10),
        {V2_experience, _B12} = protocol:uint32(_B11),
        {V2_experience_next, _B13} = protocol:uint32(_B12),
        {V2_hp, _B14} = protocol:uint32(_B13),
        {V2_nuqi, _B15} = protocol:uint32(_B14),
        {V2_nuqi_max, _B16} = protocol:uint32(_B15),
        {V2_nuqi_skill_id, _B17} = protocol:uint32(_B16),
        {V2_bo_index, _B18} = protocol:uint8(_B17),
        {V2_fabao_id, _B19} = protocol:uint16(_B18),
        {V2_fabao_huanhua_lev, _B20} = protocol:uint8(_B19),
        {V2_fabao_level, _B21} = protocol:uint16(_B20),
        {V2_fabao_yinji, _B22} = protocol:uint16(_B21),
        {V2_role_name, _B23} = protocol:string(_B22),
        {{V2_role_id, V2_role_type, V2_role_level, V2_professional, V2_sex, V2_headpicture, V2_position, V2_actor_id, V2_experience, V2_experience_next, V2_hp, V2_nuqi, V2_nuqi_max, V2_nuqi_skill_id, V2_bo_index, V2_fabao_id, V2_fabao_huanhua_lev, V2_fabao_level, V2_fabao_yinji, V2_role_name}, _B23}
    end),
    {V1_competitor_info, _B46} = protocol:array8(_B24, fun(_B25) ->
        {V2_role_id, _B26} = protocol:int32(_B25),
        {V2_role_type, _B27} = protocol:int8(_B26),
        {V2_role_level, _B28} = protocol:int8(_B27),
        {V2_professional, _B29} = protocol:int8(_B28),
        {V2_sex, _B30} = protocol:int8(_B29),
        {V2_headpicture, _B31} = protocol:int8(_B30),
        {V2_position, _B32} = protocol:int8(_B31),
        {V2_actor_id, _B33} = protocol:int8(_B32),
        {V2_experience, _B34} = protocol:uint32(_B33),
        {V2_experience_next, _B35} = protocol:uint32(_B34),
        {V2_hp, _B36} = protocol:uint32(_B35),
        {V2_nuqi, _B37} = protocol:uint32(_B36),
        {V2_nuqi_max, _B38} = protocol:uint32(_B37),
        {V2_nuqi_skill_id, _B39} = protocol:uint32(_B38),
        {V2_bo_index, _B40} = protocol:uint8(_B39),
        {V2_fabao_id, _B41} = protocol:uint16(_B40),
        {V2_fabao_huanhua_lev, _B42} = protocol:uint8(_B41),
        {V2_fabao_level, _B43} = protocol:uint16(_B42),
        {V2_fabao_yinji, _B44} = protocol:uint16(_B43),
        {V2_role_name, _B45} = protocol:string(_B44),
        {{V2_role_id, V2_role_type, V2_role_level, V2_professional, V2_sex, V2_headpicture, V2_position, V2_actor_id, V2_experience, V2_experience_next, V2_hp, V2_nuqi, V2_nuqi_max, V2_nuqi_skill_id, V2_bo_index, V2_fabao_id, V2_fabao_huanhua_lev, V2_fabao_level, V2_fabao_yinji, V2_role_name}, _B45}
    end),
    {V1_fighting_result, _B97} = protocol:array8(_B46, fun(_B47) ->
        {V2_curr_bo, _B48} = protocol:int8(_B47),
        {V2_clear_effect, _B55} = protocol:array8(_B48, fun(_B49) ->
            {V3_fighter_actor, _B50} = protocol:int8(_B49),
            {V3_dot_hp, _B51} = protocol:int32(_B50),
            {V3_effect_list, _B54} = protocol:array8(_B51, fun(_B52) ->
                {V4_effect_id, _B53} = protocol:uint16(_B52),
                {{V4_effect_id}, _B53}
            end),
            {{V3_fighter_actor, V3_dot_hp, V3_effect_list}, _B54}
        end),
        {V2_fighting_list, _B91} = protocol:array8(_B55, fun(_B56) ->
            {V3_attacker, _B72} = protocol:array8(_B56, fun(_B57) ->
                {V4_skill_id, _B58} = protocol:uint16(_B57),
                {V4_fighter_id, _B59} = protocol:uint8(_B58),
                {V4_skill_level, _B60} = protocol:uint8(_B59),
                {V4_fabao_skill_id, _B61} = protocol:uint16(_B60),
                {V4_attr_list, _B65} = protocol:array8(_B61, fun(_B62) ->
                    {V5_attr_id, _B63} = protocol:uint8(_B62),
                    {V5_attr_value, _B64} = protocol:int32(_B63),
                    {{V5_attr_id, V5_attr_value}, _B64}
                end),
                {V4_buff_list, _B68} = protocol:array8(_B65, fun(_B66) ->
                    {V5_buff_id, _B67} = protocol:uint16(_B66),
                    {{V5_buff_id}, _B67}
                end),
                {V4_add_buff_list, _B71} = protocol:array8(_B68, fun(_B69) ->
                    {V5_buff_id, _B70} = protocol:uint16(_B69),
                    {{V5_buff_id}, _B70}
                end),
                {{V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list}, _B71}
            end),
            {V3_defender, _B90} = protocol:array8(_B72, fun(_B73) ->
                {V4_buff_id, _B74} = protocol:uint16(_B73),
                {V4_effect_type, _B75} = protocol:uint8(_B74),
                {V4_skill_id, _B76} = protocol:uint16(_B75),
                {V4_fighter_id, _B77} = protocol:uint8(_B76),
                {V4_skill_level, _B78} = protocol:uint8(_B77),
                {V4_fabao_skill_id, _B79} = protocol:uint16(_B78),
                {V4_attr_list, _B83} = protocol:array8(_B79, fun(_B80) ->
                    {V5_attr_id, _B81} = protocol:uint8(_B80),
                    {V5_attr_value, _B82} = protocol:int32(_B81),
                    {{V5_attr_id, V5_attr_value}, _B82}
                end),
                {V4_buff_list, _B86} = protocol:array8(_B83, fun(_B84) ->
                    {V5_buff_id, _B85} = protocol:uint16(_B84),
                    {{V5_buff_id}, _B85}
                end),
                {V4_add_buff_list, _B89} = protocol:array8(_B86, fun(_B87) ->
                    {V5_buff_id, _B88} = protocol:uint16(_B87),
                    {{V5_buff_id}, _B88}
                end),
                {{V4_buff_id, V4_effect_type, V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list}, _B89}
            end),
            {{V3_attacker, V3_defender}, _B90}
        end),
        {V2_action_list, _B96} = protocol:array8(_B91, fun(_B92) ->
            {V3_action_type, _B93} = protocol:uint8(_B92),
            {V3_new_id, _B94} = protocol:uint32(_B93),
            {V3_old_id, _B95} = protocol:uint32(_B94),
            {{V3_action_type, V3_new_id, V3_old_id}, _B95}
        end),
        {{V2_curr_bo, V2_clear_effect, V2_fighting_list, V2_action_list}, _B96}
    end),
    {ok, {V1_battle_result, V1_role_info, V1_competitor_info, V1_fighting_result}};

unpack(srv, 8103, _B1) ->
    {ok, {}};

unpack(cli, 8153, _B1) ->
    {V1_battle_record_list, _B8} = protocol:array8(_B1, fun(_B2) ->
        {V2_type, _B3} = protocol:uint16(_B2),
        {V2_record_id, _B4} = protocol:uint32(_B3),
        {V2_battle_result, _B5} = protocol:uint16(_B4),
        {V2_atk_name, _B6} = protocol:string(_B5),
        {V2_def_name, _B7} = protocol:string(_B6),
        {{V2_type, V2_record_id, V2_battle_result, V2_atk_name, V2_def_name}, _B7}
    end),
    {ok, {V1_battle_record_list}};

unpack(srv, 8104, _B1) ->
    {V1_action_type, _B2} = protocol:uint16(_B1),
    {ok, {V1_action_type}};

unpack(srv, 8105, _B1) ->
    {ok, {}};

unpack(srv, 8106, _B1) ->
    {ok, {}};

unpack(cli, 8157, _B1) ->
    {V1_scene_id, _B2} = protocol:uint32(_B1),
    {V1_scene_state, _B3} = protocol:uint16(_B2),
    {ok, {V1_scene_id, V1_scene_state}};

unpack(srv, 8108, _B1) ->
    {ok, {}};

unpack(cli, 8158, _B1) ->
    {V1_expire, _B2} = protocol:uint32(_B1),
    {V1_timeout, _B3} = protocol:uint16(_B2),
    {V1_cur_energy, _B4} = protocol:uint16(_B3),
    {V1_max_energy, _B5} = protocol:uint16(_B4),
    {ok, {V1_expire, V1_timeout, V1_cur_energy, V1_max_energy}};

unpack(srv, 8109, _B1) ->
    {ok, {}};

unpack(cli, 8160, _B1) ->
    {V1_cur_energy, _B2} = protocol:uint16(_B1),
    {ok, {V1_cur_energy}};

unpack(cli, 8161, _B1) ->
    {V1_winner_id, _B2} = protocol:uint8(_B1),
    {V1_role_info, _B24} = protocol:array8(_B2, fun(_B3) ->
        {V2_role_id, _B4} = protocol:int32(_B3),
        {V2_role_type, _B5} = protocol:int8(_B4),
        {V2_role_level, _B6} = protocol:int8(_B5),
        {V2_professional, _B7} = protocol:int8(_B6),
        {V2_sex, _B8} = protocol:int8(_B7),
        {V2_headpicture, _B9} = protocol:int8(_B8),
        {V2_position, _B10} = protocol:int8(_B9),
        {V2_actor_id, _B11} = protocol:int8(_B10),
        {V2_experience, _B12} = protocol:uint32(_B11),
        {V2_experience_next, _B13} = protocol:uint32(_B12),
        {V2_hp, _B14} = protocol:uint32(_B13),
        {V2_nuqi, _B15} = protocol:uint32(_B14),
        {V2_nuqi_max, _B16} = protocol:uint32(_B15),
        {V2_nuqi_skill_id, _B17} = protocol:uint32(_B16),
        {V2_bo_index, _B18} = protocol:uint8(_B17),
        {V2_fabao_id, _B19} = protocol:uint16(_B18),
        {V2_fabao_huanhua_lev, _B20} = protocol:uint8(_B19),
        {V2_fabao_level, _B21} = protocol:uint16(_B20),
        {V2_fabao_yinji, _B22} = protocol:uint16(_B21),
        {V2_role_name, _B23} = protocol:string(_B22),
        {{V2_role_id, V2_role_type, V2_role_level, V2_professional, V2_sex, V2_headpicture, V2_position, V2_actor_id, V2_experience, V2_experience_next, V2_hp, V2_nuqi, V2_nuqi_max, V2_nuqi_skill_id, V2_bo_index, V2_fabao_id, V2_fabao_huanhua_lev, V2_fabao_level, V2_fabao_yinji, V2_role_name}, _B23}
    end),
    {V1_competitor_info, _B37} = protocol:array8(_B24, fun(_B25) ->
        {V2_id, _B26} = protocol:int32(_B25),
        {V2_monster_level, _B27} = protocol:int8(_B26),
        {V2_position, _B28} = protocol:int8(_B27),
        {V2_actor_id, _B29} = protocol:int8(_B28),
        {V2_is_monster, _B30} = protocol:int8(_B29),
        {V2_hp, _B31} = protocol:uint32(_B30),
        {V2_nuqi, _B32} = protocol:uint32(_B31),
        {V2_nuqi_max, _B33} = protocol:uint32(_B32),
        {V2_bo_index, _B34} = protocol:int8(_B33),
        {V2_curr_hp, _B35} = protocol:uint32(_B34),
        {V2_monster_name, _B36} = protocol:string(_B35),
        {{V2_id, V2_monster_level, V2_position, V2_actor_id, V2_is_monster, V2_hp, V2_nuqi, V2_nuqi_max, V2_bo_index, V2_curr_hp, V2_monster_name}, _B36}
    end),
    {V1_fighting_result, _B88} = protocol:array8(_B37, fun(_B38) ->
        {V2_curr_bo, _B39} = protocol:int8(_B38),
        {V2_clear_effect, _B46} = protocol:array8(_B39, fun(_B40) ->
            {V3_fighter_actor, _B41} = protocol:int8(_B40),
            {V3_dot_hp, _B42} = protocol:int32(_B41),
            {V3_effect_list, _B45} = protocol:array8(_B42, fun(_B43) ->
                {V4_effect_id, _B44} = protocol:uint16(_B43),
                {{V4_effect_id}, _B44}
            end),
            {{V3_fighter_actor, V3_dot_hp, V3_effect_list}, _B45}
        end),
        {V2_fighting_list, _B82} = protocol:array8(_B46, fun(_B47) ->
            {V3_attacker, _B63} = protocol:array8(_B47, fun(_B48) ->
                {V4_skill_id, _B49} = protocol:uint16(_B48),
                {V4_fighter_id, _B50} = protocol:uint8(_B49),
                {V4_skill_level, _B51} = protocol:uint8(_B50),
                {V4_fabao_skill_id, _B52} = protocol:uint16(_B51),
                {V4_attr_list, _B56} = protocol:array8(_B52, fun(_B53) ->
                    {V5_attr_id, _B54} = protocol:uint8(_B53),
                    {V5_attr_value, _B55} = protocol:int32(_B54),
                    {{V5_attr_id, V5_attr_value}, _B55}
                end),
                {V4_buff_list, _B59} = protocol:array8(_B56, fun(_B57) ->
                    {V5_buff_id, _B58} = protocol:uint16(_B57),
                    {{V5_buff_id}, _B58}
                end),
                {V4_add_buff_list, _B62} = protocol:array8(_B59, fun(_B60) ->
                    {V5_buff_id, _B61} = protocol:uint16(_B60),
                    {{V5_buff_id}, _B61}
                end),
                {{V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list}, _B62}
            end),
            {V3_defender, _B81} = protocol:array8(_B63, fun(_B64) ->
                {V4_buff_id, _B65} = protocol:uint16(_B64),
                {V4_effect_type, _B66} = protocol:uint8(_B65),
                {V4_skill_id, _B67} = protocol:uint16(_B66),
                {V4_fighter_id, _B68} = protocol:uint8(_B67),
                {V4_skill_level, _B69} = protocol:uint8(_B68),
                {V4_fabao_skill_id, _B70} = protocol:uint16(_B69),
                {V4_attr_list, _B74} = protocol:array8(_B70, fun(_B71) ->
                    {V5_attr_id, _B72} = protocol:uint8(_B71),
                    {V5_attr_value, _B73} = protocol:int32(_B72),
                    {{V5_attr_id, V5_attr_value}, _B73}
                end),
                {V4_buff_list, _B77} = protocol:array8(_B74, fun(_B75) ->
                    {V5_buff_id, _B76} = protocol:uint16(_B75),
                    {{V5_buff_id}, _B76}
                end),
                {V4_add_buff_list, _B80} = protocol:array8(_B77, fun(_B78) ->
                    {V5_buff_id, _B79} = protocol:uint16(_B78),
                    {{V5_buff_id}, _B79}
                end),
                {{V4_buff_id, V4_effect_type, V4_skill_id, V4_fighter_id, V4_skill_level, V4_fabao_skill_id, V4_attr_list, V4_buff_list, V4_add_buff_list}, _B80}
            end),
            {{V3_attacker, V3_defender}, _B81}
        end),
        {V2_action_list, _B87} = protocol:array8(_B82, fun(_B83) ->
            {V3_action_type, _B84} = protocol:uint8(_B83),
            {V3_new_id, _B85} = protocol:uint32(_B84),
            {V3_old_id, _B86} = protocol:uint32(_B85),
            {{V3_action_type, V3_new_id, V3_old_id}, _B86}
        end),
        {{V2_curr_bo, V2_clear_effect, V2_fighting_list, V2_action_list}, _B87}
    end),
    {ok, {V1_winner_id, V1_role_info, V1_competitor_info, V1_fighting_result}};

unpack(srv, 8112, _B1) ->
    {V1_map_id, _B2} = protocol:uint16(_B1),
    {V1_monster_point_id, _B3} = protocol:uint16(_B2),
    {V1_monster_type, _B4} = protocol:uint16(_B3),
    {V1_param1, _B5} = protocol:uint16(_B4),
    {V1_param2, _B6} = protocol:uint32(_B5),
    {ok, {V1_map_id, V1_monster_point_id, V1_monster_type, V1_param1, V1_param2}};

unpack(srv, 8113, _B1) ->
    {V1_monster_obj_id, _B2} = protocol:uint32(_B1),
    {ok, {V1_monster_obj_id}};

unpack(cli, 8163, _B1) ->
    {V1_atk_user_id, _B2} = protocol:uint32(_B1),
    {V1_monster_obj_id, _B3} = protocol:uint32(_B2),
    {V1_is_win, _B4} = protocol:uint16(_B3),
    {V1_battle_round, _B5} = protocol:uint16(_B4),
    {V1_record_id, _B6} = protocol:uint32(_B5),
    {ok, {V1_atk_user_id, V1_monster_obj_id, V1_is_win, V1_battle_round, V1_record_id}};

unpack(cli, 8162, _B1) ->
    {V1_user_id, _B2} = protocol:uint32(_B1),
    {V1_monster_point_id, _B3} = protocol:uint32(_B2),
    {V1_is_win, _B4} = protocol:uint16(_B3),
    {V1_battle_round, _B5} = protocol:uint16(_B4),
    {V1_record_id, _B6} = protocol:uint32(_B5),
    {V1_monster_type, _B7} = protocol:uint16(_B6),
    {V1_param1, _B8} = protocol:uint16(_B7),
    {V1_param2, _B9} = protocol:uint32(_B8),
    {ok, {V1_user_id, V1_monster_point_id, V1_is_win, V1_battle_round, V1_record_id, V1_monster_type, V1_param1, V1_param2}};

unpack(srv, 8201, _B1) ->
    {ok, {}};

unpack(cli, 8251, _B1) ->
    {V1_result, _B2} = protocol:uint16(_B1),
    {ok, {V1_result}};

unpack(srv, 8202, _B1) ->
    {ok, {}};

unpack(cli, 8252, _B1) ->
    {V1_encourage_num, _B2} = protocol:uint16(_B1),
    {V1_winner_num, _B3} = protocol:uint32(_B2),
    {V1_revive_time, _B4} = protocol:uint16(_B3),
    {V1_remain_time, _B5} = protocol:uint32(_B4),
    {V1_next_push_time, _B6} = protocol:uint32(_B5),
    {V1_bz_remain_num, _B7} = protocol:uint16(_B6),
    {ok, {V1_encourage_num, V1_winner_num, V1_revive_time, V1_remain_time, V1_next_push_time, V1_bz_remain_num}};

unpack(srv, 8203, _B1) ->
    {ok, {}};

unpack(cli, 8253, _B1) ->
    {V1_coin, _B2} = protocol:uint32(_B1),
    {ok, {V1_coin}};

unpack(srv, 8204, _B1) ->
    {ok, {}};

unpack(srv, 8205, _B1) ->
    {ok, {}};

unpack(cli, 8255, _B1) ->
    {V1_encourage_num, _B2} = protocol:uint16(_B1),
    {ok, {V1_encourage_num}};

unpack(cli, 8256, _B1) ->
    {V1_next_push_time, _B2} = protocol:uint32(_B1),
    {V1_bz_remain_num, _B3} = protocol:uint16(_B2),
    {ok, {V1_next_push_time, V1_bz_remain_num}};

unpack(srv, 8401, _B1) ->
    {ok, {}};

unpack(srv, 8402, _B1) ->
    {ok, {}};

unpack(cli, 8452, _B1) ->
    {V1_encourage_num, _B2} = protocol:uint16(_B1),
    {ok, {V1_encourage_num}};

unpack(srv, 8403, _B1) ->
    {ok, {}};

unpack(srv, 8404, _B1) ->
    {ok, {}};

unpack(cli, 8454, _B1) ->
    {V1_encourage_num, _B2} = protocol:uint16(_B1),
    {V1_revive_time, _B3} = protocol:uint16(_B2),
    {V1_remain_time, _B4} = protocol:uint32(_B3),
    {V1_next_refresh_time, _B5} = protocol:uint32(_B4),
    {V1_sum_xg, _B6} = protocol:uint16(_B5),
    {V1_sum_resource_num, _B7} = protocol:uint16(_B6),
    {V1_kill_enemy_num, _B8} = protocol:uint16(_B7),
    {V1_winner_num, _B9} = protocol:uint16(_B8),
    {V1_silver, _B10} = protocol:uint32(_B9),
    {V1_army_rank_list, _B14} = protocol:array(_B10, fun(_B11) ->
        {V2_army_name, _B12} = protocol:string(_B11),
        {V2_resource_num, _B13} = protocol:uint16(_B12),
        {{V2_army_name, V2_resource_num}, _B13}
    end),
    {ok, {V1_encourage_num, V1_revive_time, V1_remain_time, V1_next_refresh_time, V1_sum_xg, V1_sum_resource_num, V1_kill_enemy_num, V1_winner_num, V1_silver, V1_army_rank_list}};

unpack(cli, 8455, _B1) ->
    {V1_army_rank_list, _B5} = protocol:array(_B1, fun(_B2) ->
        {V2_army_name, _B3} = protocol:string(_B2),
        {V2_resource_num, _B4} = protocol:uint16(_B3),
        {{V2_army_name, V2_resource_num}, _B4}
    end),
    {ok, {V1_army_rank_list}};

unpack(cli, 8456, _B1) ->
    {V1_type, _B2} = protocol:uint16(_B1),
    {V1_resource_type, _B3} = protocol:uint16(_B2),
    {V1_xg, _B4} = protocol:uint16(_B3),
    {V1_gx, _B5} = protocol:uint16(_B4),
    {V1_kill_num, _B6} = protocol:uint16(_B5),
    {V1_winner_num, _B7} = protocol:uint16(_B6),
    {V1_silver, _B8} = protocol:uint32(_B7),
    {ok, {V1_type, V1_resource_type, V1_xg, V1_gx, V1_kill_num, V1_winner_num, V1_silver}};

unpack(cli, 8457, _B1) ->
    {V1_resource_num, _B2} = protocol:uint16(_B1),
    {V1_army_name, _B3} = protocol:string(_B2),
    {ok, {V1_resource_num, V1_army_name}};

unpack(cli, 8458, _B1) ->
    {V1_sum_xg, _B2} = protocol:uint16(_B1),
    {V1_sum_resource_num, _B3} = protocol:uint16(_B2),
    {V1_kill_enemy_num, _B4} = protocol:uint16(_B3),
    {V1_silver, _B5} = protocol:uint16(_B4),
    {V1_self_army_resource, _B6} = protocol:uint16(_B5),
    {V1_self_army_rank, _B7} = protocol:uint16(_B6),
    {V1_rank_list, _B11} = protocol:array(_B7, fun(_B8) ->
        {V2_army_name, _B9} = protocol:string(_B8),
        {V2_resource_num, _B10} = protocol:uint16(_B9),
        {{V2_army_name, V2_resource_num}, _B10}
    end),
    {ok, {V1_sum_xg, V1_sum_resource_num, V1_kill_enemy_num, V1_silver, V1_self_army_resource, V1_self_army_rank, V1_rank_list}};

unpack(srv, 9001, _B1) ->
    {V1_rank_type, _B2} = protocol:uint8(_B1),
    {ok, {V1_rank_type}};

unpack(cli, 9051, _B1) ->
    {V1_rank_type, _B2} = protocol:uint8(_B1),
    {V1_last_refresh_time, _B3} = protocol:int32(_B2),
    {V1_rank_list, _B15} = protocol:array8(_B3, fun(_B4) ->
        {V2_rank_id, _B5} = protocol:uint16(_B4),
        {V2_user_id, _B6} = protocol:uint32(_B5),
        {V2_job, _B7} = protocol:uint8(_B6),
        {V2_sex, _B8} = protocol:uint8(_B7),
        {V2_user_level, _B9} = protocol:uint32(_B8),
        {V2_role_fc, _B10} = protocol:uint32(_B9),
        {V2_rank_data, _B11} = protocol:uint32(_B10),
        {V2_other_data, _B12} = protocol:uint32(_B11),
        {V2_user_name, _B13} = protocol:string(_B12),
        {V2_army_name, _B14} = protocol:string(_B13),
        {{V2_rank_id, V2_user_id, V2_job, V2_sex, V2_user_level, V2_role_fc, V2_rank_data, V2_other_data, V2_user_name, V2_army_name}, _B14}
    end),
    {ok, {V1_rank_type, V1_last_refresh_time, V1_rank_list}};

unpack(cli, 9201, _B1) ->
    {V1_index, _B2} = protocol:uint16(_B1),
    {V1_num, _B3} = protocol:uint16(_B2),
    {ok, {V1_index, V1_num}};

unpack(srv, 9251, _B1) ->
    {V1_result, _B2} = protocol:uint8(_B1),
    {ok, {V1_result}};

unpack(cli, 9202, _B1) ->
    {V1_item_id, _B2} = protocol:uint32(_B1),
    {V1_item_num, _B3} = protocol:uint16(_B2),
    {V1_shop_type, _B4} = protocol:uint16(_B3),
    {V1_vip_level, _B5} = protocol:uint8(_B4),
    {ok, {V1_item_id, V1_item_num, V1_shop_type, V1_vip_level}};

unpack(srv, 9252, _B1) ->
    {V1_reslut, _B2} = protocol:uint8(_B1),
    {ok, {V1_reslut}};

unpack(cli, 9851, _B1) ->
    {V1_vip_level, _B2} = protocol:int32(_B1),
    {V1_vip_value, _B3} = protocol:int32(_B2),
    {ok, {V1_vip_level, V1_vip_value}};

unpack(cli, 9852, _B1) ->
    {V1_gift_id, _B2} = protocol:int32(_B1),
    {ok, {V1_gift_id}};

unpack(srv, 9901, _B1) ->
    {ok, {}};

unpack(cli, 9951, _B1) ->
    {V1_function, _B4} = protocol:array(_B1, fun(_B2) ->
        {V2_function_id, _B3} = protocol:int32(_B2),
        {{V2_function_id}, _B3}
    end),
    {ok, {V1_function}};

unpack(srv, 9902, _B1) ->
    {V1_newfunc_id, _B2} = protocol:int32(_B1),
    {ok, {V1_newfunc_id}};

unpack(cli, 9952, _B1) ->
    {V1_is_succ, _B2} = protocol:int32(_B1),
    {ok, {V1_is_succ}};

unpack(srv, 9911, _B1) ->
    {ok, {}};

unpack(cli, 9961, _B1) ->
    {V1_data, _B2} = protocol:string(_B1),
    {ok, {V1_data}};

unpack(srv, 9912, _B1) ->
    {V1_data, _B2} = protocol:string(_B1),
    {ok, {V1_data}};

unpack(srv, 9921, _B1) ->
    {V1_operation_type, _B2} = protocol:int32(_B1),
    {V1_mail, _B5} = protocol:array(_B2, fun(_B3) ->
        {V2_mail_id, _B4} = protocol:int32(_B3),
        {{V2_mail_id}, _B4}
    end),
    {ok, {V1_operation_type, V1_mail}};

unpack(cli, 9971, _B1) ->
    {V1_operation_type, _B2} = protocol:int32(_B1),
    {V1_mail, _B5} = protocol:array(_B2, fun(_B3) ->
        {V2_mail_id, _B4} = protocol:int32(_B3),
        {{V2_mail_id}, _B4}
    end),
    {ok, {V1_operation_type, V1_mail}};

unpack(cli, 9992, _B1) ->
    {V1_item_list, _B5} = protocol:array8(_B1, fun(_B2) ->
        {V2_item_id, _B3} = protocol:uint32(_B2),
        {V2_num, _B4} = protocol:uint32(_B3),
        {{V2_item_id, V2_num}, _B4}
    end),
    {V1_gain_list, _B9} = protocol:array8(_B5, fun(_B6) ->
        {V2_r_type, _B7} = protocol:uint8(_B6),
        {V2_r_value, _B8} = protocol:uint32(_B7),
        {{V2_r_type, V2_r_value}, _B8}
    end),
    {ok, {V1_item_list, V1_gain_list}};

unpack(cli, 9993, _B1) ->
    {V1_time, _B2} = protocol:uint32(_B1),
    {V1_roll_speed, _B3} = protocol:uint8(_B2),
    {V1_roll_count, _B4} = protocol:uint8(_B3),
    {V1_disp_region, _B5} = protocol:uint8(_B4),
    {V1_notice_type, _B6} = protocol:uint8(_B5),
    {V1_notice, _B7} = protocol:string(_B6),
    {ok, {V1_time, V1_roll_speed, V1_roll_count, V1_disp_region, V1_notice_type, V1_notice}};

unpack(cli, 9994, _B1) ->
    {V1_type, _B2} = protocol:int16(_B1),
    {V1_parms, _B3} = protocol:string(_B2),
    {ok, {V1_type, V1_parms}};

unpack(srv, 9945, _B1) ->
    {ok, {}};

unpack(cli, 9995, _B1) ->
    {V1_timestamp, _B2} = protocol:uint32(_B1),
    {ok, {V1_timestamp}};

unpack(cli, 9996, _B1) ->
    {ok, {}};

unpack(srv, 9947, _B1) ->
    {ok, {}};

unpack(cli, 9997, _B1) ->
    {ok, {}};

unpack(cli, 9998, _B1) ->
    {V1_result, _B2} = protocol:int32(_B1),
    {V1_call_msg_type, _B3} = protocol:int16(_B2),
    {V1_parms, _B4} = protocol:string(_B3),
    {ok, {V1_result, V1_call_msg_type, V1_parms}};

unpack(srv, 9999, _B1) ->
    {V1_channel_id, _B2} = protocol:uint16(_B1),
    {V1_cmd, _B3} = protocol:string(_B2),
    {ok, {V1_channel_id, V1_cmd}};

unpack(_Type, Id, _Data) ->
    {error, {undefined, Id}}.
