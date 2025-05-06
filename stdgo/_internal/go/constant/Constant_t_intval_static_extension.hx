package stdgo._internal.go.constant;
@:keep @:allow(stdgo._internal.go.constant.Constant.T_intVal_asInterface) class T_intVal_static_extension {
    @:keep
    @:tdfield
    static public function _implementsValue( _:stdgo._internal.go.constant.Constant_t_intval.T_intVal):Void {
        @:recv var _:stdgo._internal.go.constant.Constant_t_intval.T_intVal = _?.__copy__();
    }
    @:keep
    @:tdfield
    static public function exactString( _x:stdgo._internal.go.constant.Constant_t_intval.T_intVal):stdgo.GoString {
        @:recv var _x:stdgo._internal.go.constant.Constant_t_intval.T_intVal = _x?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L250"
        return (_x.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _x:stdgo._internal.go.constant.Constant_t_intval.T_intVal):stdgo.GoString {
        @:recv var _x:stdgo._internal.go.constant.Constant_t_intval.T_intVal = _x?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L188"
        return (_x._val.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function kind( _:stdgo._internal.go.constant.Constant_t_intval.T_intVal):stdgo._internal.go.constant.Constant_kind.Kind {
        @:recv var _:stdgo._internal.go.constant.Constant_t_intval.T_intVal = _?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L107"
        return (3 : stdgo._internal.go.constant.Constant_kind.Kind);
    }
}
