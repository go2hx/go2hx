package stdgo._internal.internal.profile;
@:structInit @:using(stdgo._internal.internal.profile.Profile_label_static_extension.Label_static_extension) class Label {
    public var _keyX : stdgo.GoInt64 = 0;
    public var _strX : stdgo.GoInt64 = 0;
    public var _numX : stdgo.GoInt64 = 0;
    public function new(?_keyX:stdgo.GoInt64, ?_strX:stdgo.GoInt64, ?_numX:stdgo.GoInt64) {
        if (_keyX != null) this._keyX = _keyX;
        if (_strX != null) this._strX = _strX;
        if (_numX != null) this._numX = _numX;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Label(_keyX, _strX, _numX);
    }
}
