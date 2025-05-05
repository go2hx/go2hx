package stdgo._internal.debug.buildinfo;
@:keep @:allow(stdgo._internal.debug.buildinfo.Buildinfo.T_machoExe_asInterface) class T_machoExe_static_extension {
    @:keep
    @:tdfield
    static public function dataStart( _x:stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_machoexe.T_machoExe>):stdgo.GoUInt64 {
        @:recv var _x:stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_machoexe.T_machoExe> = _x;
        //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L368"
        for (__0 => _sec in (@:checkr (@:checkr _x ?? throw "null pointer dereference")._f ?? throw "null pointer dereference").sections) {
            //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L369"
            if ((@:checkr _sec ?? throw "null pointer dereference").sectionHeader.name == (("__go_buildinfo" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L370"
                return (@:checkr _sec ?? throw "null pointer dereference").sectionHeader.addr;
            };
        };
        {};
        //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L375"
        for (__1 => _load in (@:checkr (@:checkr _x ?? throw "null pointer dereference")._f ?? throw "null pointer dereference").loads) {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_load) : stdgo.Ref<stdgo._internal.debug.macho.Macho_segment.Segment>)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_segment.Segment>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.debug.macho.Macho_segment.Segment>), _1 : false };
            }, _seg = __tmp__._0, _ok = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L377"
            if (((((_ok && (@:checkr _seg ?? throw "null pointer dereference").segmentHeader.addr != ((0i64 : stdgo.GoUInt64)) : Bool) && (@:checkr _seg ?? throw "null pointer dereference").segmentHeader.filesz != ((0i64 : stdgo.GoUInt64)) : Bool) && (@:checkr _seg ?? throw "null pointer dereference").segmentHeader.prot == ((3u32 : stdgo.GoUInt32)) : Bool) && ((@:checkr _seg ?? throw "null pointer dereference").segmentHeader.maxprot == (3u32 : stdgo.GoUInt32)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L378"
                return (@:checkr _seg ?? throw "null pointer dereference").segmentHeader.addr;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L381"
        return (0i64 : stdgo.GoUInt64);
    }
    @:keep
    @:tdfield
    static public function readData( _x:stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_machoexe.T_machoExe>, _addr:stdgo.GoUInt64, _size:stdgo.GoUInt64):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_machoexe.T_machoExe> = _x;
        //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L347"
        for (__0 => _load in (@:checkr (@:checkr _x ?? throw "null pointer dereference")._f ?? throw "null pointer dereference").loads) {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_load) : stdgo.Ref<stdgo._internal.debug.macho.Macho_segment.Segment>)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_segment.Segment>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.debug.macho.Macho_segment.Segment>), _1 : false };
            }, _seg = __tmp__._0, _ok = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L349"
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L350"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L352"
            if ((((@:checkr _seg ?? throw "null pointer dereference").segmentHeader.addr <= _addr : Bool) && (_addr <= (((@:checkr _seg ?? throw "null pointer dereference").segmentHeader.addr + (@:checkr _seg ?? throw "null pointer dereference").segmentHeader.filesz : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L353"
                if ((@:checkr _seg ?? throw "null pointer dereference").segmentHeader.name == (("__PAGEZERO" : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L354"
                    continue;
                };
                var _n = (((@:checkr _seg ?? throw "null pointer dereference").segmentHeader.addr + (@:checkr _seg ?? throw "null pointer dereference").segmentHeader.filesz : stdgo.GoUInt64) - _addr : stdgo.GoUInt64);
                //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L357"
                if ((_n > _size : Bool)) {
                    _n = _size;
                };
                //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L360"
                return stdgo._internal.internal.saferio.Saferio_readdataat.readDataAt(stdgo.Go.asInterface(_seg), _n, ((_addr - (@:checkr _seg ?? throw "null pointer dereference").segmentHeader.addr : stdgo.GoUInt64) : stdgo.GoInt64));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L363"
        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.debug.buildinfo.Buildinfo__errunrecognizedformat._errUnrecognizedFormat };
    }
}
