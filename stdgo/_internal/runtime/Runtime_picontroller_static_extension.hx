package stdgo._internal.runtime;
@:keep @:allow(stdgo._internal.runtime.Runtime.PIController_asInterface) class PIController_static_extension {
    @:keep
    @:tdfield
    static public function next( _c:stdgo.Ref<stdgo._internal.runtime.Runtime_picontroller.PIController>, _input:stdgo.GoFloat64, _setpoint:stdgo.GoFloat64, _period:stdgo.GoFloat64):{ var _0 : stdgo.GoFloat64; var _1 : Bool; } throw "PIController:runtime.next is not yet implemented";
    @:embedded
    @:embeddededffieldsffun
    public static function _reset( __self__:stdgo._internal.runtime.Runtime_picontroller.PIController):Void return @:_5 __self__._reset();
    @:embedded
    @:embeddededffieldsffun
    public static function _next( __self__:stdgo._internal.runtime.Runtime_picontroller.PIController, _0:stdgo.GoFloat64, _1:stdgo.GoFloat64, _2:stdgo.GoFloat64):{ var _0 : stdgo.GoFloat64; var _1 : Bool; } return @:_5 __self__._next(_0, _1, _2);
}
