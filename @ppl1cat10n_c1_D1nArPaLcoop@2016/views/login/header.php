<!-- Start of footer.php -->
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html" charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="description" content="Dinarpal Payment Gateway">
    <meta name="author" content="DinarPal">
    <!-- batas -->
    <title>DinarPal</title>
    <link rel="shortcut icon" type="image/x-icon" href="<?php echo base_url().'assets/design_ori/favicon.ico' ?>">
    <link href="<?php echo base_url().'assets/css/bootstrap.css' ?>" rel="stylesheet">
    <link href="<?php echo base_url().'assets/css/bootigniter.css' ?>" rel="stylesheet">
    <link href="<?php echo base_url().'assets/css/main.css' ?>" rel="stylesheet"> 
    
    <link type="text/css" href="<?php echo base_url().'assets/csss/magiczoomplus.css' ?>" rel="stylesheet" media="screen">
    <script type="text/javascript" src="<?php echo base_url().'assets/jss/magiczoomplus.js' ?>"></script>
    
    <!--[if lt IE 9]>
    <![endif]-->
  </head>
  <body>
    <!-- / header.php -->
    
    <style>
        
.checkbox-toggle {
  display: none;
  max-height: 0;
  max-width: 0;
  opacity: 0;
}

.checkbox-toggle+label {
  display: inline-block;
  position: relative;
  background-color: #e85656;
  text-indent: -5000px;
  height: 20px;
  width: 48px;
  border-radius: 15px;
  cursor: pointer;
}

.cmn-toggle {
  position: absolute;
  margin-left: -9999px;
  visibility: hidden;
}
.cmn-toggle + label {
  display: block;
  position: relative;
  cursor: pointer;
  outline: none;
  user-select: none;
}

input.cmn-toggle-round + label {
  padding: 2px;
  width: 55px;
  height: 20px;
  background-color: #BCBEC0;
  border-radius: 20px;
}
input.cmn-toggle-round + label:before,
input.cmn-toggle-round + label:after {
  display: block;
  position: absolute;
  top: 1px;
  left: 1px;
  bottom: 1px;
  content: "";
}
input.cmn-toggle-round + label:before {
  right: 1px;
  background-color: #f1f1f1;
  border-radius: 60px;
  transition: background 0.4s;
}
input.cmn-toggle-round + label:after {
  width: 20px;
  background-color: #fff;
  border-radius: 100%;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
  transition: margin 0.4s;
}
input.cmn-toggle-round:checked + label:before {
  background-color: #FFAA02;
}
input.cmn-toggle-round:checked + label:after {
  margin-left: 35px;
}

/* ============================================================
  SPINNER CONTAINER
============================================================ */
.spinner-container {
  padding: 20px 0;
}

/* ============================================================
  SPINNER - COMMON
============================================================ */
[class*="cmn-spinner"] {
  position: relative;
  margin: 0 auto;
  width: 25px;
  height: 25px;
  color: rgba(0, 0, 0, 0);
  font-size: 0;
  text-indent: -99999px;
}

.cmn-spinner__radar {
  border-top: solid 2px #96ff96;
  border-right: solid 2px transparent;
  border-bottom: solid 2px transparent;
  border-left: solid 2px transparent;
  border-radius: 100%;
  animation: cmn-spinner--animation__radar 1.5s infinite linear;
}
.cmn-spinner__radar::before, .cmn-spinner__radar::after {
  display: block;
  position: absolute;
  border-right: solid 2px transparent;
  border-bottom: solid 2px transparent;
  border-left: solid 2px transparent;
  border-radius: 100%;
  content: "";
}
.cmn-spinner__radar::before {
  top: 12px;
  right: 12px;
  bottom: 12px;
  left: 12px;
  border-top: solid 2px #dcff64;
  animation: cmn-spinner--animation__radar 1.75s infinite linear;
}
.cmn-spinner__radar::after {
  top: 26px;
  right: 26px;
  bottom: 26px;
  left: 26px;
  border-top: solid 2px #fff;
  animation: cmn-spinner--animation__radar 2s infinite linear;
}

/* animation keyframes */
@keyframes cmn-spinner--animation__radar {
  from {
    transform: rotate(0deg);
  }
  to {
    transform: rotate(360deg);
  }
}


/*.glyphicon.spinning*/
.glyphicon.spinning {
    animation: spin 1s infinite linear;
    -webkit-animation: spin2 1s infinite linear;
}

