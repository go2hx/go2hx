package stdgo._internal.go.constant;
@:keep @:allow(stdgo._internal.go.constant.Constant.T_unknownVal_asInterface) class T_unknownVal_static_extension {
    @:keep
    @:tdfield
    static public function _implementsValue( _:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal):Void {
        @:recv var _:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal = _?.__copy__();
    }
    @:keep
    @:tdfield
    static public function exactString( _x:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal):stdgo.GoString {
        @:recv var _x:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal = _x?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L246"
        return (_x.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal):stdgo.GoString {
        @:recv var _:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal = _?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L112"
        return ("unknown" : stdgo.GoString);
    }
    @:keep
    @:tdfield
    static public function kind( _:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal):stdgo._internal.go.constant.Constant_kind.Kind {
        @:recv var _:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal = _?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L103"
        return (0 : stdgo._internal.go.constant.Constant_kind.Kind);
    }
}
