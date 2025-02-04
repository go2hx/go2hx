package stdgo._internal.time;
@:structInit @:using(stdgo._internal.time.Time_t_zonetrans_static_extension.T_zoneTrans_static_extension) class T_zoneTrans {
    public var _when : stdgo.GoInt64 = 0;
    public var _index : stdgo.GoUInt8 = 0;
    public var _isstd : Bool = false;
    public var _isutc : Bool = false;
    public function new(?_when:stdgo.GoInt64, ?_index:stdgo.GoUInt8, ?_isstd:Bool, ?_isutc:Bool) {
        if (_when != null) this._when = _when;
        if (_index != null) this._index = _index;
        if (_isstd != null) this._isstd = _isstd;
        if (_isutc != null) this._isutc = _isutc;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_zoneTrans(_when, _index, _isstd, _isutc);
    }
}
