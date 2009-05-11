url = NSURL.URLWithString("http://pragmaticstudio.com")
s = String.stringWithContentsOfURL(url, encoding:NSUTF8StringEncoding)
puts s
