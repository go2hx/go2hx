package stdgo._internal.hash.maphash;
@:keep @:allow(stdgo._internal.hash.maphash.Maphash.Hash_asInterface) class Hash_static_extension {
    @:keep
    static public function blockSize( _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_Hash.Hash>):stdgo.GoInt {
        @:recv var _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_Hash.Hash> = _h;
        return (_h._buf.length);
    }
    @:keep
    static public function size( _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_Hash.Hash>):stdgo.GoInt {
        @:recv var _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_Hash.Hash> = _h;
        return (8 : stdgo.GoInt);
    }
    @:keep
    static public function sum( _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_Hash.Hash>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_Hash.Hash> = _h;
        var _x = (_h.sum64() : stdgo.GoUInt64);
        return (_b.__append__(((_x >> (0i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_x >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_x >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_x >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_x >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_x >> (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_x >> (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_x >> (56i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8)));
    }
    @:keep
    static public function sum64( _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_Hash.Hash>):stdgo.GoUInt64 {
        @:recv var _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_Hash.Hash> = _h;
        _h._initSeed();
        return stdgo._internal.hash.maphash.Maphash__rthash._rthash((_h._buf.__slice__(0, _h._n) : stdgo.Slice<stdgo.GoUInt8>), _h._state._s);
    }
    @:keep
    static public function _flush( _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_Hash.Hash>):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_Hash.Hash> = _h;
        if (_h._n != ((_h._buf.length))) {
            throw stdgo.Go.toInterface(("maphash: flush of partially full buffer" : stdgo.GoString));
        };
        _h._initSeed();
        _h._state._s = stdgo._internal.hash.maphash.Maphash__rthash._rthash((_h._buf.__slice__(0, _h._n) : stdgo.Slice<stdgo.GoUInt8>), _h._state._s);
        _h._n = (0 : stdgo.GoInt);
    }
    @:keep
    static public function reset( _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_Hash.Hash>):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_Hash.Hash> = _h;
        _h._initSeed();
        _h._state = _h._seed?.__copy__();
        _h._n = (0 : stdgo.GoInt);
    }
    @:keep
    static public function setSeed( _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_Hash.Hash>, _seed:stdgo._internal.hash.maphash.Maphash_Seed.Seed):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_Hash.Hash> = _h;
        if (_seed._s == ((0i64 : stdgo.GoUInt64))) {
            throw stdgo.Go.toInterface(("maphash: use of uninitialized Seed" : stdgo.GoString));
        };
        _h._seed = _seed?.__copy__();
        _h._state = _seed?.__copy__();
        _h._n = (0 : stdgo.GoInt);
    }
    @:keep
    static public function seed( _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_Hash.Hash>):stdgo._internal.hash.maphash.Maphash_Seed.Seed {
        @:recv var _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_Hash.Hash> = _h;
        _h._initSeed();
        return _h._seed?.__copy__();
    }
    @:keep
    static public function writeString( _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_Hash.Hash>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_Hash.Hash> = _h;
        var _size = (_s.length : stdgo.GoInt);
        if (((_h._n > (0 : stdgo.GoInt) : Bool) && (_h._n <= (128 : stdgo.GoInt) : Bool) : Bool)) {
            var _k = ((_h._buf.__slice__(_h._n) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_s) : stdgo.GoInt);
            _h._n = (_h._n + (_k) : stdgo.GoInt);
            if ((_h._n < (128 : stdgo.GoInt) : Bool)) {
                return { _0 : _size, _1 : (null : stdgo.Error) };
            };
            _s = (_s.__slice__(_k) : stdgo.GoString)?.__copy__();
            _h._flush();
        };
        if (((_s.length) > (128 : stdgo.GoInt) : Bool)) {
            _h._initSeed();
            while (((_s.length) > (128 : stdgo.GoInt) : Bool)) {
                _h._state._s = stdgo._internal.hash.maphash.Maphash__rthashString._rthashString((_s.__slice__(0, (128 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _h._state._s);
                _s = (_s.__slice__((128 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            };
        };
        (_h._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_s);
        _h._n = (_s.length);
        return { _0 : _size, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function write( _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_Hash.Hash>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_Hash.Hash> = _h;
        var _size = (_b.length : stdgo.GoInt);
        if (((_h._n > (0 : stdgo.GoInt) : Bool) && (_h._n <= (128 : stdgo.GoInt) : Bool) : Bool)) {
            var _k = ((_h._buf.__slice__(_h._n) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_b) : stdgo.GoInt);
            _h._n = (_h._n + (_k) : stdgo.GoInt);
            if ((_h._n < (128 : stdgo.GoInt) : Bool)) {
                return { _0 : _size, _1 : (null : stdgo.Error) };
            };
            _b = (_b.__slice__(_k) : stdgo.Slice<stdgo.GoUInt8>);
            _h._flush();
        };
        if (((_b.length) > (128 : stdgo.GoInt) : Bool)) {
            _h._initSeed();
            while (((_b.length) > (128 : stdgo.GoInt) : Bool)) {
                _h._state._s = stdgo._internal.hash.maphash.Maphash__rthash._rthash((_b.__slice__(0, (128 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _h._state._s);
                _b = (_b.__slice__((128 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        (_h._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_b);
        _h._n = (_b.length);
        return { _0 : _size, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function writeByte( _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_Hash.Hash>, _b:stdgo.GoUInt8):stdgo.Error {
        @:recv var _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_Hash.Hash> = _h;
        if (_h._n == ((_h._buf.length))) {
            _h._flush();
        };
        _h._buf[(_h._n : stdgo.GoInt)] = _b;
        _h._n++;
        return (null : stdgo.Error);
    }
    @:keep
    static public function _initSeed( _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_Hash.Hash>):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_Hash.Hash> = _h;
        if (_h._seed._s == ((0i64 : stdgo.GoUInt64))) {
            var _seed = (stdgo._internal.hash.maphash.Maphash_makeSeed.makeSeed()?.__copy__() : stdgo._internal.hash.maphash.Maphash_Seed.Seed);
            _h._seed = _seed?.__copy__();
            _h._state = _seed?.__copy__();
        };
    }
}
