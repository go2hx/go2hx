package stdgo._internal.bytes;
function indexAny(_s:stdgo.Slice<stdgo.GoUInt8>, _chars:stdgo.GoString):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L187"
        if (_chars == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L189"
            return (-1 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L191"
        if ((_s.length) == ((1 : stdgo.GoInt))) {
            var _r = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L193"
            if ((_r >= (128 : stdgo.GoInt32) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L195"
                for (__key__ => __value__ in _chars) {
                    _r = __value__;
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L196"
                    if (_r == ((65533 : stdgo.GoInt32))) {
                        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L197"
                        return (0 : stdgo.GoInt);
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L200"
                return (-1 : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L202"
            if ((stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_chars?.__copy__(), _s[(0 : stdgo.GoInt)]) >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L203"
                return (0 : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L205"
            return (-1 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L207"
        if ((_chars.length) == ((1 : stdgo.GoInt))) {
            var _r = (_chars[(0 : stdgo.GoInt)] : stdgo.GoInt32);
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L209"
            if ((_r >= (128 : stdgo.GoInt32) : Bool)) {
                _r = (65533 : stdgo.GoInt32);
            };
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L212"
            return stdgo._internal.bytes.Bytes_indexrune.indexRune(_s, _r);
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L214"
        if (((_s.length) > (8 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L215"
            {
                var __tmp__ = stdgo._internal.bytes.Bytes__makeasciiset._makeASCIISet(_chars?.__copy__()), _as:stdgo._internal.bytes.Bytes_t_asciiset.T_asciiSet = __tmp__._0, _isASCII:Bool = __tmp__._1;
                if (_isASCII) {
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L216"
                    for (_i => _c in _s) {
                        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L217"
                        if (_as._contains(_c)) {
                            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L218"
                            return _i;
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L221"
                    return (-1 : stdgo.GoInt);
                };
            };
        };
        var _width:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L225"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var _r = (_s[(_i : stdgo.GoInt)] : stdgo.GoInt32);
//"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L227"
                if ((_r < (128 : stdgo.GoInt32) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L228"
                    if ((stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_chars.__copy__(), _s[(_i : stdgo.GoInt)]) >= (0 : stdgo.GoInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L229"
                        return _i;
                    };
                    _width = (1 : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L232"
                    {
                        _i = (_i + (_width) : stdgo.GoInt);
                        continue;
                    };
                };
{
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune((_s.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>));
                    _r = @:tmpset0 __tmp__._0;
                    _width = @:tmpset0 __tmp__._1;
                };
//"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L235"
                if (_r != ((65533 : stdgo.GoInt32))) {
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L237"
                    if ((_chars.length) == (_width)) {
                        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L238"
                        if (_chars == ((_r : stdgo.GoString))) {
                            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L239"
                            return _i;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L241"
                        {
                            _i = (_i + (_width) : stdgo.GoInt);
                            continue;
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L244"
                    if ((stdgo._internal.internal.bytealg.Bytealg_maxlen.maxLen >= _width : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L245"
                        if ((stdgo._internal.internal.bytealg.Bytealg_indexstring.indexString(_chars.__copy__(), (_r : stdgo.GoString).__copy__()) >= (0 : stdgo.GoInt) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L246"
                            return _i;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L248"
                        {
                            _i = (_i + (_width) : stdgo.GoInt);
                            continue;
                        };
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L251"
                for (__0 => _ch in _chars) {
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L252"
                    if (_r == (_ch)) {
                        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L253"
                        return _i;
                    };
                };
                _i = (_i + (_width) : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L257"
        return (-1 : stdgo.GoInt);
    }
