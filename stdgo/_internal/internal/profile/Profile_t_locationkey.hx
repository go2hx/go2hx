package stdgo._internal.internal.profile;
@:structInit @:using(stdgo._internal.internal.profile.Profile_t_locationkey_static_extension.T_locationKey_static_extension) class T_locationKey {
    public var _addr : stdgo.GoUInt64 = 0;
    public var _mappingID : stdgo.GoUInt64 = 0;
    public var _lines : stdgo.GoString = "";
    public var _isFolded : Bool = false;
    public function new(?_addr:stdgo.GoUInt64, ?_mappingID:stdgo.GoUInt64, ?_lines:stdgo.GoString, ?_isFolded:Bool) {
        if (_addr != null) this._addr = _addr;
        if (_mappingID != null) this._mappingID = _mappingID;
        if (_lines != null) this._lines = _lines;
        if (_isFolded != null) this._isFolded = _isFolded;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_locationKey(_addr, _mappingID, _lines, _isFolded);
    }
}
