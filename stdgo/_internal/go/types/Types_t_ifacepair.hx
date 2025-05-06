package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_t_ifacepair_static_extension.T_ifacePair_static_extension) class T_ifacePair {
    public var _x : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>);
    public var _y : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>);
    public var _prev : stdgo.Ref<stdgo._internal.go.types.Types_t_ifacepair.T_ifacePair> = (null : stdgo.Ref<stdgo._internal.go.types.Types_t_ifacepair.T_ifacePair>);
    public function new(?_x:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>, ?_y:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>, ?_prev:stdgo.Ref<stdgo._internal.go.types.Types_t_ifacepair.T_ifacePair>) {
        if (_x != null) this._x = _x;
        if (_y != null) this._y = _y;
        if (_prev != null) this._prev = _prev;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ifacePair(_x, _y, _prev);
    }
}
