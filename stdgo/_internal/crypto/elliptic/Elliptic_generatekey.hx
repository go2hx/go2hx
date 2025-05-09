package stdgo._internal.crypto.elliptic;
function generateKey(_curve:stdgo._internal.crypto.elliptic.Elliptic_curve.Curve, _rand:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _2 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _3 : stdgo.Error; } {
        var _priv = (null : stdgo.Slice<stdgo.GoUInt8>), _x = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _y = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _err = (null : stdgo.Error);
        var n = _curve.params().n;
        var _bitSize = (n.bitLen() : stdgo.GoInt);
        var _byteLen = (((_bitSize + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt);
        _priv = (new stdgo.Slice<stdgo.GoUInt8>((_byteLen : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/elliptic.go#L81"
        while (({
            final value = _x;
            (value == null || (value : Dynamic).__nil__);
        })) {
            {
                var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_rand, _priv);
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/elliptic.go#L83"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/elliptic.go#L84"
                return { _0 : _priv, _1 : _x, _2 : _y, _3 : _err };
            };
            _priv[(0 : stdgo.GoInt)] = (_priv[(0 : stdgo.GoInt)] & (stdgo._internal.crypto.elliptic.Elliptic__mask._mask[((_bitSize % (8 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoUInt8);
            _priv[(1 : stdgo.GoInt)] = (_priv[(1 : stdgo.GoInt)] ^ ((66 : stdgo.GoUInt8)) : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/elliptic.go#L94"
            if (((stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBytes(_priv).cmp(n) >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/elliptic.go#L95"
                continue;
            };
            {
                var __tmp__ = _curve.scalarBaseMult(_priv);
                _x = @:tmpset0 __tmp__._0;
                _y = @:tmpset0 __tmp__._1;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/elliptic.go#L100"
        return { _0 : _priv, _1 : _x, _2 : _y, _3 : _err };
    }
