package stdgo._internal.time;
function _byteString(_p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_p.length) : Bool), _i++, {
                if (_p[(_i : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                    return ((_p.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                };
            });
        };
        return (_p : stdgo.GoString)?.__copy__();
    }
