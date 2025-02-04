package stdgo._internal.debug.buildinfo;
@:keep @:allow(stdgo._internal.debug.buildinfo.Buildinfo.T_elfExe_asInterface) class T_elfExe_static_extension {
    @:keep
    @:tdfield
    static public function dataStart( _x:stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_elfexe.T_elfExe>):stdgo.GoUInt64 {
        @:recv var _x:stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_elfexe.T_elfExe> = _x;
        for (__0 => _s in (@:checkr (@:checkr _x ?? throw "null pointer dereference")._f ?? throw "null pointer dereference").sections) {
            if ((@:checkr _s ?? throw "null pointer dereference").sectionHeader.name == ((".go.buildinfo" : stdgo.GoString))) {
                return (@:checkr _s ?? throw "null pointer dereference").sectionHeader.addr;
            };
        };
        for (__1 => _p in (@:checkr (@:checkr _x ?? throw "null pointer dereference")._f ?? throw "null pointer dereference").progs) {
            if ((((@:checkr _p ?? throw "null pointer dereference").progHeader.type == (1 : stdgo._internal.debug.elf.Elf_progtype.ProgType)) && (((@:checkr _p ?? throw "null pointer dereference").progHeader.flags & (3u32 : stdgo._internal.debug.elf.Elf_progflag.ProgFlag) : stdgo._internal.debug.elf.Elf_progflag.ProgFlag) == (2u32 : stdgo._internal.debug.elf.Elf_progflag.ProgFlag)) : Bool)) {
                return (@:checkr _p ?? throw "null pointer dereference").progHeader.vaddr;
            };
        };
        return (0i64 : stdgo.GoUInt64);
    }
    @:keep
    @:tdfield
    static public function readData( _x:stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_elfexe.T_elfExe>, _addr:stdgo.GoUInt64, _size:stdgo.GoUInt64):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_elfexe.T_elfExe> = _x;
        for (__0 => _prog in (@:checkr (@:checkr _x ?? throw "null pointer dereference")._f ?? throw "null pointer dereference").progs) {
            if ((((@:checkr _prog ?? throw "null pointer dereference").progHeader.vaddr <= _addr : Bool) && (_addr <= (((@:checkr _prog ?? throw "null pointer dereference").progHeader.vaddr + (@:checkr _prog ?? throw "null pointer dereference").progHeader.filesz : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : Bool) : Bool)) {
                var _n = (((@:checkr _prog ?? throw "null pointer dereference").progHeader.vaddr + (@:checkr _prog ?? throw "null pointer dereference").progHeader.filesz : stdgo.GoUInt64) - _addr : stdgo.GoUInt64);
                if ((_n > _size : Bool)) {
                    _n = _size;
                };
                return stdgo._internal.internal.saferio.Saferio_readdataat.readDataAt(stdgo.Go.asInterface(_prog), _n, ((_addr - (@:checkr _prog ?? throw "null pointer dereference").progHeader.vaddr : stdgo.GoUInt64) : stdgo.GoInt64));
            };
        };
        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.debug.buildinfo.Buildinfo__errunrecognizedformat._errUnrecognizedFormat };
    }
}
