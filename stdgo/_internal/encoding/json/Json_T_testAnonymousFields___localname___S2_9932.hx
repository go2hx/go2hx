package stdgo._internal.encoding.json;
@:structInit class T_testAnonymousFields___localname___S2_9932 {
    public var _y : stdgo.GoInt = 0;
    public var y : stdgo.GoInt = 0;
    public function new(?_y:stdgo.GoInt, ?y:stdgo.GoInt) {
        if (_y != null) this._y = _y;
        if (y != null) this.y = y;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAnonymousFields___localname___S2_9932(_y, y);
    }
}