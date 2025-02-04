package stdgo._internal.debug.plan9obj;
@:structInit @:using(stdgo._internal.debug.plan9obj.Plan9obj_t_sym_static_extension.T_sym_static_extension) class T_sym {
    public var _value : stdgo.GoUInt64 = 0;
    public var _typ : stdgo.GoUInt8 = 0;
    public var _name : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_value:stdgo.GoUInt64, ?_typ:stdgo.GoUInt8, ?_name:stdgo.Slice<stdgo.GoUInt8>) {
        if (_value != null) this._value = _value;
        if (_typ != null) this._typ = _typ;
        if (_name != null) this._name = _name;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_sym(_value, _typ, _name);
    }
}
