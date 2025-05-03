package stdgo._internal.strconv;
function _fmtX(_dst:stdgo.Slice<stdgo.GoUInt8>, _prec:stdgo.GoInt, _fmt:stdgo.GoUInt8, _neg:Bool, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo._internal.strconv.Strconv_t_floatinfo.T_floatInfo>):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/strconv/ftoa.go#L491"
        if (_mant == ((0i64 : stdgo.GoUInt64))) {
            _exp = (0 : stdgo.GoInt);
        };
        _mant = (_mant << (((60u32 : stdgo.GoUInt) - (@:checkr _flt ?? throw "null pointer dereference")._mantbits : stdgo.GoUInt)) : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/strconv/ftoa.go#L497"
        while (((_mant != (0i64 : stdgo.GoUInt64)) && ((_mant & (1152921504606846976i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == (0i64 : stdgo.GoUInt64)) : Bool)) {
            _mant = (_mant << ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            //"file:///home/runner/.go/go1.21.3/src/strconv/ftoa.go#L499"
            _exp--;
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/ftoa.go#L503"
        if (((_prec >= (0 : stdgo.GoInt) : Bool) && (_prec < (15 : stdgo.GoInt) : Bool) : Bool)) {
            var _shift = ((_prec * (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt);
            var _extra = (((_mant << _shift : stdgo.GoUInt64)) & (1152921504606846975i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            _mant = (_mant >> (((60u32 : stdgo.GoUInt) - _shift : stdgo.GoUInt)) : stdgo.GoUInt64);
            //"file:///home/runner/.go/go1.21.3/src/strconv/ftoa.go#L507"
            if (((_extra | ((_mant & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64) > (576460752303423488i64 : stdgo.GoUInt64) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/strconv/ftoa.go#L508"
                _mant++;
            };
            _mant = (_mant << (((60u32 : stdgo.GoUInt) - _shift : stdgo.GoUInt)) : stdgo.GoUInt64);
            //"file:///home/runner/.go/go1.21.3/src/strconv/ftoa.go#L511"
            if ((_mant & (2305843009213693952i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
                _mant = (_mant >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                //"file:///home/runner/.go/go1.21.3/src/strconv/ftoa.go#L514"
                _exp++;
            };
        };
        var _hex = (("0123456789abcdef" : stdgo.GoString) : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/strconv/ftoa.go#L519"
        if (_fmt == ((88 : stdgo.GoUInt8))) {
            _hex = ("0123456789ABCDEF" : stdgo.GoString);
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/ftoa.go#L524"
        if (_neg) {
            _dst = (_dst.__append__((45 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        _dst = (_dst.__append__((48 : stdgo.GoUInt8), _fmt, ((48 : stdgo.GoUInt8) + ((((_mant >> (60i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        _mant = (_mant << ((4i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/strconv/ftoa.go#L531"
        if (((_prec < (0 : stdgo.GoInt) : Bool) && (_mant != (0i64 : stdgo.GoUInt64)) : Bool)) {
            _dst = (_dst.__append__((46 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/strconv/ftoa.go#L533"
            while (_mant != ((0i64 : stdgo.GoUInt64))) {
                _dst = (_dst.__append__(_hex[((((_mant >> (60i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) & (15i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
                _mant = (_mant << ((4i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            };
        } else if ((_prec > (0 : stdgo.GoInt) : Bool)) {
            _dst = (_dst.__append__((46 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/strconv/ftoa.go#L539"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < _prec : Bool)) {
                    _dst = (_dst.__append__(_hex[((((_mant >> (60i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) & (15i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
_mant = (_mant << ((4i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _i++;
                };
            };
        };
        var _ch = ((80 : stdgo.GoUInt8) : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/strconv/ftoa.go#L547"
        if (_fmt == (stdgo._internal.strconv.Strconv__lower._lower(_fmt))) {
            _ch = (112 : stdgo.GoUInt8);
        };
        _dst = (_dst.__append__(_ch) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/strconv/ftoa.go#L551"
        if ((_exp < (0 : stdgo.GoInt) : Bool)) {
            _ch = (45 : stdgo.GoUInt8);
            _exp = -_exp;
        } else {
            _ch = (43 : stdgo.GoUInt8);
        };
        _dst = (_dst.__append__(_ch) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/strconv/ftoa.go#L560"
        if ((_exp < (100 : stdgo.GoInt) : Bool)) {
            _dst = (_dst.__append__((((_exp / (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8), (((_exp % (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        } else if ((_exp < (1000 : stdgo.GoInt) : Bool)) {
            _dst = (_dst.__append__((((_exp / (100 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8), (((((_exp / (10 : stdgo.GoInt) : stdgo.GoInt)) % (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8), (((_exp % (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        } else {
            _dst = (_dst.__append__((((_exp / (1000 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8), ((((_exp / (100 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8) % (10 : stdgo.GoUInt8) : stdgo.GoUInt8) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8), (((((_exp / (10 : stdgo.GoInt) : stdgo.GoInt)) % (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8), (((_exp % (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/ftoa.go#L569"
        return _dst;
    }
