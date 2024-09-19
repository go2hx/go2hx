package stdgo._internal.net.http;
function allowQuerySemicolons(_h:stdgo._internal.net.http.Http_Handler.Handler):stdgo._internal.net.http.Http_Handler.Handler {
        return stdgo.Go.asInterface((function(_w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void {
            if (stdgo._internal.strings.Strings_contains.contains(_r.url.rawQuery?.__copy__(), (";" : stdgo.GoString))) {
                var _r2 = (stdgo.Go.setRef(({} : stdgo._internal.net.http.Http_Request.Request)) : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
                {
                    var __tmp__ = (_r : stdgo._internal.net.http.Http_Request.Request)?.__copy__();
                    (_r2 : stdgo._internal.net.http.Http_Request.Request).method = __tmp__.method;
                    (_r2 : stdgo._internal.net.http.Http_Request.Request).url = __tmp__.url;
                    (_r2 : stdgo._internal.net.http.Http_Request.Request).proto = __tmp__.proto;
                    (_r2 : stdgo._internal.net.http.Http_Request.Request).protoMajor = __tmp__.protoMajor;
                    (_r2 : stdgo._internal.net.http.Http_Request.Request).protoMinor = __tmp__.protoMinor;
                    (_r2 : stdgo._internal.net.http.Http_Request.Request).header = __tmp__.header;
                    (_r2 : stdgo._internal.net.http.Http_Request.Request).body = __tmp__.body;
                    (_r2 : stdgo._internal.net.http.Http_Request.Request).getBody = __tmp__.getBody;
                    (_r2 : stdgo._internal.net.http.Http_Request.Request).contentLength = __tmp__.contentLength;
                    (_r2 : stdgo._internal.net.http.Http_Request.Request).transferEncoding = __tmp__.transferEncoding;
                    (_r2 : stdgo._internal.net.http.Http_Request.Request).close = __tmp__.close;
                    (_r2 : stdgo._internal.net.http.Http_Request.Request).host = __tmp__.host;
                    (_r2 : stdgo._internal.net.http.Http_Request.Request).form = __tmp__.form;
                    (_r2 : stdgo._internal.net.http.Http_Request.Request).postForm = __tmp__.postForm;
                    (_r2 : stdgo._internal.net.http.Http_Request.Request).multipartForm = __tmp__.multipartForm;
                    (_r2 : stdgo._internal.net.http.Http_Request.Request).trailer = __tmp__.trailer;
                    (_r2 : stdgo._internal.net.http.Http_Request.Request).remoteAddr = __tmp__.remoteAddr;
                    (_r2 : stdgo._internal.net.http.Http_Request.Request).requestURI = __tmp__.requestURI;
                    (_r2 : stdgo._internal.net.http.Http_Request.Request).tls = __tmp__.tls;
                    (_r2 : stdgo._internal.net.http.Http_Request.Request).cancel = __tmp__.cancel;
                    (_r2 : stdgo._internal.net.http.Http_Request.Request).response = __tmp__.response;
                    (_r2 : stdgo._internal.net.http.Http_Request.Request)._ctx = __tmp__._ctx;
                };
                _r2.url = (stdgo.Go.setRef(({} : stdgo._internal.net.url.Url_URL.URL)) : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
                {
                    var __tmp__ = (_r.url : stdgo._internal.net.url.Url_URL.URL)?.__copy__();
                    (_r2.url : stdgo._internal.net.url.Url_URL.URL).scheme = __tmp__.scheme;
                    (_r2.url : stdgo._internal.net.url.Url_URL.URL).opaque = __tmp__.opaque;
                    (_r2.url : stdgo._internal.net.url.Url_URL.URL).user = __tmp__.user;
                    (_r2.url : stdgo._internal.net.url.Url_URL.URL).host = __tmp__.host;
                    (_r2.url : stdgo._internal.net.url.Url_URL.URL).path = __tmp__.path;
                    (_r2.url : stdgo._internal.net.url.Url_URL.URL).rawPath = __tmp__.rawPath;
                    (_r2.url : stdgo._internal.net.url.Url_URL.URL).omitHost = __tmp__.omitHost;
                    (_r2.url : stdgo._internal.net.url.Url_URL.URL).forceQuery = __tmp__.forceQuery;
                    (_r2.url : stdgo._internal.net.url.Url_URL.URL).rawQuery = __tmp__.rawQuery;
                    (_r2.url : stdgo._internal.net.url.Url_URL.URL).fragment = __tmp__.fragment;
                    (_r2.url : stdgo._internal.net.url.Url_URL.URL).rawFragment = __tmp__.rawFragment;
                };
                _r2.url.rawQuery = stdgo._internal.strings.Strings_replaceAll.replaceAll(_r.url.rawQuery?.__copy__(), (";" : stdgo.GoString), ("&" : stdgo.GoString))?.__copy__();
                _h.serveHTTP(_w, _r2);
            } else {
                _h.serveHTTP(_w, _r);
            };
        } : stdgo._internal.net.http.Http_HandlerFunc.HandlerFunc));
    }
