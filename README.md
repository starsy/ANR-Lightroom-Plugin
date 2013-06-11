ANR-Lightroom-Plugin
====================

Auto Noise Reduction Plugin for Adobe Lightroom

A plugin for Adobe Lightroom to automatically adjust photo's luminance noise reduction(NR) levels according to the shooting ISO setting and post-processing exposure level.

* When doing photo post-processing, usually it is necessary to apply different NR levels according to photo's ISO settings to achieve a quality balance between details and noises.  E.g. a picture shot with ISO 3200 may need set luminance NR levcel to 60, while a ISO 400 photo may only need luminance NR level 20. 
* Adobe Lightroom is a great and powerful digital photo post-processing software, however it lacks of easy configuration that maps ISO levels to luminance NR levels, so each photo's NR level has to be manually adjusted which make it becomes a boring and time-costing step.
* I wrote this plugin to make photographer's life easier, especially for those using Adobe Lightroom as their primary digital photo processor.

P.S. There are two types of NR: luminance NR and color NR. This plugin only adjust luminance NR levels as luminance NR usually has much higher impact to the final effect.

Homepage
---------
* https://github.com/starsy/ANR-Lightroom-Plugin

Installation
---------
1. Check out or download this plugin
2. Extract the downloaded zip/tgz file into some folder on your hard drive
3. In Adobe Lightroom, File menu -> Plugin Manager > Add -> Select [extract folder]\AutoNoiseReduction.lrdevplugin -> Done

Usage
---------
1. Select the photos you want to adjust NR levels in "Library" or "Develop" modules
2. File menu -> Plugin Extras -> Auto Noise Reduction
3. Or in "Library" module, Library menu -> Plugin Extras -> Auto Noise Reduction
4. Still no idea? See the screenshot:
![Screenshot](https://github.com/starsy/ANR-Lightroom-Plugin/raw/master/Usage.jpg "Usage screenshot")

     
License
---------
MIT License

----
**It would be great to receive a tweet/direct message from you on twitter or weibo to let me know that you find this plugin is helpful. :)**

Thanks,  
Yang Song

- http://twitter.com/songyang
- http://weibo.com/starsy2

