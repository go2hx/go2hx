package stdgo.debug.dwarf;
@:structInit @:using(stdgo.debug.dwarf.Dwarf.T_lnctForm_static_extension) abstract T_lnctForm(stdgo._internal.debug.dwarf.Dwarf_T_lnctForm.T_lnctForm) from stdgo._internal.debug.dwarf.Dwarf_T_lnctForm.T_lnctForm to stdgo._internal.debug.dwarf.Dwarf_T_lnctForm.T_lnctForm {
    public var _lnct(get, set) : StdTypes.Int;
    function get__lnct():StdTypes.Int return this._lnct;
    function set__lnct(v:StdTypes.Int):StdTypes.Int {
        this._lnct = (v : stdgo.GoInt);
        return v;
    }
    public var _form(get, set) : T_format;
    function get__form():T_format return this._form;
    function set__form(v:T_format):T_format {
        this._form = v;
        return v;
    }
    public function new(?_lnct:StdTypes.Int, ?_form:T_format) this = new stdgo._internal.debug.dwarf.Dwarf_T_lnctForm.T_lnctForm((_lnct : stdgo.GoInt), _form);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
