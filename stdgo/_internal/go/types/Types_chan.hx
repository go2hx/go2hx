package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_chan_static_extension.Chan_static_extension) class Chan {
    public var _dir : stdgo._internal.go.types.Types_chandir.ChanDir = ((0 : stdgo.GoInt) : stdgo._internal.go.types.Types_chandir.ChanDir);
    public var _elem : stdgo._internal.go.types.Types_type_.Type_ = (null : stdgo._internal.go.types.Types_type_.Type_);
    public function new(?_dir:stdgo._internal.go.types.Types_chandir.ChanDir, ?_elem:stdgo._internal.go.types.Types_type_.Type_) {
        if (_dir != null) this._dir = _dir;
        if (_elem != null) this._elem = _elem;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Chan(_dir, _elem);
    }
}
