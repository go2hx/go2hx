package stdgo._internal.net.http;
function _redirectBehavior(_reqMethod:stdgo.GoString, _resp:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>, _ireq:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : Bool; } {
        var _redirectMethod = ("" : stdgo.GoString), _shouldRedirect = false, _includeBody = false;
        {
            final __value__ = (@:checkr _resp ?? throw "null pointer dereference").statusCode;
            if (__value__ == ((301 : stdgo.GoInt)) || __value__ == ((302 : stdgo.GoInt)) || __value__ == ((303 : stdgo.GoInt))) {
                _redirectMethod = _reqMethod?.__copy__();
                _shouldRedirect = true;
                _includeBody = false;
                if (((_reqMethod != ("GET" : stdgo.GoString)) && (_reqMethod != ("HEAD" : stdgo.GoString)) : Bool)) {
                    _redirectMethod = ("GET" : stdgo.GoString);
                };
            } else if (__value__ == ((307 : stdgo.GoInt)) || __value__ == ((308 : stdgo.GoInt))) {
                _redirectMethod = _reqMethod?.__copy__();
                _shouldRedirect = true;
                _includeBody = true;
                if ((((@:checkr _ireq ?? throw "null pointer dereference").getBody == null) && (@:check2r _ireq._outgoingLength() != (0i64 : stdgo.GoInt64)) : Bool)) {
                    _shouldRedirect = false;
                };
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : Bool; } = { _0 : _redirectMethod?.__copy__(), _1 : _shouldRedirect, _2 : _includeBody };
            _redirectMethod = __tmp__._0;
            _shouldRedirect = __tmp__._1;
            _includeBody = __tmp__._2;
            __tmp__;
        };
    }
