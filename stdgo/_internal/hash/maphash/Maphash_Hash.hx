package stdgo._internal.hash.maphash;
@:structInit @:using(stdgo._internal.hash.maphash.Maphash_Hash_static_extension.Hash_static_extension) class Hash {
    @:optional
    public var __1 : stdgo.GoArray<() -> Void> = new stdgo.GoArray<() -> Void>(0, 0);
    public var _seed : stdgo._internal.hash.maphash.Maphash_Seed.Seed = ({} : stdgo._internal.hash.maphash.Maphash_Seed.Seed);
    public var _state : stdgo._internal.hash.maphash.Maphash_Seed.Seed = ({} : stdgo._internal.hash.maphash.Maphash_Seed.Seed);
    public var _buf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(128, 128, ...[for (i in 0 ... 128) (0 : stdgo.GoUInt8)]);
    public var _n : stdgo.GoInt = 0;
    public function new(?__1:stdgo.GoArray<() -> Void>, ?_seed:stdgo._internal.hash.maphash.Maphash_Seed.Seed, ?_state:stdgo._internal.hash.maphash.Maphash_Seed.Seed, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_n:stdgo.GoInt) {
        if (__1 != null) this.__1 = __1;
        if (_seed != null) this._seed = _seed;
        if (_state != null) this._state = _state;
        if (_buf != null) this._buf = _buf;
        if (_n != null) this._n = _n;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Hash(__1, _seed, _state, _buf, _n);
    }
}
