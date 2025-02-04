package stdgo._internal.fmt;
@:keep class State_static_extension {
    @:interfacetypeffun
    static public function flag(t:stdgo._internal.fmt.Fmt_state.State, _c:stdgo.GoInt):Bool return t.flag(_c);
    @:interfacetypeffun
    static public function precision(t:stdgo._internal.fmt.Fmt_state.State):{ var _0 : stdgo.GoInt; var _1 : Bool; } return t.precision();
    @:interfacetypeffun
    static public function width(t:stdgo._internal.fmt.Fmt_state.State):{ var _0 : stdgo.GoInt; var _1 : Bool; } return t.width();
    @:interfacetypeffun
    static public function write(t:stdgo._internal.fmt.Fmt_state.State, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return t.write(_b);
}
