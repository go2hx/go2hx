package stdgo._internal.debug.dwarf;
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_reader_static_extension.Reader_static_extension) class Reader {
    public var _b : stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf = ({} : stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf);
    public var _d : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _unit : stdgo.GoInt = 0;
    public var _lastUnit : Bool = false;
    public var _lastChildren : Bool = false;
    public var _lastSibling : stdgo._internal.debug.dwarf.Dwarf_offset.Offset = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
    public var _cu : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>);
    public function new(?_b:stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf, ?_d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>, ?_err:stdgo.Error, ?_unit:stdgo.GoInt, ?_lastUnit:Bool, ?_lastChildren:Bool, ?_lastSibling:stdgo._internal.debug.dwarf.Dwarf_offset.Offset, ?_cu:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>) {
        if (_b != null) this._b = _b;
        if (_d != null) this._d = _d;
        if (_err != null) this._err = _err;
        if (_unit != null) this._unit = _unit;
        if (_lastUnit != null) this._lastUnit = _lastUnit;
        if (_lastChildren != null) this._lastChildren = _lastChildren;
        if (_lastSibling != null) this._lastSibling = _lastSibling;
        if (_cu != null) this._cu = _cu;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Reader(_b, _d, _err, _unit, _lastUnit, _lastChildren, _lastSibling, _cu);
    }
}
