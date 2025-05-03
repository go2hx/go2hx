package stdgo._internal.bytes;
function lastIndexAny(_s:stdgo.Slice<stdgo.GoUInt8>, _chars:stdgo.GoString):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L265"
        if (_chars == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L267"
            return (-1 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L269"
        if (((_s.length) > (8 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L270"
            {
                var __tmp__ = stdgo._internal.bytes.Bytes__makeasciiset._makeASCIISet(_chars?.__copy__()), _as:stdgo._internal.bytes.Bytes_t_asciiset.T_asciiSet = __tmp__._0, _isASCII:Bool = __tmp__._1;
                if (_isASCII) {
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L271"
                    {
                        var _i = ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L272"
                            if (_as._contains(_s[(_i : stdgo.GoInt)])) {
                                //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L273"
                                return _i;
                            };
                            _i--;
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L276"
                    return (-1 : stdgo.GoInt);
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L279"
        if ((_s.length) == ((1 : stdgo.GoInt))) {
            var _r = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L281"
            if ((_r >= (128 : stdgo.GoInt32) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L282"
                for (__key__ => __value__ in _chars) {
                    _r = __value__;
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L283"
                    if (_r == ((65533 : stdgo.GoInt32))) {
                        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L284"
                        return (0 : stdgo.GoInt);
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L287"
                return (-1 : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L289"
            if ((stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_chars?.__copy__(), _s[(0 : stdgo.GoInt)]) >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L290"
                return (0 : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L292"
            return (-1 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L294"
        if ((_chars.length) == ((1 : stdgo.GoInt))) {
            var _cr = (_chars[(0 : stdgo.GoInt)] : stdgo.GoInt32);
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L296"
            if ((_cr >= (128 : stdgo.GoInt32) : Bool)) {
                _cr = (65533 : stdgo.GoInt32);
            };
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L299"
            {
                var _i = (_s.length : stdgo.GoInt);
                while ((_i > (0 : stdgo.GoInt) : Bool)) {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodelastrune.decodeLastRune((_s.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>)), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                    _i = (_i - (_size) : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L302"
                    if (_r == (_cr)) {
                        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L303"
                        return _i;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L306"
            return (-1 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L308"
        {
            var _i = (_s.length : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                var _r = (_s[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt32);
                //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L310"
                if ((_r < (128 : stdgo.GoInt32) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L311"
                    if ((stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_chars?.__copy__(), _s[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]) >= (0 : stdgo.GoInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L312"
                        return (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L314"
                    _i--;
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L315"
                    continue;
                };
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodelastrune.decodeLastRune((_s.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>)), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                _i = (_i - (_size) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L319"
                if (_r != ((65533 : stdgo.GoInt32))) {
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L321"
                    if ((_chars.length) == (_size)) {
                        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L322"
                        if (_chars == ((_r : stdgo.GoString))) {
                            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L323"
                            return _i;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L325"
                        continue;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L328"
                    if ((stdgo._internal.internal.bytealg.Bytealg_maxlen.maxLen >= _size : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L329"
                        if ((stdgo._internal.internal.bytealg.Bytealg_indexstring.indexString(_chars?.__copy__(), (_r : stdgo.GoString)?.__copy__()) >= (0 : stdgo.GoInt) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L330"
                            return _i;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L332"
                        continue;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L335"
                for (__0 => _ch in _chars) {
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L336"
                    if (_r == (_ch)) {
                        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L337"
                        return _i;
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L341"
        return (-1 : stdgo.GoInt);
    }
