package stdgo.debug.buildinfo;
class T_peExe_static_extension {
    static public function dataStart(_x:T_peExe):haxe.UInt64 {
        final _x = (_x : stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_T_peExe.T_peExe>);
        return stdgo._internal.debug.buildinfo.Buildinfo_T_peExe_static_extension.T_peExe_static_extension.dataStart(_x);
    }
    static public function readData(_x:T_peExe, _addr:haxe.UInt64, _size:haxe.UInt64):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _x = (_x : stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_T_peExe.T_peExe>);
        final _addr = (_addr : stdgo.GoUInt64);
        final _size = (_size : stdgo.GoUInt64);
        return {
            final obj = stdgo._internal.debug.buildinfo.Buildinfo_T_peExe_static_extension.T_peExe_static_extension.readData(_x, _addr, _size);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _imageBase(_x:T_peExe):haxe.UInt64 {
        final _x = (_x : stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_T_peExe.T_peExe>);
        return stdgo._internal.debug.buildinfo.Buildinfo_T_peExe_static_extension.T_peExe_static_extension._imageBase(_x);
    }
}
