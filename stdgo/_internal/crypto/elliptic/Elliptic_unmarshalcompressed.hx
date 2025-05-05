package stdgo._internal.crypto.elliptic;
function unmarshalCompressed(_curve:stdgo._internal.crypto.elliptic.Elliptic_curve.Curve, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } {
        var _x = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _y = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/elliptic.go#L181"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_curve) : stdgo._internal.crypto.elliptic.Elliptic_t_unmarshaler.T_unmarshaler)) : stdgo._internal.crypto.elliptic.Elliptic_t_unmarshaler.T_unmarshaler), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.crypto.elliptic.Elliptic_t_unmarshaler.T_unmarshaler), _1 : false };
            }, _c = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/elliptic.go#L182"
                return _c.unmarshalCompressed(_data);
            };
        };
        var _byteLen = (((_curve.params().bitSize + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/elliptic.go#L186"
        if ((_data.length) != (((1 : stdgo.GoInt) + _byteLen : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/elliptic.go#L187"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } = { _0 : null, _1 : null };
                _x = __tmp__._0;
                _y = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/elliptic.go#L189"
        if (((_data[(0 : stdgo.GoInt)] != (2 : stdgo.GoUInt8)) && (_data[(0 : stdgo.GoInt)] != (3 : stdgo.GoUInt8)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/elliptic.go#L190"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } = { _0 : null, _1 : null };
                _x = __tmp__._0;
                _y = __tmp__._1;
                __tmp__;
            };
        };
        var _p = _curve.params().p;
        _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBytes((_data.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/elliptic.go#L194"
        if ((_x.cmp(_p) >= (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/elliptic.go#L195"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } = { _0 : null, _1 : null };
                _x = __tmp__._0;
                _y = __tmp__._1;
                __tmp__;
            };
        };
        _y = _curve.params()._polynomial(_x);
        _y = _y.modSqrt(_y, _p);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/elliptic.go#L200"
        if (({
            final value = _y;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/elliptic.go#L201"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } = { _0 : null, _1 : null };
                _x = __tmp__._0;
                _y = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/elliptic.go#L203"
        if ((_y.bit((0 : stdgo.GoInt)) : stdgo.GoUInt8) != ((_data[(0 : stdgo.GoInt)] & (1 : stdgo.GoUInt8) : stdgo.GoUInt8))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/elliptic.go#L204"
            _y.neg(_y).mod(_y, _p);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/elliptic.go#L206"
        if (!_curve.isOnCurve(_x, _y)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/elliptic.go#L207"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } = { _0 : null, _1 : null };
                _x = __tmp__._0;
                _y = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/elliptic.go#L209"
        return { _0 : _x, _1 : _y };
    }
