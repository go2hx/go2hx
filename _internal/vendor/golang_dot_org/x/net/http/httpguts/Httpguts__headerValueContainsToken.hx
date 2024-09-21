package _internal.vendor.golang_dot_org.x.net.http.httpguts;
function _headerValueContainsToken(_v:stdgo.GoString, _token:stdgo.GoString):Bool {
        {
            var _comma = (stdgo._internal.strings.Strings_indexByte.indexByte(_v?.__copy__(), (44 : stdgo.GoUInt8)) : stdgo.GoInt);
            stdgo.Go.cfor(_comma != ((-1 : stdgo.GoInt)), _comma = stdgo._internal.strings.Strings_indexByte.indexByte(_v?.__copy__(), (44 : stdgo.GoUInt8)), {
                if (_internal.vendor.golang_dot_org.x.net.http.httpguts.Httpguts__tokenEqual._tokenEqual(_internal.vendor.golang_dot_org.x.net.http.httpguts.Httpguts__trimOWS._trimOWS((_v.__slice__(0, _comma) : stdgo.GoString)?.__copy__())?.__copy__(), _token?.__copy__())) {
                    return true;
                };
                _v = (_v.__slice__((_comma + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            });
        };
        return _internal.vendor.golang_dot_org.x.net.http.httpguts.Httpguts__tokenEqual._tokenEqual(_internal.vendor.golang_dot_org.x.net.http.httpguts.Httpguts__trimOWS._trimOWS(_v?.__copy__())?.__copy__(), _token?.__copy__());
    }
