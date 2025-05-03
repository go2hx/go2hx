package stdgo._internal.crypto.ecdsa;
@:keep @:allow(stdgo._internal.crypto.ecdsa.Ecdsa.T_nistCurve_asInterface) class T_nistCurve_static_extension {
    @:keep
    @:tdfield
    static public function _pointToAffine( _curve:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_t_nistcurve.T_nistCurve<Dynamic>>, _p:Dynamic):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _2 : stdgo.Error; } {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_t_nistcurve.T_nistCurve<Dynamic>> = _curve;
        var _x = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _y = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _err = (null : stdgo.Error);
        var _out = _p.bytes();
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L601"
        if (((_out.length == (1 : stdgo.GoInt)) && (_out[(0 : stdgo.GoInt)] == (0 : stdgo.GoUInt8)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L603"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _2 : stdgo.Error; } = { _0 : null, _1 : null, _2 : stdgo._internal.errors.Errors_new_.new_(("ecdsa: public key point is the infinity" : stdgo.GoString)) };
                _x = __tmp__._0;
                _y = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        var _byteLen = ((((@:checkr _curve ?? throw "null pointer dereference")._curve.params().bitSize + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt);
        _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBytes((_out.__slice__((1 : stdgo.GoInt), ((1 : stdgo.GoInt) + _byteLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        _y = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBytes((_out.__slice__(((1 : stdgo.GoInt) + _byteLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L608"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _2 : stdgo.Error; } = { _0 : _x, _1 : _y, _2 : (null : stdgo.Error) };
            _x = __tmp__._0;
            _y = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _pointFromAffine( _curve:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_t_nistcurve.T_nistCurve<Dynamic>>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : Dynamic; var _1 : stdgo.Error; } {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_t_nistcurve.T_nistCurve<Dynamic>> = _curve;
        var _p = stdgo.Go.typer.exprs.Expr.defaultValue((cast (null) : Point)), _err = (null : stdgo.Error);
        var _bitSize = ((@:checkr _curve ?? throw "null pointer dereference")._curve.params().bitSize : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L583"
        if (((_x.sign() < (0 : stdgo.GoInt) : Bool) || (_y.sign() < (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L584"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : Dynamic; var _1 : stdgo.Error; } = { _0 : _p, _1 : stdgo._internal.errors.Errors_new_.new_(("negative coordinate" : stdgo.GoString)) };
                _p = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L586"
        if (((_x.bitLen() > _bitSize : Bool) || (_y.bitLen() > _bitSize : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L587"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : Dynamic; var _1 : stdgo.Error; } = { _0 : _p, _1 : stdgo._internal.errors.Errors_new_.new_(("overflowing coordinate" : stdgo.GoString)) };
                _p = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _byteLen = (((_bitSize + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt);
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>(((1 : stdgo.GoInt) + ((2 : stdgo.GoInt) * _byteLen : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _buf[(0 : stdgo.GoInt)] = (4 : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L593"
        _x.fillBytes((_buf.__slice__((1 : stdgo.GoInt), ((1 : stdgo.GoInt) + _byteLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L594"
        _y.fillBytes((_buf.__slice__(((1 : stdgo.GoInt) + _byteLen : stdgo.GoInt), ((1 : stdgo.GoInt) + ((2 : stdgo.GoInt) * _byteLen : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L595"
        return (@:checkr _curve ?? throw "null pointer dereference")._newPoint().setBytes(_buf);
    }
}
