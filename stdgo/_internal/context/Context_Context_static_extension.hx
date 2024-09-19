package stdgo._internal.context;
@:keep class Context_static_extension {
    static public function value(t:Context, _key:stdgo.AnyInterface):stdgo.AnyInterface return t.value(_key);
    static public function err(t:Context):stdgo.Error return t.err();
    static public function done(t:Context):stdgo.Chan<{ }> return t.done();
    static public function deadline(t:Context):{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; } return t.deadline();
}
