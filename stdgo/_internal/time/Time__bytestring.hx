package stdgo._internal.time;
function _byteString(_p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo_read.go#L102"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_p.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo_read.go#L103"
                if (_p[(_i : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo_read.go#L104"
                    return ((_p.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString).__copy__();
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo_read.go#L107"
        return (_p : stdgo.GoString)?.__copy__();
    }
