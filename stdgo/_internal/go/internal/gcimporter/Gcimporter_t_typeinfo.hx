package stdgo._internal.go.internal.gcimporter;
@:structInit @:using(stdgo._internal.go.internal.gcimporter.Gcimporter_t_typeinfo_static_extension.T_typeInfo_static_extension) class T_typeInfo {
    public var _idx : stdgo._internal.internal.pkgbits.Pkgbits_index.Index = ((0 : stdgo.GoInt32) : stdgo._internal.internal.pkgbits.Pkgbits_index.Index);
    public var _derived : Bool = false;
    public function new(?_idx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index, ?_derived:Bool) {
        if (_idx != null) this._idx = _idx;
        if (_derived != null) this._derived = _derived;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_typeInfo(_idx, _derived);
    }
}
