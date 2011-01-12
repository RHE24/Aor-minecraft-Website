<%@ include file="config.jsp"%>

<!--
You are free to copy and use this sample in accordance with the terms of the
Apache license (http://www.apache.org/licenses/LICENSE-2.0.html)
-->

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <title>Blog Posts</title>
    <script src="http://www.google.com/jsapi?key=AIzaSyA5m1Nc8ws2BbmPRwKu5gFradvD_hgq6G0" type="text/javascript"></script>
    <script type="text/javascript">
    /*
    *  How to load a feed via the Feeds API.
    */
    
    google.load("feeds", "1");
    
    // Our callback function, for when a feed is loaded.
    function feedLoaded(result) {
      if (!result.error) {
        // Grab the container we will put the results into
        var container = document.getElementById("content");
        container.innerHTML = '';
    
        // Loop through the feeds, putting the titles onto the page.
        // Check out the result object for a list of properties returned in each entry.
        // http://code.google.com/apis/ajaxfeeds/documentation/reference.html#JSON
        for (var i = 0; i < result.feed.entries.length; i++) {
          var entry = result.feed.entries[i];
          var div = document.createElement("div");
	  var link = document.createElement('a');
	  var date = document.createElement('p');
//	  var snip = document.createElement('p');
	  var pre = document.createElement('pre');
	  link.setAttribute('href',entry.link);
	  link.appendChild(document.createTextNode(entry.title));
//	  pre.appendChild(document.createTextNode("	" + entry.contentSnippet));
//	  snip.appendChild(pre);
//	  div.appendChild(snip);
	  date.appendChild(document.createTextNode(new Date(entry.publishedDate)));
	  div.appendChild(date);
	  div.appendChild(link);
          container.appendChild(div);
        }
      }
    }
    
    function OnLoad() {
      
      var feed = new google.feeds.Feed("<%=serverAddress%>");
    
      // Calling load sends the request off.  It requires a callback function.
      feed.load(feedLoaded);
    }
    
    google.setOnLoadCallback(OnLoad);
    </script>
  </head>
  <body style="font-family: Arial;border: 0 none;">
    <div id="content">Loading...</div>
  </body>
</html>
​
