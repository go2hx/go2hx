package stdgo._internal.image.color;
@:structInit @:using(stdgo._internal.image.color.Color_T_modelFunc_static_extension.T_modelFunc_static_extension) class T_modelFunc {
    public var _f : stdgo._internal.image.color.Color_Color.Color -> stdgo._internal.image.color.Color_Color.Color = null;
    public function new(?_f:stdgo._internal.image.color.Color_Color.Color -> stdgo._internal.image.color.Color_Color.Color) {
        if (_f != null) this._f = _f;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_modelFunc(_f);
    }
}