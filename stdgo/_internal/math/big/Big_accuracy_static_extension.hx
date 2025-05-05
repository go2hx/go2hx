package stdgo._internal.math.big;
@:keep @:allow(stdgo._internal.math.big.Big.Accuracy_asInterface) class Accuracy_static_extension {
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.math.big.Big_accuracy.Accuracy):stdgo.GoString {
        @:recv var _i:stdgo._internal.math.big.Big_accuracy.Accuracy = _i;
        _i = (_i - ((-1 : stdgo._internal.math.big.Big_accuracy.Accuracy)) : stdgo._internal.math.big.Big_accuracy.Accuracy);
        //"file:///home/runner/.go/go1.21.3/src/math/big/accuracy_string.go#L22"
        if (((_i < (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) : Bool) || (_i >= ((3 : stdgo.GoInt) : stdgo._internal.math.big.Big_accuracy.Accuracy) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/accuracy_string.go#L23"
            return ((("Accuracy(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatint.formatInt(((_i + (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) : stdgo._internal.math.big.Big_accuracy.Accuracy) : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/accuracy_string.go#L25"
        return (("BelowExactAbove" : stdgo.GoString).__slice__(stdgo._internal.math.big.Big___accuracy_index.__Accuracy_index[(_i : stdgo.GoInt)], stdgo._internal.math.big.Big___accuracy_index.__Accuracy_index[((_i + (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) : stdgo._internal.math.big.Big_accuracy.Accuracy) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
    }
}
