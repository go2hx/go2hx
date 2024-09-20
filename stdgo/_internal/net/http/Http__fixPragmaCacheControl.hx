package stdgo._internal.net.http;
function _fixPragmaCacheControl(_header:stdgo._internal.net.http.Http_Header.Header):Void {
        {
            var __tmp__ = (_header != null && _header.exists(("Pragma" : stdgo.GoString)) ? { _0 : _header[("Pragma" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), _hp:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (((_ok && ((_hp.length) > (0 : stdgo.GoInt) : Bool) : Bool) && (_hp[(0 : stdgo.GoInt)] == ("no-cache" : stdgo.GoString)) : Bool)) {
                {
                    var __tmp__ = (_header != null && _header.exists(("Cache-Control" : stdgo.GoString)) ? { _0 : _header[("Cache-Control" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __132:stdgo.Slice<stdgo.GoString> = __tmp__._0, _presentcc:Bool = __tmp__._1;
                    if (!_presentcc) {
                        _header[("Cache-Control" : stdgo.GoString)] = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("no-cache" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
                    };
                };
            };
        };
    }
