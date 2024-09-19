package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
@:keep @:allow(_internal.context_test.Context_test.T_otherContext_asInterface) class T_otherContext_static_extension {
    @:embedded
    public static function value( __self__:_internal.context_test.Context_test_T_otherContext.T_otherContext, _key:stdgo.AnyInterface):stdgo.AnyInterface return __self__.value(_key);
    @:embedded
    public static function err( __self__:_internal.context_test.Context_test_T_otherContext.T_otherContext):stdgo.Error return __self__.err();
    @:embedded
    public static function done( __self__:_internal.context_test.Context_test_T_otherContext.T_otherContext):stdgo.Chan<{ }> return __self__.done();
    @:embedded
    public static function deadline( __self__:_internal.context_test.Context_test_T_otherContext.T_otherContext):{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; } return __self__.deadline();
}
