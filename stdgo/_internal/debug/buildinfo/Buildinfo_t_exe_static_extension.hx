package stdgo._internal.debug.buildinfo;
@:keep class T_exe_static_extension {
    @:interfacetypeffun
    static public function dataStart(t:stdgo._internal.debug.buildinfo.Buildinfo_t_exe.T_exe):stdgo.GoUInt64 return t.dataStart();
    @:interfacetypeffun
    static public function readData(t:stdgo._internal.debug.buildinfo.Buildinfo_t_exe.T_exe, _addr:stdgo.GoUInt64, _size:stdgo.GoUInt64):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return t.readData(_addr, _size);
}
