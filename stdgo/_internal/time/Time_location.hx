package stdgo._internal.time;
@:structInit @:using(stdgo._internal.time.Time_location_static_extension.Location_static_extension) class Location {
    public var _name : stdgo.GoString = "";
    public var _zone : stdgo.Slice<stdgo._internal.time.Time_t_zone.T_zone> = (null : stdgo.Slice<stdgo._internal.time.Time_t_zone.T_zone>);
    public var _tx : stdgo.Slice<stdgo._internal.time.Time_t_zonetrans.T_zoneTrans> = (null : stdgo.Slice<stdgo._internal.time.Time_t_zonetrans.T_zoneTrans>);
    public var _extend : stdgo.GoString = "";
    public var _cacheStart : stdgo.GoInt64 = 0;
    public var _cacheEnd : stdgo.GoInt64 = 0;
    public var _cacheZone : stdgo.Ref<stdgo._internal.time.Time_t_zone.T_zone> = (null : stdgo.Ref<stdgo._internal.time.Time_t_zone.T_zone>);
    public function new(?_name:stdgo.GoString, ?_zone:stdgo.Slice<stdgo._internal.time.Time_t_zone.T_zone>, ?_tx:stdgo.Slice<stdgo._internal.time.Time_t_zonetrans.T_zoneTrans>, ?_extend:stdgo.GoString, ?_cacheStart:stdgo.GoInt64, ?_cacheEnd:stdgo.GoInt64, ?_cacheZone:stdgo.Ref<stdgo._internal.time.Time_t_zone.T_zone>) {
        if (_name != null) this._name = _name;
        if (_zone != null) this._zone = _zone;
        if (_tx != null) this._tx = _tx;
        if (_extend != null) this._extend = _extend;
        if (_cacheStart != null) this._cacheStart = _cacheStart;
        if (_cacheEnd != null) this._cacheEnd = _cacheEnd;
        if (_cacheZone != null) this._cacheZone = _cacheZone;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Location(_name, _zone, _tx, _extend, _cacheStart, _cacheEnd, _cacheZone);
    }
}
