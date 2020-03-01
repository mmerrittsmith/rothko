<!-- README.md is generated from README.Rmd. Please edit that file -->
Rothko Palettes
===============

[![Build Status](https://travis-ci.org/mmerrittsmith/rothko.png)](https://travis-ci.org/mmerrittsmith/rothko)

![](vboyorar.jpg)

> Violet, Black, Orange, Yellow on White and Red, 1949

Mark Rothko is an 20th-century American painter best known for his later work on "multi-forms" or "colour fields". These paintings consist of large blocks of colors that, despite being abstract forms, convey a wide array of human emotion. Much of this is achieved through composition, but color plays a large part as well.

This project provides R color palettes derived from some of Rothko's most well-known works. It is directly derivative of the ![Wes Anderson Palettes R package](https://github.com/karthik/wesanderson).

Installation
------------

Rothko is currently under review at CRAN, and the development version should be used until CRAN release.

``` r
devtools::install_github("mmerrittsmith/rothko")
```

Usage
-----

``` r
library("rothko")
# See all palettes
names(rothko_palettes)
#>  [1] "Magenta, Black, Green on Orange"                
#>  [2] "Untitled 1949"                                  
#>  [3] "Number 5"                                       
#>  [4] "Violet, Black, Orange, Yellow on White and Red" 
#>  [5] "Violet, Black, Orange, Yellow on White and Red2"
#>  [6] "White Center"                                   
#>  [7] "Blue, Green, and Brown"                         
#>  [8] "Purple, White, and Red"                         
#>  [9] "Number 10"                                      
#> [10] "Rust and Blue"                                  
#> [11] "Untitled 1953"                                  
#> [12] "Ochre and Red on Red"                           
#> [13] "Red, Black, White on Yellow"                    
#> [14] "Green and Tangerine on Red"                     
#> [15] "Light Red Over Black"                           
#> [16] "Light Cloud, Dark Cloud"                        
#> [17] "Number 14"                                      
#> [18] "Orange, Red, Yellow"                            
#> [19] "Number 16"                                      
#> [20] "Blue and Grey"                                  
#> [21] "Untitled 1969"
```

Palettes
--------

### Magenta, Black, Green on Orange

``` r
rothko_palette("Magenta, Black, Green on Orange")
```

![](figure/Magenta,%20Black,%20Green%20on%20Orange-1.png)

### Untitled 1949

``` r
rothko_palette("Untitled 1949")
```

![](figure/Untitled%201949-1.png)

### Number 5

``` r
rothko_palette("Number 5")
```

![](figure/Number%205-1.png)

### Violet, Black, Orange, Yellow on White and Red

``` r
rothko_palette("Violet, Black, Orange, Yellow on White and Red")
```

![](figure/Violet,%20Black,%20Orange,%20Yellow%20on%20White%20and%20Red-1.png)

``` r
rothko_palette("Violet, Black, Orange, Yellow on White and Red2")
```

![](figure/Violet,%20Black,%20Orange,%20Yellow%20on%20White%20and%20Red-2.png)

### White Center

``` r
rothko_palette("White Center")
```

![](figure/White%20Center-1.png)

### Blue, Green, and Brown

``` r
rothko_palette("Blue, Green, and Brown")
```

![](figure/Blue,%20Green,%20Brown-1.png)

### Purple, White, and Red

``` r
rothko_palette("Purple, White, and Red")
```

![](figure/Purple,%20White,%20and%20Red-1.png)

### Number 10

``` r
rothko_palette("Number 10")
```

![](figure/Number%2010-1.png)

### Rust and Blue

``` r
rothko_palette("Rust and Blue")
```

![](figure/Rust%20and%20Blue-1.png)

### Untitled 1953

``` r
rothko_palette("Untitled 1953")
```

![](figure/Untitled%201953-1.png)

### Ochre and Red on Red

``` r
rothko_palette("Ochre and Red on Red")
```

![](figure/Ochre%20and%20Red%20on%20Red-1.png)

### Red, Black, White on Yellow

``` r
rothko_palette("Red, Black, White on Yellow")
```

![](figure/Red,%20Black,%20White%20on%20Yellow-1.png)

### Green and Tangerine on Red

``` r
rothko_palette("Green and Tangerine on Red")
```

![](figure/Green%20and%20Tangerine%20on%20Red-1.png)

### Light Red Over Black

``` r
rothko_palette("Light Red Over Black")
```

![](figure/Light%20Red%20Over%20Black-1.png)

### Light Cloud, Dark Cloud

``` r
rothko_palette("Light Cloud, Dark Cloud")
```

![](figure/Light%20Cloud,%20Dark%20Cloud-1.png)

### Number 14

``` r
rothko_palette("Number 14")
```

![](figure/Number%2014-1.png)

### Orange, Red, Yellow

``` r
rothko_palette("Orange, Red, Yellow")
```

![](figure/Orange,%20Red,%20Yellow-1.png)

### Number 16

``` r
rothko_palette("Number 16")
```

![](figure/Number%2016-1.png)

### Blue and Grey

``` r
rothko_palette("Blue and Grey")
```

![](figure/Blue%20and%20Grey-1.png)

### Untitled 1969

``` r
rothko_palette("Untitled 1969")
```

![](figure/Untitled%201969-1.png)
