package stdgo._internal.debug.gosym;
@:structInit @:using(stdgo._internal.debug.gosym.Gosym_t_funcdata_static_extension.T_funcData_static_extension) class T_funcData {
    public var _t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable> = (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>);
    public var _data : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>, ?_data:stdgo.Slice<stdgo.GoUInt8>) {
        if (_t != null) this._t = _t;
        if (_data != null) this._data = _data;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_funcData(_t, _data);
    }
}
