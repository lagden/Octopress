---
layout: post
title: "unloadClip and removeMovieClip"
date: 2011-08-22 13:36
comments: true
categories:
- flash
- actionscript
- as2
- unloadClip
- removeMovieClip
---

## Removendo de verdade

{% blockquote Adobe, ActionScript 2.0 Language Reference / ActionScript classes / MovieClip %}
If you are using version 2 components, and use MovieClip.getNextHighestDepth() instead of the version 2 components DepthManager class to assign depth values, you may find that removeMovieClip() fails silently. When any version 2 component is used, the DepthManager class automatically reserves the highest (1048575) and lowest (-16383) available depths for cursors and tooltips. A subsequent call to getNextHighestDepth() returns 1048576, which is outside the valid range. The removeMovieClip() method fails silently if it encounters a depth value outside the valid range. If you must use getNextHighestDepth() with version 2 components, you can use swapDepths() to assign a valid depth value or use MovieClip.unloadMovie() to remove the contents of the movie clip. Alternatively, you can use the DepthManager class to assign depth values within the valid range.
{% endblockquote %}

{% codeblock lang:actionscript %}
var pic_mcl:MovieClipLoader = new MovieClipLoader();
var pic_mc:MovieClip = this.createEmptyMovieClip("pic_mc", this.getNextHighestDepth());
var listenerObject:Object = new Object();
  
pic_mcl.loadClip("http://www.helpexamples.com/flash/images/image1.jpg",pic_mc);

pic_mcl.addListener(listenerObject);
listenerObject.onLoadInit = function(target_mc)
{
  target_mc.onRelease = function()
  {
    trace("Unloading and removing clip...");
    pic_mcl.unloadClip(target_mc);
    target_mc.removeMovieClip();
  }
};
{% endcodeblock %}
