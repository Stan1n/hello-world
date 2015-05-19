// Playground - noun: a place where people can play

import UIKit




var url = NSURL(string: "http://www.weather.com.cn/data/cityinfo/101010100.html")
var data = NSData(contentsOfURL: url!)

var str = NSString(data: data!, encoding: NSUTF8StringEncoding)!

println(str)

var json : AnyObject! = NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.AllowFragments, error: nil)

let weatherinfo : AnyObject = json.objectForKey("weatherinfo")!

println(weatherinfo)


weatherinfo
