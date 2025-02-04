package stdgo._internal.debug.dwarf;
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_t_typeunitreader_static_extension.T_typeUnitReader_static_extension) class T_typeUnitReader {
    public var _d : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>);
    public var _tu : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_typeunit.T_typeUnit> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_typeunit.T_typeUnit>);
    public var _b : stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf = ({} : stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>, ?_tu:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_typeunit.T_typeUnit>, ?_b:stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf, ?_err:stdgo.Error) {
        if (_d != null) this._d = _d;
        if (_tu != null) this._tu = _tu;
        if (_b != null) this._b = _b;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_typeUnitReader(_d, _tu, _b, _err);
    }
}
