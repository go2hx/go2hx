package stdgo._internal.internal.pkgbits;
@:structInit @:using(stdgo._internal.internal.pkgbits.Pkgbits_PkgEncoder_static_extension.PkgEncoder_static_extension) class PkgEncoder {
    public var _elems : stdgo.GoArray<stdgo.Slice<stdgo.GoString>> = new stdgo.GoArray<stdgo.Slice<stdgo.GoString>>(10, 10, ...[for (i in 0 ... 10) (null : stdgo.Slice<stdgo.GoString>)]);
    public var _stringsIdx : stdgo.GoMap<stdgo.GoString, stdgo._internal.internal.pkgbits.Pkgbits_Index.Index> = (null : stdgo.GoMap<stdgo.GoString, stdgo._internal.internal.pkgbits.Pkgbits_Index.Index>);
    public var _syncFrames : stdgo.GoInt = 0;
    public function new(?_elems:stdgo.GoArray<stdgo.Slice<stdgo.GoString>>, ?_stringsIdx:stdgo.GoMap<stdgo.GoString, stdgo._internal.internal.pkgbits.Pkgbits_Index.Index>, ?_syncFrames:stdgo.GoInt) {
        if (_elems != null) this._elems = _elems;
        if (_stringsIdx != null) this._stringsIdx = _stringsIdx;
        if (_syncFrames != null) this._syncFrames = _syncFrames;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PkgEncoder(_elems, _stringsIdx, _syncFrames);
    }
}
