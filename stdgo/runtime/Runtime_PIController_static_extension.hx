package stdgo.runtime;
class PIController_static_extension {
    static public function next(_c:PIController, _input:StdTypes.Float, _setpoint:StdTypes.Float, _period:StdTypes.Float):stdgo.Tuple<StdTypes.Float, Bool> {
        final _c = (_c : stdgo.Ref<stdgo._internal.runtime.Runtime_PIController.PIController>);
        final _input = (_input : stdgo.GoFloat64);
        final _setpoint = (_setpoint : stdgo.GoFloat64);
        final _period = (_period : stdgo.GoFloat64);
        return {
            final obj = stdgo._internal.runtime.Runtime_PIController_static_extension.PIController_static_extension.next(_c, _input, _setpoint, _period);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _reset(__self__:stdgo._internal.runtime.Runtime_PIController.PIController):Void {
        stdgo._internal.runtime.Runtime_PIController_static_extension.PIController_static_extension._reset(__self__);
    }
    public static function _next(__self__:stdgo._internal.runtime.Runtime_PIController.PIController, _0:StdTypes.Float, _1:StdTypes.Float, _2:StdTypes.Float):stdgo.Tuple<StdTypes.Float, Bool> {
        final _0 = (_0 : stdgo.GoFloat64);
        final _1 = (_1 : stdgo.GoFloat64);
        final _2 = (_2 : stdgo.GoFloat64);
        return {
            final obj = stdgo._internal.runtime.Runtime_PIController_static_extension.PIController_static_extension._next(__self__, _0, _1, _2);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
