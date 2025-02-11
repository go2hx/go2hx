package stdgo._internal.math.big;
function _quotToFloat32(_a:stdgo._internal.math.big.Big_t_nat.T_nat, _b:stdgo._internal.math.big.Big_t_nat.T_nat):{ var _0 : stdgo.GoFloat32; var _1 : Bool; } {
        var _f = (0 : stdgo.GoFloat32), _exact = false;
        {};
        var _alen = (_a._bitLen() : stdgo.GoInt);
        if (_alen == ((0 : stdgo.GoInt))) {
            return {
                final __tmp__:{ var _0 : stdgo.GoFloat32; var _1 : Bool; } = { _0 : (0 : stdgo.GoFloat64), _1 : true };
                _f = __tmp__._0;
                _exact = __tmp__._1;
                __tmp__;
            };
        };
        var _blen = (_b._bitLen() : stdgo.GoInt);
        if (_blen == ((0 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("division by zero" : stdgo.GoString));
        };
        var _exp = (_alen - _blen : stdgo.GoInt);
        var __0:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat), __1:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
var _b2 = __1, _a2 = __0;
        _a2 = _a2._set(_a);
        _b2 = _b2._set(_b);
        {
            var _shift = ((25 : stdgo.GoInt) - _exp : stdgo.GoInt);
            if ((_shift > (0 : stdgo.GoInt) : Bool)) {
                _a2 = _a2._shl(_a2, (_shift : stdgo.GoUInt));
            } else if ((_shift < (0 : stdgo.GoInt) : Bool)) {
                _b2 = _b2._shl(_b2, (-_shift : stdgo.GoUInt));
            };
        };
        var _q:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var __tmp__ = _q._div(_a2, _a2, _b2), _q:stdgo._internal.math.big.Big_t_nat.T_nat = __tmp__._0, _r:stdgo._internal.math.big.Big_t_nat.T_nat = __tmp__._1;
        var _mantissa = (stdgo._internal.math.big.Big__low32._low32(_q) : stdgo.GoUInt32);
        var _haveRem = ((_r.length) > (0 : stdgo.GoInt) : Bool);
        if ((_mantissa >> (25i64 : stdgo.GoUInt64) : stdgo.GoUInt32) == ((1u32 : stdgo.GoUInt32))) {
            if ((_mantissa & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((1u32 : stdgo.GoUInt32))) {
                _haveRem = true;
            };
            _mantissa = (_mantissa >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
            _exp++;
        };
        if ((_mantissa >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) != ((1u32 : stdgo.GoUInt32))) {
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("expected exactly %d bits of result" : stdgo.GoString), stdgo.Go.toInterface((25 : stdgo.GoInt))));
        };
        if ((((-149 : stdgo.GoInt) <= _exp : Bool) && (_exp <= (-126 : stdgo.GoInt) : Bool) : Bool)) {
            var _shift = (((-126 : stdgo.GoInt) - ((_exp - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoUInt);
            var _lostbits = (_mantissa & ((((1u32 : stdgo.GoUInt32) << _shift : stdgo.GoUInt32) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.GoUInt32);
            _haveRem = (_haveRem || (_lostbits != (0u32 : stdgo.GoUInt32)) : Bool);
            _mantissa = (_mantissa >> (_shift) : stdgo.GoUInt32);
            _exp = (-125 : stdgo.GoInt);
        };
        _exact = !_haveRem;
        if ((_mantissa & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32))) {
            _exact = false;
            if ((_haveRem || ((_mantissa & (2u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != (0u32 : stdgo.GoUInt32)) : Bool)) {
                {
                    _mantissa++;
                    if ((_mantissa >= (33554432u32 : stdgo.GoUInt32) : Bool)) {
                        _mantissa = (_mantissa >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
                        _exp++;
                    };
                };
            };
        };
        _mantissa = (_mantissa >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        _f = (stdgo._internal.math.Math_ldexp.ldexp((_mantissa : stdgo.GoFloat64), (_exp - (24 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoFloat32);
        if (stdgo._internal.math.Math_isinf.isInf((_f : stdgo.GoFloat64), (0 : stdgo.GoInt))) {
            _exact = false;
        };
        return { _0 : _f, _1 : _exact };
    }
