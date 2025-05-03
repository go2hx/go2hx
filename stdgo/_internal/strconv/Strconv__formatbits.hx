package stdgo._internal.strconv;
function _formatBits(_dst:stdgo.Slice<stdgo.GoUInt8>, _u:stdgo.GoUInt64, _base:stdgo.GoInt, _neg:Bool, _append_:Bool):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoString; } {
        var _d = (null : stdgo.Slice<stdgo.GoUInt8>), _s = ("" : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/strconv/itoa.go#L89"
        if (((_base < (2 : stdgo.GoInt) : Bool) || (_base > ((("0123456789abcdefghijklmnopqrstuvwxyz" : stdgo.GoString) : stdgo.GoString).length) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/itoa.go#L90"
            throw stdgo.Go.toInterface(("strconv: illegal AppendInt/FormatInt base" : stdgo.GoString));
        };
        var _a:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(65, 65).__setNumber32__();
        var _i = (_a.length : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/strconv/itoa.go#L97"
        if (_neg) {
            _u = -_u;
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/itoa.go#L104"
        if (_base == ((10 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/itoa.go#L108"
            if (true) {
                //"file:///home/runner/.go/go1.21.3/src/strconv/itoa.go#L110"
                while ((_u >= (1000000000i64 : stdgo.GoUInt64) : Bool)) {
                    var _q = (_u / (1000000000i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    var _us = ((_u - (_q * (1000000000i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt);
                    //"file:///home/runner/.go/go1.21.3/src/strconv/itoa.go#L116"
                    {
                        var _j = (4 : stdgo.GoInt);
                        while ((_j > (0 : stdgo.GoInt) : Bool)) {
                            var _is = ((_us % (100u32 : stdgo.GoUInt) : stdgo.GoUInt) * (2u32 : stdgo.GoUInt) : stdgo.GoUInt);
_us = (_us / ((100u32 : stdgo.GoUInt)) : stdgo.GoUInt);
_i = (_i - ((2 : stdgo.GoInt)) : stdgo.GoInt);
_a[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : stdgo.GoString)[((_is + (1u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)];
_a[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : stdgo.GoString)[((_is + (0u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)];
                            _j--;
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/strconv/itoa.go#L126"
                    _i--;
                    _a[(_i : stdgo.GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : stdgo.GoString)[(((_us * (2u32 : stdgo.GoUInt) : stdgo.GoUInt) + (1u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)];
                    _u = _q;
                };
            };
            var _us = (_u : stdgo.GoUInt);
            //"file:///home/runner/.go/go1.21.3/src/strconv/itoa.go#L136"
            while ((_us >= (100u32 : stdgo.GoUInt) : Bool)) {
                var _is = ((_us % (100u32 : stdgo.GoUInt) : stdgo.GoUInt) * (2u32 : stdgo.GoUInt) : stdgo.GoUInt);
                _us = (_us / ((100u32 : stdgo.GoUInt)) : stdgo.GoUInt);
                _i = (_i - ((2 : stdgo.GoInt)) : stdgo.GoInt);
                _a[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : stdgo.GoString)[((_is + (1u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)];
                _a[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : stdgo.GoString)[((_is + (0u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)];
            };
            var _is = (_us * (2u32 : stdgo.GoUInt) : stdgo.GoUInt);
            //"file:///home/runner/.go/go1.21.3/src/strconv/itoa.go#L146"
            _i--;
            _a[(_i : stdgo.GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : stdgo.GoString)[((_is + (1u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)];
            //"file:///home/runner/.go/go1.21.3/src/strconv/itoa.go#L148"
            if ((_us >= (10u32 : stdgo.GoUInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/strconv/itoa.go#L149"
                _i--;
                _a[(_i : stdgo.GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : stdgo.GoString)[(_is : stdgo.GoInt)];
            };
        } else if (stdgo._internal.strconv.Strconv__ispoweroftwo._isPowerOfTwo(_base)) {
            var _shift = ((stdgo._internal.math.bits.Bits_trailingzeros.trailingZeros((_base : stdgo.GoUInt)) : stdgo.GoUInt) & (7u32 : stdgo.GoUInt) : stdgo.GoUInt);
            var _b = (_base : stdgo.GoUInt64);
            var _m = ((_base : stdgo.GoUInt) - (1u32 : stdgo.GoUInt) : stdgo.GoUInt);
            //"file:///home/runner/.go/go1.21.3/src/strconv/itoa.go#L164"
            while ((_u >= _b : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/strconv/itoa.go#L165"
                _i--;
                _a[(_i : stdgo.GoInt)] = ("0123456789abcdefghijklmnopqrstuvwxyz" : stdgo.GoString)[(((_u : stdgo.GoUInt) & _m : stdgo.GoUInt) : stdgo.GoInt)];
                _u = (_u >> (_shift) : stdgo.GoUInt64);
            };
            //"file:///home/runner/.go/go1.21.3/src/strconv/itoa.go#L170"
            _i--;
            _a[(_i : stdgo.GoInt)] = ("0123456789abcdefghijklmnopqrstuvwxyz" : stdgo.GoString)[((_u : stdgo.GoUInt) : stdgo.GoInt)];
        } else {
            var _b = (_base : stdgo.GoUInt64);
            //"file:///home/runner/.go/go1.21.3/src/strconv/itoa.go#L175"
            while ((_u >= _b : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/strconv/itoa.go#L176"
                _i--;
                var _q = (_u / _b : stdgo.GoUInt64);
                _a[(_i : stdgo.GoInt)] = ("0123456789abcdefghijklmnopqrstuvwxyz" : stdgo.GoString)[(((_u - (_q * _b : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt)];
                _u = _q;
            };
            //"file:///home/runner/.go/go1.21.3/src/strconv/itoa.go#L185"
            _i--;
            _a[(_i : stdgo.GoInt)] = ("0123456789abcdefghijklmnopqrstuvwxyz" : stdgo.GoString)[((_u : stdgo.GoUInt) : stdgo.GoInt)];
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/itoa.go#L190"
        if (_neg) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/itoa.go#L191"
            _i--;
            _a[(_i : stdgo.GoInt)] = (45 : stdgo.GoUInt8);
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/itoa.go#L195"
        if (_append_) {
            _d = (_dst.__append__(...((_a.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/strconv/itoa.go#L197"
            return { _0 : _d, _1 : _s };
        };
        _s = ((_a.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/strconv/itoa.go#L200"
        return { _0 : _d, _1 : _s };
    }
