package stdgo._internal.strconv;
function _fmtF(_dst:stdgo.Slice<stdgo.GoUInt8>, _neg:Bool, _d:stdgo._internal.strconv.Strconv_t_decimalslice.T_decimalSlice, _prec:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/strconv/ftoa.go#L436"
        if (_neg) {
            _dst = (_dst.__append__((45 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/ftoa.go#L441"
        if ((_d._dp > (0 : stdgo.GoInt) : Bool)) {
            var _m = (stdgo._internal.strconv.Strconv__min._min(_d._nd, _d._dp) : stdgo.GoInt);
            _dst = (_dst.__append__(...((_d._d.__slice__(0, _m) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/strconv/ftoa.go#L444"
            while ((_m < _d._dp : Bool)) {
                _dst = (_dst.__append__((48 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                _m++;
            };
        } else {
            _dst = (_dst.__append__((48 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/ftoa.go#L452"
        if ((_prec > (0 : stdgo.GoInt) : Bool)) {
            _dst = (_dst.__append__((46 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/strconv/ftoa.go#L454"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < _prec : Bool)) {
                    var _ch = ((48 : stdgo.GoUInt8) : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/strconv/ftoa.go#L456"
                    {
                        var _j = (_d._dp + _i : stdgo.GoInt);
                        if ((((0 : stdgo.GoInt) <= _j : Bool) && (_j < _d._nd : Bool) : Bool)) {
                            _ch = _d._d[(_j : stdgo.GoInt)];
                        };
                    };
_dst = (_dst.__append__(_ch) : stdgo.Slice<stdgo.GoUInt8>);
                    _i++;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/ftoa.go#L463"
        return _dst;
    }
