package stdgo._internal.fmt;
import stdgo._internal.errors.Errors;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.os.Os;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.io.Io;
import stdgo._internal.internal.fmtsort.Fmtsort;
import stdgo._internal.math.Math;
@:keep class ScanState_static_extension {
    @:interfacetypeffun
    static public function read(t:stdgo._internal.fmt.Fmt_ScanState.ScanState, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return t.read(_buf);
    @:interfacetypeffun
    static public function width(t:stdgo._internal.fmt.Fmt_ScanState.ScanState):{ var _0 : stdgo.GoInt; var _1 : Bool; } return t.width();
    @:interfacetypeffun
    static public function token(t:stdgo._internal.fmt.Fmt_ScanState.ScanState, _skipSpace:Bool, _f:stdgo.GoInt32 -> Bool):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return t.token(_skipSpace, _f);
    @:interfacetypeffun
    static public function skipSpace(t:stdgo._internal.fmt.Fmt_ScanState.ScanState):Void t.skipSpace();
    @:interfacetypeffun
    static public function unreadRune(t:stdgo._internal.fmt.Fmt_ScanState.ScanState):stdgo.Error return t.unreadRune();
    @:interfacetypeffun
    static public function readRune(t:stdgo._internal.fmt.Fmt_ScanState.ScanState):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return t.readRune();
}
