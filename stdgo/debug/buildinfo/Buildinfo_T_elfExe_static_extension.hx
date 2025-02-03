package stdgo.debug.buildinfo;
class T_elfExe_static_extension {
    static public function dataStart(_x:T_elfExe):haxe.UInt64 {
        final _x = (_x : stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_T_elfExe.T_elfExe>);
        return stdgo._internal.debug.buildinfo.Buildinfo_T_elfExe_static_extension.T_elfExe_static_extension.dataStart(_x);
    }
    static public function readData(_x:T_elfExe, _addr:haxe.UInt64, _size:haxe.UInt64):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _x = (_x : stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_T_elfExe.T_elfExe>);
        final _addr = (_addr : stdgo.GoUInt64);
        final _size = (_size : stdgo.GoUInt64);
        return {
            final obj = stdgo._internal.debug.buildinfo.Buildinfo_T_elfExe_static_extension.T_elfExe_static_extension.readData(_x, _addr, _size);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
