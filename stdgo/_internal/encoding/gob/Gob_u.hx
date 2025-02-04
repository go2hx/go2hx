package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_u_static_extension.U_static_extension) class U {
    public var a : stdgo.GoInt = 0;
    public var b : stdgo.GoString = "";
    public var _c : stdgo.GoFloat64 = 0;
    public var d : stdgo.GoUInt = 0;
    public function new(?a:stdgo.GoInt, ?b:stdgo.GoString, ?_c:stdgo.GoFloat64, ?d:stdgo.GoUInt) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (_c != null) this._c = _c;
        if (d != null) this.d = d;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new U(a, b, _c, d);
    }
}
