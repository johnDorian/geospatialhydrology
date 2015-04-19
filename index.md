---
title       : Geospatial methods and tracers
subtitle    : Revealing mxing in riparian welands
author      : Jason Lessels
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : solarized_light      # 
widgets     : [mathjax]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
github      :
  user: johnDorian
  repo: geospatialhydrology

---
<!-- Limit image width and height -->
<style type='text/css'>

strong {
  font-weight: bold;
  color: red;
}
em {
  font-style: italic
}




</style>

<!-- Center image on slide -->
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.7.min.js"></script>
<script type='text/javascript'>
$(function() {
    $("p:has(img)").addClass('centered');
});
</script>


## Study objectives

### Overview
* Repeated sampling of ~94 pools within an extended riprarian zone. 
* Sampling campaigns targetted different meteorological conditions.
* High resolution LiDAR survey provided detailed landscape description of the catchment.


### Aims
1.  What can different **tracers** reveal about the spatial heterogeneity of water sources within an extended riparian zone?
2. Can we use geostatistical methods in combination with LiDAR data to classify **source areas** and **mixing zones** within a riparian zone?
3.	How do variable **meteorological** conditions affect the spatial patterns of water sources and the hydrological functioning at the catchment scale? 




---

## Sampling

<img src="https://raw.githubusercontent.com/johnDorian/geospatialhydrology/gh-pages/figs/sampling_loc_map_w_zones.jpg", width=85%>


---

## Climating conditions


<img src="https://raw.githubusercontent.com/johnDorian/geospatialhydrology/gh-pages/figs/climate.jpg", width=100%>


---

## Temporal trends of the tracers
<img src="https://raw.githubusercontent.com/johnDorian/geospatialhydrology/gh-pages/figs/time_samples.jpg", width=100%>


---

## Spatial trends of the tracers
<img src="https://raw.githubusercontent.com/johnDorian/geospatialhydrology/gh-pages/figs/iso_sample_com.png", width=100%>

### Observations so far...
* Seasonality can be seen in spatial and temporal samples.
* The hetergoetity is dampeend at the catchment.
* Great spatial variablity in all tracers.



---

## LiDAR derived Topograhic indices

1. Topographic wetness index (TWI)
2. Slope
3. Aspect
4. Contributing area
5. Topographic position index
6. Topographic roughness index
  

<img src="https://raw.githubusercontent.com/johnDorian/geospatialhydrology/gh-pages/figs/covariates.png", width=100%>


---

## Methods

> 1. Use stepwise regression to find the best linear model.
> 2. Fit a variogram to the residuals of the model
> 3. Predict each tracer by combining the linear model estimates and the spatial random errors.
> 4. Identify statistical outliers using based on the spatial errors.
> 5. Use k-means clustering for each sampling campaign to locate zones of interest.

---

## Linear model and residuals

<img src="https://raw.githubusercontent.com/johnDorian/geospatialhydrology/gh-pages/figs/xy_fit.png", width=35%>
<img src="https://raw.githubusercontent.com/johnDorian/geospatialhydrology/gh-pages/figs/residuals.png", width=35%>
<img src="https://raw.githubusercontent.com/johnDorian/geospatialhydrology/gh-pages/figs/variogram.png", width=35%>
<img src="https://raw.githubusercontent.com/johnDorian/geospatialhydrology/gh-pages/figs/outliers.png", width=35%>


---

## Final predictions

<img src="https://raw.githubusercontent.com/johnDorian/geospatialhydrology/gh-pages/figs/final_est.png", width=70%>

---


## Linear model results 

| Variable  | Sample date | 	$\beta_0$ | 	$\beta_{slope}$ | 	$\beta_{TRI}$ | 	$\beta_{SWI}$ | 	$\beta_{ELEV}$ |
| --- | --- | --- | --- | --- | --- | --- | 
| | Aug 2012  | $4.77^{*}$ | - |   $-19.57^{*}$ | 	-	 |  - |
| Deuterium | Feb 2013  | $8.55^{*}$ | 	$-0.19^{*}$ | 	- |	$-0.19^{*}$	 | $-0.02$ | 
| 	| May 2013	| $4.53^{*}$	| $-0.21^{*}$ | 	- | 	-	 | - | 
| | Aug 2012 | $98.84^{*}$ |	- |	-	| -	| $-0.19$ | 
| Gran alkalinity	| Feb 2013 | $50.98^{*}$ | 	- | $22.92$ | 	- | 	$-0.12$ | 
| | May 2013 | $64.69^{*}$	| -	| -	| -| 	$-0.14$ |
| | Aug 2012 |	$-5.48^{*}$ | 	$-0.09^{*}$ | 	- |	- |	$0.03^{*}$ |
DOC | 	Feb 2013 |	$-0.89$ | 	- | 	$-3.36^{*}$	| -| 	$0.01^{*}$|
| |	May 2013 | $2.59^{*}$ | -	| $-2.71$	| -	| -|




---

## Spatial estimates
<img src="https://raw.githubusercontent.com/johnDorian/geospatialhydrology/gh-pages/figs/predictions.png", width=100%>




---

## Cluster results

<img src="https://raw.githubusercontent.com/johnDorian/geospatialhydrology/gh-pages/figs/cluster.png", width=100%>


---

## Conclusions




