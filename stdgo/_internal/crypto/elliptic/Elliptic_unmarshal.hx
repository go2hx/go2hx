package stdgo._internal.crypto.elliptic;
function unmarshal(_curve:stdgo._internal.crypto.elliptic.Elliptic_curve.Curve, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } {
        var _x = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _y = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/elliptic.go#L154"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_curve) : stdgo._internal.crypto.elliptic.Elliptic_t_unmarshaler.T_unmarshaler)) : stdgo._internal.crypto.elliptic.Elliptic_t_unmarshaler.T_unmarshaler), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.crypto.elliptic.Elliptic_t_unmarshaler.T_unmarshaler), _1 : false };
            }, _c = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/elliptic.go#L155"
                return _c.unmarshal(_data);
            };
        };
        var _byteLen = (((_curve.params().bitSize + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/elliptic.go#L159"
        if ((_data.length) != (((1 : stdgo.GoInt) + ((2 : stdgo.GoInt) * _byteLen : stdgo.GoInt) : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/elliptic.go#L160"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } = { _0 : null, _1 : null };
                _x = __tmp__._0;
                _y = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/elliptic.go#L162"
        if (_data[(0 : stdgo.GoInt)] != ((4 : stdgo.GoUInt8))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/elliptic.go#L163"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } = { _0 : null, _1 : null };
                _x = __tmp__._0;
                _y = __tmp__._1;
                __tmp__;
            };
        };
        var _p = _curve.params().p;
        _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBytes((_data.__slice__((1 : stdgo.GoInt), ((1 : stdgo.GoInt) + _byteLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        _y = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBytes((_data.__slice__(((1 : stdgo.GoInt) + _byteLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/elliptic.go#L168"
        if (((_x.cmp(_p) >= (0 : stdgo.GoInt) : Bool) || (_y.cmp(_p) >= (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/elliptic.go#L169"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } = { _0 : null, _1 : null };
                _x = __tmp__._0;
                _y = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/elliptic.go#L171"
        if (!_curve.isOnCurve(_x, _y)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/elliptic.go#L172"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } = { _0 : null, _1 : null };
                _x = __tmp__._0;
                _y = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/elliptic.go#L174"
        return { _0 : _x, _1 : _y };
    }
