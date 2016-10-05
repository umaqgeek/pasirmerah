
<div class="col-md-12 col-md-offset-3">

    <iframe src="//liveprices.goldmoney.com/widget.html#/au/?a=null&amp;ai=null&amp;ao=null&amp;c=USD,GBP,CAD,EUR,AUD,JPY&amp;d=null&amp;m=AU,AG,PT,PD&amp;o=true&amp;r=10" 
            frameborder="0" scrolling="no" style="width: 100%; min-width: 275px; min-height:378px;" id="live-price-container">


        <html ng-app="App" class="ng-scope"><head><style type="text/css">@charset "UTF-8";[ng\:cloak],[ng-cloak],[data-ng-cloak],[x-ng-cloak],.ng-cloak,.x-ng-cloak,.ng-hide:not(.ng-hide-animate){display:none !important;}ng\:form{display:block;}.ng-animate-shim{visibility:hidden;}.ng-anchor{position:absolute;}</style>

                <meta charset="utf-8">

                <title>Goldmoney Live Price Widget</title>

                <link href="css/widget.css?v=1470152579327" rel="stylesheet">

            </head>
            <body>
                <!-- ngView: -->
                <div ng-view="" class="ng-scope">
                    <div class="lpw__container main-page ng-scope">
                        <gm-main-header class="ng-isolate-scope">
                            <header class="lpw__header">
                                <a class="lpw__header__link" href="#/manage-currency/au">
                                    <svg width="22" height="22">
                                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#circle-add-icon"></use>
                                    </svg>
                                </a> 
                                <i class="lpw__header__icon">
                                    <svg width="16" height="10">
                                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#lpw-title-icon"></use>
                                    </svg>
                                </i> 
                                <span class="lpw__header__label ng-binding">Live Gold Prices</span> <!-- ngIf: lastUpdated -->
                                <span class="lpw__header__lastUpdated ng-binding ng-scope" ng-if="lastUpdated">As of 44s ago</span><!-- end ngIf: lastUpdated -->
                                <gm-tabs ng-show="displayTabs" class="ng-isolate-scope">
                                    <div class="lpw__tabs"><!-- ngRepeat: metal in metals -->
                                        <a class="lpw__tabs__tab pf-din-h7 ng-binding ng-scope lpw__tabs__tab--selected" href="javascript:void(0)" ng-class="{ 'lpw__tabs__tab--selected': metalKey === metal.key }" ng-click="select(metal.key)" ng-repeat="metal in metals">Gold</a>
                                        <!-- end ngRepeat: metal in metals -->
                                        <a class="lpw__tabs__tab pf-din-h7 ng-binding ng-scope" href="javascript:void(0)" 
                                           ng-class="{ 'lpw__tabs__tab--selected': metalKey === metal.key }" ng-click="select(metal.key)" 
                                           ng-repeat="metal in metals">Silver</a><!-- end ngRepeat: metal in metals -->
                                        <a class="lpw__tabs__tab pf-din-h7 ng-binding ng-scope" href="javascript:void(0)" 
                                           ng-class="{ 'lpw__tabs__tab--selected': metalKey === metal.key }" ng-click="select(metal.key)" 
                                           ng-repeat="metal in metals">Platinum</a><!-- end ngRepeat: metal in metals -->
                                        <a class="lpw__tabs__tab pf-din-h7 ng-binding ng-scope" href="javascript:void(0)" 
                                           ng-class="{ 'lpw__tabs__tab--selected': metalKey === metal.key }" ng-click="select(metal.key)" 
                                           ng-repeat="metal in metals">Palladium</a><!-- end ngRepeat: metal in metals -->
                                    </div>
                                </gm-tabs>
                            </header>
                        </gm-main-header>
                        <gm-main-live-prices class="ng-isolate-scope">
                            <div class="lpw-ctrl">
                                <div class="lpw-labels">
                                    <div class="lpw-row">
                                        <div class="lpw-col lpw-col1">&nbsp;</div>
                                        <div class="lpw-col lpw-col2">Gram</div><!-- ngIf: displayOunce -->
                                        <div class="lpw-col lpw-col3 ng-scope" ng-if="displayOunce">Troy Ounce</div><!-- end ngIf: displayOunce -->
                                        <div class="lpw-col lpw-col4">24hr Change</div>
                                        <div class="lpw-col lpw-col5">1yr Change</div>
                                        <div class="lpw-col lpw-col6">10yr Change</div>
                                        <div class="lpw-col lpw-col7">&nbsp;</div>

                                    </div>

                                </div>
                                <div class="lpw-data-container" ng-switch="viewState"><!-- ngSwitchWhen: empty -->
                                    <!-- ngSwitchDefault: --><!-- ngSwitchWhen: network -->
                                    <!-- ngSwitchWhen: proxy --><!-- ngSwitchWhen: no-data -->
                                    <ul class="live-price-list"><!-- ngSwitchWhen: ready --><!-- ngRepeat: currency in currencies | orderBy:'country.name' -->
                                        <li class="lpw-row ng-scope" ng-repeat="currency in currencies| orderBy:'country.name'" ng-switch-when="ready" gm-set-max-height="">
                                            <a href="#/currency-details/AUD/au" class="currency-live-data">
                                                <div class="lpw-col lpw-col1"><i class="flag lpw-flag au" ng-class="currency.flag"></i> 
                                                    <span class="currency-code ng-binding">AUD</span>
                                                </div>
                                                <div gm-live-tick="{ code: currency.code }" class="lpw-col pw-col2 lpw-price ng-isolate-scope">
                                                    <span class="ng-binding">$56.35</span></div><!-- ngIf: displayOunce -->
                                                <div gm-live-tick="{ code: currency.code }" class="lpw-col lpw-col3 lpw-price ng-scope ng-isolate-scope" ng-if="displayOunce">
                                                    <span class="ng-binding">$1,752.76</span>
                                                </div><!-- end ngIf: displayOunce --><!-- ngIf: !deltas[metalKey][currency.code]['1d'] --><!-- ngIf: deltas[metalKey][currency.code]['1d'] -->
                                                <div ng-if="deltas[metalKey][currency.code]['1d']" gm-live-tick="{ code: currency.code, heartbeat: true }" 
                                                     class="lpw-col lpw-col4 lpw-change ng-scope ng-isolate-scope down" 
                                                     ng-class="{ 'up': prices[metalKey][currency.code].price > deltas[metalKey][currency.code]['1d'], 'down': prices[metalKey][currency.code].price < deltas[metalKey][currency.code]['1d'] }">
                                                    <i class="change-up">
                                                        <svg width="17" height="10">
                                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#change-up-icon"></use>
                                                        </svg>
                                                    </i> 
                                                    <i class="change-down">
                                                        <svg width="17" height="10">
                                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#change-down-icon"></use>
                                                        </svg>
                                                    </i> 
                                                    <span class="ng-binding">0.19%</span>
                                                </div><!-- end ngIf: deltas[metalKey][currency.code]['1d'] -->
                                                <!-- ngIf: !deltas[metalKey][currency.code]['1y'] -->
                                                <!-- ngIf: deltas[metalKey][currency.code]['1y'] -->
                                                <div ng-if="deltas[metalKey][currency.code]['1y']" gm-live-tick="{ code: currency.code, heartbeat: true }" 
                                                     class="lpw-col lpw-col5 lpw-change ng-scope ng-isolate-scope up" n
                                                     g-class="{ 'up': prices[metalKey][currency.code].price > deltas[metalKey][currency.code]['1y'], 'down': prices[metalKey][currency.code].price < deltas[metalKey][currency.code]['1y'] }">
                                                    <i class="change-up">
                                                        <svg width="17" height="10">
                                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#change-up-icon"></use>
                                                        </svg>
                                                    </i> 
                                                    <i class="change-down">
                                                        <svg width="17" height="10">
                                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#change-down-icon"></use>
                                                        </svg>
                                                    </i> 
                                                    <span class="ng-binding">7.29%</span>
                                                </div><!-- end ngIf: deltas[metalKey][currency.code]['1y'] -->
                                                <!-- ngIf: !deltas[metalKey][currency.code]['10y'] -->
                                                <!-- ngIf: deltas[metalKey][currency.code]['10y'] -->
                                                <div ng-if="deltas[metalKey][currency.code]['10y']" gm-live-tick="{ code: currency.code, heartbeat: true }" 
                                                     class="lpw-col lpw-col6 lpw-change ng-scope ng-isolate-scope up" 
                                                     ng-class="{ 'up': prices[metalKey][currency.code].price > deltas[metalKey][currency.code]['10y'], 'down': prices[metalKey][currency.code].price < deltas[metalKey][currency.code]['10y'] }">
                                                    <i class="change-up">
                                                        <svg width="17" height="10">
                                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#change-up-icon"></use>
                                                        </svg>
                                                    </i> 
                                                    <i class="change-down">
                                                        <svg width="17" height="10">
                                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#change-down-icon"></use>
                                                        </svg>
                                                    </i> 
                                                    <span class="ng-binding">123%</span>
                                                </div><!-- end ngIf: deltas[metalKey][currency.code]['10y'] -->
                                                <div class="lpw-col lpw-col7">
                                                    <svg width="3" height="15">
                                                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#vertical-more-icon"></use>
                                                    </svg>
                                                </div>
                                            </a>
                                        </li><!-- end ngRepeat: currency in currencies | orderBy:'country.name' -->
                                        <li class="lpw-row ng-scope" ng-repeat="currency in currencies| orderBy:'country.name'" ng-switch-when="ready" 
                                            gm-set-max-height="">
                                            <a href="#/currency-details/CAD/au" class="currency-live-data">
                                                <div class="lpw-col lpw-col1">
                                                    <i class="flag lpw-flag ca" ng-class="currency.flag"></i> 
                                                    <span class="currency-code ng-binding">CAD</span>
                                                </div>
                                                <div gm-live-tick="{ code: currency.code }" class="lpw-col pw-col2 lpw-price ng-isolate-scope">
                                                    <span class="ng-binding">$56.56</span>
                                                </div><!-- ngIf: displayOunce -->
                                                <div gm-live-tick="{ code: currency.code }" class="lpw-col lpw-col3 lpw-price ng-scope ng-isolate-scope" ng-if="displayOunce">
                                                    <span class="ng-binding">$1,759.20</span>
                                                </div><!-- end ngIf: displayOunce --><!-- ngIf: !deltas[metalKey][currency.code]['1d'] -->
                                                <!-- ngIf: deltas[metalKey][currency.code]['1d'] -->
                                                <div ng-if="deltas[metalKey][currency.code]['1d']" gm-live-tick="{ code: currency.code, heartbeat: true }" 
                                                     class="lpw-col lpw-col4 lpw-change ng-scope ng-isolate-scope down" ng-class="{ 'up': prices[metalKey][currency.code].price > deltas[metalKey][currency.code]['1d'], 'down': prices[metalKey][currency.code].price < deltas[metalKey][currency.code]['1d'] }">
                                                    <i class="change-up">
                                                        <svg width="17" height="10">
                                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#change-up-icon"></use>
                                                        </svg>
                                                    </i> 
                                                    <i class="change-down">
                                                        <svg width="17" height="10">
                                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#change-down-icon"></use>
                                                        </svg>
                                                    </i> 
                                                    <span class="ng-binding">0.26%</span>
                                                </div><!-- end ngIf: deltas[metalKey][currency.code]['1d'] -->
                                                <!-- ngIf: !deltas[metalKey][currency.code]['1y'] -->
                                                <!-- ngIf: deltas[metalKey][currency.code]['1y'] -->
                                                <div ng-if="deltas[metalKey][currency.code]['1y']" gm-live-tick="{ code: currency.code, heartbeat: true }" 
                                                     class="lpw-col lpw-col5 lpw-change ng-scope ng-isolate-scope up" ng-class="{ 'up': prices[metalKey][currency.code].price > deltas[metalKey][currency.code]['1y'], 'down': prices[metalKey][currency.code].price < deltas[metalKey][currency.code]['1y'] }">
                                                    <i class="change-up">
                                                        <svg width="17" height="10">
                                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#change-up-icon"></use>
                                                        </svg>
                                                    </i> 
                                                    <i class="change-down">
                                                        <svg width="17" height="10">
                                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#change-down-icon"></use>
                                                        </svg>
                                                    </i> 
                                                    <span class="ng-binding">14.93%</span>
                                                </div><!-- end ngIf: deltas[metalKey][currency.code]['1y'] -->
                                                <!-- ngIf: !deltas[metalKey][currency.code]['10y'] -->
                                                <!-- ngIf: deltas[metalKey][currency.code]['10y'] -->
                                                <div ng-if="deltas[metalKey][currency.code]['10y']" gm-live-tick="{ code: currency.code, heartbeat: true }" 
                                                     class="lpw-col lpw-col6 lpw-change ng-scope ng-isolate-scope up" ng-class="{ 'up': prices[metalKey][currency.code].price > deltas[metalKey][currency.code]['10y'], 'down': prices[metalKey][currency.code].price < deltas[metalKey][currency.code]['10y'] }">
                                                    <i class="change-up">
                                                        <svg width="17" height="10">
                                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#change-up-icon"></use>
                                                        </svg>
                                                    </i> 
                                                    <i class="change-down">
                                                        <svg width="17" height="10">
                                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#change-down-icon"></use>
                                                        </svg>
                                                    </i> 
                                                    <span class="ng-binding">167%</span>
                                                </div><!-- end ngIf: deltas[metalKey][currency.code]['10y'] -->
                                                <div class="lpw-col lpw-col7">
                                                    <svg width="3" height="15">
                                                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#vertical-more-icon"></use>
                                                    </svg>
                                                </div>
                                            </a>
                                        </li><!-- end ngRepeat: currency in currencies | orderBy:'country.name' -->
                                        <li class="lpw-row ng-scope" ng-repeat="currency in currencies| orderBy:'country.name'" ng-switch-when="ready" gm-set-max-height="">
                                            <a href="#/currency-details/EUR/au" class="currency-live-data">
                                                <div class="lpw-col lpw-col1">
                                                    <i class="flag lpw-flag eu" ng-class="currency.flag"></i> 
                                                    <span class="currency-code ng-binding">EUR</span>
                                                </div>
                                                <div gm-live-tick="{ code: currency.code }" class="lpw-col pw-col2 lpw-price ng-isolate-scope">
                                                    <span class="ng-binding">€38.26</span>
                                                </div><!-- ngIf: displayOunce -->
                                                <div gm-live-tick="{ code: currency.code }" class="lpw-col lpw-col3 lpw-price ng-scope ng-isolate-scope" ng-if="displayOunce">
                                                    <span class="ng-binding">€1,189.98</span>
                                                </div><!-- end ngIf: displayOunce --><!-- ngIf: !deltas[metalKey][currency.code]['1d'] -->
                                                <!-- ngIf: deltas[metalKey][currency.code]['1d'] -->
                                                <div ng-if="deltas[metalKey][currency.code]['1d']" gm-live-tick="{ code: currency.code, heartbeat: true }" 
                                                     class="lpw-col lpw-col4 lpw-change ng-scope ng-isolate-scope down" ng-class="{ 'up': prices[metalKey][currency.code].price > deltas[metalKey][currency.code]['1d'], 'down': prices[metalKey][currency.code].price < deltas[metalKey][currency.code]['1d'] }">
                                                    <i class="change-up">
                                                        <svg width="17" height="10">
                                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#change-up-icon"></use>
                                                        </svg>
                                                    </i> 
                                                    <i class="change-down">
                                                        <svg width="17" height="10">
                                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#change-down-icon"></use>
                                                        </svg>
                                                    </i> 
                                                    <span class="ng-binding">0.23%</span>
                                                </div><!-- end ngIf: deltas[metalKey][currency.code]['1d'] -->
                                                <!-- ngIf: !deltas[metalKey][currency.code]['1y'] --><!-- ngIf: deltas[metalKey][currency.code]['1y'] -->
                                                <div ng-if="deltas[metalKey][currency.code]['1y']" gm-live-tick="{ code: currency.code, heartbeat: true }" 
                                                     class="lpw-col lpw-col5 lpw-change ng-scope ng-isolate-scope up" ng-class="{ 'up': prices[metalKey][currency.code].price > deltas[metalKey][currency.code]['1y'], 'down': prices[metalKey][currency.code].price < deltas[metalKey][currency.code]['1y'] }">
                                                    <i class="change-up">
                                                        <svg width="17" height="10">
                                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#change-up-icon"></use>
                                                        </svg>
                                                    </i> 
                                                    <i class="change-down">
                                                        <svg width="17" height="10">
                                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#change-down-icon"></use>
                                                        </svg>
                                                    </i> 
                                                    <span class="ng-binding">16.08%</span>
                                                </div><!-- end ngIf: deltas[metalKey][currency.code]['1y'] --><!-- ngIf: !deltas[metalKey][currency.code]['10y'] --><!-- ngIf: deltas[metalKey][currency.code]['10y'] -->
                                                <div ng-if="deltas[metalKey][currency.code]['10y']" gm-live-tick="{ code: currency.code, heartbeat: true }" 
                                                     class="lpw-col lpw-col6 lpw-change ng-scope ng-isolate-scope up" ng-class="{ 'up': prices[metalKey][currency.code].price > deltas[metalKey][currency.code]['10y'], 'down': prices[metalKey][currency.code].price < deltas[metalKey][currency.code]['10y'] }">
                                                    <i class="change-up">
                                                        <svg width="17" height="10">
                                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#change-up-icon"></use>
                                                        </svg>
                                                    </i> 
                                                    <i class="change-down">
                                                        <svg width="17" height="10">
                                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#change-down-icon"></use>
                                                        </svg>
                                                    </i> 
                                                    <span class="ng-binding">155%</span>
                                                </div><!-- end ngIf: deltas[metalKey][currency.code]['10y'] -->
                                                <div class="lpw-col lpw-col7">
                                                    <svg width="3" height="15">
                                                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#vertical-more-icon"></use>
                                                    </svg>
                                                </div>
                                            </a>
                                        </li><!-- end ngRepeat: currency in currencies | orderBy:'country.name' -->
                                        <li class="lpw-row ng-scope" ng-repeat="currency in currencies| orderBy:'country.name'" ng-switch-when="ready" gm-set-max-height="">
                                            <a href="#/currency-details/JPY/au" class="currency-live-data">
                                                <div class="lpw-col lpw-col1">
                                                    <i class="flag lpw-flag jp" ng-class="currency.flag"></i> 
                                                    <span class="currency-code ng-binding">JPY</span>
                                                </div>
                                                <div gm-live-tick="{ code: currency.code }" class="lpw-col pw-col2 lpw-price ng-isolate-scope">
                                                    <span class="ng-binding">¥4,335.33</span>
                                                </div><!-- ngIf: displayOunce -->
                                                <div gm-live-tick="{ code: currency.code }" class="lpw-col lpw-col3 lpw-price ng-scope ng-isolate-scope" ng-if="displayOunce">
                                                    <span class="ng-binding">¥134,843.79</span>
                                                </div><!-- end ngIf: displayOunce --><!-- ngIf: !deltas[metalKey][currency.code]['1d'] --><!-- ngIf: deltas[metalKey][currency.code]['1d'] -->
                                                <div ng-if="deltas[metalKey][currency.code]['1d']" gm-live-tick="{ code: currency.code, heartbeat: true }" 
                                                     class="lpw-col lpw-col4 lpw-change ng-scope ng-isolate-scope down" ng-class="{ 'up': prices[metalKey][currency.code].price > deltas[metalKey][currency.code]['1d'], 'down': prices[metalKey][currency.code].price < deltas[metalKey][currency.code]['1d'] }">
                                                    <i class="change-up">
                                                        <svg width="17" height="10">
                                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#change-up-icon"></use>
                                                        </svg>
                                                    </i> 
                                                    <i class="change-down">
                                                        <svg width="17" height="10">
                                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#change-down-icon"></use>
                                                        </svg>
                                                    </i> 
                                                    <span class="ng-binding">0.33%</span>
                                                </div><!-- end ngIf: deltas[metalKey][currency.code]['1d'] --><!-- ngIf: !deltas[metalKey][currency.code]['1y'] -->
                                                <!-- ngIf: deltas[metalKey][currency.code]['1y'] -->
                                                <div ng-if="deltas[metalKey][currency.code]['1y']" gm-live-tick="{ code: currency.code, heartbeat: true }" 
                                                     class="lpw-col lpw-col5 lpw-change ng-scope ng-isolate-scope down" ng-class="{ 'up': prices[metalKey][currency.code].price > deltas[metalKey][currency.code]['1y'], 'down': prices[metalKey][currency.code].price < deltas[metalKey][currency.code]['1y'] }">
                                                    <i class="change-up">
                                                        <svg width="17" height="10">
                                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#change-up-icon"></use>
                                                        </svg>
                                                    </i> 
                                                    <i class="change-down">
                                                        <svg width="17" height="10">
                                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#change-down-icon"></use>
                                                        </svg>
                                                    </i> 
                                                    <span class="ng-binding">2.55%</span>
                                                </div><!-- end ngIf: deltas[metalKey][currency.code]['1y'] --><!-- ngIf: !deltas[metalKey][currency.code]['10y'] -->
                                                <!-- ngIf: deltas[metalKey][currency.code]['10y'] -->
                                                <div ng-if="deltas[metalKey][currency.code]['10y']" gm-live-tick="{ code: currency.code, heartbeat: true }" 
                                                     class="lpw-col lpw-col6 lpw-change ng-scope ng-isolate-scope up" ng-class="{ 'up': prices[metalKey][currency.code].price > deltas[metalKey][currency.code]['10y'], 'down': prices[metalKey][currency.code].price < deltas[metalKey][currency.code]['10y'] }">
                                                    <i class="change-up">
                                                        <svg width="17" height="10">
                                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#change-up-icon"></use>
                                                        </svg>
                                                    </i> 
                                                    <i class="change-down">
                                                        <svg width="17" height="10">
                                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#change-down-icon"></use>
                                                        </svg>
                                                    </i> 
                                                    <span class="ng-binding">95%</span>
                                                </div><!-- end ngIf: deltas[metalKey][currency.code]['10y'] -->
                                                <div class="lpw-col lpw-col7">
                                                    <svg width="3" height="15">
                                                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#vertical-more-icon"></use>
                                                    </svg>
                                                </div>
                                            </a>
                                        </li><!-- end ngRepeat: currency in currencies | orderBy:'country.name' -->
                                        <li class="lpw-row ng-scope" ng-repeat="currency in currencies| orderBy:'country.name'" ng-switch-when="ready" gm-set-max-height="">
                                            <a href="#/currency-details/GBP/au" class="currency-live-data">
                                                <div class="lpw-col lpw-col1">
                                                    <i class="flag lpw-flag gb" ng-class="currency.flag"></i> 
                                                    <span class="currency-code ng-binding">GBP</span>
                                                </div>
                                                <div gm-live-tick="{ code: currency.code }" class="lpw-col pw-col2 lpw-price ng-isolate-scope">
                                                    <span class="ng-binding">£33.11</span>
                                                </div><!-- ngIf: displayOunce -->
                                                <div gm-live-tick="{ code: currency.code }" class="lpw-col lpw-col3 lpw-price ng-scope ng-isolate-scope" ng-if="displayOunce">
                                                    <span class="ng-binding">£1,029.81</span>
                                                </div><!-- end ngIf: displayOunce --><!-- ngIf: !deltas[metalKey][currency.code]['1d'] --><!-- ngIf: deltas[metalKey][currency.code]['1d'] --><div ng-if="deltas[metalKey][currency.code]['1d']" gm-live-tick="{ code: currency.code, heartbeat: true }" class="lpw-col lpw-col4 lpw-change ng-scope ng-isolate-scope down" ng-class="{ 'up': prices[metalKey][currency.code].price > deltas[metalKey][currency.code]['1d'], 'down': prices[metalKey][currency.code].price < deltas[metalKey][currency.code]['1d'] }"><i class="change-up"><svg width="17" height="10"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#change-up-icon"></use></svg></i> <i class="change-down"><svg width="17" height="10"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#change-down-icon"></use></svg></i> <span class="ng-binding">0.30%</span></div><!-- end ngIf: deltas[metalKey][currency.code]['1d'] --><!-- ngIf: !deltas[metalKey][currency.code]['1y'] --><!-- ngIf: deltas[metalKey][currency.code]['1y'] --><div ng-if="deltas[metalKey][currency.code]['1y']" gm-live-tick="{ code: currency.code, heartbeat: true }" class="lpw-col lpw-col5 lpw-change ng-scope ng-isolate-scope up" ng-class="{ 'up': prices[metalKey][currency.code].price > deltas[metalKey][currency.code]['1y'], 'down': prices[metalKey][currency.code].price < deltas[metalKey][currency.code]['1y'] }"><i class="change-up"><svg width="17" height="10"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#change-up-icon"></use></svg></i> <i class="change-down"><svg width="17" height="10"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#change-down-icon"></use></svg></i> <span class="ng-binding">36.19%</span></div><!-- end ngIf: deltas[metalKey][currency.code]['1y'] --><!-- ngIf: !deltas[metalKey][currency.code]['10y'] --><!-- ngIf: deltas[metalKey][currency.code]['10y'] --><div ng-if="deltas[metalKey][currency.code]['10y']" gm-live-tick="{ code: currency.code, heartbeat: true }" class="lpw-col lpw-col6 lpw-change ng-scope ng-isolate-scope up" ng-class="{ 'up': prices[metalKey][currency.code].price > deltas[metalKey][currency.code]['10y'], 'down': prices[metalKey][currency.code].price < deltas[metalKey][currency.code]['10y'] }"><i class="change-up"><svg width="17" height="10"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#change-up-icon"></use></svg></i> <i class="change-down"><svg width="17" height="10"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#change-down-icon"></use></svg></i> <span class="ng-binding">230%</span></div><!-- end ngIf: deltas[metalKey][currency.code]['10y'] --><div class="lpw-col lpw-col7"><svg width="3" height="15"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#vertical-more-icon"></use></svg></div></a></li><!-- end ngRepeat: currency in currencies | orderBy:'country.name' --><li class="lpw-row ng-scope" ng-repeat="currency in currencies| orderBy:'country.name'" ng-switch-when="ready" gm-set-max-height=""><a href="#/currency-details/USD/au" class="currency-live-data"><div class="lpw-col lpw-col1"><i class="flag lpw-flag us" ng-class="currency.flag"></i> <span class="currency-code ng-binding">USD</span></div><div gm-live-tick="{ code: currency.code }" class="lpw-col pw-col2 lpw-price ng-isolate-scope"><span class="ng-binding">$42.96</span></div><!-- ngIf: displayOunce --><div gm-live-tick="{ code: currency.code }" class="lpw-col lpw-col3 lpw-price ng-scope ng-isolate-scope" ng-if="displayOunce"><span class="ng-binding">$1,336.30</span></div><!-- end ngIf: displayOunce --><!-- ngIf: !deltas[metalKey][currency.code]['1d'] --><!-- ngIf: deltas[metalKey][currency.code]['1d'] --><div ng-if="deltas[metalKey][currency.code]['1d']" gm-live-tick="{ code: currency.code, heartbeat: true }" class="lpw-col lpw-col4 lpw-change ng-scope ng-isolate-scope down" ng-class="{ 'up': prices[metalKey][currency.code].price > deltas[metalKey][currency.code]['1d'], 'down': prices[metalKey][currency.code].price < deltas[metalKey][currency.code]['1d'] }"><i class="change-up"><svg width="17" height="10"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#change-up-icon"></use></svg></i> <i class="change-down"><svg width="17" height="10"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#change-down-icon"></use></svg></i> <span class="ng-binding">0.23%</span></div><!-- end ngIf: deltas[metalKey][currency.code]['1d'] --><!-- ngIf: !deltas[metalKey][currency.code]['1y'] --><!-- ngIf: deltas[metalKey][currency.code]['1y'] --><div ng-if="deltas[metalKey][currency.code]['1y']" gm-live-tick="{ code: currency.code, heartbeat: true }" class="lpw-col lpw-col5 lpw-change ng-scope ng-isolate-scope up" ng-class="{ 'up': prices[metalKey][currency.code].price > deltas[metalKey][currency.code]['1y'], 'down': prices[metalKey][currency.code].price < deltas[metalKey][currency.code]['1y'] }"><i class="change-up"><svg width="17" height="10"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#change-up-icon"></use></svg></i> <i class="change-down"><svg width="17" height="10"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#change-down-icon"></use></svg></i> <span class="ng-binding">16.42%</span></div><!-- end ngIf: deltas[metalKey][currency.code]['1y'] --><!-- ngIf: !deltas[metalKey][currency.code]['10y'] --><!-- ngIf: deltas[metalKey][currency.code]['10y'] --><div ng-if="deltas[metalKey][currency.code]['10y']" gm-live-tick="{ code: currency.code, heartbeat: true }" class="lpw-col lpw-col6 lpw-change ng-scope ng-isolate-scope up" ng-class="{ 'up': prices[metalKey][currency.code].price > deltas[metalKey][currency.code]['10y'], 'down': prices[metalKey][currency.code].price < deltas[metalKey][currency.code]['10y'] }"><i class="change-up"><svg width="17" height="10"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#change-up-icon"></use></svg></i> <i class="change-down"><svg width="17" height="10"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#change-down-icon"></use></svg></i> <span class="ng-binding">126%</span></div><!-- end ngIf: deltas[metalKey][currency.code]['10y'] --><div class="lpw-col lpw-col7"><svg width="3" height="15"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#vertical-more-icon"></use></svg></div></a></li><!-- end ngRepeat: currency in currencies | orderBy:'country.name' --><!-- end ngSwitchWhen: --></ul></div></div></gm-main-live-prices><gm-main-footer class="ng-isolate-scope"><footer class="lpw__footer"><a href="https://www.goldmoney.com?gmrefcode=null" target="_blank" class="lpw__footer__logo"><svg width="91" height="16"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#logo"></use></svg></a></footer></gm-main-footer></div></div>

                <script src="js/widget.js?v=1470152579327"></script>
                <img src="//d.adroll.com/ipixel/GBRUIHLVUNGEJEFMZ7CC44/N6B4J3TMFRAQVICHQWKMCJ?name=03cefdf7" width="1" height="1">
                <script>
                                                    /* <![CDATA[ */
                                                    var google_conversion_id = 879452716;
                                                    var google_custom_params = window.google_tag_params;
                                                    var google_remarketing_only = true;
                                                    /* ]]> */
                </script>
                <script src="//www.googleadservices.com/pagead/conversion.js"></script>
                <iframe name="google_conversion_frame" title="Google conversion frame" width="300" height="13" src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/879452716/?random=1474870123643&amp;cv=8&amp;fst=1474870123643&amp;num=1&amp;fmt=1&amp;guid=ON&amp;eid=376635471&amp;u_h=768&amp;u_w=1366&amp;u_ah=728&amp;u_aw=1366&amp;u_cd=24&amp;u_his=6&amp;u_tz=480&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=7&amp;frm=2&amp;url=https%3A%2F%2Fliveprices.goldmoney.com%2Fwidget.html%23%2Fau%2F%3Fa%3Dnull%26ai%3Dnull%26ao%3Dnull%26c%3DUSD%2CGBP%2CCAD%2CEUR%2CAUD%2CJPY%26d%3Dnull%26m%3DAU%2CAG%2CPT%2CPD%26o%3Dtrue%26r%3D10&amp;ref=https%3A%2F%2Fwww.goldmoney.com%2Flive-prices%3Fgclid%3DCjwKEAjw652_BRDfkebVrdOGkDISJAD0Q2RureANELE8dKqhdzhwv9OXaAwpfg56LuXnXKHMZU37nxoCgwTw_wcB&amp;tiba=Goldmoney%20Live%20Price%20Widget" frameborder="0" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no"></iframe><iframe name="google_cookie_match_frame" title="Google cookie match frame" width="1" height="1" src="https://bid.g.doubleclick.net/xbbe/pixel?d=KAE" frameborder="0" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" style="display:none" scrolling="no"></iframe>
                <noscript>
                &lt;div style="display:inline;"&gt;
                &lt;img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/879452716/?value=0&amp;amp;guid=ON&amp;amp;script=0"/&gt;
                &lt;/div&gt;
                </noscript>
                <div style="display: none"><svg xmlns="http://www.w3.org/2000/svg">
                    <symbol id="back-arrow-icon" viewBox="0 0 16 16">
                        <path fill="#B9C8D0" d="M16 9H3.9l5.5 5.6L8 16 0 8l8-8 1.4 1.4L3.9 7H16z"></path>
                    </symbol>
                    <symbol id="change-down-icon" viewBox="0 0 17 10">
                        <path fill="#E85656" d="M15.4 4v3.1l-6.1-6-3.5 3.4L1.2 0 0 1.2l5.8 5.7 3.5-3.4 4.9 4.8h-3.1V10H17V4z"></path></symbol><symbol id="change-up-icon" viewBox="0 0 17 10"><path fill="#1BC67C" d="M15.4 5.8v-3l-6 5.9L6 5.3 1.5 9.8.3 8.6 6 3l3.4 3.3 4.8-4.6h-3.1V0H17v5.8z"></path></symbol><symbol id="checkmark-icon" viewBox="-948 592 22 17"><path d="M-941 605.4l-5.2-5.3-1.8 1.8 7 7.1 15-15.2-1.8-1.8-13.2 13.4z" fill="#05CC8F"></path></symbol><symbol id="circle-add-icon" viewBox="0 0 22 22"><path d="M11 2c5 0 9 4 9 9s-4 9-9 9-9-4-9-9 4-9 9-9m0-2C4.9 0 0 4.9 0 11s4.9 11 11 11 11-4.9 11-11S17.1 0 11 0z" fill="#BCE3F3"></path><path d="M12 10V7h-2v3H7v2h3v3h2v-3h3v-2h-3z" fill="#23A6DE"></path></symbol><symbol id="circle-remove-icon" viewBox="0 0 22 22"><path d="M11 2c5 0 9 4 9 9s-4 9-9 9-9-4-9-9 4-9 9-9m0-2C4.9 0 0 4.9 0 11s4.9 11 11 11 11-4.9 11-11S17.1 0 11 0z" fill="#F4C9C9"></path><path fill="#E85656" d="M15 10v2H7v-2z"></path></symbol><symbol id="logo" viewBox="0 0 91 16"><title>GMY Brand</title><g fill="#B9C8D0" fill-rule="evenodd"><path d="M10.99 13.026l-.68-4.899 1.505-.656v-.656H6.567v.656s1.553.54 1.647.656a.964.964 0 0 1 .174.525v.7c0 1.657-.804 2.704-2.445 2.704-1.743 0-2.968-.978-2.968-5.155 0-3.789 1.158-5.617 3.143-5.617 2.003 0 2.728 1.127 3.73 3.563h.655L10.31.254h-.698l-.699.875C7.946.385 7.032.254 5.943.254 2.543.254.017 2.84.017 6.814c0 3.468 2.437 6.342 5.856 6.342 1.899 0 2.733-.95 3.389-1.88l1.047 1.75h.681zm10.147-4.374c0-2.351-2-4.325-4.366-4.325-2.365 0-4.191 1.974-4.191 4.325 0 2.368 1.826 4.492 4.191 4.492 2.365 0 4.366-2.124 4.366-4.492zm-6.112 0c0-2.064.503-3.252 1.746-3.252 1.243 0 1.921 1.188 1.921 3.252 0 2.063-.678 3.474-1.921 3.474-1.243 0-1.746-1.41-1.746-3.474zm11.224 4.068v-.657l-.779-.07c-.397-.017-.535-.16-.535-.6V.254H23.93c-.673.424-1.957.634-2.924.65v.926h.654c.742 0 1.335.14 1.335.68l-.046 9.238-1.29.316v.657h4.59zm2.305-3.932c0-2.746 1.022-3.37 1.839-3.37.973 0 1.746.773 1.746 3.139 0 2.176-.836 3.508-1.965 3.508-1.147 0-1.62-.998-1.62-3.277zm6.88 3.932v-.657H34.7c-.57-.016-.577-.517-.577-1.312V.254h-.656c-.673.423-1.922.858-2.888.875v.7h.688c.742 0 .873.158.873.7V5.68c-.466-.947-1.242-1.385-2.278-1.385-1.916 0-3.616 1.899-3.616 4.486 0 2.622 1.464 4.069 3.45 4.069 1.225 0 2.03-.493 2.444-1.44v1.526c.743-.085 3.295-.217 3.295-.217zm15.747 0v-.657l-1.165-.105c-.276-.017-.775-.263-.775-.55l-.058-4.46c0-1.809-.715-2.32-2.2-2.32-1.035 0-1.99.48-2.664 1.732-.293-1.167-1.12-1.732-2.225-1.732-1.036 0-2.084.277-2.723 1.511l-.125-1.91h-.832c-.673.423-1.957 1.223-2.924 1.24v.67h.684c.743 0 1.202.136 1.202.677v4.985l-1.285.262v.657h4.592v-.657l-.766-.105c-.397-.017-.546-.11-.546-.55V8.126c0-1.54.725-2.1 1.675-2.1.846 0 1.415.757 1.415 1.941v3.833l-1.122.262v.657h4.593v-.657l-.732-.105c-.432-.017-.707-.162-.707-.55v-3.11c0-1.641.576-2.159 1.439-2.159.794 0 1.304.601 1.304 1.988v3.511l-.648.425v.657h4.593zm8.027-4.068c0-2.351-2-4.315-4.366-4.315-2.365 0-4.191 1.964-4.191 4.315 0 2.368 1.826 4.374 4.191 4.374 2.365 0 4.366-2.006 4.366-4.374zm-6.112 0c0-2.064.503-3.27 1.746-3.27 1.243 0 1.921 1.206 1.921 3.27 0 2.063-.678 3.472-1.92 3.472-1.244 0-1.747-1.409-1.747-3.472zM69.55 12.72v-.657l-.616-.105c-.431-.017-.696-.162-.696-.55V7.47c0-1.76-.806-2.843-2.395-2.843-1.035 0-2.12.447-2.794 1.75l-.14-2.188h-.655c-.674.423-1.841 1.31-2.808 1.327v.599h.663c.743 0 .912.158.912.699v4.935l-1.312.313v.657h4.592v-.657l-.553-.122c-.397-.017-.759-.094-.759-.534v-3.28c0-1.505.84-2.1 1.807-2.1 1.053 0 1.474.95 1.474 2.1v3.623l-.657.313v.657h3.937zm8.07-2.42l-.604-.27c-.484 1.302-1.388 1.946-2.44 1.946-1.848 0-2.446-1.237-2.446-2.624l5.414-.875c0-1.979-1.216-3.85-3.667-3.85-2.158 0-4.191 1.82-4.191 4.375 0 2.52 1.931 4.024 4.365 4.024 1.848 0 3.155-1.39 3.569-2.726zm-5.49-1.648c0-1.827.506-3.324 1.921-3.324 1.123 0 1.398 1.124 1.398 2.274 0 .305-.263.505-.609.573l-2.71.477zM79.641 16c1.916 0 3.057-1.962 3.558-3.129l2.659-6.122c.328-.762.803-1.179 1.407-1.246v-.656h-3.28v.656c.967 0 1.148.163 1.148.637 0 .118-.052.422-.139.642l-1.511 3.444-1.907-4.137a.664.664 0 0 1-.069-.305c0-.152-.043-.281.51-.281v-.656H78.08v.656c1.14 0 .855.23 1.062.654l3.246 6.596c-.587 1.302-1.26 2.232-2.02 2.232-.173 0-.225-.118-.225-.253 0-.136.035-.39.035-.474 0-.609-.535-1.032-1.036-1.032-.725 0-1.191.558-1.191 1.32 0 .896.898 1.454 1.743 1.454h-.053zM89.354 3.775a1.433 1.433 0 1 0 0-2.865 1.433 1.433 0 0 0 0 2.865zm0-.286a1.146 1.146 0 1 0 0-2.293 1.146 1.146 0 0 0 0 2.293z"></path><path d="M88.578 1.566h.823c.19 0 .333.041.428.123a.43.43 0 0 1 .142.343.446.446 0 0 1-.12.335.33.33 0 0 1-.096.071.764.764 0 0 1-.069.029v.005a.308.308 0 0 1 .084.024c.03.013.057.033.083.062a.335.335 0 0 1 .064.11.486.486 0 0 1 .025.169c0 .101.008.193.023.276a.364.364 0 0 0 .071.178h-.323a.282.282 0 0 1-.04-.124 1.468 1.468 0 0 1-.006-.13c0-.079-.005-.147-.015-.204a.356.356 0 0 0-.053-.143.225.225 0 0 0-.105-.083.464.464 0 0 0-.17-.026h-.445v.71h-.301V1.566zm.301.785h.496c.096 0 .17-.023.22-.069.05-.046.074-.114.074-.206a.32.32 0 0 0-.024-.134.195.195 0 0 0-.066-.081.244.244 0 0 0-.097-.039.64.64 0 0 0-.112-.01h-.49v.54z"></path></g></symbol><symbol id="lpw-title-icon" viewBox="0 0 16 10"><style>.st0{fill:none;stroke:#c09f69;stroke-width:2;stroke-linecap:round;stroke-linejoin:round}.st1{fill:#ad8749}</style><path id="Path-1" class="st0" d="M2 8l4.5-4.6 3 3.1L14 2"></path><circle id="Oval-1" class="st1" cx="2" cy="8" r="2"></circle><circle id="Oval-1_1_" class="st1" cx="14" cy="2" r="2"></circle></symbol><symbol id="search-icon" viewBox="0 0 12 12"><path d="M8.9 7.5c.5-.8.8-1.7.8-2.7C9.7 2.1 7.5 0 4.9 0S0 2.2 0 4.8s2.2 4.8 4.8 4.8c1 0 1.9-.3 2.7-.8l3.1 3.1 1.4-1.4-3.1-3zM2 4.9C2 3.3 3.3 2 4.9 2s2.9 1.3 2.9 2.9-1.3 2.9-2.9 2.9S2 6.5 2 4.9z" fill="#C8D4DA"></path></symbol><symbol id="vertical-more-icon" viewBox="0 0 3 15"><path d="M1.5 3C2.3 3 3 2.3 3 1.5S2.3 0 1.5 0 0 .7 0 1.5.7 3 1.5 3zm0 6C2.3 9 3 8.3 3 7.5S2.3 6 1.5 6 0 6.7 0 7.5.7 9 1.5 9zm0 6c.8 0 1.5-.7 1.5-1.5S2.3 12 1.5 12 0 12.7 0 13.5.7 15 1.5 15z" fill="#23A6DE"></path></symbol></svg></div>



            </body></html>


    </iframe>
    
</div>