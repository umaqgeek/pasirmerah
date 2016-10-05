<div class="rta-hero-stats">
    <div class="rta-hero-stats__item">
        <span class="rta-hero-stats__value ubuntu-h4">
            <gm-aurum-accounts>
                <span ng-bind="accounts"><?= $account_holders; ?></span>
            </gm-aurum-accounts>
        </span>
        <span class="pf-din-h7 orange-text">Account Holders
            <span class="bottom-tooltip tooltiptext inline-inputs" data-tooltip="Total User Signup On The Network">
                <img src="<?= base_url() . 'assets/imagess/info.png' ?>" height='13' width='13'><br />
            </span>
        </span>
    </div>
    <div class="rta-hero-stats__item">
        <span class="rta-hero-stats__value ubuntu-h4">
            <gm-aurum-assets>
                <span ng-bind="assets"><?= $currency; ?> <?= $customer_assets; ?></span>
            </gm-aurum-assets>
        </span>
        <span class="pf-din-h7 gold-text">Customer Cash in <?= $currency; ?>
            <span class="bottom-tooltip tooltiptext inline-inputs" data-tooltip="Total Customer Assets Converted To MYR">
                <img src="<?= base_url() . 'assets/imagess/info.png' ?>" height='13' width='13'><br />
            </span>
        </span>
    </div>
    <div class="rta-hero-stats__item">
        <span class="rta-hero-stats__value ubuntu-h4">
            <span ng-bind="volume"><?= $currency; ?> <?= $pts; ?></span>
        </span>
        <span class="pf-din-h7 blue-text">Transaction Vol.
            <span class="bottom-tooltip tooltiptext inline-inputs" data-tooltip="Cummulative Transaction Volume Since Inception Of The DinarPal Network On 2016">
                <img src="<?= base_url() . 'assets/imagess/info.png' ?>" height='13' width='13'><br />
            </span>
        </span>
    </div>
</div>
<div class="rta-hero__stats-container">
    <div class="rta-hero-stats">
        <div class="rta-hero-stats__item">
            <span class="rta-hero-stats__value ubuntu-h4">
                <gm-aurum-assets>
                    <span ng-bind="assets"><?= $customer_assets_gold; ?> GRM 
                        <!-- <br /> <?= $currency; ?> <?= $customer_assets_gold_myr; ?> -->
                    </span>
                </gm-aurum-assets>
            </span>
            <span class="pf-din-h7 gold-text">Customer Assets in Gold Gram
                <span class="bottom-tooltip tooltiptext inline-inputs" data-tooltip="Total Customer Assets Converted To Gold Grams">
                    <img src="<?= base_url() . 'assets/imagess/info.png' ?>" height='13' width='13'><br />
                </span>
            </span>
        </div>
        <img src="<?=base_url(); ?>assets/images/gold-bars-png.png" style='max-width: 70px; max-height: 70px;' />
        <div class="rta-hero-stats__item">
            <span class="rta-hero-stats__value ubuntu-h4">
                <gm-aurum-assets>
                    <span ng-bind="assets"><?= $pts_gold; ?> GRM</span>
                </gm-aurum-assets>
            </span>
            <span class="pf-din-h7 gold-text">Transaction Vol. in Gold Gram
                <span class="bottom-tooltip tooltiptext inline-inputs" data-tooltip="Cummulative Transaction Volume Of Gold">
                    <img src="<?= base_url() . 'assets/imagess/info.png' ?>" height='13' width='13'><br />
                </span>
            </span>
        </div>
    </div>
</div>
<div class="rta-hero__stats-container">
    <div class="rta-hero-stats">
        <div class="rta-hero-stats__item">
            <span class="rta-hero-stats__value ubuntu-h4">
                <gm-aurum-assets>
                    <span ng-bind="assets"><?= $customer_assets_silver; ?> GRM 
                        <!-- <br /> <?= $currency; ?> <?= $customer_assets_silver_myr; ?> -->
                    </span>
                </gm-aurum-assets>
            </span>
            <span class="pf-din-h7 gold-text">Customer Assets in Silver Gram
                <span class="bottom-tooltip tooltiptext inline-inputs" data-tooltip="Total Customer Assets Converted To Silver Grams">
                    <img src="<?= base_url() . 'assets/imagess/info.png' ?>" height='13' width='13'><br />
                </span>
            </span>
        </div>
        <img src="<?=base_url(); ?>assets/images/silver-bar-weightless.png" style='max-width: 70px; max-height: 70px;' />
        <div class="rta-hero-stats__item">
            <span class="rta-hero-stats__value ubuntu-h4">
                <gm-aurum-assets>
                    <span ng-bind="assets"><?= $pts_silver; ?> GRM</span>
                </gm-aurum-assets>
            </span>
            <span class="pf-din-h7 gold-text">Transaction Vol. in Silver Gram
                <span class="bottom-tooltip tooltiptext inline-inputs" data-tooltip="Cummulative Transaction Volume Of Silver">
                    <img src="<?= base_url() . 'assets/imagess/info.png' ?>" height='13' width='13'><br />
                </span>
            </span>
        </div>
    </div>
</div>
<div class="rta-hero__stats-container">
    <div class="rta-hero-stats">
<!--        <div class="rta-hero-stats__item">
            <span class="rta-hero-stats__value ubuntu-h4">
                <gm-aurum-assets>
                    <span ng-bind="assets"><?= $number_visitors_all; ?></span>
                </gm-aurum-assets>
            </span>
            <span class="pf-din-h7 gold-text">Number of Visitors<br />Since Beginning</span>
        </div>-->
        <div class="rta-hero-stats__item">
            <span class="rta-hero-stats__value ubuntu-h4">
                <gm-aurum-assets>
                    <span ng-bind="assets"><?= $number_visitors; ?></span>
                </gm-aurum-assets>
            </span>
            <span class="pf-din-h7 gold-text">Number of Visitors Today</span>
            <span class="pf-din-h7 gold-text">[ <?=$time_today; ?> ]</span>
        </div>
        <div class="rta-hero-stats__item">
            <span class="rta-hero-stats__value ubuntu-h4">
                <gm-aurum-assets>
                    <span ng-bind="assets"><?= $total_today; ?></span>
                </gm-aurum-assets>
            </span>
            <span class="pf-din-h7 gold-text">Number of Register Today</span>
            <span class="pf-din-h7 gold-text">[ <?=$time_today; ?> ]</span>
        </div>
    </div>
</div>