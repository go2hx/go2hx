package stdgo.debug.buildinfo;
class T_exe_static_extension {
    static public function dataStart(t:stdgo._internal.debug.buildinfo.Buildinfo_T_exe.T_exe):haxe.UInt64 {
        return stdgo._internal.debug.buildinfo.Buildinfo_T_exe_static_extension.T_exe_static_extension.dataStart(t);
    }
    static public function readData(t:stdgo._internal.debug.buildinfo.Buildinfo_T_exe.T_exe, _addr:haxe.UInt64, _size:haxe.UInt64):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _addr = (_addr : stdgo.GoUInt64);
        final _size = (_size : stdgo.GoUInt64);
        return {
            final obj = stdgo._internal.debug.buildinfo.Buildinfo_T_exe_static_extension.T_exe_static_extension.readData(t, _addr, _size);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
