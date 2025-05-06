package stdgo._internal.go.constant;
@:keep @:allow(stdgo._internal.go.constant.Constant.T_ratVal_asInterface) class T_ratVal_static_extension {
    @:keep
    @:tdfield
    static public function _implementsValue( _:stdgo._internal.go.constant.Constant_t_ratval.T_ratVal):Void {
        @:recv var _:stdgo._internal.go.constant.Constant_t_ratval.T_ratVal = _?.__copy__();
    }
    @:keep
    @:tdfield
    static public function exactString( _x:stdgo._internal.go.constant.Constant_t_ratval.T_ratVal):stdgo.GoString {
        @:recv var _x:stdgo._internal.go.constant.Constant_t_ratval.T_ratVal = _x?.__copy__();
        var _r = _x._val;
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L254"
        if (_r.isInt()) {
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L255"
            return (_r.num().string() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L257"
        return (_r.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _x:stdgo._internal.go.constant.Constant_t_ratval.T_ratVal):stdgo.GoString {
        @:recv var _x:stdgo._internal.go.constant.Constant_t_ratval.T_ratVal = _x?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L189"
        return (stdgo._internal.go.constant.Constant__rtof._rtof(_x?.__copy__()).string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function kind( _:stdgo._internal.go.constant.Constant_t_ratval.T_ratVal):stdgo._internal.go.constant.Constant_kind.Kind {
        @:recv var _:stdgo._internal.go.constant.Constant_t_ratval.T_ratVal = _?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L108"
        return (4 : stdgo._internal.go.constant.Constant_kind.Kind);
    }
}
