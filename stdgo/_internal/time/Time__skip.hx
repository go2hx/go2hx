package stdgo._internal.time;
function _skip(_value:stdgo.GoString, _prefix:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L947"
        while (((_prefix.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L948"
            if (_prefix[(0 : stdgo.GoInt)] == ((32 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L949"
                if ((((_value.length) > (0 : stdgo.GoInt) : Bool) && (_value[(0 : stdgo.GoInt)] != (32 : stdgo.GoUInt8)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/time/format.go#L950"
                    return { _0 : _value?.__copy__(), _1 : stdgo._internal.time.Time__errbad._errBad };
                };
                _prefix = stdgo._internal.time.Time__cutspace._cutspace(_prefix?.__copy__())?.__copy__();
                _value = stdgo._internal.time.Time__cutspace._cutspace(_value?.__copy__())?.__copy__();
                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L954"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L956"
            if (((_value.length == (0 : stdgo.GoInt)) || (_value[(0 : stdgo.GoInt)] != _prefix[(0 : stdgo.GoInt)]) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L957"
                return { _0 : _value?.__copy__(), _1 : stdgo._internal.time.Time__errbad._errBad };
            };
            _prefix = (_prefix.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            _value = (_value.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L962"
        return { _0 : _value?.__copy__(), _1 : (null : stdgo.Error) };
    }
