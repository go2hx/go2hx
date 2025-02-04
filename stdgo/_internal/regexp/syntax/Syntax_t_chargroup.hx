package stdgo._internal.regexp.syntax;
@:structInit @:using(stdgo._internal.regexp.syntax.Syntax_t_chargroup_static_extension.T_charGroup_static_extension) class T_charGroup {
    public var _sign : stdgo.GoInt = 0;
    public var _class : stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
    public function new(?_sign:stdgo.GoInt, ?_class:stdgo.Slice<stdgo.GoInt32>) {
        if (_sign != null) this._sign = _sign;
        if (_class != null) this._class = _class;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_charGroup(_sign, _class);
    }
}
