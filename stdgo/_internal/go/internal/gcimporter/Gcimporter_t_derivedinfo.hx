package stdgo._internal.go.internal.gcimporter;
@:structInit @:using(stdgo._internal.go.internal.gcimporter.Gcimporter_t_derivedinfo_static_extension.T_derivedInfo_static_extension) class T_derivedInfo {
    public var _idx : stdgo._internal.internal.pkgbits.Pkgbits_index.Index = ((0 : stdgo.GoInt32) : stdgo._internal.internal.pkgbits.Pkgbits_index.Index);
    public var _needed : Bool = false;
    public function new(?_idx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index, ?_needed:Bool) {
        if (_idx != null) this._idx = _idx;
        if (_needed != null) this._needed = _needed;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_derivedInfo(_idx, _needed);
    }
}
