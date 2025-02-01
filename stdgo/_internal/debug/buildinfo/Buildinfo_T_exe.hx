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
@:interface typedef T_exe = stdgo.StructType & {
    /**
        ReadData reads and returns up to size bytes starting at virtual address addr.
        
        
    **/
    @:interfacetypeffun
    public dynamic function readData(_addr:stdgo.GoUInt64, _size:stdgo.GoUInt64):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    /**
        DataStart returns the virtual address of the segment or section that
        should contain build information. This is either a specially named section
        or the first writable non-zero data segment.
        
        
    **/
    @:interfacetypeffun
    public dynamic function dataStart():stdgo.GoUInt64;
};
