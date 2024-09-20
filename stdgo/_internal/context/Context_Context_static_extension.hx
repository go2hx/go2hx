package stdgo._internal.context;
@:keep class Context_static_extension {
    static public function value(t:stdgo._internal.context.Context_Context.Context, _key:stdgo.AnyInterface):stdgo.AnyInterface return t.value(_key);
    static public function err(t:stdgo._internal.context.Context_Context.Context):stdgo.Error return t.err();
    static public function done(t:stdgo._internal.context.Context_Context.Context):stdgo.Chan<{ }> return t.done();
    static public function deadline(t:stdgo._internal.context.Context_Context.Context):{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; } return t.deadline();
}
