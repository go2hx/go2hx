package stdgo._internal.strconv;
function _ryuDigits(_d:stdgo.Ref<stdgo._internal.strconv.Strconv_T_decimalSlice.T_decimalSlice>, _lower:stdgo.GoUInt64, _central:stdgo.GoUInt64, _upper:stdgo.GoUInt64, _c0:Bool, _cup:Bool):Void {
        var __tmp__ = stdgo._internal.strconv.Strconv__divmod1e9._divmod1e9(_lower), _lhi:stdgo.GoUInt32 = __tmp__._0, _llo:stdgo.GoUInt32 = __tmp__._1;
        var __tmp__ = stdgo._internal.strconv.Strconv__divmod1e9._divmod1e9(_central), _chi:stdgo.GoUInt32 = __tmp__._0, _clo:stdgo.GoUInt32 = __tmp__._1;
        var __tmp__ = stdgo._internal.strconv.Strconv__divmod1e9._divmod1e9(_upper), _uhi:stdgo.GoUInt32 = __tmp__._0, _ulo:stdgo.GoUInt32 = __tmp__._1;
        if (_uhi == ((0u32 : stdgo.GoUInt32))) {
            stdgo._internal.strconv.Strconv__ryuDigits32._ryuDigits32(_d, _llo, _clo, _ulo, _c0, _cup, (8 : stdgo.GoInt));
        } else if ((_lhi < _uhi : Bool)) {
            if (_llo != ((0u32 : stdgo.GoUInt32))) {
                _lhi++;
            };
            _c0 = (_c0 && (_clo == (0u32 : stdgo.GoUInt32)) : Bool);
            _cup = (((_clo > (500000000u32 : stdgo.GoUInt32) : Bool)) || (((_clo == (500000000u32 : stdgo.GoUInt32)) && _cup : Bool)) : Bool);
            stdgo._internal.strconv.Strconv__ryuDigits32._ryuDigits32(_d, _lhi, _chi, _uhi, _c0, _cup, (8 : stdgo.GoInt));
            _d._dp = (_d._dp + ((9 : stdgo.GoInt)) : stdgo.GoInt);
        } else {
            _d._nd = (0 : stdgo.GoInt);
            var _n = ((9u32 : stdgo.GoUInt) : stdgo.GoUInt);
            {
                var _v = (_chi : stdgo.GoUInt32);
                while ((_v > (0u32 : stdgo.GoUInt32) : Bool)) {
                    var __0 = (_v / (10u32 : stdgo.GoUInt32) : stdgo.GoUInt32), __1 = (_v % (10u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
var _v2 = __1, _v1 = __0;
                    _v = _v1;
                    _n--;
                    _d._d[(_n : stdgo.GoInt)] = ((_v2 + (48u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt8);
                };
            };
            _d._d = (_d._d.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
            _d._nd = (((9u32 : stdgo.GoUInt) - _n : stdgo.GoUInt) : stdgo.GoInt);
            stdgo._internal.strconv.Strconv__ryuDigits32._ryuDigits32(_d, _llo, _clo, _ulo, _c0, _cup, (_d._nd + (8 : stdgo.GoInt) : stdgo.GoInt));
        };
        while (((_d._nd > (0 : stdgo.GoInt) : Bool) && (_d._d[(_d._nd - (1 : stdgo.GoInt) : stdgo.GoInt)] == (48 : stdgo.GoUInt8)) : Bool)) {
            _d._nd--;
        };
        while (((_d._nd > (0 : stdgo.GoInt) : Bool) && (_d._d[(0 : stdgo.GoInt)] == (48 : stdgo.GoUInt8)) : Bool)) {
            _d._nd--;
            _d._dp--;
            _d._d = (_d._d.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
    }
