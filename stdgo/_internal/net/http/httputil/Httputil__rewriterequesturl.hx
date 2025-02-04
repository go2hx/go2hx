package stdgo._internal.net.http.httputil;
function _rewriteRequestURL(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _target:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>):Void {
        var _targetQuery = ((@:checkr _target ?? throw "null pointer dereference").rawQuery?.__copy__() : stdgo.GoString);
        (@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").scheme = (@:checkr _target ?? throw "null pointer dereference").scheme?.__copy__();
        (@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").host = (@:checkr _target ?? throw "null pointer dereference").host?.__copy__();
        {
            var __tmp__ = stdgo._internal.net.http.httputil.Httputil__joinurlpath._joinURLPath(_target, (@:checkr _req ?? throw "null pointer dereference").uRL);
            (@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").path = @:tmpset0 __tmp__._0?.__copy__();
            (@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").rawPath = @:tmpset0 __tmp__._1?.__copy__();
        };
        if (((_targetQuery == (stdgo.Go.str() : stdgo.GoString)) || ((@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").rawQuery == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            (@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").rawQuery = (_targetQuery + (@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").rawQuery?.__copy__() : stdgo.GoString)?.__copy__();
        } else {
            (@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").rawQuery = ((_targetQuery + ("&" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").rawQuery?.__copy__() : stdgo.GoString)?.__copy__();
        };
    }
