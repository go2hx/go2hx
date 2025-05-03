package stdgo._internal.debug.buildinfo;
@:keep @:allow(stdgo._internal.debug.buildinfo.Buildinfo.T_elfExe_asInterface) class T_elfExe_static_extension {
    @:keep
    @:tdfield
    static public function dataStart( _x:stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_elfexe.T_elfExe>):stdgo.GoUInt64 {
        @:recv var _x:stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_elfexe.T_elfExe> = _x;
        //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L277"
        for (__0 => _s in (@:checkr (@:checkr _x ?? throw "null pointer dereference")._f ?? throw "null pointer dereference").sections) {
            //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L278"
            if ((@:checkr _s ?? throw "null pointer dereference").sectionHeader.name == ((".go.buildinfo" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L279"
                return (@:checkr _s ?? throw "null pointer dereference").sectionHeader.addr;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L282"
        for (__1 => _p in (@:checkr (@:checkr _x ?? throw "null pointer dereference")._f ?? throw "null pointer dereference").progs) {
            //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L283"
            if ((((@:checkr _p ?? throw "null pointer dereference").progHeader.type == (1 : stdgo._internal.debug.elf.Elf_progtype.ProgType)) && (((@:checkr _p ?? throw "null pointer dereference").progHeader.flags & (3u32 : stdgo._internal.debug.elf.Elf_progflag.ProgFlag) : stdgo._internal.debug.elf.Elf_progflag.ProgFlag) == (2u32 : stdgo._internal.debug.elf.Elf_progflag.ProgFlag)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L284"
                return (@:checkr _p ?? throw "null pointer dereference").progHeader.vaddr;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L287"
        return (0i64 : stdgo.GoUInt64);
    }
    @:keep
    @:tdfield
    static public function readData( _x:stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_elfexe.T_elfExe>, _addr:stdgo.GoUInt64, _size:stdgo.GoUInt64):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_elfexe.T_elfExe> = _x;
        //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L264"
        for (__0 => _prog in (@:checkr (@:checkr _x ?? throw "null pointer dereference")._f ?? throw "null pointer dereference").progs) {
            //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L265"
            if ((((@:checkr _prog ?? throw "null pointer dereference").progHeader.vaddr <= _addr : Bool) && (_addr <= (((@:checkr _prog ?? throw "null pointer dereference").progHeader.vaddr + (@:checkr _prog ?? throw "null pointer dereference").progHeader.filesz : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : Bool) : Bool)) {
                var _n = (((@:checkr _prog ?? throw "null pointer dereference").progHeader.vaddr + (@:checkr _prog ?? throw "null pointer dereference").progHeader.filesz : stdgo.GoUInt64) - _addr : stdgo.GoUInt64);
                //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L267"
                if ((_n > _size : Bool)) {
                    _n = _size;
                };
                //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L270"
                return stdgo._internal.internal.saferio.Saferio_readdataat.readDataAt(stdgo.Go.asInterface(_prog), _n, ((_addr - (@:checkr _prog ?? throw "null pointer dereference").progHeader.vaddr : stdgo.GoUInt64) : stdgo.GoInt64));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L273"
        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.debug.buildinfo.Buildinfo__errunrecognizedformat._errUnrecognizedFormat };
    }
}
