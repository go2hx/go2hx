package stdgo._internal.net.http;
function _knownRoundTripperImpl(_rt:stdgo._internal.net.http.Http_RoundTripper.RoundTripper, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Bool {
        {
            final __type__ = _rt;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>))) {
                var _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>) : __type__.__underlying__().value;
                {
                    var _altRT = (@:check2r _t._alternateRoundTripper(_req) : stdgo._internal.net.http.Http_RoundTripper.RoundTripper);
                    if (_altRT != null) {
                        return stdgo._internal.net.http.Http__knownRoundTripperImpl._knownRoundTripperImpl(_altRT, _req);
                    };
                };
                return true;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>)) || stdgo.Go.typeEquals((__type__ : stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper))) {
                var _t:stdgo._internal.net.http.Http_RoundTripper.RoundTripper = __type__ == null ? (null : stdgo._internal.net.http.Http_RoundTripper.RoundTripper) : cast __type__;
                return true;
            };
        };
        if ((stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(_rt)).string() : stdgo.GoString) == (("*http2.Transport" : stdgo.GoString))) {
            return true;
        };
        return false;
    }
