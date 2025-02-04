package stdgo._internal.hash.maphash;
@:structInit @:using(stdgo._internal.hash.maphash.Maphash_seed_static_extension.Seed_static_extension) class Seed {
    public var _s : stdgo.GoUInt64 = 0;
    public function new(?_s:stdgo.GoUInt64) {
        if (_s != null) this._s = _s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Seed(_s);
    }
}
