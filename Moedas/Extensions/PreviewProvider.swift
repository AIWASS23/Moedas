//
//  PreviewProvider.swift
//  Moedas
//
//  Created by Marcelo de Araújo on 29/06/2023.
//

import SwiftUI

extension PreviewProvider {
    
    static var dev: DeveloperPreview {
        DeveloperPreview.instance
    }
}

final class DeveloperPreview {
    
    static let instance = DeveloperPreview()
    
    let homeVM = HomeViewModel()
    
    let stat1 = StatisticModel(title: "Market Cap", value: "$12.5Bn", percentageChange: 25.34)
    let stat2 = StatisticModel(title: "Total Volume", value: "$1.23Tr")
    let stat3 = StatisticModel(title: "Portfolio Value", value: "$50.4k", percentageChange: -12.34)
    
    let coin = CoinModel(
        id: "bitcoin",
        symbol: "btc",
        name: "Bitcoin",
        image: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
        currentPrice: 30394,
        marketCap: 590396798041,
        marketCapRank: 1,
        fullyDilutedValuation: 638602366703,
        totalVolume: 12110678020,
        high24H: 30459,
        low24H: 30017,
        priceChange24H: 132.83,
        priceChangePercentage24H: 0.43894,
        marketCapChange24H: 3194946142,
        marketCapChangePercentage24H: 0.5441,
        circulatingSupply: 19414793,
        totalSupply: 21000000,
        maxSupply: 21000000,
        ath: 69045,
        athChangePercentage: -55.95664,
        athDate: "2021-11-10T14:24:11.849Z",
        atl: 67.81,
        atlChangePercentage: 44746.01824,
        atlDate: "2013-07-06T00:00:00.000Z",
        lastUpdated: "2023-06-29T08:42:30.079Z",
        sparklineIn7D: SparklineIn7D(
            price: [
                30279.510925726827,
                30120.2890226116,
                30109.230535219514,
                30098.25332070478,
                30112.188830620395,
                30219.633853696996,
                29923.347790968408,
                30108.40529950787,
                30262.74304967667,
                29923.31406667842,
                29779.36326737228,
                29952.78202027777,
                30150.275362618464,
                30067.813515549078,
                30167.25428957438,
                30160.68471185259,
                30032.03072369572,
                29990.438681814307,
                29935.632106749556,
                30024.17749236586,
                30008.83951926442,
                29970.406455191685,
                30017.269906476122,
                30000.35130419774,
                30045.89112521761,
                30006.9917276219,
                29960.13524020479,
                30026.842797016867,
                30004.51721478935,
                30103.288035249047,
                30095.934842009796,
                30119.997562159417,
                30012.92340770855,
                30268.526964196288,
                30982.752567804153,
                30977.251274608752,
                31185.219831413775,
                30930.14672404951,
                30813.13994256805,
                30909.18288158918,
                30716.10018321133,
                30651.267124205628,
                30629.24435333575,
                30497.814422760795,
                30580.318716052872,
                30779.256199291853,
                30747.41026602438,
                30724.745557757993,
                30720.38116574939,
                30724.50097466763,
                30635.39927111461,
                30593.713077589906,
                30628.594418598434,
                30744.29522703475,
                30702.20649474433,
                30700.698752018914,
                30644.09610418547,
                30688.68297717192,
                30403.97736807775,
                30489.827643480003,
                30619.454947685168,
                30664.56321186234,
                30647.404676137427,
                30564.886468465585,
                30529.59423885306,
                30523.24113160855,
                30537.816664634793,
                30529.954155372398,
                30626.81854979441,
                30658.41969993051,
                30787.55658123859,
                30943.91000335516,
                30868.72227525015,
                30847.342963438237,
                30723.987969083413,
                30749.26959122274,
                30714.119149097933,
                30613.856331252602,
                30652.59455845883,
                30661.393915968532,
                30659.651055706494,
                30582.647334317116,
                30560.926979257594,
                30586.298214996572,
                30577.775617385185,
                30422.348885621876,
                30402.604991350127,
                30494.43490593407,
                30452.382329695585,
                30517.730672385238,
                30469.35912115559,
                30508.60888625466,
                30241.284423762176,
                30193.63861677961,
                30236.233618476017,
                30250.638045796226,
                30236.42468022238,
                30430.88476078958,
                30401.990547910882,
                30394.068473543935,
                30303.890093999078,
                30262.62253625355,
                30323.56664567045,
                30305.29805574046,
                30448.975759126337,
                30393.01984154619,
                30443.052698610674,
                30196.355307137776,
                30108.572943514617,
                30211.898951847645,
                30259.427747406215,
                30170.700475086625,
                30160.11413803748,
                30238.170753896567,
                30285.50506407074,
                30359.048699981748,
                30356.515626330172,
                30427.448172931017,
                30403.989890419154,
                30351.994844727888,
                30311.29936071011,
                30276.3940222436,
                30412.253043421388,
                30375.47437428298,
                30379.31873381048,
                30643.960537523653,
                30709.365311079484,
                30708.68777542332,
                30622.536752397435,
                30796.125643890584,
                30606.548604329804,
                30680.777144788528,
                30714.679556866613,
                30717.96616205163,
                30707.865284270578,
                30644.64832067187,
                30762.427364040886,
                30601.389167021232,
                30693.54635606798,
                30601.864524971417,
                30514.817560790405,
                30513.493374613012,
                30468.148539054357,
                30457.386223054567,
                30455.037294765945,
                30429.001564049908,
                30180.930217518555,
                30270.93176226537,
                30297.077325251306,
                30334.234501781015,
                30365.94644623768,
                30098.49319936007,
                30181.45399608657,
                30415.639640670775,
                30390.915410524896,
                30333.129666720717,
                30129.351513145535,
                30197.222962972308,
                30073.870146712616,
                30105.930081799044,
                30131.348255693778,
                30095.79941438012,
                30083.477245263824,
                30065.748405051192,
                30154.67106526508,
                30108.139355476294,
                30166.219558146116,
                30218.0871523969
            ]
        ),
        priceChangePercentage24HInCurrency: 0.4389364585209771,
        currentHoldings: 1.5
    )
    
    private init() {}
}