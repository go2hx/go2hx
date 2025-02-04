package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_bug4secret_static_extension.Bug4Secret_static_extension) class Bug4Secret {
    public var _a : stdgo.GoInt = 0;
    public function new(?_a:stdgo.GoInt) {
        if (_a != null) this._a = _a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Bug4Secret(_a);
    }
}
