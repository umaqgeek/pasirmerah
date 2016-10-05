
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <title> 
            Crypto-Currency Market Capitalizations
        </title>
       
        <style>
        
            element.style {
                width: 168px;
            }
            th#th-marketcap-graph {
                padding-left: 12px;
            }
            .table>thead>tr>th {
                vertical-align: bottom;
                border-bottom: 2px solid #ddd;
            }
            .table>thead>tr>th, .table>tbody>tr>th, .table>tfoot>tr>th, .table>thead>tr>td, .table>tbody>tr>td, .table>tfoot>tr>td {
                padding: 8px;
                line-height: 1.42857143;
            }
            th {
                font-size: 15px;
            }
            th, .no-wrap {
                white-space: nowrap;
            }
            th {
                text-align: left;
            }
            th {
                font-weight: bold;
            }
            td, th {
                display: table-cell;
            }
            #nav-main {
                padding-right: 5px;
                margin-top: 10px;
            }
            .navbar-default {
                background-color: #f8f8f8;
                border-color: #e7e7e7;
            }
            
            .navbar {
                position: relative;
                min-height: 50px;
                margin-bottom: 20px;
                border: 1px solid transparent;
            }
            
            
            @media (min-width: 768px)
            navbar-header {
                float: left;
            }
            
        </style>


    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-10">

                    <h1 id="title"><a href="/">Crypto-Currency Market Capitalizations</a></h1>


                    <hr/>     

                    <nav id="nav-main" class="navbar navbar-default" role="navigation">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-1">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>
                        <div class="collapse navbar-collapse" id="navbar-collapse-1">
                            <ul class="nav navbar-nav">
                                <li class="dropdown">
                                    <a href="/" class="dropdown-toggle" data-toggle="dropdown">Market Cap <span class="caret"></span></a>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="/">All</a></li>
                                        <li><a href="/currencies/">Currencies</a></li>
                                        <li><a href="/assets/">Assets</a></li>
                                    </ul>                  
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Trade Volume <span class="caret"></span></a>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="/currencies/volume/24-hour/">24 Hour Volume Rankings (Currency)</a></li>
                                        <li><a href="/exchanges/volume/24-hour/">24 Hour Volume Rankings (Exchange)</a></li>
                                        <li><a href="/currencies/volume/monthly/">Monthly Volume Rankings (Currency)</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Trending <span class="caret"></span></a>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="/gainers-losers/">Gainers and Losers</a></li>
                                        <li><a href="/new/">Recently Added</a></li>
                                    </ul>
                                </li>

                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Tools <span class="caret"></span></a>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="/charts/">Global Charts</a></li>
                                        <li><a href="/historical/">Historical Snapshots</a></li>
                                        <li><a href="/calculator/">Currency Converter Calculator</a></li>
                                    </ul>
                                </li>                        
                            </ul>
                            <form action="/currencies/search/" class="navbar-form navbar-right" role="search">
                                <div class="form-group">
                                    <input type="text" id="quick-search-box" class="form-control js-quick-search" placeholder="Search Currencies" name="q">
                                    <button class="btn btn-primary hidden-sm hidden-md hidden-lg" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                                </div>
                                <button class="btn btn-primary hidden-xs" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                            </form>
                            <div class="bottom-margin-1x hidden-sm hidden-md hidden-lg"></div>
                        </div>
                    </nav>            


                    <div class="row">
                        <div class="col-xs-12">
                            <div class="row">
                                <div class="hidden-xs hidden-sm col-md-4">
                                    <ul id="category-tabs" class="nav nav-tabs text-left" role="tablist">
                                        <li  class="active" >
                                            <a class="dropdown-toggle" data-toggle="dropdown" href="#"> All <span class="caret"></span></a>
                                            <ul class="dropdown-menu" role="menu">
                                                <li><a href="/all/">Top 100</a></li>
                                                <li><a href="/all/views/all/">Full List</a></li>
                                            </ul>
                                        </li> 
                                        <li >
                                            <a class="dropdown-toggle" data-toggle="dropdown" href="#"> Currencies <span class="caret"></span></a>
                                            <ul class="dropdown-menu" role="menu">
                                                <li><a href="/currencies/">Top 100</a></li>
                                                <li><a href="/currencies/views/all/">Full List</a></li>
                                                <li class="divider"></li>
                                                <li><a href="/">Market Cap by Available Supply</a></li> 
                                                <li><a href="/currencies/views/market-cap-by-total-supply/">Market Cap by Total Supply</a></li>
                                                <li><a href="/currencies/views/filter-non-mineable/">Filter Non-Mineable</a></li>
                                                <li><a href="/currencies/views/filter-premined/">Filter Premined</a></li>
                                                <li><a href="/currencies/views/filter-non-mineable-and-premined/">Filter Non-Mineable and Premined</a></li>
                                            </ul>
                                        </li>
                                        <li >
                                            <a class="dropdown-toggle" data-toggle="dropdown" href="#"> Assets <span class="caret"></span> </a>
                                            <ul class="dropdown-menu" role="menu">
                                                <li><a href="/assets/">Top 100</a></li>
                                                <li><a href="/assets/views/all/">Full List</a></li>
                                                <li class="divider"></li>
                                                <li><a href="/assets/">Market Cap by Available Supply</a></li> 
                                                <li><a href="/assets/views/market-cap-by-total-supply/">Market Cap by Total Supply</a></li>
                                            </ul>                        
                                        </li>
                                    </ul> 
                                </div>

                                <div class="hidden-xs hidden-sm col-md-4 text-left">
                                    <div id="currency-switch" class="btn-group">
                                        <button id="currency-switch-button" type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                                            USD <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu text-center" role="menu">
                                            <li class="pointer"><a href="#USD" class="price-toggle" data-currency="usd">USD</a></li>
                                            <li class="divider"></li>                                
                                            <li class="pointer"><a href="#BTC" class="price-toggle" data-currency="btc">BTC</a></li>
                                            <li class="divider"></li>
                                            <li class="pointer"><a href="#EUR" class="price-toggle" data-currency="eur">EUR</a></li>
                                            <li class="divider"></li>
                                            <li class="pointer"><a href="#CNY" class="price-toggle" data-currency="cny">CNY</a></li>
                                            <li class="divider"></li>
                                            <li class="pointer"><a href="#GBP" class="price-toggle" data-currency="gbp">GBP</a></li>
                                            <li class="divider"></li>
                                            <li class="pointer"><a href="#CAD" class="price-toggle" data-currency="cad">CAD</a></li>
                                            <li class="divider"></li>
                                            <li class="pointer"><a href="#RUB" class="price-toggle" data-currency="rub">RUB</a></li>
                                            <li class="divider"></li>
                                            <li class="pointer"><a href="#HKD" class="price-toggle" data-currency="hkd">HKD</a></li>
                                            <li class="divider"></li>
                                            <li class="pointer"><a href="#JPY" class="price-toggle" data-currency="jpy">JPY</a></li>
                                            <li class="divider"></li>
                                            <li class="pointer"><a href="#AUD" class="price-toggle" data-currency="aud">AUD</a></li>                
                                        </ul>
                                    </div> 
                                </div>

                                <div class="hidden-xs hidden-sm col-md-4 text-right">
                                    <div class="clear"></div>
                                    <div class="pull-right">
                                        <ul class="pagination top-paginator">


                                            <li><a href="2">Next 100  &rarr;</a></li>

                                            <li><a href="/all/views/all/">View All</a></li>
                                        </ul>
                                    </div>
                                </div>  
                            </div>          
                            <table class="table" id="currencies">
                                <thead>
                                    <tr>
                                        <th class="text-center">#</th>
                                        <th id="th-name" class="sortable">Name</th>

                                        <th id="th-marketcap" class="sortable text-right">Market Cap</th>
                                        <th id="th-price" class="sortable text-right">Price</th><th id="th-totalsupply" class="sortable text-right" title="The number of coins in existence available to the public">Available  Supply</th>
                                        <th id="th-volume" class="sortable text-right">Volume (24h)</th>
                                        <th id="th-change" class="sortable text-right">% Change (24h)</th><th id="th-marketcap-graph">Price Graph (7d)</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <tr id="id-bitcoin" class="">
                                        <td class="text-center">
                                            1
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/bitcoin.png" class="currency-logo" alt="Bitcoin">
                                            <a href="/currencies/bitcoin/">Bitcoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="9622373676.77" data-btc="15850152.0">

                                            $9,622,373,677 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/bitcoin/#markets" class="price" data-usd="607.084" data-btc="1.0">$607.08</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://blockchain.info"  data-supply="15850152.0">

                                                15,850,152
                                                BTC   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/bitcoin/#markets" class="volume" data-usd="91216700.0" data-btc="150241.0">$91,216,700</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="1.50" data-btc="0.00">1.50%</td>

                                        <td><a href="/currencies/bitcoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/1.png"></a></td>
                                    </tr>

                                    <tr id="id-ethereum" class="">
                                        <td class="text-center">
                                            2
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/ethereum.png" class="currency-logo" alt="Ethereum">
                                            <a href="/currencies/ethereum/">Ethereum</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="974813635.844" data-btc="1605600.9903">

                                            $974,813,636 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/ethereum/#markets" class="price" data-usd="11.6521" data-btc="0.019192">$11.65</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="https://live.ether.camp/"  data-supply="83659909.8741">

                                                83,659,910
                                                ETH   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/ethereum/#markets" class="volume" data-usd="7179890.0" data-btc="11825.9">$7,179,890</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-0.15" data-btc="-1.62">-0.15%</td>

                                        <td><a href="/currencies/ethereum/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/1027.png"></a></td>
                                    </tr>

                                    <tr id="id-ripple" class="">
                                        <td class="text-center">
                                            3
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/ripple.png" class="currency-logo" alt="Ripple">
                                            <a href="/currencies/ripple/">Ripple</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="209395856.46" data-btc="344891.988051">

                                            $209,395,856 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/ripple/#markets" class="price" data-usd="0.00592907" data-btc="9.76566e-06">$0.005929</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="https://ripple.com/graph"  data-supply="35316813001.0">

                                                35,316,813,001
                                                XRP   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/ripple/#markets" class="volume" data-usd="789797.0" data-btc="1300.86">$789,797</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-0.78" data-btc="-2.24">-0.78%</td>

                                        <td><a href="/currencies/ripple/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/52.png"></a></td>
                                    </tr>

                                    <tr id="id-litecoin" class="">
                                        <td class="text-center">
                                            4
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/litecoin.png" class="currency-logo" alt="Litecoin">
                                            <a href="/currencies/litecoin/">Litecoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="190506104.373" data-btc="313778.91612">

                                            $190,506,104 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/litecoin/#markets" class="price" data-usd="4.01766" data-btc="0.00661741">$4.02</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://explorer.litecoin.net/chain/Litecoin"  data-supply="47417179.2469">

                                                47,417,179
                                                LTC   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/litecoin/#markets" class="volume" data-usd="4392810.0" data-btc="7235.32">$4,392,810</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="3.38" data-btc="1.85">3.38%</td>

                                        <td><a href="/currencies/litecoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/2.png"></a></td>
                                    </tr>

                                    <tr id="id-monero" class="">
                                        <td class="text-center">
                                            5
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/monero.png" class="currency-logo" alt="Monero">
                                            <a href="/currencies/monero/">Monero</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="167472248.515" data-btc="275840.415448">

                                            $167,472,249 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/monero/#markets" class="price" data-usd="13.0625" data-btc="0.021515">$13.06</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://chainradar.com/xmr/blocks"  data-supply="12820841.9915">

                                                12,820,842
                                                XMR   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/monero/#markets" class="volume" data-usd="29384100.0" data-btc="48398.1">$29,384,100</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="18.06" data-btc="16.32">18.06%</td>

                                        <td><a href="/currencies/monero/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/328.png"></a></td>
                                    </tr>

                                    <tr id="id-ethereum-classic" class="">
                                        <td class="text-center">
                                            6
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/ethereum-classic.png" class="currency-logo" alt="Ethereum Classic">
                                            <a href="/currencies/ethereum-classic/">Ethereum Cla...</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="122918111.088" data-btc="202456.212552">

                                            $122,918,111 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/ethereum-classic/#markets" class="price" data-usd="1.46986" data-btc="0.00242098">$1.47</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://gastracker.io/"  data-supply="83625727.0">

                                                83,625,727
                                                ETC   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/ethereum-classic/#markets" class="volume" data-usd="4321300.0" data-btc="7117.54">$4,321,300</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="9.31" data-btc="7.69">9.31%</td>

                                        <td><a href="/currencies/ethereum-classic/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/1321.png"></a></td>
                                    </tr>

                                    <tr id="id-steem" class="">
                                        <td class="text-center">
                                            7
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/steem.png" class="currency-logo" alt="Steem">
                                            <a href="/currencies/steem/">Steem</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="109806375.32" data-btc="180860.424589">

                                            $109,806,375 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/steem/#markets" class="price" data-usd="0.820577" data-btc="0.00135156">$0.820577</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://steemd.com/"  data-supply="133816052.997">

                                                133,816,053
                                                STEEM   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/steem/#markets" class="volume" data-usd="78402.5" data-btc="129.135">$78,403</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-0.65" data-btc="-2.12">-0.65%</td>

                                        <td><a href="/currencies/steem/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/1230.png"></a></td>
                                    </tr>

                                    <tr id="id-dash" class="">
                                        <td class="text-center">
                                            8
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/dash.png" class="currency-logo" alt="Dash">
                                            <a href="/currencies/dash/">Dash</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="77546873.5" data-btc="127726.316218">

                                            $77,546,873 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/dash/#markets" class="price" data-usd="11.5484" data-btc="0.0190212">$11.55</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="https://chainz.cryptoid.info/dash/"  data-supply="6714945.2305">

                                                6,714,945
                                                DASH   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/dash/#markets" class="volume" data-usd="874814.0" data-btc="1440.89">$874,814</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="4.05" data-btc="2.51">4.05%</td>

                                        <td><a href="/currencies/dash/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/131.png"></a></td>
                                    </tr>

                                    <tr id="id-nem" class="">
                                        <td class="text-center">
                                            9
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/nem.png" class="currency-logo" alt="NEM">
                                            <a href="/currencies/nem/">NEM</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="49988159.9944" data-btc="82334.6099909">

                                            $49,988,160 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/nem/#markets" class="price" data-usd="0.00555424" data-btc="9.14829e-06">$0.005554</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://nembex.nem.ninja/"  data-supply="8999999999.0">

                                                8,999,999,999
                                                XEM   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/nem/#markets" class="volume" data-usd="131560.0" data-btc="216.69">$131,560</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-3.01" data-btc="-4.44">-3.01%</td>

                                        <td><a href="/currencies/nem/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/873.png"></a></td>
                                    </tr>

                                    <tr id="id-maidsafecoin" class="">
                                        <td class="text-center">
                                            10
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/maidsafecoin.png" class="currency-logo" alt="MaidSafeCoin">
                                            <a href="/assets/maidsafecoin/">MaidSafeCoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="40323958.5874" data-btc="66417.0445375">

                                            $40,323,959 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/assets/maidsafecoin/#markets" class="price" data-usd="0.0891034" data-btc="0.000146761">$0.089103</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://omnichest.info/lookupsp.aspx?sp=3"  data-supply="452552412.0">

                                                452,552,412
                                                MAID   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/assets/maidsafecoin/#markets" class="volume" data-usd="852583.0" data-btc="1404.27">$852,583</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-5.96" data-btc="-7.34">-5.96%</td>

                                        <td><a href="/assets/maidsafecoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/291.png"></a></td>
                                    </tr>

                                    <tr id="id-factom" class="">
                                        <td class="text-center">
                                            11
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/factom.png" class="currency-logo" alt="Factom">
                                            <a href="/currencies/factom/">Factom</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="25572179.1797" data-btc="42119.4394417">

                                            $25,572,179 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/factom/#markets" class="price" data-usd="2.92146" data-btc="0.00481188">$2.92</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://explorer.factom.org/" class="stale" data-supply="8753219.0">

                                                8,753,219
                                                FCT   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/factom/#markets" class="volume" data-usd="2663500.0" data-btc="4387.01">$2,663,500</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="8.82" data-btc="7.22">8.82%</td>

                                        <td><a href="/currencies/factom/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/1087.png"></a></td>
                                    </tr>

                                    <tr id="id-lisk" class="">
                                        <td class="text-center">
                                            12
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/lisk.png" class="currency-logo" alt="Lisk">
                                            <a href="/currencies/lisk/">Lisk</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="24997200.0" data-btc="41172.4">

                                            $24,997,200 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/lisk/#markets" class="price" data-usd="0.249972" data-btc="0.000411724">$0.249972</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="https://explorer.lisk.io/" class="stale" data-supply="100000000.0">

                                                100,000,000
                                                LSK   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/lisk/#markets" class="volume" data-usd="518448.0" data-btc="853.926">$518,448</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="2.06" data-btc="0.56">2.06%</td>

                                        <td><a href="/currencies/lisk/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/1214.png"></a></td>
                                    </tr>

                                    <tr id="id-dogecoin" class="">
                                        <td class="text-center">
                                            13
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/dogecoin.png" class="currency-logo" alt="Dogecoin">
                                            <a href="/currencies/dogecoin/">Dogecoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="24738954.3264" data-btc="40747.1109722">

                                            $24,738,954 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/dogecoin/#markets" class="price" data-usd="0.00023363" data-btc="3.84808e-07">$0.000234</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://dogechain.info/chain/Dogecoin"  data-supply="1.05889459087e+11">

                                                105,889,459,087
                                                DOGE   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/dogecoin/#markets" class="volume" data-usd="282896.0" data-btc="465.954">$282,896</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-0.67" data-btc="-2.14">-0.67%</td>

                                        <td><a href="/currencies/dogecoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/74.png"></a></td>
                                    </tr>

                                    <tr id="id-digixdao" class="">
                                        <td class="text-center">
                                            14
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/digixdao.png" class="currency-logo" alt="DigixDAO">
                                            <a href="/assets/digixdao/">DigixDAO</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="20944600.0" data-btc="34497.6">

                                            $20,944,600 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/assets/digixdao/#markets" class="price" data-usd="10.4723" data-btc="0.0172488">$10.47</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="https://etherscan.io/token/dgd"  data-supply="2000000.0">

                                                2,000,000
                                                DGD   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/assets/digixdao/#markets" class="volume" data-usd="37050.6" data-btc="61.0253">$37,051</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-0.34" data-btc="-1.81">-0.34%</td>

                                        <td><a href="/assets/digixdao/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/1229.png"></a></td>
                                    </tr>

                                    <tr id="id-nxt" class="">
                                        <td class="text-center">
                                            15
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/nxt.png" class="currency-logo" alt="Nxt">
                                            <a href="/currencies/nxt/">Nxt</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="20216962.6786" data-btc="33299.0674">

                                            $20,216,963 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/nxt/#markets" class="price" data-usd="0.0202372" data-btc="3.33324e-05">$0.020237</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="https://www.mynxt.info/blockexplorer/"  data-supply="998999994.0">

                                                998,999,994
                                                NXT   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/nxt/#markets" class="volume" data-usd="337893.0" data-btc="556.538">$337,893</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-4.56" data-btc="-5.97">-4.56%</td>

                                        <td><a href="/currencies/nxt/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/66.png"></a></td>
                                    </tr>

                                    <tr id="id-emercoin" class="">
                                        <td class="text-center">
                                            16
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/emercoin.png" class="currency-logo" alt="Emercoin">
                                            <a href="/currencies/emercoin/">Emercoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="16654888.4647" data-btc="27431.9538803">

                                            $16,654,888 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/emercoin/#markets" class="price" data-usd="0.433519" data-btc="0.000714041">$0.433519</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="https://emercoin.mintr.org/"  data-supply="38417897.4041">

                                                38,417,897
                                                EMC   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/emercoin/#markets" class="volume" data-usd="59452.4" data-btc="97.923">$59,452</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-1.45" data-btc="-2.91">-1.45%</td>

                                        <td><a href="/currencies/emercoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/558.png"></a></td>
                                    </tr>

                                    <tr id="id-waves" class="">
                                        <td class="text-center">
                                            17
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/waves.png" class="currency-logo" alt="Waves">
                                            <a href="/currencies/waves/">Waves</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="16486600.0" data-btc="27154.8">

                                            $16,486,600 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/waves/#markets" class="price" data-usd="0.164866" data-btc="0.000271548">$0.164866</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://wavesexplorer.com/"  data-supply="100000000.0">

                                                100,000,000
                                                WAVES   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/waves/#markets" class="volume" data-usd="26604.5" data-btc="43.8198">$26,605</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="1.35" data-btc="-0.15">1.35%</td>

                                        <td><a href="/currencies/waves/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/1274.png"></a></td>
                                    </tr>

                                    <tr id="id-bitshares" class="">
                                        <td class="text-center">
                                            18
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/bitshares.png" class="currency-logo" alt="BitShares">
                                            <a href="/currencies/bitshares/">BitShares</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="13634178.9171" data-btc="22456.6095268">

                                            $13,634,179 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/bitshares/#markets" class="price" data-usd="0.00529851" data-btc="8.72708e-06">$0.005299</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://cryptofresh.com/"  data-supply="2573210000.0">

                                                2,573,210,000
                                                BTS   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/bitshares/#markets" class="volume" data-usd="399335.0" data-btc="657.738">$399,335</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="5.67" data-btc="4.10">5.67%</td>

                                        <td><a href="/currencies/bitshares/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/463.png"></a></td>
                                    </tr>

                                    <tr id="id-peerplays" class="">
                                        <td class="text-center">
                                            19
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/peerplays.png" class="currency-logo" alt="Peerplays">
                                            <a href="/assets/peerplays/">Peerplays</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="13246800.0" data-btc="21818.5">

                                            $13,246,800 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/assets/peerplays/#markets" class="price" data-usd="13.2468" data-btc="0.0218185">$13.25</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="https://cryptofresh.com/a/PEERPLAYS"  data-supply="1000000.0">

                                                1,000,000
                                                PEERPLAYS   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/assets/peerplays/#markets" class="volume" data-usd="1665.91" data-btc="2.74389">$1,666</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="0.58" data-btc="-0.90">0.58%</td>

                                        <td><a href="/assets/peerplays/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/1327.png"></a></td>
                                    </tr>

                                    <tr id="id-bitcrystals" class="">
                                        <td class="text-center">
                                            20
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/bitcrystals.png" class="currency-logo" alt="Bitcrystals">
                                            <a href="/assets/bitcrystals/">Bitcrystals</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="11399186.4727" data-btc="18775.4097553">

                                            $11,399,186 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/assets/bitcrystals/#markets" class="price" data-usd="0.271489" data-btc="0.000447165">$0.271489</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://blockscan.com/assetInfo/BITCRYSTALS"  data-supply="41987655.0161">

                                                41,987,655
                                                BCY   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/assets/bitcrystals/#markets" class="volume" data-usd="34687.3" data-btc="57.1328">$34,687</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-7.67" data-btc="-9.04">-7.67%</td>

                                        <td><a href="/assets/bitcrystals/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/1063.png"></a></td>
                                    </tr>

                                    <tr id="id-stellar" class="">
                                        <td class="text-center">
                                            21
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/stellar.png" class="currency-logo" alt="Stellar">
                                            <a href="/currencies/stellar/">Stellar</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="10903932.5928" data-btc="17959.7409476">

                                            $10,903,933 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/stellar/#markets" class="price" data-usd="0.00192884" data-btc="3.17697e-06">$0.001929</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="https://www.stellar.org/stats/"  data-supply="5653103727.0">

                                                5,653,103,727
                                                XLM   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/stellar/#markets" class="volume" data-usd="34933.6" data-btc="57.5385">$34,934</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="2.03" data-btc="0.53">2.03%</td>

                                        <td><a href="/currencies/stellar/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/512.png"></a></td>
                                    </tr>

                                    <tr id="id-shadowcoin" class="">
                                        <td class="text-center">
                                            22
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/shadowcoin.png" class="currency-logo" alt="ShadowCash">
                                            <a href="/currencies/shadowcoin/">ShadowCash</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="10398984.4485" data-btc="17128.002021">

                                            $10,398,984 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/shadowcoin/#markets" class="price" data-usd="1.58202" data-btc="0.00260572">$1.58</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://explorer.shadow.cash/chain/ShadowCash"  data-supply="6573231.97464">

                                                6,573,232
                                                SDC   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/shadowcoin/#markets" class="volume" data-usd="1113550.0" data-btc="1834.11">$1,113,550</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="3.07" data-btc="1.55">3.07%</td>

                                        <td><a href="/currencies/shadowcoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/493.png"></a></td>
                                    </tr>

                                    <tr id="id-bytecoin-bcn" class="">
                                        <td class="text-center">
                                            23
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/bytecoin-bcn.png" class="currency-logo" alt="Bytecoin">
                                            <a href="/currencies/bytecoin-bcn/">Bytecoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="9970874.92565" data-btc="16422.8660337">

                                            $9,970,875 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/bytecoin-bcn/#markets" class="price" data-usd="5.49918e-05" data-btc="9.05761e-08">$0.000055</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://chainradar.com/bcn/blocks"  data-supply="1.8131566753e+11">

                                                181,315,667,530
                                                BCN   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/bytecoin-bcn/#markets" class="volume" data-usd="8220.76" data-btc="13.5403">$8,221</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-5.07" data-btc="-6.47">-5.07%</td>

                                        <td><a href="/currencies/bytecoin-bcn/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/372.png"></a></td>
                                    </tr>

                                    <tr id="id-synereo" class="">
                                        <td class="text-center">
                                            24
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/synereo.png" class="currency-logo" alt="Synereo">
                                            <a href="/assets/synereo/">Synereo</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="9647956.54245" data-btc="15891.0243822">

                                            $9,647,957 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/assets/synereo/#markets" class="price" data-usd="0.154157" data-btc="0.00025391">$0.154157</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://omnichest.info/lookupsp.aspx?sp=39" class="stale" data-supply="62585264.0">

                                                62,585,264
                                                AMP   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/assets/synereo/#markets" class="volume" data-usd="175163.0" data-btc="288.508">$175,163</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-0.50" data-btc="-1.96">-0.50%</td>

                                        <td><a href="/assets/synereo/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/1125.png"></a></td>
                                    </tr>

                                    <tr id="id-counterparty" class="">
                                        <td class="text-center">
                                            25
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/counterparty.png" class="currency-logo" alt="Counterparty">
                                            <a href="/currencies/counterparty/">Counterparty</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="8986371.98211" data-btc="14801.3071055">

                                            $8,986,372 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/counterparty/#markets" class="price" data-usd="3.42424" data-btc="0.00564001">$3.42</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://www.blockscan.com/"  data-supply="2624340.57838">

                                                2,624,341
                                                XCP   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/counterparty/#markets" class="volume" data-usd="53921.2" data-btc="88.8127">$53,921</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-3.58" data-btc="-5.00">-3.58%</td>

                                        <td><a href="/currencies/counterparty/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/132.png"></a></td>
                                    </tr>

                                    <tr id="id-storjcoin-x" class="">
                                        <td class="text-center">
                                            26
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/storjcoin-x.png" class="currency-logo" alt="Storjcoin X">
                                            <a href="/assets/storjcoin-x/">Storjcoin X</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="8582212.3225" data-btc="14135.6246032">

                                            $8,582,212 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/assets/storjcoin-x/#markets" class="price" data-usd="0.170559" data-btc="0.000280925">$0.170559</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://blockscan.com/assetInfo.aspx?q=SJCX"  data-supply="50318144.0">

                                                50,318,144
                                                SJCX   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/assets/storjcoin-x/#markets" class="volume" data-usd="264784.0" data-btc="436.121">$264,784</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="37.43" data-btc="35.40">37.43%</td>

                                        <td><a href="/assets/storjcoin-x/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/549.png"></a></td>
                                    </tr>

                                    <tr id="id-xaurum" class="">
                                        <td class="text-center">
                                            27
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/xaurum.png" class="currency-logo" alt="Xaurum">
                                            <a href="/assets/xaurum/">Xaurum</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="8272017.94983" data-btc="13624.7041713">

                                            $8,272,018 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/assets/xaurum/#markets" class="price" data-usd="0.100171" data-btc="0.00016499">$0.100171</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://etherscan.io/token/0x4DF812F6064def1e5e029f1ca858777CC98D2D81"  data-supply="82578969.4605">

                                                82,578,969
                                                XAUR   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/assets/xaurum/#markets" class="volume" data-usd="66494.1" data-btc="109.521">$66,494</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="2.75" data-btc="1.23">2.75%</td>

                                        <td><a href="/assets/xaurum/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/895.png"></a></td>
                                    </tr>

                                    <tr id="id-peercoin" class="">
                                        <td class="text-center">
                                            28
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/peercoin.png" class="currency-logo" alt="Peercoin">
                                            <a href="/currencies/peercoin/">Peercoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="8156178.9931" data-btc="13433.88746">

                                            $8,156,179 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/peercoin/#markets" class="price" data-usd="0.347465" data-btc="0.000572303">$0.347465</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="https://chainz.cryptoid.info/ppc/"  data-supply="23473382.9108">

                                                23,473,383
                                                PPC   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/peercoin/#markets" class="volume" data-usd="38562.7" data-btc="63.5159">$38,563</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="0.51" data-btc="-0.98">0.51%</td>

                                        <td><a href="/currencies/peercoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/5.png"></a></td>
                                    </tr>

                                    <tr id="id-siacoin" class="">
                                        <td class="text-center">
                                            29
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/siacoin.png" class="currency-logo" alt="Siacoin">
                                            <a href="/currencies/siacoin/">Siacoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="8045178.91225" data-btc="13251.0690406">

                                            $8,045,179 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/siacoin/#markets" class="price" data-usd="0.000444956" data-btc="7.32879e-07">$0.000445</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://explore.sia.tech/"  data-supply="18080841504.0">

                                                18,080,841,504
                                                SC   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/siacoin/#markets" class="volume" data-usd="50642.9" data-btc="83.413">$50,643</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="0.21" data-btc="-1.27">0.21%</td>

                                        <td><a href="/currencies/siacoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/1042.png"></a></td>
                                    </tr>

                                    <tr id="id-nautiluscoin" class="">
                                        <td class="text-center">
                                            30
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/nautiluscoin.png" class="currency-logo" alt="NautilusCoin">
                                            <a href="/assets/nautiluscoin/">NautilusCoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="7526175.54" data-btc="12396.2261">

                                            $7,526,176 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/assets/nautiluscoin/#markets" class="price" data-usd="0.465153" data-btc="0.000766145">$0.465153</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="https://nxtportal.org/currencies/18154834130337484019"  data-supply="16180000.0">

                                                16,180,000
                                                NAUT   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/assets/nautiluscoin/#markets" class="volume" data-usd="99614.5" data-btc="164.073">$99,615</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="13.59" data-btc="11.92">13.59%</td>

                                        <td><a href="/assets/nautiluscoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/321.png"></a></td>
                                    </tr>

                                    <tr id="id-tether" class="">
                                        <td class="text-center">
                                            31
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/tether.png" class="currency-logo" alt="Tether">
                                            <a href="/assets/tether/">Tether</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="6951591.0" data-btc="11449.8265043">

                                            $6,951,591 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/assets/tether/#markets" class="price" data-usd="1.0" data-btc="0.00164708">$1.00</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://omnichest.info/lookupsp.aspx?sp=31"  data-supply="6951591.0">

                                                6,951,591
                                                USDT   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/assets/tether/#markets" class="volume" data-usd="1255360.0" data-btc="2067.69">$1,255,360</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="0.00" data-btc="-1.47">0.00%</td>

                                        <td><a href="/assets/tether/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/825.png"></a></td>
                                    </tr>

                                    <tr id="id-gamecredits" class="">
                                        <td class="text-center">
                                            32
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/gamecredits.png" class="currency-logo" alt="GameCredits">
                                            <a href="/currencies/gamecredits/">GameCredits</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="6608739.6984" data-btc="10885.1276667">

                                            $6,608,740 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/gamecredits/#markets" class="price" data-usd="0.115576" data-btc="0.000190363">$0.115576</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://gamecredits.tech/explorer/"  data-supply="57180900.0">

                                                57,180,900
                                                GAME   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/gamecredits/#markets" class="volume" data-usd="18039.1" data-btc="29.7119">$18,039</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="6.29" data-btc="4.72">6.29%</td>

                                        <td><a href="/currencies/gamecredits/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/576.png"></a></td>
                                    </tr>

                                    <tr id="id-syscoin" class="">
                                        <td class="text-center">
                                            33
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/syscoin.png" class="currency-logo" alt="SysCoin">
                                            <a href="/currencies/syscoin/">SysCoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="5570890.32436" data-btc="9175.76331007">

                                            $5,570,890 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/syscoin/#markets" class="price" data-usd="0.0115177" data-btc="1.89707e-05">$0.011518</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="https://chainz.cryptoid.info/sys/"  data-supply="483680797.76">

                                                483,680,798
                                                SYS   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/syscoin/#markets" class="volume" data-usd="154433.0" data-btc="254.364">$154,433</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-7.37" data-btc="-8.73">-7.37%</td>

                                        <td><a href="/currencies/syscoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/541.png"></a></td>
                                    </tr>

                                    <tr id="id-ybcoin" class="">
                                        <td class="text-center">
                                            34
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/ybcoin.png" class="currency-logo" alt="YbCoin">
                                            <a href="/currencies/ybcoin/">YbCoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="5035874.12157" data-btc="8294.48896353">

                                            $5,035,874 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/ybcoin/#markets" class="price" data-usd="1.67225" data-btc="0.00275433">$1.67</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://explorer_ybc.taiyilabs.com/"  data-supply="3011436.1618">

                                                3,011,436
                                                YBC   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/ybcoin/#markets" class="volume" data-usd="40220.3" data-btc="66.2461">$40,220</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="0.34" data-btc="-1.14">0.34%</td>

                                        <td><a href="/currencies/ybcoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/95.png"></a></td>
                                    </tr>

                                    <tr id="id-agoras-tokens" class="">
                                        <td class="text-center">
                                            35
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/agoras-tokens.png" class="currency-logo" alt="Agoras Tokens">
                                            <a href="/assets/agoras-tokens/">Agoras Tokens</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="5034120.0" data-btc="8291.64">

                                            $5,034,120 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/assets/agoras-tokens/#markets" class="price" data-usd="0.11986" data-btc="0.00019742">$0.119860</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://omnichest.info/lookupsp.aspx?sp=35"  data-supply="42000000.0">

                                                42,000,000
                                                AGRS   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/assets/agoras-tokens/#markets" class="volume" data-usd="11113.8" data-btc="18.3053">$11,114</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-8.51" data-btc="-9.87">-8.51%</td>

                                        <td><a href="/assets/agoras-tokens/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/1037.png"></a></td>
                                    </tr>

                                    <tr id="id-global-currency-reserve" class="">
                                        <td class="text-center">
                                            36
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/global-currency-reserve.png" class="currency-logo" alt="Global Currency Reserve">
                                            <a href="/currencies/global-currency-reserve/">Global Curre...</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="4712314.47441" data-btc="7761.5748858">

                                            $4,712,314 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/global-currency-reserve/#markets" class="price" data-usd="0.046458" data-btc="7.65202e-05">$0.046458</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="https://chainz.cryptoid.info/gcr/"  data-supply="101431711.964">

                                                101,431,712
                                                GCR   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/global-currency-reserve/#markets" class="volume" data-usd="35372.0" data-btc="58.2606">$35,372</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="19.46" data-btc="17.70">19.46%</td>

                                        <td><a href="/currencies/global-currency-reserve/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/1044.png"></a></td>
                                    </tr>

                                    <tr id="id-fedoracoin" class="">
                                        <td class="text-center">
                                            37
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/fedoracoin.png" class="currency-logo" alt="FedoraCoin">
                                            <a href="/currencies/fedoracoin/">FedoraCoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="4388302.38828" data-btc="7227.86890588">

                                            $4,388,302 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/fedoracoin/#markets" class="price" data-usd="1.00917e-05" data-btc="1.66218e-08">$0.000010</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="https://chainz.cryptoid.info/tips/"  data-supply="4.34842730985e+11">

                                                434,842,730,985
                                                TIPS   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/fedoracoin/#markets" class="volume" data-usd="2098.87" data-btc="3.45702">$2,099</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="4.89" data-btc="3.34">4.89%</td>

                                        <td><a href="/currencies/fedoracoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/87.png"></a></td>
                                    </tr>

                                    <tr id="id-namecoin" class="">
                                        <td class="text-center">
                                            38
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/namecoin.png" class="currency-logo" alt="Namecoin">
                                            <a href="/currencies/namecoin/">Namecoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="4283959.8984" data-btc="7056.0535752">

                                            $4,283,960 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/namecoin/#markets" class="price" data-usd="0.290706" data-btc="0.000478818">$0.290706</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://explorer.namecoin.info" class="stale" data-supply="14736400.0">

                                                14,736,400
                                                NMC   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/namecoin/#markets" class="volume" data-usd="11277.0" data-btc="18.5741">$11,277</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="1.47" data-btc="-0.03">1.47%</td>

                                        <td><a href="/currencies/namecoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/3.png"></a></td>
                                    </tr>

                                    <tr id="id-decred" class="">
                                        <td class="text-center">
                                            39
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/decred.png" class="currency-logo" alt="Decred">
                                            <a href="/currencies/decred/">Decred</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="3800952.92944" data-btc="6260.47733104">

                                            $3,800,953 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/decred/#markets" class="price" data-usd="1.48578" data-btc="0.0024472">$1.49</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="https://mainnet.decred.org/"  data-supply="2558220.55044">

                                                2,558,221
                                                DCR   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/decred/#markets" class="volume" data-usd="28525.9" data-btc="46.9846">$28,526</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-1.74" data-btc="-3.19">-1.74%</td>

                                        <td><a href="/currencies/decred/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/1168.png"></a></td>
                                    </tr>

                                    <tr id="id-yocoin" class="">
                                        <td class="text-center">
                                            40
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/yocoin.png" class="currency-logo" alt="Yocoin">
                                            <a href="/assets/yocoin/">Yocoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="3775450.72917" data-btc="6218.5134999">

                                            $3,775,451 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/assets/yocoin/#markets" class="price" data-usd="0.116356" data-btc="0.000191649">$0.116356</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="https://www.blockexperts.com/yoc"  data-supply="32447409.065">

                                                32,447,409
                                                YOC   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/assets/yocoin/#markets" class="volume" data-usd="35507.1" data-btc="58.4832">$35,507</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-5.14" data-btc="-6.55">-5.14%</td>

                                        <td><a href="/assets/yocoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/1156.png"></a></td>
                                    </tr>

                                    <tr id="id-iocoin" class="">
                                        <td class="text-center">
                                            41
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/iocoin.png" class="currency-logo" alt="I/O Coin">
                                            <a href="/currencies/iocoin/">I/O Coin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="3412141.5645" data-btc="5620.07159358">

                                            $3,412,142 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/iocoin/#markets" class="price" data-usd="0.209637" data-btc="0.000345289">$0.209637</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://chainz.cryptoid.info/ioc/"  data-supply="16276428.1329">

                                                16,276,428
                                                IOC   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/iocoin/#markets" class="volume" data-usd="36055.7" data-btc="59.3867">$36,056</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="5.04" data-btc="3.49">5.04%</td>

                                        <td><a href="/currencies/iocoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/495.png"></a></td>
                                    </tr>

                                    <tr id="id-supernet-unity" class="">
                                        <td class="text-center">
                                            42
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/supernet-unity.png" class="currency-logo" alt="SuperNET">
                                            <a href="/assets/supernet-unity/">SuperNET</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="2919760.169" data-btc="4809.08011367">

                                            $2,919,760 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/assets/supernet-unity/#markets" class="price" data-usd="3.57787" data-btc="0.00589304">$3.58</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://nxtreporting.com/?as=12071612744977229797"  data-supply="816060.9997">

                                                816,061
                                                UNITY   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/assets/supernet-unity/#markets" class="volume" data-usd="3161.17" data-btc="5.2067">$3,161</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="8.63" data-btc="7.02">8.63%</td>

                                        <td><a href="/assets/supernet-unity/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/643.png"></a></td>
                                    </tr>

                                    <tr id="id-omni" class="">
                                        <td class="text-center">
                                            43
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/omni.png" class="currency-logo" alt="Omni">
                                            <a href="/currencies/omni/">Omni</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="2895687.34" data-btc="4769.43971325">

                                            $2,895,687 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/omni/#markets" class="price" data-usd="5.22804" data-btc="0.00861102">$5.23</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://omnichest.info/"  data-supply="553876.278681">

                                                553,876
                                                OMNI   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/omni/#markets" class="volume" data-usd="51948.8" data-btc="85.564">$51,949</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-8.47" data-btc="-9.82">-8.47%</td>

                                        <td><a href="/currencies/omni/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/83.png"></a></td>
                                    </tr>

                                    <tr id="id-bitcoindark" class="">
                                        <td class="text-center">
                                            44
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/bitcoindark.png" class="currency-logo" alt="BitcoinDark">
                                            <a href="/currencies/bitcoindark/">BitcoinDark</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="2697722.21779" data-btc="4443.37821674">

                                            $2,697,722 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/bitcoindark/#markets" class="price" data-usd="2.09994" data-btc="0.00345878">$2.10</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://explorebtcd.info/"  data-supply="1284666.33227">

                                                1,284,666
                                                BTCD   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/bitcoindark/#markets" class="volume" data-usd="15305.3" data-btc="25.2091">$15,305</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-5.06" data-btc="-6.45">-5.06%</td>

                                        <td><a href="/currencies/bitcoindark/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/467.png"></a></td>
                                    </tr>

                                    <tr id="id-sarcoin" class="">
                                        <td class="text-center">
                                            45
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/sarcoin.png" class="currency-logo" alt="SARCoin">
                                            <a href="/currencies/sarcoin/">SARCoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="2645503.72377" data-btc="4357.35882888">

                                            $2,645,504 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/sarcoin/#markets" class="price" data-usd="0.0425055" data-btc="7.001e-05">$0.042506</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="https://chainz.cryptoid.info/sar/"  data-supply="62239091.9709">

                                                62,239,092
                                                SAR   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/sarcoin/#markets" class="volume" data-usd="1953.4" data-btc="3.21742">$1,953</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="6.30" data-btc="4.73">6.30%</td>

                                        <td><a href="/currencies/sarcoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/1226.png"></a></td>
                                    </tr>

                                    <tr id="id-rubycoin" class="">
                                        <td class="text-center">
                                            46
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/rubycoin.png" class="currency-logo" alt="Rubycoin">
                                            <a href="/currencies/rubycoin/">Rubycoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="2546195.48819" data-btc="4193.79164096">

                                            $2,546,195 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/rubycoin/#markets" class="price" data-usd="0.108654" data-btc="0.000178962">$0.108654</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://chainz.cryptoid.info/rby/"  data-supply="23433978.3918">

                                                23,433,978
                                                RBY   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/rubycoin/#markets" class="volume" data-usd="3970.83" data-btc="6.54029">$3,971</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-0.07" data-btc="-1.54">-0.07%</td>

                                        <td><a href="/currencies/rubycoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/215.png"></a></td>
                                    </tr>

                                    <tr id="id-vcash" class="">
                                        <td class="text-center">
                                            47
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/vcash.png" class="currency-logo" alt="Vcash">
                                            <a href="/currencies/vcash/">Vcash</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="2444338.51516" data-btc="4026.04414347">

                                            $2,444,339 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/vcash/#markets" class="price" data-usd="0.16526" data-btc="0.000272198">$0.165260</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="https://explorer.v.cash/"  data-supply="14790866.0">

                                                14,790,866
                                                XVC   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/vcash/#markets" class="volume" data-usd="38741.1" data-btc="63.8099">$38,741</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-5.79" data-btc="-7.17">-5.79%</td>

                                        <td><a href="/currencies/vcash/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/836.png"></a></td>
                                    </tr>

                                    <tr id="id-vpncoin" class="">
                                        <td class="text-center">
                                            48
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/vpncoin.png" class="currency-logo" alt="VPNCoin">
                                            <a href="/currencies/vpncoin/">VPNCoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="2385552.48526" data-btc="3929.20649827">

                                            $2,385,552 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/vpncoin/#markets" class="price" data-usd="0.00595882" data-btc="9.81468e-06">$0.005959</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://blockexperts.com/vpn" class="stale" data-supply="400339746.0">

                                                400,339,746
                                                VPN   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/vpncoin/#markets" class="volume" data-usd="13431.4" data-btc="22.1226">$13,431</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-0.01" data-btc="-1.48">-0.01%</td>

                                        <td><a href="/currencies/vpncoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/735.png"></a></td>
                                    </tr>

                                    <tr id="id-digibyte" class="">
                                        <td class="text-center">
                                            49
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/digibyte.png" class="currency-logo" alt="DigiByte">
                                            <a href="/currencies/digibyte/">DigiByte</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="2377709.11416" data-btc="3916.2845758">

                                            $2,377,709 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/digibyte/#markets" class="price" data-usd="0.000333937" data-btc="5.50022e-07">$0.000334</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://digiexplorer.info"  data-supply="7120232601.23">

                                                7,120,232,601
                                                DGB   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/digibyte/#markets" class="volume" data-usd="244459.0" data-btc="402.644">$244,459</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="9.37" data-btc="7.75">9.37%</td>

                                        <td><a href="/currencies/digibyte/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/109.png"></a></td>
                                    </tr>

                                    <tr id="id-solarcoin" class="">
                                        <td class="text-center">
                                            50
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/solarcoin.png" class="currency-logo" alt="SolarCoin">
                                            <a href="/currencies/solarcoin/">SolarCoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="2373776.04791" data-btc="3909.80207039">

                                            $2,373,776 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/solarcoin/#markets" class="price" data-usd="0.0686566" data-btc="0.000113083">$0.068657</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="https://chainz.cryptoid.info/slr/"  data-supply="34574622.8026">

                                                34,574,623
                                                SLR   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/solarcoin/#markets" class="volume" data-usd="7535.23" data-btc="12.4111">$7,535</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="38.71" data-btc="36.66">38.71%</td>

                                        <td><a href="/currencies/solarcoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/233.png"></a></td>
                                    </tr>

                                    <tr id="id-blackcoin" class="">
                                        <td class="text-center">
                                            51
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/blackcoin.png" class="currency-logo" alt="BlackCoin">
                                            <a href="/currencies/blackcoin/">BlackCoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="2348429.66345" data-btc="3868.05741978">

                                            $2,348,430 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/blackcoin/#markets" class="price" data-usd="0.0310455" data-btc="5.11345e-05">$0.031046</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="https://chainz.cryptoid.info/blk/"  data-supply="75644768.5962">

                                                75,644,769
                                                BLK   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/blackcoin/#markets" class="volume" data-usd="21735.8" data-btc="35.8007">$21,736</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="5.01" data-btc="3.46">5.01%</td>

                                        <td><a href="/currencies/blackcoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/170.png"></a></td>
                                    </tr>

                                    <tr id="id-stratis" class="">
                                        <td class="text-center">
                                            52
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/stratis.png" class="currency-logo" alt="Stratis">
                                            <a href="/currencies/stratis/">Stratis</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="2276456.00414" data-btc="3749.51520724">

                                            $2,276,456 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/stratis/#markets" class="price" data-usd="0.0232149" data-btc="3.82369e-05">$0.023215</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="https://chainz.cryptoid.info/strat/"  data-supply="98060125.3565">

                                                98,060,125
                                                STRAT   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/stratis/#markets" class="volume" data-usd="25015.9" data-btc="41.2032">$25,016</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-1.63" data-btc="-3.09">-1.63%</td>

                                        <td><a href="/currencies/stratis/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/1343.png"></a></td>
                                    </tr>

                                    <tr id="id-kilocoin" class="">
                                        <td class="text-center">
                                            53
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/kilocoin.png" class="currency-logo" alt="KiloCoin">
                                            <a href="/currencies/kilocoin/">KiloCoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="2156174.56199" data-btc="3551.39710942">

                                            $2,156,175 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/kilocoin/#markets" class="price" data-usd="0.000479636" data-btc="7.9e-07">$0.000480</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://klc.cryptocoinexplorer.com/"  data-supply="4495439379.01">

                                                4,495,439,379
                                                KLC   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/kilocoin/#markets" class="volume" data-usd="139.141" data-btc="0.229177">$139</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="21.50" data-btc="19.70">21.50%</td>

                                        <td><a href="/currencies/kilocoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/1182.png"></a></td>
                                    </tr>

                                    <tr id="id-hicoin" class="">
                                        <td class="text-center">
                                            54
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/hicoin.png" class="currency-logo" alt="HiCoin">
                                            <a href="/currencies/hicoin/">HiCoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="2044024.00101" data-btc="3366.67313052">

                                            $2,044,024 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/hicoin/#markets" class="price" data-usd="0.0249145" data-btc="4.10362e-05">$0.024914</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://explorer.xhicoin.com/"  data-supply="82041542.1146">

                                                82,041,542
                                                XHI   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/hicoin/#markets" class="volume" data-usd="127151.0" data-btc="209.428">$127,151</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-1.31" data-btc="-2.78">-1.31%</td>

                                        <td><a href="/currencies/hicoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/1244.png"></a></td>
                                    </tr>

                                    <tr id="id-gridcoin" class="">
                                        <td class="text-center">
                                            55
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/gridcoin.png" class="currency-logo" alt="GridCoin">
                                            <a href="/currencies/gridcoin/">GridCoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="2038090.90801" data-btc="3356.90413615">

                                            $2,038,091 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/gridcoin/#markets" class="price" data-usd="0.00536151" data-btc="8.83085e-06">$0.005362</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://www.gridresearchcorp.com/gridcoin/"  data-supply="380133751.128">

                                                380,133,751
                                                GRC   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/gridcoin/#markets" class="volume" data-usd="2337.15" data-btc="3.84948">$2,337</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-7.79" data-btc="-9.15">-7.79%</td>

                                        <td><a href="/currencies/gridcoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/833.png"></a></td>
                                    </tr>

                                    <tr id="id-aeon" class="">
                                        <td class="text-center">
                                            56
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/aeon.png" class="currency-logo" alt="Aeon">
                                            <a href="/currencies/aeon/">Aeon</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="1912580.11934" data-btc="3150.17483848">

                                            $1,912,580 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/aeon/#markets" class="price" data-usd="0.154809" data-btc="0.000254983">$0.154809</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://chainradar.com/aeon/blocks"  data-supply="12354450.4476">

                                                12,354,450
                                                AEON   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/aeon/#markets" class="volume" data-usd="13770.9" data-btc="22.6818">$13,771</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="29.53" data-btc="27.60">29.53%</td>

                                        <td><a href="/currencies/aeon/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/1026.png"></a></td>
                                    </tr>

                                    <tr id="id-bitshares-music" class="">
                                        <td class="text-center">
                                            57
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/bitshares-music.png" class="currency-logo" alt="MUSE">
                                            <a href="/currencies/bitshares-music/">MUSE</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="1893705.27481" data-btc="3119.08684471">

                                            $1,893,705 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/bitshares-music/#markets" class="price" data-usd="0.0013774" data-btc="2.26869e-06">$0.001377</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://muse.cryptofresh.com/a/MUSE"  data-supply="1374840478.3">

                                                1,374,840,478
                                                MUSE   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/bitshares-music/#markets" class="volume" data-usd="701.746" data-btc="1.15583">$702</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="44.54" data-btc="42.41">44.54%</td>

                                        <td><a href="/currencies/bitshares-music/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/920.png"></a></td>
                                    </tr>

                                    <tr id="id-vericoin" class="">
                                        <td class="text-center">
                                            58
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/vericoin.png" class="currency-logo" alt="VeriCoin">
                                            <a href="/currencies/vericoin/">VeriCoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="1599461.76676" data-btc="2634.44485945">

                                            $1,599,462 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/vericoin/#markets" class="price" data-usd="0.0575981" data-btc="9.48688e-05">$0.057598</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://chainz.cryptoid.info/vrc/"  data-supply="27769349.4536">

                                                27,769,349
                                                VRC   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/vericoin/#markets" class="volume" data-usd="4922.93" data-btc="8.10848">$4,923</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-0.64" data-btc="-2.11">-0.64%</td>

                                        <td><a href="/currencies/vericoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/323.png"></a></td>
                                    </tr>

                                    <tr id="id-feathercoin" class="">
                                        <td class="text-center">
                                            59
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/feathercoin.png" class="currency-logo" alt="Feathercoin">
                                            <a href="/currencies/feathercoin/">Feathercoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="1591529.29502" data-btc="2621.39364062">

                                            $1,591,529 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/feathercoin/#markets" class="price" data-usd="0.0118685" data-btc="1.95485e-05">$0.011869</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://block.ftc-c.com/"  data-supply="134096920.0">

                                                134,096,920
                                                FTC   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/feathercoin/#markets" class="volume" data-usd="2100.81" data-btc="3.46021">$2,101</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-0.90" data-btc="-2.37">-0.90%</td>

                                        <td><a href="/currencies/feathercoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/8.png"></a></td>
                                    </tr>

                                    <tr id="id-monacoin" class="">
                                        <td class="text-center">
                                            60
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/monacoin.png" class="currency-logo" alt="MonaCoin">
                                            <a href="/currencies/monacoin/">MonaCoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="1568279.22343" data-btc="2583.08636701">

                                            $1,568,279 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/monacoin/#markets" class="price" data-usd="0.0410176" data-btc="6.75594e-05">$0.041018</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="https://mona.chainsight.info/"  data-supply="38234299.9939">

                                                38,234,300
                                                MONA   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/monacoin/#markets" class="volume" data-usd="2865.48" data-btc="4.71968">$2,865</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="1.62" data-btc="0.11">1.62%</td>

                                        <td><a href="/currencies/monacoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/213.png"></a></td>
                                    </tr>

                                    <tr id="id-mintcoin" class="">
                                        <td class="text-center">
                                            61
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/mintcoin.png" class="currency-logo" alt="Mintcoin">
                                            <a href="/currencies/mintcoin/">Mintcoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="1552947.11132" data-btc="2557.83243823">

                                            $1,552,947 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/mintcoin/#markets" class="price" data-usd="6.72917e-05" data-btc="1.10835e-07">$0.000067</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="https://chainz.cryptoid.info/mint/" class="stale" data-supply="23077840377.4">

                                                23,077,840,377
                                                MINT   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/mintcoin/#markets" class="volume" data-usd="43723.8" data-btc="72.0167">$43,724</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="60.73" data-btc="58.35">60.73%</td>

                                        <td><a href="/currencies/mintcoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/141.png"></a></td>
                                    </tr>

                                    <tr id="id-nexus" class="">
                                        <td class="text-center">
                                            62
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/nexus.png" class="currency-logo" alt="Nexus">
                                            <a href="/currencies/nexus/">Nexus</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="1497000.18739" data-btc="2465.68284378">

                                            $1,497,000 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/nexus/#markets" class="price" data-usd="0.0359917" data-btc="5.92813e-05">$0.035992</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://nexusoft.io/platform/Explorer"  data-supply="41592928.0191">

                                                41,592,928
                                                NXS   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/nexus/#markets" class="volume" data-usd="2712.36" data-btc="4.46749">$2,712</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-2.12" data-btc="-3.56">-2.12%</td>

                                        <td><a href="/currencies/nexus/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/789.png"></a></td>
                                    </tr>

                                    <tr id="id-expanse" class="">
                                        <td class="text-center">
                                            63
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/expanse.png" class="currency-logo" alt="Expanse">
                                            <a href="/currencies/expanse/">Expanse</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="1492710.30821" data-btc="2458.61610048">

                                            $1,492,710 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/expanse/#markets" class="price" data-usd="0.408208" data-btc="0.000672352">$0.408208</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://www.expanse.tech/explorer"  data-supply="3656739.47647">

                                                3,656,739
                                                EXP   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/expanse/#markets" class="volume" data-usd="47441.0" data-btc="78.1393">$47,441</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="1.84" data-btc="0.33">1.84%</td>

                                        <td><a href="/currencies/expanse/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/1070.png"></a></td>
                                    </tr>

                                    <tr id="id-nav-coin" class="">
                                        <td class="text-center">
                                            64
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/nav-coin.png" class="currency-logo" alt="NAV Coin">
                                            <a href="/currencies/nav-coin/">NAV Coin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="1480318.32559" data-btc="2438.20606769">

                                            $1,480,318 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/nav-coin/#markets" class="price" data-usd="0.0248378" data-btc="4.09099e-05">$0.024838</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://navajocoin.org/block-explorer" class="stale" data-supply="59599414.0217">

                                                59,599,414
                                                NAV   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/nav-coin/#markets" class="volume" data-usd="130428.0" data-btc="214.826">$130,428</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="6.91" data-btc="5.34">6.91%</td>

                                        <td><a href="/currencies/nav-coin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/377.png"></a></td>
                                    </tr>

                                    <tr id="id-voxels" class="">
                                        <td class="text-center">
                                            65
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/voxels.png" class="currency-logo" alt="Voxels">
                                            <a href="/currencies/voxels/">Voxels</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="1391169.15" data-btc="2291.36985">

                                            $1,391,169 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/voxels/#markets" class="price" data-usd="0.0441641" data-btc="7.27419e-05">$0.044164</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="https://www.blockexperts.com/vox"  data-supply="31500000.0">

                                                31,500,000
                                                VOX   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/voxels/#markets" class="volume" data-usd="82898.3" data-btc="136.54">$82,898</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-1.32" data-btc="-2.79">-1.32%</td>

                                        <td><a href="/currencies/voxels/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/1208.png"></a></td>
                                    </tr>

                                    <tr id="id-library-credit" class="">
                                        <td class="text-center">
                                            66
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/library-credit.png" class="currency-logo" alt="LBRY Credits">
                                            <a href="/currencies/library-credit/">LBRY Credits</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="1347654.27" data-btc="2219.69684">

                                            $1,347,654 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/library-credit/#markets" class="price" data-usd="0.163749" data-btc="0.000269708">$0.163749</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="https://explorer.lbry.io/"  data-supply="8230000.0">

                                                8,230,000
                                                LBC   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/library-credit/#markets" class="volume" data-usd="142575.0" data-btc="234.833">$142,575</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-6.16" data-btc="-7.55">-6.16%</td>

                                        <td><a href="/currencies/library-credit/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/1298.png"></a></td>
                                    </tr>

                                    <tr id="id-hitcoin" class="">
                                        <td class="text-center">
                                            67
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/hitcoin.png" class="currency-logo" alt="HitCoin">
                                            <a href="/currencies/hitcoin/">HitCoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="1335304.8994" data-btc="2199.35159034">

                                            $1,335,305 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/hitcoin/#markets" class="price" data-usd="0.000121432" data-btc="2.00008e-07">$0.000121</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://htcblockchain.com/" class="stale" data-supply="10996318099.0">

                                                10,996,318,099
                                                HTC   
                                            </a>


                                            **

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/hitcoin/#markets" class="volume" data-usd="3705.53" data-btc="6.10331">$3,706</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-1.44" data-btc="-2.89">-1.44%</td>

                                        <td><a href="/currencies/hitcoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/1220.png"></a></td>
                                    </tr>

                                    <tr id="id-scotcoin" class="">
                                        <td class="text-center">
                                            68
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/scotcoin.png" class="currency-logo" alt="Scotcoin">
                                            <a href="/assets/scotcoin/">Scotcoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="1321860.0" data-btc="2177.21">

                                            $1,321,860 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/assets/scotcoin/#markets" class="price" data-usd="0.00132186" data-btc="2.17721e-06">$0.001322</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://blockscan.com/assetInfo/SCOTCOIN" class="stale" data-supply="1000000000.0">

                                                1,000,000,000
                                                SCOT   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/assets/scotcoin/#markets" class="volume" data-usd="212.466" data-btc="0.34995">$212</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="2.63" data-btc="1.12">2.63%</td>

                                        <td><a href="/assets/scotcoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/346.png"></a></td>
                                    </tr>

                                    <tr id="id-earthcoin" class="">
                                        <td class="text-center">
                                            69
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/earthcoin.png" class="currency-logo" alt="EarthCoin">
                                            <a href="/currencies/earthcoin/">EarthCoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="1255604.55578" data-btc="2068.08370145">

                                            $1,255,605 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/earthcoin/#markets" class="price" data-usd="0.00013434" data-btc="2.21269e-07">$0.000134</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://earthchain.info/chain/EarthCoin" class="stale" data-supply="9346468332.45">

                                                9,346,468,332
                                                EAC   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/earthcoin/#markets" class="volume" data-usd="17584.0" data-btc="28.9623">$17,584</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-0.58" data-btc="-2.05">-0.58%</td>

                                        <td><a href="/currencies/earthcoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/85.png"></a></td>
                                    </tr>

                                    <tr id="id-radium" class="">
                                        <td class="text-center">
                                            70
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/radium.png" class="currency-logo" alt="Radium">
                                            <a href="/currencies/radium/">Radium</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="1222697.64436" data-btc="2013.88764794">

                                            $1,222,698 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/radium/#markets" class="price" data-usd="0.420048" data-btc="0.000691855">$0.420048</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="https://chainz.cryptoid.info/rads/"  data-supply="2910852.19871">

                                                2,910,852
                                                RADS   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/radium/#markets" class="volume" data-usd="104176.0" data-btc="171.586">$104,176</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-6.20" data-btc="-7.59">-6.20%</td>

                                        <td><a href="/currencies/radium/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/1154.png"></a></td>
                                    </tr>

                                    <tr id="id-virtacoin" class="">
                                        <td class="text-center">
                                            71
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/virtacoin.png" class="currency-logo" alt="Virtacoin">
                                            <a href="/currencies/virtacoin/">Virtacoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="1202417.169" data-btc="1980.48445748">

                                            $1,202,417 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/virtacoin/#markets" class="price" data-usd="0.000101818" data-btc="1.67703e-07">$0.000102</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://chainz.cryptoid.info/vta"  data-supply="11809475426.7">

                                                11,809,475,427
                                                VTA   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/virtacoin/#markets" class="volume" data-usd="3907.68" data-btc="6.43627">$3,908</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-11.33" data-btc="-12.63">-11.33%</td>

                                        <td><a href="/currencies/virtacoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/520.png"></a></td>
                                    </tr>

                                    <tr id="id-clams" class="">
                                        <td class="text-center">
                                            72
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/clams.png" class="currency-logo" alt="Clams">
                                            <a href="/currencies/clams/">Clams</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="1161079.46705" data-btc="1912.38551836">

                                            $1,161,079 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/clams/#markets" class="price" data-usd="0.614562" data-btc="0.00101223">$0.614562</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://khashier.com/chain/Clam"  data-supply="1889279.6285">

                                                1,889,280
                                                CLAM   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/clams/#markets" class="volume" data-usd="5762.52" data-btc="9.49135">$5,763</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="8.86" data-btc="7.26">8.86%</td>

                                        <td><a href="/currencies/clams/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/460.png"></a></td>
                                    </tr>

                                    <tr id="id-dnotes" class="">
                                        <td class="text-center">
                                            73
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/dnotes.png" class="currency-logo" alt="DNotes">
                                            <a href="/currencies/dnotes/">DNotes</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="1158095.25765" data-btc="1907.47319174">

                                            $1,158,095 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/dnotes/#markets" class="price" data-usd="0.0104431" data-btc="1.72006e-05">$0.010443</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://www.multifaucet.tk/index.php?blockexplorer=NOTE" class="stale" data-supply="110895735.715">

                                                110,895,736
                                                NOTE   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/dnotes/#markets" class="volume" data-usd="1556.95" data-btc="2.56442">$1,557</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-0.81" data-btc="-2.29">-0.81%</td>

                                        <td><a href="/currencies/dnotes/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/184.png"></a></td>
                                    </tr>

                                    <tr id="id-auroracoin" class="">
                                        <td class="text-center">
                                            74
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/auroracoin.png" class="currency-logo" alt="Auroracoin">
                                            <a href="/currencies/auroracoin/">Auroracoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="1137584.17665" data-btc="1873.69261151">

                                            $1,137,584 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/auroracoin/#markets" class="price" data-usd="0.133529" data-btc="0.000219933">$0.133529</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="https://chainz.cryptoid.info/aur/"  data-supply="8519379.13597">

                                                8,519,379
                                                AUR   
                                            </a>


                                            **

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/auroracoin/#markets" class="volume" data-usd="2451.01" data-btc="4.03702">$2,451</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-3.26" data-btc="-4.68">-3.26%</td>

                                        <td><a href="/currencies/auroracoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/148.png"></a></td>
                                    </tr>

                                    <tr id="id-ion" class="">
                                        <td class="text-center">
                                            75
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/ion.png" class="currency-logo" alt="ION">
                                            <a href="/currencies/ion/">ION</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="1129279.29209" data-btc="1860.01688488">

                                            $1,129,279 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/ion/#markets" class="price" data-usd="0.154807" data-btc="0.00025498">$0.154807</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="https://ionchain.com/"  data-supply="7294756.0">

                                                7,294,756
                                                ION   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/ion/#markets" class="volume" data-usd="104.721" data-btc="0.172484">$105</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="2.43" data-btc="0.92">2.43%</td>

                                        <td><a href="/currencies/ion/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/1281.png"></a></td>
                                    </tr>

                                    <tr id="id-goldcoin" class="">
                                        <td class="text-center">
                                            76
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/goldcoin.png" class="currency-logo" alt="GoldCoin">
                                            <a href="/currencies/goldcoin/">GoldCoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="1110360.94727" data-btc="1828.85504764">

                                            $1,110,361 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/goldcoin/#markets" class="price" data-usd="0.0279345" data-btc="4.60104e-05">$0.027935</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://gld.cryptocoinexplorer.com/"  data-supply="39748731.7571">

                                                39,748,732
                                                GLD   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/goldcoin/#markets" class="volume" data-usd="1628.41" data-btc="2.68212">$1,628</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="28.11" data-btc="26.21">28.11%</td>

                                        <td><a href="/currencies/goldcoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/25.png"></a></td>
                                    </tr>

                                    <tr id="id-adzcoin" class="">
                                        <td class="text-center">
                                            77
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/adzcoin.png" class="currency-logo" alt="Adzcoin">
                                            <a href="/currencies/adzcoin/">Adzcoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="1110216.3438" data-btc="1828.62010749">

                                            $1,110,216 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/adzcoin/#markets" class="price" data-usd="0.0236167" data-btc="3.88987e-05">$0.023617</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://adzcoin.net/"  data-supply="47009800.006">

                                                47,009,800
                                                ADZ   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/adzcoin/#markets" class="volume" data-usd="6983.9" data-btc="11.5031">$6,984</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="42.70" data-btc="40.59">42.70%</td>

                                        <td><a href="/currencies/adzcoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/1136.png"></a></td>
                                    </tr>

                                    <tr id="id-primecoin" class="">
                                        <td class="text-center">
                                            78
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/primecoin.png" class="currency-logo" alt="Primecoin">
                                            <a href="/currencies/primecoin/">Primecoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="1072706.12235" data-btc="1766.84420297">

                                            $1,072,706 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/primecoin/#markets" class="price" data-usd="0.0673187" data-btc="0.00011088">$0.067319</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="https://coinplorer.com/XPM"  data-supply="15934742.0903">

                                                15,934,742
                                                XPM   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/primecoin/#markets" class="volume" data-usd="3166.78" data-btc="5.21595">$3,167</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-3.66" data-btc="-5.08">-3.66%</td>

                                        <td><a href="/currencies/primecoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/42.png"></a></td>
                                    </tr>

                                    <tr id="id-vertcoin" class="">
                                        <td class="text-center">
                                            79
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/vertcoin.png" class="currency-logo" alt="Vertcoin">
                                            <a href="/currencies/vertcoin/">Vertcoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="1043406.99039" data-btc="1718.57688335">

                                            $1,043,407 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/vertcoin/#markets" class="price" data-usd="0.0367856" data-btc="6.05889e-05">$0.036786</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://explorer.thisisvtc.com/" class="stale" data-supply="28364549.9976">

                                                28,364,550
                                                VTC   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/vertcoin/#markets" class="volume" data-usd="6580.32" data-btc="10.8383">$6,580</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="2.92" data-btc="1.41">2.92%</td>

                                        <td><a href="/currencies/vertcoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/99.png"></a></td>
                                    </tr>

                                    <tr id="id-faircoin" class="">
                                        <td class="text-center">
                                            80
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/faircoin.png" class="currency-logo" alt="FairCoin">
                                            <a href="/currencies/faircoin/">FairCoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="1037165.80696" data-btc="1708.29908214">

                                            $1,037,166 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/faircoin/#markets" class="price" data-usd="0.0197197" data-btc="3.248e-05">$0.019720</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="https://chain.fair-coin.org/chain/FairCoin"  data-supply="52595415.0906">

                                                52,595,415
                                                FAIR   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/faircoin/#markets" class="volume" data-usd="324.487" data-btc="0.534458">$324</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="5.40" data-btc="3.85">5.40%</td>

                                        <td><a href="/currencies/faircoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/224.png"></a></td>
                                    </tr>

                                    <tr id="id-reddcoin" class="">
                                        <td class="text-center">
                                            81
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/reddcoin.png" class="currency-logo" alt="ReddCoin">
                                            <a href="/currencies/reddcoin/">ReddCoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="1030851.07481" data-btc="1697.89724719">

                                            $1,030,851 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/reddcoin/#markets" class="price" data-usd="3.65457e-05" data-btc="6.01938e-08">$0.000037</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://live.reddcoin.com/"  data-supply="28207178267.4">

                                                28,207,178,267
                                                RDD   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/reddcoin/#markets" class="volume" data-usd="1155.58" data-btc="1.90334">$1,156</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="15.22" data-btc="13.52">15.22%</td>

                                        <td><a href="/currencies/reddcoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/118.png"></a></td>
                                    </tr>

                                    <tr id="id-quark" class="">
                                        <td class="text-center">
                                            82
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/quark.png" class="currency-logo" alt="Quark">
                                            <a href="/currencies/quark/">Quark</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="1001867.27912" data-btc="1650.15670406">

                                            $1,001,867 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/quark/#markets" class="price" data-usd="0.00400585" data-btc="6.59796e-06">$0.004006</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="https://coinplorer.com/QRK/"  data-supply="250101047.0">

                                                250,101,047
                                                QRK   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/quark/#markets" class="volume" data-usd="384.275" data-btc="0.632933">$384</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-1.85" data-btc="-3.30">-1.85%</td>

                                        <td><a href="/currencies/quark/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/53.png"></a></td>
                                    </tr>

                                    <tr id="id-darknote" class="">
                                        <td class="text-center">
                                            83
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/darknote.png" class="currency-logo" alt="DigitalNote">
                                            <a href="/currencies/darknote/">DigitalNote</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="1000183.80219" data-btc="1647.38983024">

                                            $1,000,184 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/darknote/#markets" class="price" data-usd="0.000145662" data-btc="2.39918e-07">$0.000146</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://chainradar.com/xdn/blocks"  data-supply="6866470336.71">

                                                6,866,470,337
                                                XDN   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/darknote/#markets" class="volume" data-usd="8188.63" data-btc="13.4874">$8,189</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-10.43" data-btc="-11.74">-10.43%</td>

                                        <td><a href="/currencies/darknote/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/405.png"></a></td>
                                    </tr>

                                    <tr id="id-breakout-stake" class="">
                                        <td class="text-center">
                                            84
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/breakout-stake.png" class="currency-logo" alt="Breakout Stake">
                                            <a href="/currencies/breakout-stake/">Breakout Stake</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="951388.365191" data-btc="1567.02062351">

                                            $951,388 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/breakout-stake/#markets" class="price" data-usd="0.151783" data-btc="0.00025">$0.151783</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://chain.breakoutcoin.com/BlockCrawler/block_crawler.php"  data-supply="6268082.49403">

                                                6,268,082
                                                BRX   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/breakout-stake/#markets" class="volume" data-usd="1831.59" data-btc="3.01679">$1,832</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-4.25" data-btc="-5.66">-4.25%</td>

                                        <td><a href="/currencies/breakout-stake/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/1303.png"></a></td>
                                    </tr>

                                    <tr id="id-salus" class="">
                                        <td class="text-center">
                                            85
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/salus.png" class="currency-logo" alt="SaluS">
                                            <a href="/currencies/salus/">SaluS</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="922848.529203" data-btc="1520.00573022">

                                            $922,849 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/salus/#markets" class="price" data-usd="0.921224" data-btc="0.00151733">$0.921224</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://www.presstab.pw/phpexplorer/SLS"  data-supply="1001763.44646">

                                                1,001,763
                                                SLS   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/salus/#markets" class="volume" data-usd="133.574" data-btc="0.220008">$134</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="143.92" data-btc="140.30">143.92%</td>

                                        <td><a href="/currencies/salus/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/1159.png"></a></td>
                                    </tr>

                                    <tr id="id-gulden" class="">
                                        <td class="text-center">
                                            86
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/gulden.png" class="currency-logo" alt="Gulden">
                                            <a href="/currencies/gulden/">Gulden</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="907835.718781" data-btc="1495.28190431">

                                            $907,836 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/gulden/#markets" class="price" data-usd="0.00284677" data-btc="4.68887e-06">$0.002847</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="https://explorer.gulden.com"  data-supply="318900269.0">

                                                318,900,269
                                                NLG   
                                            </a>


                                            **

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/gulden/#markets" class="volume" data-usd="5743.06" data-btc="9.4593">$5,743</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="5.48" data-btc="3.93">5.48%</td>

                                        <td><a href="/currencies/gulden/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/254.png"></a></td>
                                    </tr>

                                    <tr id="id-curecoin" class="">
                                        <td class="text-center">
                                            87
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/curecoin.png" class="currency-logo" alt="CureCoin">
                                            <a href="/currencies/curecoin/">CureCoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="870845.586225" data-btc="1434.35318603">

                                            $870,846 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/curecoin/#markets" class="price" data-usd="0.0329475" data-btc="5.42672e-05">$0.032947</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://stats.curecoinfolding.com" class="stale" data-supply="26431310.0">

                                                26,431,310
                                                CURE   
                                            </a>


                                            **

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/curecoin/#markets" class="volume" data-usd="2422.37" data-btc="3.98984">$2,422</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="12.92" data-btc="11.26">12.92%</td>

                                        <td><a href="/currencies/curecoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/333.png"></a></td>
                                    </tr>

                                    <tr id="id-novacoin" class="">
                                        <td class="text-center">
                                            88
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/novacoin.png" class="currency-logo" alt="Novacoin">
                                            <a href="/currencies/novacoin/">Novacoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="838775.4367" data-btc="1381.53138842">

                                            $838,775 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/novacoin/#markets" class="price" data-usd="0.56636" data-btc="0.000932841">$0.566360</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="https://explorer.novaco.in/"  data-supply="1480993.42591">

                                                1,480,993
                                                NVC   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/novacoin/#markets" class="volume" data-usd="7430.12" data-btc="12.238">$7,430</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="0.26" data-btc="-1.22">0.26%</td>

                                        <td><a href="/currencies/novacoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/6.png"></a></td>
                                    </tr>

                                    <tr id="id-breakout" class="">
                                        <td class="text-center">
                                            89
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/breakout.png" class="currency-logo" alt="Breakout">
                                            <a href="/currencies/breakout/">Breakout</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="777904.288517" data-btc="1281.27283485">

                                            $777,904 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/breakout/#markets" class="price" data-usd="0.0449947" data-btc="7.411e-05">$0.044995</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://chain.breakoutcoin.com/BlockCrawler/block_crawler.php"  data-supply="17288798.2033">

                                                17,288,798
                                                BRK   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/breakout/#markets" class="volume" data-usd="999.659" data-btc="1.64652">$1,000</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-4.71" data-btc="-6.12">-4.71%</td>

                                        <td><a href="/currencies/breakout/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/1286.png"></a></td>
                                    </tr>

                                    <tr id="id-worldcoin" class="">
                                        <td class="text-center">
                                            90
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/worldcoin.png" class="currency-logo" alt="WorldCoin">
                                            <a href="/currencies/worldcoin/">WorldCoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="775214.591523" data-btc="1276.84754208">

                                            $775,215 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/worldcoin/#markets" class="price" data-usd="0.00721576" data-btc="1.1885e-05">$0.007216</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="https://www.wdcexplorer.com/"  data-supply="107433533.2">

                                                107,433,533
                                                WDC   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/worldcoin/#markets" class="volume" data-usd="7426.0" data-btc="12.2312">$7,426</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-0.47" data-btc="-1.94">-0.47%</td>

                                        <td><a href="/currencies/worldcoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/16.png"></a></td>
                                    </tr>

                                    <tr id="id-blocknet" class="">
                                        <td class="text-center">
                                            91
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/blocknet.png" class="currency-logo" alt="Blocknet">
                                            <a href="/currencies/blocknet/">Blocknet</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="771775.593736" data-btc="1271.17590357">

                                            $771,776 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/blocknet/#markets" class="price" data-usd="0.197359" data-btc="0.000325066">$0.197359</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://block.blockexplorer.cc/chain/Blocknet/" class="stale" data-supply="3910516.33691">

                                                3,910,516
                                                BLOCK   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/blocknet/#markets" class="volume" data-usd="6308.8" data-btc="10.3911">$6,309</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-12.94" data-btc="-14.22">-12.94%</td>

                                        <td><a href="/currencies/blocknet/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/707.png"></a></td>
                                    </tr>

                                    <tr id="id-rise" class="">
                                        <td class="text-center">
                                            92
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/rise.png" class="currency-logo" alt="Rise">
                                            <a href="/currencies/rise/">Rise</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="696097.917546" data-btc="1146.53266216">

                                            $696,098 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/rise/#markets" class="price" data-usd="0.00679303" data-btc="1.11887e-05">$0.006793</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://explorer.rise.vision/"  data-supply="102472375.0">

                                                102,472,375
                                                RISE   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/rise/#markets" class="volume" data-usd="676.52" data-btc="1.11428">$677</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-1.39" data-btc="-2.86">-1.39%</td>

                                        <td><a href="/currencies/rise/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/1294.png"></a></td>
                                    </tr>

                                    <tr id="id-obits" class="">
                                        <td class="text-center">
                                            93
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/obits.png" class="currency-logo" alt="Obits">
                                            <a href="/assets/obits/">Obits</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="695604.04906" data-btc="1145.71962212">

                                            $695,604 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/assets/obits/#markets" class="price" data-usd="0.0977575" data-btc="0.000161015">$0.097757</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://cryptofresh.com/a/OBITS"  data-supply="7115608.0">

                                                7,115,608
                                                OBITS   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/assets/obits/#markets" class="volume" data-usd="1702.3" data-btc="2.80383">$1,702</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="5.02" data-btc="3.46">5.02%</td>

                                        <td><a href="/assets/obits/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/1123.png"></a></td>
                                    </tr>

                                    <tr id="id-qora" class="">
                                        <td class="text-center">
                                            94
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/qora.png" class="currency-logo" alt="Qora">
                                            <a href="/currencies/qora/">Qora</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="668641.0" data-btc="1101.31">

                                            $668,641 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/qora/#markets" class="price" data-usd="6.68641e-05" data-btc="1.10131e-07">$0.000067</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://coinia.net/qora/blockexplorer.php"  data-supply="10000000000.0">

                                                10,000,000,000
                                                QORA   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/qora/#markets" class="volume" data-usd="3837.59" data-btc="6.32082">$3,838</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-0.65" data-btc="-2.12">-0.65%</td>

                                        <td><a href="/currencies/qora/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/344.png"></a></td>
                                    </tr>

                                    <tr id="id-bitbay" class="">
                                        <td class="text-center">
                                            95
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/bitbay.png" class="currency-logo" alt="BitBay">
                                            <a href="/currencies/bitbay/">BitBay</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="641683.983323" data-btc="1056.90404123">

                                            $641,684 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/bitbay/#markets" class="price" data-usd="0.000638233" data-btc="1.05122e-06">$0.000638</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="https://chainz.cryptoid.info/bay/"  data-supply="1005407090.08">

                                                1,005,407,090
                                                BAY   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/bitbay/#markets" class="volume" data-usd="707.3" data-btc="1.16498">$707</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="7.77" data-btc="6.18">7.77%</td>

                                        <td><a href="/currencies/bitbay/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/723.png"></a></td>
                                    </tr>

                                    <tr id="id-startcoin" class="">
                                        <td class="text-center">
                                            96
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/startcoin.png" class="currency-logo" alt="Startcoin">
                                            <a href="/currencies/startcoin/">Startcoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="639118.651838" data-btc="1052.68059943">

                                            $639,119 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/startcoin/#markets" class="price" data-usd="0.0141775" data-btc="2.33515e-05">$0.014178</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://explorer.startcoin.org"  data-supply="45079785.0">

                                                45,079,785
                                                START   
                                            </a>


                                            **

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/startcoin/#markets" class="volume" data-usd="3647.01" data-btc="6.00692">$3,647</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  negative_change text-right" data-usd="-0.02" data-btc="-1.49">-0.02%</td>

                                        <td><a href="/currencies/startcoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/389.png"></a></td>
                                    </tr>

                                    <tr id="id-stress" class="">
                                        <td class="text-center">
                                            97
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/stress.png" class="currency-logo" alt="Stress">
                                            <a href="/currencies/stress/">Stress</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="634753.23028" data-btc="1045.48721138">

                                            $634,753 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/stress/#markets" class="price" data-usd="0.00112319" data-btc="1.84998e-06">$0.001123</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://www.multifaucet.tk/index.php?blockexplorer=STS" class="stale" data-supply="565134331.929">

                                                565,134,332
                                                STS   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/stress/#markets" class="volume" data-usd="313.616" data-btc="0.516551">$314</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="5.22" data-btc="3.66">5.22%</td>

                                        <td><a href="/currencies/stress/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/1183.png"></a></td>
                                    </tr>

                                    <tr id="id-nubits" class="">
                                        <td class="text-center">
                                            98
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/nubits.png" class="currency-logo" alt="NuBits">
                                            <a href="/currencies/nubits/">NuBits</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="634574.181288" data-btc="1045.19988704">

                                            $634,574 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/nubits/#markets" class="price" data-usd="0.838182" data-btc="0.00138056">$0.838182</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="https://blockexplorer.nu/"  data-supply="757084.0">

                                                757,084
                                                USNBT   
                                            </a>


                                            *

                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/nubits/#markets" class="volume" data-usd="3161.72" data-btc="5.20761">$3,162</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="11.67" data-btc="10.02">11.67%</td>

                                        <td><a href="/currencies/nubits/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/626.png"></a></td>
                                    </tr>

                                    <tr id="id-asiadigicoin" class="">
                                        <td class="text-center">
                                            99
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/asiadigicoin.png" class="currency-logo" alt="Asiadigicoin">
                                            <a href="/currencies/asiadigicoin/">Asiadigicoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="609024.372154" data-btc="1003.11029192">

                                            $609,024 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/asiadigicoin/#markets" class="price" data-usd="0.139175" data-btc="0.000229232">$0.139175</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://chain.asiadigicoin.com/"  data-supply="4375960.99985">

                                                4,375,961
                                                ADCN   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/asiadigicoin/#markets" class="volume" data-usd="28314.8" data-btc="46.6368">$28,315</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="36.79" data-btc="34.77">36.79%</td>

                                        <td><a href="/currencies/asiadigicoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/1176.png"></a></td>
                                    </tr>

                                    <tr id="id-boostcoin" class="">
                                        <td class="text-center">
                                            100
                                        </td>
                                        <td class="no-wrap currency-name">
                                            <img src="/static/img/coins/16x16/boostcoin.png" class="currency-logo" alt="BoostCoin">
                                            <a href="/currencies/boostcoin/">BoostCoin</a>
                                        </td>

                                        <td class="no-wrap market-cap text-right" data-usd="603324.55644" data-btc="993.725748889">

                                            $603,325 

                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="/currencies/boostcoin/#markets" class="price" data-usd="0.0508899" data-btc="8.38199e-05">$0.050890</a>
                                        </td>
                                        <td class="no-wrap text-right">
                                            <a href="http://explorer.bost.link/" class="stale" data-supply="11855487.1682">

                                                11,855,487
                                                BOST   
                                            </a>




                                        </td>
                                        <td class="no-wrap text-right"> 
                                            <a href="/currencies/boostcoin/#markets" class="volume" data-usd="1325.42" data-btc="2.18308">$1,325</a>
                                        </td>                        

                                        <td class="no-wrap percent-24h  positive_change  text-right" data-usd="0.36" data-btc="-1.12">0.36%</td>

                                        <td><a href="/currencies/boostcoin/#charts"><img class="sparkline" alt="sparkline" src="https://files.coinmarketcap.com/generated/sparklines/350.png"></a></td>
                                    </tr>


                                </tbody>
                            </table> 
                            <div class="pull-right">
                                <ul class="pagination bottom-paginator">


                                    <li><a href="2">Next 100  &rarr;</a></li>

                                    <li><a href="/all/views/all/">View All</a></li>
                                </ul>
                            </div>

                            <div id="asterisks"> * Not Mineable <br/> ** Significantly Premined </div>

                        </div>
                    </div>
                    <div class="row text-center" id="total_market_cap">
                        <strong>Total Market Cap: <span id="total-marketcap" data-usd="12,025,707,918" data-btc="19,809,430">

                                $12,025,707,918 
                            </span></strong>
                    </div>
                    <div id="currency-exchange-rates"
                         data-usd="1"
                         data-eur="1.1156978690170702"
                         data-cny="0.14987856838389535"
                         data-gbp="1.32961926352389"
                         data-cad="0.7699011754851148"
                         data-rub="0.015340957380059026"
                         data-hkd="0.12894101773661062"
                         data-jpy="0.009617474566588508"
                         data-aud="0.7572527777925022"
                         ></div>



                    <hr/>

                    <div id="leaderboard-bottom" class="row text-center">

                        <!-- /48901027/landing_leaderboard_bottom -->
                        <div id='div-gpt-ad-1450201744909-4' style='height:90px; width:728px; margin: 0 auto;'>
                            <script type='text/javascript'>
                            googletag.cmd.push(function() { googletag.display('div-gpt-ad-1450201744909-4'); });
                            </script>
                        </div>

                    </div>

                </div>

                
            </div>
        </div>

        <div id="static_domain" data-staticdomain="files.coinmarketcap.com"></div>

        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="/static/.bower_components/jquery/jquery.min.js"><\/script>')</script>

        <script src="/static/compressed/base.min.js?d30217e0"></script>





        <script src="/static/compressed/currencies_main.min.js?8bba7dd7"></script>


    </body>
</html>

