---
title       : Geospatial methods and tracers
subtitle    : Revealing mixing in riparian wetlands
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
* Repeated sampling of ~94 surface water and an additional 10 stream sites 
* Three tracers: $\delta^{2}\text{H}$ , gran-alkalinity (GA) and dissolved organic carbon (DOC)
* Sampling campaigns targeted different meteorological conditions.
* High resolution LiDAR survey provided detailed landscape description of the catchment.


### Objectives
1.  What can different **tracers** reveal about the spatial heterogeneity of water sources within an extended riparian zone?
2. Can we use geostatistical methods in combination with LiDAR data to classify **source areas** and **mixing zones** within a riparian zone?
3.	How do variable **meteorological** conditions affect the spatial patterns of water sources and the hydrological functioning at the catchment scale? 




---

## Sampling

<img src="https://raw.githubusercontent.com/johnDorian/geospatialhydrology/gh-pages/figs/sampling_loc_map_w_zones.jpg", width=85%>


---

## Climatic conditions


<img src="https://raw.githubusercontent.com/johnDorian/geospatialhydrology/gh-pages/figs/climate.jpg", width=100%>


---

## Temporal trends
<img src="https://raw.githubusercontent.com/johnDorian/geospatialhydrology/gh-pages/figs/time_samples.jpg", width=100%>


---

## Spatial trends
<img src="https://raw.githubusercontent.com/johnDorian/geospatialhydrology/gh-pages/figs/iso_sample_com.png", width=100%>

### Observations so far...
* Seasonality can be seen in spatial and temporal samples.
* The heterogeneity is dampened at the catchment.
* Great spatial variability in all tracers.



---

## LiDAR derived Topograhic indices

1. Topographic wetness index (TWI)
2. Slope
3. Aspect
4. Contributing area
5. Topographic position index (TPI)
6. Topographic roughness index (TRI)
  

<img src="https://raw.githubusercontent.com/johnDorian/geospatialhydrology/gh-pages/figs/covariates.png", width=100%>


---

## Methods

> 1. Use stepwise regression to find the best linear model (fixed effects).
> 2. Fit a variogram to the residuals of the linear model (random effects).
> 3. Predict each tracer by combining the fixed and random effects.
> 4. Identify statistical outliers based on random effects of the model.
> 5. Use k-means clustering for each sampling campaign to locate zones of interest.

---

## Methods (cont.)

<img src="https://raw.githubusercontent.com/johnDorian/geospatialhydrology/gh-pages/figs/xy_fit.png", width=38%>
<img src="https://raw.githubusercontent.com/johnDorian/geospatialhydrology/gh-pages/figs/residuals.png", width=38%>
<img src="https://raw.githubusercontent.com/johnDorian/geospatialhydrology/gh-pages/figs/variogram.png", width=38%>
<img src="https://raw.githubusercontent.com/johnDorian/geospatialhydrology/gh-pages/figs/outliers.png", width=38%>


---

## Methods (cont.)

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

* Elevation was found one the most dominant topographic index.
* TWI was only included in one of the models


---

## Spatial estimates
<img src="https://raw.githubusercontent.com/johnDorian/geospatialhydrology/gh-pages/figs/predictions.png", width=100%>




---

## K-means cluster results

<img src="https://raw.githubusercontent.com/johnDorian/geospatialhydrology/gh-pages/figs/cluster.png", width=100%>

* The organic rich soils corresponded with the soil water classified areas.
* The influence of ground water was greatest during the cooler period.
* Extent of the mixed water reflect the climatic conditions. 


---

## Conclusions




* The three tracers provided information on different controlling processes.

* The spatial estimates provided vaulable information for identifying areas of significance.

* Many of the topographic indices were not related to any tracers and did not help explain the heterogeneity of the tracers.

* The heterogeneity was present for all three sampling occasions, but was more pronounced in the warmer months. 




