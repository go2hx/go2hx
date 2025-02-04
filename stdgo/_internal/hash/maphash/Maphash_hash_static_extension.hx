package stdgo._internal.hash.maphash;
@:keep @:allow(stdgo._internal.hash.maphash.Maphash.Hash_asInterface) class Hash_static_extension {
    @:keep
    @:tdfield
    static public function blockSize( _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash>):stdgo.GoInt {
        @:recv var _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash> = _h;
        return ((@:checkr _h ?? throw "null pointer dereference")._buf.length);
    }
    @:keep
    @:tdfield
    static public function size( _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash>):stdgo.GoInt {
        @:recv var _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash> = _h;
        return (8 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function sum( _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash> = _h;
        var _x = (@:check2r _h.sum64() : stdgo.GoUInt64);
        return (_b.__append__(((_x >> (0i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_x >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_x >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_x >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_x >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_x >> (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_x >> (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_x >> (56i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8)));
    }
    @:keep
    @:tdfield
    static public function sum64( _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash>):stdgo.GoUInt64 {
        @:recv var _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash> = _h;
        @:check2r _h._initSeed();
        return stdgo._internal.hash.maphash.Maphash__rthash._rthash(((@:checkr _h ?? throw "null pointer dereference")._buf.__slice__(0, (@:checkr _h ?? throw "null pointer dereference")._n) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _h ?? throw "null pointer dereference")._state._s);
    }
    @:keep
    @:tdfield
    static public function _flush( _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash>):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash> = _h;
        if ((@:checkr _h ?? throw "null pointer dereference")._n != (((@:checkr _h ?? throw "null pointer dereference")._buf.length))) {
            throw stdgo.Go.toInterface(("maphash: flush of partially full buffer" : stdgo.GoString));
        };
        @:check2r _h._initSeed();
        (@:checkr _h ?? throw "null pointer dereference")._state._s = stdgo._internal.hash.maphash.Maphash__rthash._rthash(((@:checkr _h ?? throw "null pointer dereference")._buf.__slice__(0, (@:checkr _h ?? throw "null pointer dereference")._n) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _h ?? throw "null pointer dereference")._state._s);
        (@:checkr _h ?? throw "null pointer dereference")._n = (0 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function reset( _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash>):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash> = _h;
        @:check2r _h._initSeed();
        (@:checkr _h ?? throw "null pointer dereference")._state = (@:checkr _h ?? throw "null pointer dereference")._seed?.__copy__();
        (@:checkr _h ?? throw "null pointer dereference")._n = (0 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function setSeed( _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash>, _seed:stdgo._internal.hash.maphash.Maphash_seed.Seed):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash> = _h;
        if (_seed._s == ((0i64 : stdgo.GoUInt64))) {
            throw stdgo.Go.toInterface(("maphash: use of uninitialized Seed" : stdgo.GoString));
        };
        (@:checkr _h ?? throw "null pointer dereference")._seed = _seed?.__copy__();
        (@:checkr _h ?? throw "null pointer dereference")._state = _seed?.__copy__();
        (@:checkr _h ?? throw "null pointer dereference")._n = (0 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function seed( _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash>):stdgo._internal.hash.maphash.Maphash_seed.Seed {
        @:recv var _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash> = _h;
        @:check2r _h._initSeed();
        return (@:checkr _h ?? throw "null pointer dereference")._seed?.__copy__();
    }
    @:keep
    @:tdfield
    static public function writeString( _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash> = _h;
        var _size = (_s.length : stdgo.GoInt);
        if ((((@:checkr _h ?? throw "null pointer dereference")._n > (0 : stdgo.GoInt) : Bool) && ((@:checkr _h ?? throw "null pointer dereference")._n <= (128 : stdgo.GoInt) : Bool) : Bool)) {
            var _k = (((@:checkr _h ?? throw "null pointer dereference")._buf.__slice__((@:checkr _h ?? throw "null pointer dereference")._n) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_s) : stdgo.GoInt);
            (@:checkr _h ?? throw "null pointer dereference")._n = ((@:checkr _h ?? throw "null pointer dereference")._n + (_k) : stdgo.GoInt);
            if (((@:checkr _h ?? throw "null pointer dereference")._n < (128 : stdgo.GoInt) : Bool)) {
                return { _0 : _size, _1 : (null : stdgo.Error) };
            };
            _s = (_s.__slice__(_k) : stdgo.GoString)?.__copy__();
            @:check2r _h._flush();
        };
        if (((_s.length) > (128 : stdgo.GoInt) : Bool)) {
            @:check2r _h._initSeed();
            while (((_s.length) > (128 : stdgo.GoInt) : Bool)) {
                (@:checkr _h ?? throw "null pointer dereference")._state._s = stdgo._internal.hash.maphash.Maphash__rthashstring._rthashString((_s.__slice__(0, (128 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (@:checkr _h ?? throw "null pointer dereference")._state._s);
                _s = (_s.__slice__((128 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            };
        };
        ((@:checkr _h ?? throw "null pointer dereference")._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_s);
        (@:checkr _h ?? throw "null pointer dereference")._n = (_s.length);
        return { _0 : _size, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function write( _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash> = _h;
        var _size = (_b.length : stdgo.GoInt);
        if ((((@:checkr _h ?? throw "null pointer dereference")._n > (0 : stdgo.GoInt) : Bool) && ((@:checkr _h ?? throw "null pointer dereference")._n <= (128 : stdgo.GoInt) : Bool) : Bool)) {
            var _k = (((@:checkr _h ?? throw "null pointer dereference")._buf.__slice__((@:checkr _h ?? throw "null pointer dereference")._n) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_b) : stdgo.GoInt);
            (@:checkr _h ?? throw "null pointer dereference")._n = ((@:checkr _h ?? throw "null pointer dereference")._n + (_k) : stdgo.GoInt);
            if (((@:checkr _h ?? throw "null pointer dereference")._n < (128 : stdgo.GoInt) : Bool)) {
                return { _0 : _size, _1 : (null : stdgo.Error) };
            };
            _b = (_b.__slice__(_k) : stdgo.Slice<stdgo.GoUInt8>);
            @:check2r _h._flush();
        };
        if (((_b.length) > (128 : stdgo.GoInt) : Bool)) {
            @:check2r _h._initSeed();
            while (((_b.length) > (128 : stdgo.GoInt) : Bool)) {
                (@:checkr _h ?? throw "null pointer dereference")._state._s = stdgo._internal.hash.maphash.Maphash__rthash._rthash((_b.__slice__(0, (128 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _h ?? throw "null pointer dereference")._state._s);
                _b = (_b.__slice__((128 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        ((@:checkr _h ?? throw "null pointer dereference")._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_b);
        (@:checkr _h ?? throw "null pointer dereference")._n = (_b.length);
        return { _0 : _size, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function writeByte( _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash>, _b:stdgo.GoUInt8):stdgo.Error {
        @:recv var _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash> = _h;
        if ((@:checkr _h ?? throw "null pointer dereference")._n == (((@:checkr _h ?? throw "null pointer dereference")._buf.length))) {
            @:check2r _h._flush();
        };
        (@:checkr _h ?? throw "null pointer dereference")._buf[((@:checkr _h ?? throw "null pointer dereference")._n : stdgo.GoInt)] = _b;
        (@:checkr _h ?? throw "null pointer dereference")._n++;
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _initSeed( _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash>):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash> = _h;
        if ((@:checkr _h ?? throw "null pointer dereference")._seed._s == ((0i64 : stdgo.GoUInt64))) {
            var _seed = (stdgo._internal.hash.maphash.Maphash_makeseed.makeSeed()?.__copy__() : stdgo._internal.hash.maphash.Maphash_seed.Seed);
            (@:checkr _h ?? throw "null pointer dereference")._seed = _seed?.__copy__();
            (@:checkr _h ?? throw "null pointer dereference")._state = _seed?.__copy__();
        };
    }
}
