package stdgo._internal.debug.macho;
@:structInit @:using(stdgo._internal.debug.macho.Macho_t_intname_static_extension.T_intName_static_extension) class T_intName {
    public var _i : stdgo.GoUInt32 = 0;
    public var _s : stdgo.GoString = "";
    public function new(?_i:stdgo.GoUInt32, ?_s:stdgo.GoString) {
        if (_i != null) this._i = _i;
        if (_s != null) this._s = _s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_intName(_i, _s);
    }
}
