# iiyo_koiyo
![](https://farm4.staticflickr.com/3949/15669994221_56c7eaec8d_o.png)

## Description
擬似乱数を生成・表示し、引数（もしくはパイプ）にマッチするまでループします

## Feature
```
$ iiyo_koiyo 84
817228643573529884
```
<!-- -->
```
$ iiyo_koiyo 514 && printf "胸にかけて胸に！\n"
920651154060854878640773730338279102860352810136195449081701298059382549488035312121631992874299962355764132781335462334095014934482478336780125425778705869917866437196766888041464125220884749140311038250454647162113552860337117656225479158318049236514胸にかけて胸に!
```
<!-- -->
```
$ printf '枕がでかすぎる -' && ./iiyo_koiyo.sh 19 && printf "点\n"
枕がでかすぎる -0255140483752281264600173915652225782619点
```

## Install
```
$ git clone https://github.com/844196/iiyo_koiyo
```

## Inspiration & Ideas

- [sasairc/iiyo_koiyo](https://github.com/sasairc/iiyo_koiyo)
