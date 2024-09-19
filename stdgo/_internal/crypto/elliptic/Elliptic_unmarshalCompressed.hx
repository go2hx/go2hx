package stdgo._internal.crypto.elliptic;
function unmarshalCompressed(_curve:stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } {
        var _x = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), _y = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_curve) : stdgo._internal.crypto.elliptic.Elliptic_T_unmarshaler.T_unmarshaler)) : stdgo._internal.crypto.elliptic.Elliptic_T_unmarshaler.T_unmarshaler), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.crypto.elliptic.Elliptic_T_unmarshaler.T_unmarshaler), _1 : false };
            }, _c = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _c.unmarshalCompressed(_data);
            };
        };
        var _byteLen = (((_curve.params().bitSize + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt);
        if ((_data.length) != (((1 : stdgo.GoInt) + _byteLen : stdgo.GoInt))) {
            return { _0 : null, _1 : null };
        };
        if (((_data[(0 : stdgo.GoInt)] != (2 : stdgo.GoUInt8)) && (_data[(0 : stdgo.GoInt)] != (3 : stdgo.GoUInt8)) : Bool)) {
            return { _0 : null, _1 : null };
        };
        var _p = _curve.params().p;
        _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setBytes((_data.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        if ((_x.cmp(_p) >= (0 : stdgo.GoInt) : Bool)) {
            return { _0 : null, _1 : null };
        };
        _y = _curve.params()._polynomial(_x);
        _y = _y.modSqrt(_y, _p);
        if (_y == null || (_y : Dynamic).__nil__) {
            return { _0 : null, _1 : null };
        };
        if ((_y.bit((0 : stdgo.GoInt)) : stdgo.GoUInt8) != ((_data[(0 : stdgo.GoInt)] & (1 : stdgo.GoUInt8) : stdgo.GoUInt8))) {
            _y.neg(_y).mod(_y, _p);
        };
        if (!_curve.isOnCurve(_x, _y)) {
            return { _0 : null, _1 : null };
        };
        return { _0 : _x, _1 : _y };
    }
