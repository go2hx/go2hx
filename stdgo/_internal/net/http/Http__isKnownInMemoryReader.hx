package stdgo._internal.net.http;
function _isKnownInMemoryReader(_r:stdgo._internal.io.Io_Reader.Reader):Bool {
        {
            final __type__ = _r;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.bytes.Bytes_Reader.Reader>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>))) {
                return true;
            };
        };
        {
            var __tmp__ = stdgo._internal.net.http.Http__unwrapNopCloser._unwrapNopCloser(_r), _r:stdgo._internal.io.Io_Reader.Reader = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return stdgo._internal.net.http.Http__isKnownInMemoryReader._isKnownInMemoryReader(_r);
            };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo.Ref<stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody>)) : stdgo.Ref<stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody>), _1 : false };
            }, _r = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return stdgo._internal.net.http.Http__isKnownInMemoryReader._isKnownInMemoryReader((@:checkr _r ?? throw "null pointer dereference").readCloser);
            };
        };
        return false;
    }
