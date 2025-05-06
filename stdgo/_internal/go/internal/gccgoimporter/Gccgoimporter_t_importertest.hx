package stdgo._internal.go.internal.gccgoimporter;
@:structInit @:using(stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_importertest_static_extension.T_importerTest_static_extension) class T_importerTest {
    public var _pkgpath : stdgo.GoString = "";
    public var _name : stdgo.GoString = "";
    public var _want : stdgo.GoString = "";
    public var _wantval : stdgo.GoString = "";
    public var _wantinits : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _gccgoVersion : stdgo.GoInt = 0;
    public function new(?_pkgpath:stdgo.GoString, ?_name:stdgo.GoString, ?_want:stdgo.GoString, ?_wantval:stdgo.GoString, ?_wantinits:stdgo.Slice<stdgo.GoString>, ?_gccgoVersion:stdgo.GoInt) {
        if (_pkgpath != null) this._pkgpath = _pkgpath;
        if (_name != null) this._name = _name;
        if (_want != null) this._want = _want;
        if (_wantval != null) this._wantval = _wantval;
        if (_wantinits != null) this._wantinits = _wantinits;
        if (_gccgoVersion != null) this._gccgoVersion = _gccgoVersion;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_importerTest(_pkgpath, _name, _want, _wantval, _wantinits, _gccgoVersion);
    }
}
