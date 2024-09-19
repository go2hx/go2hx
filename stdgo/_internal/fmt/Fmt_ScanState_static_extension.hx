package stdgo._internal.fmt;
@:keep class ScanState_static_extension {
    static public function read(t:ScanState, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return t.read(_buf);
    static public function width(t:ScanState):{ var _0 : stdgo.GoInt; var _1 : Bool; } return t.width();
    static public function token(t:ScanState, _skipSpace:Bool, _f:stdgo.GoInt32 -> Bool):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return t.token(_skipSpace, _f);
    static public function skipSpace(t:ScanState):Void t.skipSpace();
    static public function unreadRune(t:ScanState):stdgo.Error return t.unreadRune();
    static public function readRune(t:ScanState):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return t.readRune();
}
