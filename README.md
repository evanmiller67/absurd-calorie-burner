absurd-calorie-burner
=====================

Exercise effectively!

Info
----

Information on how to calculate metabolic burn rates:  
* [Calculate calories burned](http://www.livestrong.com/article/18303-calculate-calories-burned/)
* [METS calculation](http://www.my-calorie-counter.com/mets_calculation.asp)
* [MET rates for activity](https://sites.google.com/site/compendiumofphysicalactivities/home)
* [Cancer.gov MET values](http://appliedresearch.cancer.gov/atus-met/met.php)

TODO
----

### Iteration 1

* Decide bounds on time (maximum and minimum amounts)
* Bounds on weight (current bodyweight multiplier), e.g. no more than 3x current body weight
* Compile list of exercies and their MET rate

##### Backend
The 'standard' MET calculation looks like:  
      Calories burned per hour = Weight(KG) * METs

We need to alter this to: find length of time for a given exercise, find weight required for a given time

* Create library for calculating
  * Formula Inputs: Weight, Time, METs
  * Formula Outputs: Calories Burned
  * Method for finding weight
  * Method for finding time
* Wrapper library to choose a weight/time to calculate the other

##### UI
* Inputs for body weight and cals to burn
* Render results that shows name of exercise, length of time, required additional weight (if any)


### Iteration 2
This is up for debate, but some ideas we've had are:

##### UI
* Embed youtube video of exercise
* Show what foods you're burning off (# of Big Macs, chicken nuggets, etc)
  * Data research to grab several foods from different restaurants
  * Grab data from candy bars, ice cream, pizza, etc.
* Convert added pounds to household items (microwave, rocking chair, recliner, tv, etc.)

##### Backend
* Bound additional weight multiplier to depend on a selected item
* Load data into memory rather than db

### Iteration 3
* List view of different exercies
  * Order by time (most to least)
* Easter eggs?
