package stdgo._internal.net.http;
function _http2writeEndsStream(_w:stdgo._internal.net.http.Http_T_http2writeFramer.T_http2writeFramer):Bool {
        {
            final __type__ = _w;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeData.T_http2writeData>))) {
                var _v:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeData.T_http2writeData> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeData.T_http2writeData>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeData.T_http2writeData>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeData.T_http2writeData>) : __type__.__underlying__().value;
                return (@:checkr _v ?? throw "null pointer dereference")._endStream;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeResHeaders.T_http2writeResHeaders>))) {
                var _v:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeResHeaders.T_http2writeResHeaders> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeResHeaders.T_http2writeResHeaders>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeResHeaders.T_http2writeResHeaders>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeResHeaders.T_http2writeResHeaders>) : __type__.__underlying__().value;
                return (@:checkr _v ?? throw "null pointer dereference")._endStream;
            } else if (__type__ == null) {
                var _v:stdgo.AnyInterface = __type__ == null ? (null : stdgo.AnyInterface) : cast __type__;
                throw stdgo.Go.toInterface(("writeEndsStream called on nil writeFramer" : stdgo.GoString));
            };
        };
        return false;
    }
