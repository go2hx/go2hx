package stdgo._internal.net.http;
function allowQuerySemicolons(_h:stdgo._internal.net.http.Http_handler.Handler):stdgo._internal.net.http.Http_handler.Handler {
        return stdgo.Go.asInterface((function(_w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Void {
            if (stdgo._internal.net.http.Http__strings._strings.contains((@:checkr (@:checkr _r ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").rawQuery?.__copy__(), (";" : stdgo.GoString))) {
                var _r2 = stdgo._internal.net.http.Http_new_.new_(stdgo._internal.net.http.Http_stdgo._internal.net.http.http_request_static_extension.request_static_extension.stdgo._internal.net.http.Http_request_static_extension.Request_static_extension);
                {
                    var __tmp__ = (_r : stdgo._internal.net.http.Http_request.Request)?.__copy__();
                    var x = (_r2 : stdgo._internal.net.http.Http_request.Request);
                    x.method = __tmp__?.method;
                    x.uRL = __tmp__?.uRL;
                    x.proto = __tmp__?.proto;
                    x.protoMajor = __tmp__?.protoMajor;
                    x.protoMinor = __tmp__?.protoMinor;
                    x.header = __tmp__?.header;
                    x.body = __tmp__?.body;
                    x.getBody = __tmp__?.getBody;
                    x.contentLength = __tmp__?.contentLength;
                    x.transferEncoding = __tmp__?.transferEncoding;
                    x.close = __tmp__?.close;
                    x.host = __tmp__?.host;
                    x.form = __tmp__?.form;
                    x.postForm = __tmp__?.postForm;
                    x.multipartForm = __tmp__?.multipartForm;
                    x.trailer = __tmp__?.trailer;
                    x.remoteAddr = __tmp__?.remoteAddr;
                    x.requestURI = __tmp__?.requestURI;
                    x.tLS = __tmp__?.tLS;
                    x.cancel = __tmp__?.cancel;
                    x.response = __tmp__?.response;
                    x._ctx = __tmp__?._ctx;
                };
                (@:checkr _r2 ?? throw "null pointer dereference").uRL = stdgo._internal.net.http.Http_new_.new_(stdgo._internal.net.http.Http__url._url.uRL);
                {
                    var __tmp__ = ((@:checkr _r ?? throw "null pointer dereference").uRL : stdgo._internal.net.url.Url_url.URL)?.__copy__();
                    var x = ((@:checkr _r2 ?? throw "null pointer dereference").uRL : stdgo._internal.net.url.Url_url.URL);
                    x.scheme = __tmp__?.scheme;
                    x.opaque = __tmp__?.opaque;
                    x.user = __tmp__?.user;
                    x.host = __tmp__?.host;
                    x.path = __tmp__?.path;
                    x.rawPath = __tmp__?.rawPath;
                    x.omitHost = __tmp__?.omitHost;
                    x.forceQuery = __tmp__?.forceQuery;
                    x.rawQuery = __tmp__?.rawQuery;
                    x.fragment = __tmp__?.fragment;
                    x.rawFragment = __tmp__?.rawFragment;
                };
                (@:checkr (@:checkr _r2 ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").rawQuery = stdgo._internal.net.http.Http__strings._strings.replaceAll((@:checkr (@:checkr _r ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").rawQuery?.__copy__(), (";" : stdgo.GoString), ("&" : stdgo.GoString))?.__copy__();
                _h.serveHTTP(_w, _r2);
            } else {
                _h.serveHTTP(_w, _r);
            };
        } : stdgo._internal.net.http.Http_handlerfunc.HandlerFunc));
    }
