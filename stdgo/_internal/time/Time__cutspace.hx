package stdgo._internal.time;
function _cutspace(_s:stdgo.GoString):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L938"
        while ((((_s.length) > (0 : stdgo.GoInt) : Bool) && (_s[(0 : stdgo.GoInt)] == (32 : stdgo.GoUInt8)) : Bool)) {
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L941"
        return _s?.__copy__();
    }
