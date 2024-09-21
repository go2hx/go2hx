package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
@:keep @:allow(_internal.context_test.Context_test.T_customDoneContext_asInterface) class T_customDoneContext_static_extension {
    @:keep
    static public function done( _c:stdgo.Ref<_internal.context_test.Context_test_T_customDoneContext.T_customDoneContext>):stdgo.Chan<_internal.context_test.Context_test_T__struct_1.T__struct_1> {
        @:recv var _c:stdgo.Ref<_internal.context_test.Context_test_T_customDoneContext.T_customDoneContext> = _c;
        return _c._donec;
    }
    @:embedded
    public static function value( __self__:_internal.context_test.Context_test_T_customDoneContext.T_customDoneContext, _key:stdgo.AnyInterface):stdgo.AnyInterface return __self__.value(_key);
    @:embedded
    public static function err( __self__:_internal.context_test.Context_test_T_customDoneContext.T_customDoneContext):stdgo.Error return __self__.err();
    @:embedded
    public static function deadline( __self__:_internal.context_test.Context_test_T_customDoneContext.T_customDoneContext):{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; } return __self__.deadline();
}
