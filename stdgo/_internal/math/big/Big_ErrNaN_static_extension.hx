package stdgo._internal.math.big;
@:keep @:allow(stdgo._internal.math.big.Big.ErrNaN_asInterface) class ErrNaN_static_extension {
    @:keep
    static public function error( _err:stdgo._internal.math.big.Big_ErrNaN.ErrNaN):stdgo.GoString {
        @:recv var _err:stdgo._internal.math.big.Big_ErrNaN.ErrNaN = _err?.__copy__();
        return _err._msg?.__copy__();
    }
}