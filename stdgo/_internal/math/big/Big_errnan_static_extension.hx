package stdgo._internal.math.big;
@:keep @:allow(stdgo._internal.math.big.Big.ErrNaN_asInterface) class ErrNaN_static_extension {
    @:keep
    @:tdfield
    static public function error( _err:stdgo._internal.math.big.Big_errnan.ErrNaN):stdgo.GoString {
        @:recv var _err:stdgo._internal.math.big.Big_errnan.ErrNaN = _err?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L82"
        return _err._msg?.__copy__();
    }
}
