package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_8122_static_extension.T_testAnonymousFields___localname___S1_8122_static_extension) class T_testAnonymousFields___localname___S1_8122 {
    public var _x : stdgo.GoInt = 0;
    public var x : stdgo.GoInt = 0;
    public function new(?_x:stdgo.GoInt, ?x:stdgo.GoInt) {
        if (_x != null) this._x = _x;
        if (x != null) this.x = x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAnonymousFields___localname___S1_8122(_x, x);
    }
}
