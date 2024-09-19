package stdgo._internal.net.http;
function _http2cloneHeader(_h:stdgo._internal.net.http.Http_Header.Header):stdgo._internal.net.http.Http_Header.Header {
        var _h2 = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header);
        for (_k => _vv in _h) {
            var _vv2 = (new stdgo.Slice<stdgo.GoString>((_vv.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
            stdgo.Go.copySlice(_vv2, _vv);
            _h2[_k] = _vv2;
        };
        return _h2;
    }
