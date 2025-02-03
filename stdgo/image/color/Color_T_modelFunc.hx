package stdgo.image.color;
@:structInit @:using(stdgo.image.color.Color.T_modelFunc_static_extension) abstract T_modelFunc(stdgo._internal.image.color.Color_T_modelFunc.T_modelFunc) from stdgo._internal.image.color.Color_T_modelFunc.T_modelFunc to stdgo._internal.image.color.Color_T_modelFunc.T_modelFunc {
    public var _f(get, set) : stdgo._internal.image.color.Color_Color.Color -> stdgo._internal.image.color.Color_Color.Color;
    function get__f():stdgo._internal.image.color.Color_Color.Color -> stdgo._internal.image.color.Color_Color.Color return _0 -> this._f(_0);
    function set__f(v:stdgo._internal.image.color.Color_Color.Color -> stdgo._internal.image.color.Color_Color.Color):stdgo._internal.image.color.Color_Color.Color -> stdgo._internal.image.color.Color_Color.Color {
        this._f = v;
        return v;
    }
    public function new(?_f:stdgo._internal.image.color.Color_Color.Color -> stdgo._internal.image.color.Color_Color.Color) this = new stdgo._internal.image.color.Color_T_modelFunc.T_modelFunc(_f);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
