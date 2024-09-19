package stdgo._internal.math.big;
function _fmtF(_buf:stdgo.Slice<stdgo.GoUInt8>, _prec:stdgo.GoInt, _d:stdgo._internal.math.big.Big_T_decimal.T_decimal):stdgo.Slice<stdgo.GoUInt8> {
        if ((_d._exp > (0 : stdgo.GoInt) : Bool)) {
            var _m = (stdgo._internal.math.big.Big__min._min((_d._mant.length), _d._exp) : stdgo.GoInt);
            _buf = (_buf.__append__(...((_d._mant.__slice__(0, _m) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
            stdgo.Go.cfor((_m < _d._exp : Bool), _m++, {
                _buf = (_buf.__append__((48 : stdgo.GoUInt8)));
            });
        } else {
            _buf = (_buf.__append__((48 : stdgo.GoUInt8)));
        };
        if ((_prec > (0 : stdgo.GoInt) : Bool)) {
            _buf = (_buf.__append__((46 : stdgo.GoUInt8)));
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _prec : Bool), _i++, {
                    _buf = (_buf.__append__(_d._at((_d._exp + _i : stdgo.GoInt))));
                });
            };
        };
        return _buf;
    }
