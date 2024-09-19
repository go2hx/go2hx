package stdgo._internal.runtime;
@:keep @:allow(stdgo._internal.runtime.Runtime.PIController_asInterface) class PIController_static_extension {
    @:keep
    static public function next( _c:stdgo.Ref<stdgo._internal.runtime.Runtime_PIController.PIController>, _input:stdgo.GoFloat64, _setpoint:stdgo.GoFloat64, _period:stdgo.GoFloat64):{ var _0 : stdgo.GoFloat64; var _1 : Bool; } throw "PIController:runtime.next is not yet implemented";
    @:embedded
    public static function _reset( __self__:stdgo._internal.runtime.Runtime_PIController.PIController) __self__._reset();
    @:embedded
    public static function _next( __self__:stdgo._internal.runtime.Runtime_PIController.PIController, _input:stdgo.GoFloat64, _setpoint:stdgo.GoFloat64, _period:stdgo.GoFloat64):{ var _0 : stdgo.GoFloat64; var _1 : Bool; } return __self__._next(_input, _setpoint, _period);
}
