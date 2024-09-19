package stdgo._internal.encoding.base64;
function benchmarkNewEncoding(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.setBytes(((new stdgo._internal.encoding.base64.Base64_Encoding.Encoding() : stdgo._internal.encoding.base64.Base64_Encoding.Encoding)._decodeMap.length : stdgo.GoInt64));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var _e = stdgo._internal.encoding.base64.Base64_newEncoding.newEncoding(("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/" : stdgo.GoString));
                for (__16 => _v in _e._decodeMap) {
                    var __blank__ = _v;
                };
            });
        };
    }