@keyframes spin {
    from { transform: scale(1) rotate(0deg); }
    to { transform: scale(1) rotate(360deg); }
}

@-webkit-keyframes spin2 {
    from { -webkit-transform: rotate(0deg); }
    to { -webkit-transform: rotate(360deg); }
}

/*--account comparision- register--*/
@media (max-width:991px) {
  .choose-account {
    -webkit-column-count: 1;
    -moz-column-count: 1;
    column-count: 1;
  }
  
  .choose-account__col {
      margin-bottom: 20px;
  }

  .choose-account__col:last-child {
      margin-bottom: 0;
  }
}

.choose-account-box {
    position: relative;
    padding: 40px 30px 60px;
}

.choose-account-box--even-padding {
    padding-bottom: 40px;
}

.choose-account-box--large {
    min-height: 575px;
}

.choose-account-box__color-bar {
    position: absolute;
    top: -1px;
    left: -1px;
    width: calc(100% + 2px);
    height: 4px;
}

.choose-account-box__color-bar--personal {
    background-color: #23a6de;
}

.choose-account-box__color-bar--business {
    background-color: #ff8400;
}

.choose-account-box__color-bar--wealth {
    background-color: #c09f69;
}

.choose-account-box__img {
    width: 100px;
    height: 100px;
    margin-bottom: 20px;
}

.choose-account-box__title {
    margin-bottom: 15px;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    font-style: italic;
    font-weight: 300;
    font-size: 1.5rem;
    color: #204352;
}

.choose-account-box__link {
    display: block;
    font-size: .875rem;
}

.choose-account-box__description {
    margin-bottom: 25px;
    font-size: .875rem;
    line-height: 1.375rem;
}

.choose-account-box__list-item {
    position: relative;
    text-align: left;
    font-size: .75rem;
    line-height: 1.375rem;
    padding: 8px 0 8px 15px;
}

.choose-account-box__list-item-label {
    display: block;
    padding-left: 10px;
}

.choose-account-box__list-item::before {
    position: absolute;
    top: 16px;
    left: 8px;
    width: 6px;
    height: 6px;
    border-radius: 50%;
}

.choose-account-box__list-item--blue::before {
    background-color: #23a6de;
}

.choose-account-box__list-item--orange::before {
    background-color: #ff8400;
}

.choose-account-box__list-item--gold::before {
    background-color: #c09f69;
}

.choose-account-box__cta {
    position: absolute;
    left: 0;
    right: 0;
    bottom: -22px;
    margin: 0 auto;
    min-width: 48%;
    max-width: 58%;
}

