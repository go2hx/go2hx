package stdgo._internal.context;
@:keep class Context_static_extension {
    @:interfacetypeffun
    static public function value(t:stdgo._internal.context.Context_Context.Context, _key:stdgo.AnyInterface):stdgo.AnyInterface return t.value(_key);
    @:interfacetypeffun
    static public function err(t:stdgo._internal.context.Context_Context.Context):stdgo.Error return t.err();
    @:interfacetypeffun
    static public function done(t:stdgo._internal.context.Context_Context.Context):stdgo.Chan<{ }> return t.done();
    @:interfacetypeffun
    static public function deadline(t:stdgo._internal.context.Context_Context.Context):{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; } return t.deadline();
}
