package stdgo._internal.strconv;
function _fmtE(_dst:stdgo.Slice<stdgo.GoUInt8>, _neg:Bool, _d:stdgo._internal.strconv.Strconv_t_decimalslice.T_decimalSlice, _prec:stdgo.GoInt, _fmt:stdgo.GoUInt8):stdgo.Slice<stdgo.GoUInt8> {
        if (_neg) {
            _dst = (_dst.__append__((45 : stdgo.GoUInt8)));
        };
        var _ch = ((48 : stdgo.GoUInt8) : stdgo.GoUInt8);
        if (_d._nd != ((0 : stdgo.GoInt))) {
            _ch = _d._d[(0 : stdgo.GoInt)];
        };
        _dst = (_dst.__append__(_ch));
        if ((_prec > (0 : stdgo.GoInt) : Bool)) {
            _dst = (_dst.__append__((46 : stdgo.GoUInt8)));
            var _i = (1 : stdgo.GoInt);
            var _m = (stdgo._internal.strconv.Strconv__min._min(_d._nd, (_prec + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            if ((_i < _m : Bool)) {
                _dst = (_dst.__append__(...((_d._d.__slice__(_i, _m) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                _i = _m;
            };
            while ((_i <= _prec : Bool)) {
                _dst = (_dst.__append__((48 : stdgo.GoUInt8)));
                _i++;
            };
        };
        _dst = (_dst.__append__(_fmt));
        var _exp = (_d._dp - (1 : stdgo.GoInt) : stdgo.GoInt);
        if (_d._nd == ((0 : stdgo.GoInt))) {
            _exp = (0 : stdgo.GoInt);
        };
        if ((_exp < (0 : stdgo.GoInt) : Bool)) {
            _ch = (45 : stdgo.GoUInt8);
            _exp = -_exp;
        } else {
            _ch = (43 : stdgo.GoUInt8);
        };
        _dst = (_dst.__append__(_ch));
        if ((_exp < (10 : stdgo.GoInt) : Bool)) {
            _dst = (_dst.__append__((48 : stdgo.GoUInt8), ((_exp : stdgo.GoUInt8) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8)));
        } else if ((_exp < (100 : stdgo.GoInt) : Bool)) {
            _dst = (_dst.__append__((((_exp / (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8), (((_exp % (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8)));
        } else {
            _dst = (_dst.__append__((((_exp / (100 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8), ((((_exp / (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8) % (10 : stdgo.GoUInt8) : stdgo.GoUInt8) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8), (((_exp % (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8)));
        };
        return _dst;
    }
