package stdgo._internal.go.constant;
@:keep @:allow(stdgo._internal.go.constant.Constant.T_complexVal_asInterface) class T_complexVal_static_extension {
    @:keep
    @:tdfield
    static public function _implementsValue( _:stdgo._internal.go.constant.Constant_t_complexval.T_complexVal):Void {
        @:recv var _:stdgo._internal.go.constant.Constant_t_complexval.T_complexVal = _?.__copy__();
    }
    @:keep
    @:tdfield
    static public function exactString( _x:stdgo._internal.go.constant.Constant_t_complexval.T_complexVal):stdgo.GoString {
        @:recv var _x:stdgo._internal.go.constant.Constant_t_complexval.T_complexVal = _x?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L263"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("(%s + %si)" : stdgo.GoString), stdgo.Go.toInterface(_x._re.exactString()), stdgo.Go.toInterface(_x._im.exactString()))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _x:stdgo._internal.go.constant.Constant_t_complexval.T_complexVal):stdgo.GoString {
        @:recv var _x:stdgo._internal.go.constant.Constant_t_complexval.T_complexVal = _x?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L244"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("(%s + %si)" : stdgo.GoString), stdgo.Go.toInterface(_x._re), stdgo.Go.toInterface(_x._im))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function kind( _:stdgo._internal.go.constant.Constant_t_complexval.T_complexVal):stdgo._internal.go.constant.Constant_kind.Kind {
        @:recv var _:stdgo._internal.go.constant.Constant_t_complexval.T_complexVal = _?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L110"
        return (5 : stdgo._internal.go.constant.Constant_kind.Kind);
    }
}