.medium-rounded-blue-button {
    border: none;
    cursor: pointer;
    transition: opacity .2s,border-color .2s,box-shadow .2s,color .2s,background-color .2s;
    color: #fff!important;
    border-radius: 60px;
    height: 44px;
    background: -webkit-linear-gradient(#4cc9ff 0,#0d91c9 100%);
    background: linear-gradient(#4cc9ff 0,#0d91c9 100%);
}

.medium-rounded-blue-button:hover:not(.disabled):not(.glow) {
    background: -webkit-linear-gradient(#7fd8ff 0,#0d91c9 100%);
    background: linear-gradient(#7fd8ff 0,#0d91c9 100%);
    color: #fff;
    box-shadow: 0 3px 8px 0 rgba(0,0,0,.15);
}

.medium-rounded-blue-button.disabled {
    cursor: not-allowed;
}

.medium-rounded-blue-button__chevron {
    align-self: center;
    margin-right: -4px;
    margin-left: 6px;
    width: 10px;
    height: 6px;
    fill: #fff;
    -webkit-transition: -webkit-transform .3s ease;
    transition: -webkit-transform .3s ease;
    transition: transform .3s ease;
    transition: transform .3s ease,-webkit-transform .3s ease;
}

.medium-rounded-blue-button__chevron--active {
    -webkit-transform: scaleY(-1);
    transform: scaleY(-1);
}

.medium-rounded-blue-button.glow {
    box-shadow: 0 2px 14px 2px rgba(35,166,222,.5);
}

.medium-rounded-blue-button.glow:hover {
    box-shadow: 0 3px 20px 2px rgba(35,166,222,.7);
}

.medium-rounded-yellow-button {
    border: none;
    cursor: pointer;
    -webkit-transition: opacity .2s,border-color .2s,box-shadow .2s,color .2s,background-color .2s;
    transition: opacity .2s,border-color .2s,box-shadow .2s,color .2s,background-color .2s;
    color: #fff!important;
    border-radius: 60px;
    height: 44px;
    background: -webkit-linear-gradient(#ffbd00 0,#ff8400 100%);
    background: linear-gradient(#ffbd00 0,#ff8400 100%);
}

.medium-rounded-yellow-button:hover:not(.disabled):not(.glow) {
    background: -webkit-linear-gradient(#ffca33 0,#ff8400 100%);
    background: linear-gradient(#ffca33 0,#ff8400 100%);
    color: #fff;
    box-shadow: 0 3px 8px 0 rgba(0,0,0,.15);
}

.medium-rounded-yellow-button.disabled {
    cursor: not-allowed;
}

.medium-rounded-yellow-button__chevron {
    align-self: center;
    margin-right: -4px;
    margin-left: 6px;
    width: 10px;
    height: 6px;
    fill: #fff;
    -webkit-transition: -webkit-transform .3s ease;
    transition: -webkit-transform .3s ease;
    transition: transform .3s ease;
    transition: transform .3s ease,-webkit-transform .3s ease;
}



.choose-account__col .border-box {
    box-shadow: none!important;
}

@media (max-width:991px) {
    .choose-account-box {
        min-height: auto;
    }
}

.box {
    position: relative;
    width: 100%;
    margin: 0 auto;
    background-color: #fafafa;
    box-shadow: 0 2px 6px 0 rgba(0,0,0,.1),0 0 0 1px rgba(0,0,0,.15);
}

.box--large-shadow {
    box-shadow: 0 3px 12px 0 rgba(0,0,0,.25);
}

.box--padding {
    padding: 30px;
}

.border-box {
    border: 1px solid rgba(0,0,0,.2);
    box-shadow: 0 2px 6px 0 rgba(0,0,0,.1);
    margin-top: 50px;
}

.border-box__inner {
    position: relative;
    border-radius: 4px;
    background-color: #fff;
    padding: 40px 50px;
}

.border-box--large-shadow {
    box-shadow: 0 3px 12px 0 rgba(0,0,0,.25);
}

@media (max-width:991px) {
    .page-heading {
        margin-top: 50px;
        padding: 0 10px;
        align-self: center;
        text-align: center;
    }
}

.media-box {
    background-color: #fff;
    border-radius: 4px;
    border: 1px solid rgba(0,0,0,.25);
    box-shadow: 0 4px 12px 0 rgba(0,0,0,.15);
    padding: 40px 40px 20px;
}

.border-box,
.box {
    border-radius: 4px;
}

.media-box__date {
    margin-bottom: 15px;
    color: #c09f69;
}

.media-box__title {
    margin-bottom: 15px;
    font-size: 1.25rem;
    line-height: 1.75rem;
    font-style: italic;
    color: #204352;
}

.media-box__body {
    font-size: .875rem;
    line-height: 1.5rem;
}

.media-box__bottom {
    height: 60px;
    display: -webkit-box;
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: justify;
    justify-content: space-between;
}

.page {
    z-index: 3001;
    display: -webkit-box;
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    flex-direction: column;
    width: 100%;
    max-width: 1260px;
    padding: 0 30px;
    margin: 0 auto;
}

.page--bottom-space {
    margin-bottom: 120px;
}

@media (max-width:479px) {
    .page {
        width: auto;
        margin: -1px;
        padding: 0;
    }

    .page--bottom-space {
        margin-bottom: 60px;
    }
}

._wrapper,
.cross-promotion-cta__wrapper,
.features-hero__wrapper {
    width: 100%;
    max-width: 1260px;
    padding: 0 30px;
    margin: 0 auto;
}

@media (max-width:479px) {
    ._wrapper,
    .cross-promotion-cta__wrapper,
    .features-hero__wrapper {
        width: auto;
        margin: -1px;
        padding: 0;
    }
}

.full-vh-container {
    width: 100%;
    min-height: 100vh;
}

.extend-full-width {
    left: -20px;
    width: calc(100% + 40px);
}

@media (max-width:479px) {
    .extend-full-width {
        left: -10px;
        width: calc(100% + 20px);
    }
}

.ng-cloak,
[ng-cloak],
[ng\:cloak] {
    display: none!important;
}


    </style>