package stdgo.fmt;
class State_static_extension {
    static public function flag(t:stdgo._internal.fmt.Fmt_State.State, _c:StdTypes.Int):Bool {
        final _c = (_c : stdgo.GoInt);
        return stdgo._internal.fmt.Fmt_State_static_extension.State_static_extension.flag(t, _c);
    }
    static public function precision(t:stdgo._internal.fmt.Fmt_State.State):stdgo.Tuple<StdTypes.Int, Bool> {
        return {
            final obj = stdgo._internal.fmt.Fmt_State_static_extension.State_static_extension.precision(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function width(t:stdgo._internal.fmt.Fmt_State.State):stdgo.Tuple<StdTypes.Int, Bool> {
        return {
            final obj = stdgo._internal.fmt.Fmt_State_static_extension.State_static_extension.width(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(t:stdgo._internal.fmt.Fmt_State.State, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.fmt.Fmt_State_static_extension.State_static_extension.write(t, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
