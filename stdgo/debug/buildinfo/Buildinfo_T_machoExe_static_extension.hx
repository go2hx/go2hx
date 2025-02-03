package stdgo.debug.buildinfo;
class T_machoExe_static_extension {
    static public function dataStart(_x:T_machoExe):haxe.UInt64 {
        final _x = (_x : stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_T_machoExe.T_machoExe>);
        return stdgo._internal.debug.buildinfo.Buildinfo_T_machoExe_static_extension.T_machoExe_static_extension.dataStart(_x);
    }
    static public function readData(_x:T_machoExe, _addr:haxe.UInt64, _size:haxe.UInt64):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _x = (_x : stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_T_machoExe.T_machoExe>);
        final _addr = (_addr : stdgo.GoUInt64);
        final _size = (_size : stdgo.GoUInt64);
        return {
            final obj = stdgo._internal.debug.buildinfo.Buildinfo_T_machoExe_static_extension.T_machoExe_static_extension.readData(_x, _addr, _size);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
