package stdgo._internal.internal.profile;
@:structInit @:using(stdgo._internal.internal.profile.Profile_t_buffer_static_extension.T_buffer_static_extension) class T_buffer {
    public var _field : stdgo.GoInt = 0;
    public var _typ : stdgo.GoInt = 0;
    public var _u64 : stdgo.GoUInt64 = 0;
    public var _data : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _tmp : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
    public function new(?_field:stdgo.GoInt, ?_typ:stdgo.GoInt, ?_u64:stdgo.GoUInt64, ?_data:stdgo.Slice<stdgo.GoUInt8>, ?_tmp:stdgo.GoArray<stdgo.GoUInt8>) {
        if (_field != null) this._field = _field;
        if (_typ != null) this._typ = _typ;
        if (_u64 != null) this._u64 = _u64;
        if (_data != null) this._data = _data;
        if (_tmp != null) this._tmp = _tmp;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_buffer(_field, _typ, _u64, _data, _tmp);
    }
}
