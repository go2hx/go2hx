package stdgo._internal.debug.buildinfo;
@:keep @:allow(stdgo._internal.debug.buildinfo.Buildinfo.T_peExe_asInterface) class T_peExe_static_extension {
    @:keep
    @:tdfield
    static public function dataStart( _x:stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_peexe.T_peExe>):stdgo.GoUInt64 {
        @:recv var _x:stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_peexe.T_peExe> = _x;
        {};
        //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L332"
        for (__0 => _sect in (@:checkr (@:checkr _x ?? throw "null pointer dereference")._f ?? throw "null pointer dereference").sections) {
            //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L333"
            if ((((@:checkr _sect ?? throw "null pointer dereference").sectionHeader.virtualAddress != ((0u32 : stdgo.GoUInt32)) && (@:checkr _sect ?? throw "null pointer dereference").sectionHeader.size != ((0u32 : stdgo.GoUInt32)) : Bool) && (((@:checkr _sect ?? throw "null pointer dereference").sectionHeader.characteristics & (((6291456u32 : stdgo.GoUInt32) ^ (-1i64 : stdgo.GoInt32) : stdgo.GoUInt32)) : stdgo.GoUInt32) == (-1073741760u32 : stdgo.GoUInt32)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L335"
                return (((@:checkr _sect ?? throw "null pointer dereference").sectionHeader.virtualAddress : stdgo.GoUInt64) + _x._imageBase() : stdgo.GoUInt64);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L338"
        return (0i64 : stdgo.GoUInt64);
    }
    @:keep
    @:tdfield
    static public function readData( _x:stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_peexe.T_peExe>, _addr:stdgo.GoUInt64, _size:stdgo.GoUInt64):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_peexe.T_peExe> = _x;
        _addr = (_addr - (_x._imageBase()) : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L307"
        for (__0 => _sect in (@:checkr (@:checkr _x ?? throw "null pointer dereference")._f ?? throw "null pointer dereference").sections) {
            //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L308"
            if (((((@:checkr _sect ?? throw "null pointer dereference").sectionHeader.virtualAddress : stdgo.GoUInt64) <= _addr : Bool) && (_addr <= ((((@:checkr _sect ?? throw "null pointer dereference").sectionHeader.virtualAddress + (@:checkr _sect ?? throw "null pointer dereference").sectionHeader.size : stdgo.GoUInt32) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt64) : Bool) : Bool)) {
                var _n = ((((@:checkr _sect ?? throw "null pointer dereference").sectionHeader.virtualAddress + (@:checkr _sect ?? throw "null pointer dereference").sectionHeader.size : stdgo.GoUInt32) : stdgo.GoUInt64) - _addr : stdgo.GoUInt64);
                //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L310"
                if ((_n > _size : Bool)) {
                    _n = _size;
                };
                //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L313"
                return stdgo._internal.internal.saferio.Saferio_readdataat.readDataAt(stdgo.Go.asInterface(_sect), _n, ((_addr - ((@:checkr _sect ?? throw "null pointer dereference").sectionHeader.virtualAddress : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt64));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L316"
        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.debug.buildinfo.Buildinfo__errunrecognizedformat._errUnrecognizedFormat };
    }
    @:keep
    @:tdfield
    static public function _imageBase( _x:stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_peexe.T_peExe>):stdgo.GoUInt64 {
        @:recv var _x:stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_peexe.T_peExe> = _x;
        //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L296"
        {
            final __type__ = (@:checkr (@:checkr _x ?? throw "null pointer dereference")._f ?? throw "null pointer dereference").optionalHeader;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.debug.pe.Pe_optionalheader32.OptionalHeader32>))) {
                var _oh:stdgo.Ref<stdgo._internal.debug.pe.Pe_optionalheader32.OptionalHeader32> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.debug.pe.Pe_optionalheader32.OptionalHeader32>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.debug.pe.Pe_optionalheader32.OptionalHeader32>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.debug.pe.Pe_optionalheader32.OptionalHeader32>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L298"
                return ((@:checkr _oh ?? throw "null pointer dereference").imageBase : stdgo.GoUInt64);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.debug.pe.Pe_optionalheader64.OptionalHeader64>))) {
                var _oh:stdgo.Ref<stdgo._internal.debug.pe.Pe_optionalheader64.OptionalHeader64> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.debug.pe.Pe_optionalheader64.OptionalHeader64>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.debug.pe.Pe_optionalheader64.OptionalHeader64>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.debug.pe.Pe_optionalheader64.OptionalHeader64>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L300"
                return (@:checkr _oh ?? throw "null pointer dereference").imageBase;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L302"
        return (0i64 : stdgo.GoUInt64);
    }
}
