package stdgo._internal.math.big;
function _fmtF(_buf:stdgo.Slice<stdgo.GoUInt8>, _prec:stdgo.GoInt, _d:stdgo._internal.math.big.Big_t_decimal.T_decimal):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L290"
        if ((_d._exp > (0 : stdgo.GoInt) : Bool)) {
            var _m = (stdgo._internal.math.big.Big__min._min((_d._mant.length), _d._exp) : stdgo.GoInt);
            _buf = (_buf.__append__(...((_d._mant.__slice__(0, _m) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L293"
            while ((_m < _d._exp : Bool)) {
                _buf = (_buf.__append__((48 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                _m++;
            };
        } else {
            _buf = (_buf.__append__((48 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L301"
        if ((_prec > (0 : stdgo.GoInt) : Bool)) {
            _buf = (_buf.__append__((46 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L303"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < _prec : Bool)) {
                    _buf = (_buf.__append__(_d._at((_d._exp + _i : stdgo.GoInt))) : stdgo.Slice<stdgo.GoUInt8>);
                    _i++;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L308"
        return _buf;
    }
