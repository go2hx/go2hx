package stdgo.io;
class T_discard_static_extension {
    static public function readFrom(_:T_discard, _r:Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.Io_T_discard_static_extension.T_discard_static_extension.readFrom(_, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeString(_:T_discard, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.Io_T_discard_static_extension.T_discard_static_extension.writeString(_, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_:T_discard, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_T_discard_static_extension.T_discard_static_extension.write(_, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
