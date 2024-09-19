package stdgo._internal.net.http;
function _cloneOrMakeHeader(_hdr:stdgo._internal.net.http.Http_Header.Header):stdgo._internal.net.http.Http_Header.Header {
        var _clone = (_hdr.clone() : stdgo._internal.net.http.Http_Header.Header);
        if (_clone == null) {
            _clone = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header);
        };
        return _clone;
    }
