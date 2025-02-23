package stdgo._internal.strconv;
function _formatDecimal(_d:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimalslice.T_decimalSlice>, _m:stdgo.GoUInt64, _trunc:Bool, _roundUp:Bool, _prec:stdgo.GoInt):Void {
        var _max = (stdgo._internal.strconv.Strconv__uint64pow10._uint64pow10[(_prec : stdgo.GoInt)] : stdgo.GoUInt64);
        var _trimmed = (0 : stdgo.GoInt);
        while ((_m >= _max : Bool)) {
            var __0 = (_m / (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64), __1 = (_m % (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
var _b = __1, _a = __0;
            _m = _a;
            _trimmed++;
            if ((_b > (5i64 : stdgo.GoUInt64) : Bool)) {
                _roundUp = true;
            } else if ((_b < (5i64 : stdgo.GoUInt64) : Bool)) {
                _roundUp = false;
            } else {
                _roundUp = (_trunc || ((_m & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == (1i64 : stdgo.GoUInt64)) : Bool);
            };
            if (_b != ((0i64 : stdgo.GoUInt64))) {
                _trunc = true;
            };
        };
        if (_roundUp) {
            _m++;
        };
        if ((_m >= _max : Bool)) {
            _m = (_m / ((10i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _trimmed++;
        };
        var _n = (_prec : stdgo.GoUInt);
        (@:checkr _d ?? throw "null pointer dereference")._nd = _prec;
        var _v = (_m : stdgo.GoUInt64);
        while ((_v >= (100i64 : stdgo.GoUInt64) : Bool)) {
            var __0:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), __1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var _v2 = __1, _v1 = __0;
            if ((_v >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((0i64 : stdgo.GoUInt64))) {
                {
                    final __tmp__0 = (((_v : stdgo.GoUInt32) / (100u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt64);
                    final __tmp__1 = (((_v : stdgo.GoUInt32) % (100u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt64);
                    _v1 = __tmp__0;
                    _v2 = __tmp__1;
                };
            } else {
                {
                    final __tmp__0 = (_v / (100i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    final __tmp__1 = (_v % (100i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _v1 = __tmp__0;
                    _v2 = __tmp__1;
                };
            };
            _n = (_n - ((2u32 : stdgo.GoUInt)) : stdgo.GoUInt);
            (@:checkr _d ?? throw "null pointer dereference")._d[((_n + (1u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : stdgo.GoString)[((((2i64 : stdgo.GoUInt64) * _v2 : stdgo.GoUInt64) + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)];
            (@:checkr _d ?? throw "null pointer dereference")._d[((_n + (0u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : stdgo.GoString)[((((2i64 : stdgo.GoUInt64) * _v2 : stdgo.GoUInt64) + (0i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)];
            _v = _v1;
        };
        if ((_v > (0i64 : stdgo.GoUInt64) : Bool)) {
            _n--;
            (@:checkr _d ?? throw "null pointer dereference")._d[(_n : stdgo.GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : stdgo.GoString)[((((2i64 : stdgo.GoUInt64) * _v : stdgo.GoUInt64) + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)];
        };
        if ((_v >= (10i64 : stdgo.GoUInt64) : Bool)) {
            _n--;
            (@:checkr _d ?? throw "null pointer dereference")._d[(_n : stdgo.GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : stdgo.GoString)[(((2i64 : stdgo.GoUInt64) * _v : stdgo.GoUInt64) : stdgo.GoInt)];
        };
        while ((@:checkr _d ?? throw "null pointer dereference")._d[((@:checkr _d ?? throw "null pointer dereference")._nd - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
            (@:checkr _d ?? throw "null pointer dereference")._nd--;
            _trimmed++;
        };
        (@:checkr _d ?? throw "null pointer dereference")._dp = ((@:checkr _d ?? throw "null pointer dereference")._nd + _trimmed : stdgo.GoInt);
    }
