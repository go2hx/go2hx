package stdgo._internal.internal.coverage.cformat;
@:structInit @:using(stdgo._internal.internal.coverage.cformat.Cformat_t_fnfile_static_extension.T_fnfile_static_extension) class T_fnfile {
    public var _file : stdgo.GoString = "";
    public var _fname : stdgo.GoString = "";
    public var _lit : Bool = false;
    public function new(?_file:stdgo.GoString, ?_fname:stdgo.GoString, ?_lit:Bool) {
        if (_file != null) this._file = _file;
        if (_fname != null) this._fname = _fname;
        if (_lit != null) this._lit = _lit;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fnfile(_file, _fname, _lit);
    }
}
