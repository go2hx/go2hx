package stdgo._internal.encoding.json;
function _isValidNumber(_s:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L601"
        if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L602"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L606"
        if (_s[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L608"
            if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L609"
                return false;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L614"
        if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        } else if ((((49 : stdgo.GoUInt8) <= _s[(0 : stdgo.GoInt)] : Bool) && (_s[(0 : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L623"
            while (((((_s.length) > (0 : stdgo.GoInt) : Bool) && ((48 : stdgo.GoUInt8) <= _s[(0 : stdgo.GoInt)] : Bool) : Bool) && (_s[(0 : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            };
        } else {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L616"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L629"
        if ((((((_s.length) >= (2 : stdgo.GoInt) : Bool) && _s[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) && ((48 : stdgo.GoUInt8) <= _s[(1 : stdgo.GoInt)] : Bool) : Bool) && (_s[(1 : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
            _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L631"
            while (((((_s.length) > (0 : stdgo.GoInt) : Bool) && ((48 : stdgo.GoUInt8) <= _s[(0 : stdgo.GoInt)] : Bool) : Bool) && (_s[(0 : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L638"
        if ((((_s.length) >= (2 : stdgo.GoInt) : Bool) && (((_s[(0 : stdgo.GoInt)] == (101 : stdgo.GoUInt8)) || (_s[(0 : stdgo.GoInt)] == (69 : stdgo.GoUInt8)) : Bool)) : Bool)) {
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L640"
            if (((_s[(0 : stdgo.GoInt)] == (43 : stdgo.GoUInt8)) || (_s[(0 : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) : Bool)) {
                _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L642"
                if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L643"
                    return false;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L646"
            while (((((_s.length) > (0 : stdgo.GoInt) : Bool) && ((48 : stdgo.GoUInt8) <= _s[(0 : stdgo.GoInt)] : Bool) : Bool) && (_s[(0 : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L652"
        return _s == ((stdgo.Go.str() : stdgo.GoString));
    }
