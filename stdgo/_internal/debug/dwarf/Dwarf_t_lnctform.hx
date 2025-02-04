package stdgo._internal.debug.dwarf;
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_t_lnctform_static_extension.T_lnctForm_static_extension) class T_lnctForm {
    public var _lnct : stdgo.GoInt = 0;
    public var _form : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format);
    public function new(?_lnct:stdgo.GoInt, ?_form:stdgo._internal.debug.dwarf.Dwarf_t_format.T_format) {
        if (_lnct != null) this._lnct = _lnct;
        if (_form != null) this._form = _form;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_lnctForm(_lnct, _form);
    }
}
