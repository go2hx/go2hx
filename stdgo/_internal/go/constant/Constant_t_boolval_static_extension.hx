package stdgo._internal.go.constant;
@:keep @:allow(stdgo._internal.go.constant.Constant.T_boolVal_asInterface) class T_boolVal_static_extension {
    @:keep
    @:tdfield
    static public function _implementsValue( _:stdgo._internal.go.constant.Constant_t_boolval.T_boolVal):Void {
        @:recv var _:stdgo._internal.go.constant.Constant_t_boolval.T_boolVal = _;
    }
    @:keep
    @:tdfield
    static public function exactString( _x:stdgo._internal.go.constant.Constant_t_boolval.T_boolVal):stdgo.GoString {
        @:recv var _x:stdgo._internal.go.constant.Constant_t_boolval.T_boolVal = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L247"
        return (_x.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _x:stdgo._internal.go.constant.Constant_t_boolval.T_boolVal):stdgo.GoString {
        @:recv var _x:stdgo._internal.go.constant.Constant_t_boolval.T_boolVal = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L113"
        return stdgo._internal.strconv.Strconv_formatbool.formatBool((_x : Bool))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function kind( _:stdgo._internal.go.constant.Constant_t_boolval.T_boolVal):stdgo._internal.go.constant.Constant_kind.Kind {
        @:recv var _:stdgo._internal.go.constant.Constant_t_boolval.T_boolVal = _;
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L104"
        return (1 : stdgo._internal.go.constant.Constant_kind.Kind);
    }
}
