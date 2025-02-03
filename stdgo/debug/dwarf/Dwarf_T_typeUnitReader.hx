package stdgo.debug.dwarf;
@:structInit @:using(stdgo.debug.dwarf.Dwarf.T_typeUnitReader_static_extension) abstract T_typeUnitReader(stdgo._internal.debug.dwarf.Dwarf_T_typeUnitReader.T_typeUnitReader) from stdgo._internal.debug.dwarf.Dwarf_T_typeUnitReader.T_typeUnitReader to stdgo._internal.debug.dwarf.Dwarf_T_typeUnitReader.T_typeUnitReader {
    public var _d(get, set) : Data;
    function get__d():Data return this._d;
    function set__d(v:Data):Data {
        this._d = (v : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>);
        return v;
    }
    public var _tu(get, set) : T_typeUnit;
    function get__tu():T_typeUnit return this._tu;
    function set__tu(v:T_typeUnit):T_typeUnit {
        this._tu = (v : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeUnit.T_typeUnit>);
        return v;
    }
    public var _b(get, set) : T_buf;
    function get__b():T_buf return this._b;
    function set__b(v:T_buf):T_buf {
        this._b = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_d:Data, ?_tu:T_typeUnit, ?_b:T_buf, ?_err:stdgo.Error) this = new stdgo._internal.debug.dwarf.Dwarf_T_typeUnitReader.T_typeUnitReader((_d : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>), (_tu : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeUnit.T_typeUnit>), _b, (_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
