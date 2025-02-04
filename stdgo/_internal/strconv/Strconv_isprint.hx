package stdgo._internal.strconv;
function isPrint(_r:stdgo.GoInt32):Bool {
        if ((_r <= (255 : stdgo.GoInt32) : Bool)) {
            if ((((32 : stdgo.GoInt32) <= _r : Bool) && (_r <= (126 : stdgo.GoInt32) : Bool) : Bool)) {
                return true;
            };
            if ((((161 : stdgo.GoInt32) <= _r : Bool) && (_r <= (255 : stdgo.GoInt32) : Bool) : Bool)) {
                return _r != ((173 : stdgo.GoInt32));
            };
            return false;
        };
        if ((((0 : stdgo.GoInt32) <= _r : Bool) && (_r < (65536 : stdgo.GoInt32) : Bool) : Bool)) {
            var __0 = (_r : stdgo.GoUInt16), __1 = stdgo._internal.strconv.Strconv__isprint16._isPrint16, __2 = stdgo._internal.strconv.Strconv__isnotprint16._isNotPrint16;
var _isNotPrint = __2, _isPrint = __1, _rr = __0;
            var _i = (stdgo._internal.strconv.Strconv__bsearch16._bsearch16(_isPrint, _rr) : stdgo.GoInt);
            if ((((_i >= (_isPrint.length) : Bool) || (_rr < _isPrint[(_i & (((1 : stdgo.GoInt) ^ (-1i32 : stdgo.GoInt32) : stdgo.GoInt)) : stdgo.GoInt)] : Bool) : Bool) || (_isPrint[(_i | (1 : stdgo.GoInt) : stdgo.GoInt)] < _rr : Bool) : Bool)) {
                return false;
            };
            var _j = (stdgo._internal.strconv.Strconv__bsearch16._bsearch16(_isNotPrint, _rr) : stdgo.GoInt);
            return ((_j >= (_isNotPrint.length) : Bool) || (_isNotPrint[(_j : stdgo.GoInt)] != _rr) : Bool);
        };
        var __0 = (_r : stdgo.GoUInt32), __1 = stdgo._internal.strconv.Strconv__isprint32._isPrint32, __2 = stdgo._internal.strconv.Strconv__isnotprint32._isNotPrint32;
var _isNotPrint = __2, _isPrint = __1, _rr = __0;
        var _i = (stdgo._internal.strconv.Strconv__bsearch32._bsearch32(_isPrint, _rr) : stdgo.GoInt);
        if ((((_i >= (_isPrint.length) : Bool) || (_rr < _isPrint[(_i & (((1 : stdgo.GoInt) ^ (-1i32 : stdgo.GoInt32) : stdgo.GoInt)) : stdgo.GoInt)] : Bool) : Bool) || (_isPrint[(_i | (1 : stdgo.GoInt) : stdgo.GoInt)] < _rr : Bool) : Bool)) {
            return false;
        };
        if ((_r >= (131072 : stdgo.GoInt32) : Bool)) {
            return true;
        };
        _r = (_r - ((65536 : stdgo.GoInt32)) : stdgo.GoInt32);
        var _j = (stdgo._internal.strconv.Strconv__bsearch16._bsearch16(_isNotPrint, (_r : stdgo.GoUInt16)) : stdgo.GoInt);
        return ((_j >= (_isNotPrint.length) : Bool) || (_isNotPrint[(_j : stdgo.GoInt)] != (_r : stdgo.GoUInt16)) : Bool);
    }
