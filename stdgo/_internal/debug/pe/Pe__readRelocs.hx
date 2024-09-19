package stdgo._internal.debug.pe;
function _readRelocs(_sh:stdgo.Ref<stdgo._internal.debug.pe.Pe_SectionHeader.SectionHeader>, _r:stdgo._internal.io.Io_ReadSeeker.ReadSeeker):{ var _0 : stdgo.Slice<stdgo._internal.debug.pe.Pe_Reloc.Reloc>; var _1 : stdgo.Error; } {
        if ((_sh.numberOfRelocations <= (0 : stdgo.GoUInt16) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.pe.Pe_Reloc.Reloc>), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = _r.seek((_sh.pointerToRelocations : stdgo.GoInt64), (0 : stdgo.GoInt)), __2:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.pe.Pe_Reloc.Reloc>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("fail to seek to %q section relocations: %v" : stdgo.GoString), stdgo.Go.toInterface(_sh.name), stdgo.Go.toInterface(_err)) };
        };
        var _relocs = (new stdgo.Slice<stdgo._internal.debug.pe.Pe_Reloc.Reloc>((_sh.numberOfRelocations : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_sh.numberOfRelocations : stdgo.GoInt).toBasic() > 0 ? (_sh.numberOfRelocations : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.pe.Pe_Reloc.Reloc)]) : stdgo.Slice<stdgo._internal.debug.pe.Pe_Reloc.Reloc>);
        _err = stdgo._internal.encoding.binary.Binary_read.read(_r, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian), stdgo.Go.toInterface(_relocs));
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.pe.Pe_Reloc.Reloc>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("fail to read section relocations: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
        };
        return { _0 : _relocs, _1 : (null : stdgo.Error) };
    }