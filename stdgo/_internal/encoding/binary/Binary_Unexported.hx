package stdgo._internal.encoding.binary;
@:structInit class Unexported {
    public var _a : stdgo.GoInt32 = 0;
    public function new(?_a:stdgo.GoInt32) {
        if (_a != null) this._a = _a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Unexported(_a);
    }
}