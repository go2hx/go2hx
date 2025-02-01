package stdgo._internal.crypto.elliptic;
import stdgo._internal.crypto.internal.nistec.Nistec;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function unmarshal(_curve:stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } {
        var _x = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), _y = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_curve) : stdgo._internal.crypto.elliptic.Elliptic_T_unmarshaler.T_unmarshaler)) : stdgo._internal.crypto.elliptic.Elliptic_T_unmarshaler.T_unmarshaler), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.crypto.elliptic.Elliptic_T_unmarshaler.T_unmarshaler), _1 : false };
            }, _c = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return {
                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } = _c.unmarshal(_data);
                    _x = __tmp__._0;
                    _y = __tmp__._1;
                    __tmp__;
                };
            };
        };
        var _byteLen = (((_curve.params().bitSize + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt);
        if ((_data.length) != (((1 : stdgo.GoInt) + ((2 : stdgo.GoInt) * _byteLen : stdgo.GoInt) : stdgo.GoInt))) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } = { _0 : null, _1 : null };
                _x = __tmp__._0;
                _y = __tmp__._1;
                __tmp__;
            };
        };
        if (_data[(0 : stdgo.GoInt)] != ((4 : stdgo.GoUInt8))) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } = { _0 : null, _1 : null };
                _x = __tmp__._0;
                _y = __tmp__._1;
                __tmp__;
            };
        };
        var _p = _curve.params().p;
        _x = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setBytes((_data.__slice__((1 : stdgo.GoInt), ((1 : stdgo.GoInt) + _byteLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        _y = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setBytes((_data.__slice__(((1 : stdgo.GoInt) + _byteLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        if (((@:check2r _x.cmp(_p) >= (0 : stdgo.GoInt) : Bool) || (@:check2r _y.cmp(_p) >= (0 : stdgo.GoInt) : Bool) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } = { _0 : null, _1 : null };
                _x = __tmp__._0;
                _y = __tmp__._1;
                __tmp__;
            };
        };
        if (!_curve.isOnCurve(_x, _y)) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } = { _0 : null, _1 : null };
                _x = __tmp__._0;
                _y = __tmp__._1;
                __tmp__;
            };
        };
        return { _0 : _x, _1 : _y };
    }
