package stdgo._internal.debug.buildinfo;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.debug.elf.Elf;
import stdgo._internal.debug.pe.Pe;
import stdgo._internal.debug.macho.Macho;
import stdgo._internal.internal.xcoff.Xcoff;
import stdgo._internal.debug.plan9obj.Plan9obj;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.internal.saferio.Saferio;
@:keep class T_exe_static_extension {
    @:interfacetypeffun
    static public function dataStart(t:stdgo._internal.debug.buildinfo.Buildinfo_T_exe.T_exe):stdgo.GoUInt64 return t.dataStart();
    @:interfacetypeffun
    static public function readData(t:stdgo._internal.debug.buildinfo.Buildinfo_T_exe.T_exe, _addr:stdgo.GoUInt64, _size:stdgo.GoUInt64):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return t.readData(_addr, _size);
}
