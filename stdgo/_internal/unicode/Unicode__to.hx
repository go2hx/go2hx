package stdgo._internal.unicode;
function _to(__case:stdgo.GoInt, _r:stdgo.GoInt32, _caseRange:stdgo.Slice<stdgo._internal.unicode.Unicode_CaseRange.CaseRange>):{ var _0 : stdgo.GoInt32; var _1 : Bool; } {
        var _mappedRune = (0 : stdgo.GoInt32), _foundMapping = false;
        if (((__case < (0 : stdgo.GoInt) : Bool) || ((3 : stdgo.GoInt) <= __case : Bool) : Bool)) {
            return { _0 : (65533 : stdgo.GoInt32), _1 : false };
        };
        var _lo = (0 : stdgo.GoInt);
        var _hi = (_caseRange.length : stdgo.GoInt);
        while ((_lo < _hi : Bool)) {
            var _m = (_lo + (((_hi - _lo : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
            var _cr = (_caseRange[(_m : stdgo.GoInt)] : stdgo._internal.unicode.Unicode_CaseRange.CaseRange);
            if ((((_cr.lo : stdgo.GoInt32) <= _r : Bool) && (_r <= (_cr.hi : stdgo.GoInt32) : Bool) : Bool)) {
                var _delta = (_cr.delta[(__case : stdgo.GoInt)] : stdgo.GoInt32);
                if ((_delta > (1114111 : stdgo.GoInt32) : Bool)) {
                    return { _0 : ((_cr.lo : stdgo.GoInt32) + (((((_r - (_cr.lo : stdgo.GoInt32) : stdgo.GoInt32)) & (((1 : stdgo.GoInt32) ^ (-1i32 : stdgo.GoInt) : stdgo.GoInt32)) : stdgo.GoInt32) | ((__case & (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32), _1 : true };
                };
                return { _0 : (_r + _delta : stdgo.GoInt32), _1 : true };
            };
            if ((_r < (_cr.lo : stdgo.GoInt32) : Bool)) {
                _hi = _m;
            } else {
                _lo = (_m + (1 : stdgo.GoInt) : stdgo.GoInt);
            };
        };
        return { _0 : _r, _1 : false };
    }