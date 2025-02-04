package stdgo._internal.internal.fuzz;
@:structInit @:using(stdgo._internal.internal.fuzz.Fuzz_t_sharedmem_static_extension.T_sharedMem_static_extension) class T_sharedMem {
    public var _f : stdgo.Ref<stdgo._internal.os.Os_file.File> = (null : stdgo.Ref<stdgo._internal.os.Os_file.File>);
    public var _region : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _removeOnClose : Bool = false;
    public var _sys : stdgo._internal.internal.fuzz.Fuzz_t_sharedmemsys.T_sharedMemSys = ({} : stdgo._internal.internal.fuzz.Fuzz_t_sharedmemsys.T_sharedMemSys);
    public function new(?_f:stdgo.Ref<stdgo._internal.os.Os_file.File>, ?_region:stdgo.Slice<stdgo.GoUInt8>, ?_removeOnClose:Bool, ?_sys:stdgo._internal.internal.fuzz.Fuzz_t_sharedmemsys.T_sharedMemSys) {
        if (_f != null) this._f = _f;
        if (_region != null) this._region = _region;
        if (_removeOnClose != null) this._removeOnClose = _removeOnClose;
        if (_sys != null) this._sys = _sys;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_sharedMem(_f, _region, _removeOnClose, _sys);
    }
}
