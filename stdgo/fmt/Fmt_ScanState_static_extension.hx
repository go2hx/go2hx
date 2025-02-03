package stdgo.fmt;
class ScanState_static_extension {
    static public function read(t:stdgo._internal.fmt.Fmt_ScanState.ScanState, _buf:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.fmt.Fmt_ScanState_static_extension.ScanState_static_extension.read(t, _buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function width(t:stdgo._internal.fmt.Fmt_ScanState.ScanState):stdgo.Tuple<StdTypes.Int, Bool> {
        return {
            final obj = stdgo._internal.fmt.Fmt_ScanState_static_extension.ScanState_static_extension.width(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function token(t:stdgo._internal.fmt.Fmt_ScanState.ScanState, _skipSpace:Bool, _f:stdgo.GoInt32 -> Bool):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _f = _f;
        return {
            final obj = stdgo._internal.fmt.Fmt_ScanState_static_extension.ScanState_static_extension.token(t, _skipSpace, _f);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function skipSpace(t:stdgo._internal.fmt.Fmt_ScanState.ScanState):Void {
        stdgo._internal.fmt.Fmt_ScanState_static_extension.ScanState_static_extension.skipSpace(t);
    }
    static public function unreadRune(t:stdgo._internal.fmt.Fmt_ScanState.ScanState):stdgo.Error {
        return stdgo._internal.fmt.Fmt_ScanState_static_extension.ScanState_static_extension.unreadRune(t);
    }
    static public function readRune(t:stdgo._internal.fmt.Fmt_ScanState.ScanState):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt_ScanState_static_extension.ScanState_static_extension.readRune(t);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
}
