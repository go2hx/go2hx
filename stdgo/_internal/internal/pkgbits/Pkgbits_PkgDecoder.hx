package stdgo._internal.internal.pkgbits;
@:structInit @:using(stdgo._internal.internal.pkgbits.Pkgbits_PkgDecoder_static_extension.PkgDecoder_static_extension) class PkgDecoder {
    public var _version : stdgo.GoUInt32 = 0;
    public var _sync : Bool = false;
    public var _pkgPath : stdgo.GoString = "";
    public var _elemData : stdgo.GoString = "";
    public var _elemEnds : stdgo.Slice<stdgo.GoUInt32> = (null : stdgo.Slice<stdgo.GoUInt32>);
    public var _elemEndsEnds : stdgo.GoArray<stdgo.GoUInt32> = new stdgo.GoArray<stdgo.GoUInt32>(10, 10, ...[for (i in 0 ... 10) (0 : stdgo.GoUInt32)]);
    public var _scratchRelocEnt : stdgo.Slice<stdgo._internal.internal.pkgbits.Pkgbits_RelocEnt.RelocEnt> = (null : stdgo.Slice<stdgo._internal.internal.pkgbits.Pkgbits_RelocEnt.RelocEnt>);
    public function new(?_version:stdgo.GoUInt32, ?_sync:Bool, ?_pkgPath:stdgo.GoString, ?_elemData:stdgo.GoString, ?_elemEnds:stdgo.Slice<stdgo.GoUInt32>, ?_elemEndsEnds:stdgo.GoArray<stdgo.GoUInt32>, ?_scratchRelocEnt:stdgo.Slice<stdgo._internal.internal.pkgbits.Pkgbits_RelocEnt.RelocEnt>) {
        if (_version != null) this._version = _version;
        if (_sync != null) this._sync = _sync;
        if (_pkgPath != null) this._pkgPath = _pkgPath;
        if (_elemData != null) this._elemData = _elemData;
        if (_elemEnds != null) this._elemEnds = _elemEnds;
        if (_elemEndsEnds != null) this._elemEndsEnds = _elemEndsEnds;
        if (_scratchRelocEnt != null) this._scratchRelocEnt = _scratchRelocEnt;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PkgDecoder(_version, _sync, _pkgPath, _elemData, _elemEnds, _elemEndsEnds, _scratchRelocEnt);
    }
}
