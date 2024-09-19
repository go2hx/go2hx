package stdgo._internal.fmt;
@:keep class State_static_extension {
    static public function flag(t:State, _c:stdgo.GoInt):Bool return t.flag(_c);
    static public function precision(t:State):{ var _0 : stdgo.GoInt; var _1 : Bool; } return t.precision();
    static public function width(t:State):{ var _0 : stdgo.GoInt; var _1 : Bool; } return t.width();
    static public function write(t:State, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return t.write(_b);
}
