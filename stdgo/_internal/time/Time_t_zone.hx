package stdgo._internal.time;
@:structInit @:using(stdgo._internal.time.Time_t_zone_static_extension.T_zone_static_extension) class T_zone {
    public var _name : stdgo.GoString = "";
    public var _offset : stdgo.GoInt = 0;
    public var _isDST : Bool = false;
    public function new(?_name:stdgo.GoString, ?_offset:stdgo.GoInt, ?_isDST:Bool) {
        if (_name != null) this._name = _name;
        if (_offset != null) this._offset = _offset;
        if (_isDST != null) this._isDST = _isDST;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_zone(_name, _offset, _isDST);
    }
}
