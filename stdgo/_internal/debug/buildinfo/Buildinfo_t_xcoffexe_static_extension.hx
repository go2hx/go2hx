package stdgo._internal.debug.buildinfo;
@:keep @:allow(stdgo._internal.debug.buildinfo.Buildinfo.T_xcoffExe_asInterface) class T_xcoffExe_static_extension {
    @:keep
    @:tdfield
    static public function dataStart( _x:stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_xcoffexe.T_xcoffExe>):stdgo.GoUInt64 {
        @:recv var _x:stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_xcoffexe.T_xcoffExe> = _x;
        {
            var _s = @:check2r (@:checkr _x ?? throw "null pointer dereference")._f.sectionByType((64u32 : stdgo.GoUInt32));
            if ((_s != null && ((_s : Dynamic).__nil__ == null || !(_s : Dynamic).__nil__))) {
                return (@:checkr _s ?? throw "null pointer dereference").sectionHeader.virtualAddress;
            };
        };
        return (0i64 : stdgo.GoUInt64);
    }
    @:keep
    @:tdfield
    static public function readData( _x:stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_xcoffexe.T_xcoffExe>, _addr:stdgo.GoUInt64, _size:stdgo.GoUInt64):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_xcoffexe.T_xcoffExe> = _x;
        for (__0 => _sect in (@:checkr (@:checkr _x ?? throw "null pointer dereference")._f ?? throw "null pointer dereference").sections) {
            if ((((@:checkr _sect ?? throw "null pointer dereference").sectionHeader.virtualAddress <= _addr : Bool) && (_addr <= (((@:checkr _sect ?? throw "null pointer dereference").sectionHeader.virtualAddress + (@:checkr _sect ?? throw "null pointer dereference").sectionHeader.size : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : Bool) : Bool)) {
                var _n = (((@:checkr _sect ?? throw "null pointer dereference").sectionHeader.virtualAddress + (@:checkr _sect ?? throw "null pointer dereference").sectionHeader.size : stdgo.GoUInt64) - _addr : stdgo.GoUInt64);
                if ((_n > _size : Bool)) {
                    _n = _size;
                };
                return stdgo._internal.internal.saferio.Saferio_readdataat.readDataAt(stdgo.Go.asInterface(_sect), _n, ((_addr - (@:checkr _sect ?? throw "null pointer dereference").sectionHeader.virtualAddress : stdgo.GoUInt64) : stdgo.GoInt64));
            };
        };
        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("address not mapped" : stdgo.GoString)) };
    }
}
