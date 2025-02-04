package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_10340_static_extension.T_testAnonymousFields___localname___S2_10340_static_extension) class T_testAnonymousFields___localname___S2_10340 {
    public var _y : stdgo.GoInt = 0;
    public var y : stdgo.GoInt = 0;
    public function new(?_y:stdgo.GoInt, ?y:stdgo.GoInt) {
        if (_y != null) this._y = _y;
        if (y != null) this.y = y;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAnonymousFields___localname___S2_10340(_y, y);
    }
}
