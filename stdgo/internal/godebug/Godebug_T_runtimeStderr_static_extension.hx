package stdgo.internal.godebug;
class T_runtimeStderr_static_extension {
    static public function write(_:T_runtimeStderr, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _ = (_ : stdgo.Ref<stdgo._internal.internal.godebug.Godebug_T_runtimeStderr.T_runtimeStderr>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.godebug.Godebug_T_runtimeStderr_static_extension.T_runtimeStderr_static_extension.write(_, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
