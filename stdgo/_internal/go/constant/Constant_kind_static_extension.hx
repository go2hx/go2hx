package stdgo._internal.go.constant;
@:keep @:allow(stdgo._internal.go.constant.Constant.Kind_asInterface) class Kind_static_extension {
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.go.constant.Constant_kind.Kind):stdgo.GoString {
        @:recv var _i:stdgo._internal.go.constant.Constant_kind.Kind = _i;
        //"file:///home/runner/.go/go1.21.3/src/go/constant/kind_string.go#L24"
        if (((_i < (0 : stdgo._internal.go.constant.Constant_kind.Kind) : Bool) || (_i >= ((6 : stdgo.GoInt) : stdgo._internal.go.constant.Constant_kind.Kind) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/constant/kind_string.go#L25"
            return ((("Kind(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatint.formatInt((_i : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/constant/kind_string.go#L27"
        return (("UnknownBoolStringIntFloatComplex" : stdgo.GoString).__slice__(stdgo._internal.go.constant.Constant___kind_index.__Kind_index[(_i : stdgo.GoInt)], stdgo._internal.go.constant.Constant___kind_index.__Kind_index[((_i + (1 : stdgo._internal.go.constant.Constant_kind.Kind) : stdgo._internal.go.constant.Constant_kind.Kind) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
    }
}
