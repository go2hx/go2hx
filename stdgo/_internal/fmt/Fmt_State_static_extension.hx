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
@:keep class State_static_extension {
    @:interfacetypeffun
    static public function flag(t:stdgo._internal.fmt.Fmt_State.State, _c:stdgo.GoInt):Bool return t.flag(_c);
    @:interfacetypeffun
    static public function precision(t:stdgo._internal.fmt.Fmt_State.State):{ var _0 : stdgo.GoInt; var _1 : Bool; } return t.precision();
    @:interfacetypeffun
    static public function width(t:stdgo._internal.fmt.Fmt_State.State):{ var _0 : stdgo.GoInt; var _1 : Bool; } return t.width();
    @:interfacetypeffun
    static public function write(t:stdgo._internal.fmt.Fmt_State.State, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return t.write(_b);
}
