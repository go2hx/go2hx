package stdgo._internal.math.big;
function _fmtE(_buf:stdgo.Slice<stdgo.GoUInt8>, _fmt:stdgo.GoUInt8, _prec:stdgo.GoInt, _d:stdgo._internal.math.big.Big_t_decimal.T_decimal):stdgo.Slice<stdgo.GoUInt8> {
        var _ch = ((48 : stdgo.GoUInt8) : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L247"
        if (((_d._mant.length) > (0 : stdgo.GoInt) : Bool)) {
            _ch = _d._mant[(0 : stdgo.GoInt)];
        };
        _buf = (_buf.__append__(_ch) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L253"
        if ((_prec > (0 : stdgo.GoInt) : Bool)) {
            _buf = (_buf.__append__((46 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            var _i = (1 : stdgo.GoInt);
            var _m = (stdgo._internal.math.big.Big__min._min((_d._mant.length), (_prec + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L257"
            if ((_i < _m : Bool)) {
                _buf = (_buf.__append__(...((_d._mant.__slice__(_i, _m) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                _i = _m;
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L261"
            while ((_i <= _prec : Bool)) {
                _buf = (_buf.__append__((48 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                _i++;
            };
        };
        _buf = (_buf.__append__(_fmt) : stdgo.Slice<stdgo.GoUInt8>);
        var _exp:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L269"
        if (((_d._mant.length) > (0 : stdgo.GoInt) : Bool)) {
            _exp = ((_d._exp : stdgo.GoInt64) - (1i64 : stdgo.GoInt64) : stdgo.GoInt64);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L272"
        if ((_exp < (0i64 : stdgo.GoInt64) : Bool)) {
            _ch = (45 : stdgo.GoUInt8);
            _exp = -_exp;
        } else {
            _ch = (43 : stdgo.GoUInt8);
        };
        _buf = (_buf.__append__(_ch) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L281"
        if ((_exp < (10i64 : stdgo.GoInt64) : Bool)) {
            _buf = (_buf.__append__((48 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L284"
        return stdgo._internal.strconv.Strconv_appendint.appendInt(_buf, _exp, (10 : stdgo.GoInt));
    }
