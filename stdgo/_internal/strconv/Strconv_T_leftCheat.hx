package stdgo._internal.strconv;
@:structInit class T_leftCheat {
    public var _delta : stdgo.GoInt = 0;
    public var _cutoff : stdgo.GoString = "";
    public function new(?_delta:stdgo.GoInt, ?_cutoff:stdgo.GoString) {
        if (_delta != null) this._delta = _delta;
        if (_cutoff != null) this._cutoff = _cutoff;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_leftCheat(_delta, _cutoff);
    }
}
