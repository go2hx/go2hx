package stdgo._internal.debug.buildinfo;
@:keep @:allow(stdgo._internal.debug.buildinfo.Buildinfo.T_plan9objExe_asInterface) class T_plan9objExe_static_extension {
    @:keep
    @:tdfield
    static public function readData( _x:stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_plan9objexe.T_plan9objExe>, _addr:stdgo.GoUInt64, _size:stdgo.GoUInt64):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_plan9objexe.T_plan9objExe> = _x;
        for (__0 => _sect in (@:checkr (@:checkr _x ?? throw "null pointer dereference")._f ?? throw "null pointer dereference").sections) {
            if (((((@:checkr _sect ?? throw "null pointer dereference").sectionHeader.offset : stdgo.GoUInt64) <= _addr : Bool) && (_addr <= ((((@:checkr _sect ?? throw "null pointer dereference").sectionHeader.offset + (@:checkr _sect ?? throw "null pointer dereference").sectionHeader.size : stdgo.GoUInt32) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt64) : Bool) : Bool)) {
                var _n = ((((@:checkr _sect ?? throw "null pointer dereference").sectionHeader.offset + (@:checkr _sect ?? throw "null pointer dereference").sectionHeader.size : stdgo.GoUInt32) : stdgo.GoUInt64) - _addr : stdgo.GoUInt64);
                if ((_n > _size : Bool)) {
                    _n = _size;
                };
                return stdgo._internal.internal.saferio.Saferio_readdataat.readDataAt(stdgo.Go.asInterface(_sect), _n, ((_addr - ((@:checkr _sect ?? throw "null pointer dereference").sectionHeader.offset : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt64));
            };
        };
        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("address not mapped" : stdgo.GoString)) };
    }
    @:keep
    @:tdfield
    static public function dataStart( _x:stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_plan9objexe.T_plan9objExe>):stdgo.GoUInt64 {
        @:recv var _x:stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_plan9objexe.T_plan9objExe> = _x;
        {
            var _s = @:check2r (@:checkr _x ?? throw "null pointer dereference")._f.section(("data" : stdgo.GoString));
            if ((_s != null && ((_s : Dynamic).__nil__ == null || !(_s : Dynamic).__nil__))) {
                return ((@:checkr _s ?? throw "null pointer dereference").sectionHeader.offset : stdgo.GoUInt64);
            };
        };
        return (0i64 : stdgo.GoUInt64);
    }
}
