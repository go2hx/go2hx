package stdgo._internal.hash.maphash;
@:keep @:allow(stdgo._internal.hash.maphash.Maphash.Hash_asInterface) class Hash_static_extension {
    @:keep
    @:tdfield
    static public function blockSize( _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash>):stdgo.GoInt {
        @:recv var _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash> = _h;
        //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L277"
        return ((@:checkr _h ?? throw "null pointer dereference")._buf.length);
    }
    @:keep
    @:tdfield
    static public function size( _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash>):stdgo.GoInt {
        @:recv var _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash> = _h;
        //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L274"
        return (8 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function sum( _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash> = _h;
        var _x = (_h.sum64() : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L262"
        return (_b.__append__(((_x >> (0i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_x >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_x >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_x >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_x >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_x >> (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_x >> (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_x >> (56i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function sum64( _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash>):stdgo.GoUInt64 {
        @:recv var _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash> = _h;
        //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L239"
        _h._initSeed();
        //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L240"
        return stdgo._internal.hash.maphash.Maphash__rthash._rthash(((@:checkr _h ?? throw "null pointer dereference")._buf.__slice__(0, (@:checkr _h ?? throw "null pointer dereference")._n) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _h ?? throw "null pointer dereference")._state._s);
    }
    @:keep
    @:tdfield
    static public function _flush( _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash>):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash> = _h;
        //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L223"
        if ((@:checkr _h ?? throw "null pointer dereference")._n != (((@:checkr _h ?? throw "null pointer dereference")._buf.length))) {
            //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L224"
            throw stdgo.Go.toInterface(("maphash: flush of partially full buffer" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L226"
        _h._initSeed();
        (@:checkr _h ?? throw "null pointer dereference")._state._s = stdgo._internal.hash.maphash.Maphash__rthash._rthash(((@:checkr _h ?? throw "null pointer dereference")._buf.__slice__(0, (@:checkr _h ?? throw "null pointer dereference")._n) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _h ?? throw "null pointer dereference")._state._s);
        (@:checkr _h ?? throw "null pointer dereference")._n = (0 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function reset( _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash>):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash> = _h;
        //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L216"
        _h._initSeed();
        (@:checkr _h ?? throw "null pointer dereference")._state = (@:checkr _h ?? throw "null pointer dereference")._seed?.__copy__();
        (@:checkr _h ?? throw "null pointer dereference")._n = (0 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function setSeed( _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash>, _seed:stdgo._internal.hash.maphash.Maphash_seed.Seed):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash> = _h;
        //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L205"
        if (_seed._s == ((0i64 : stdgo.GoUInt64))) {
            //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L206"
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
        //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L195"
        _h._initSeed();
        //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L196"
        return (@:checkr _h ?? throw "null pointer dereference")._seed?.__copy__();
    }
    @:keep
    @:tdfield
    static public function writeString( _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash> = _h;
        var _size = (_s.length : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L172"
        if ((((@:checkr _h ?? throw "null pointer dereference")._n > (0 : stdgo.GoInt) : Bool) && ((@:checkr _h ?? throw "null pointer dereference")._n <= (128 : stdgo.GoInt) : Bool) : Bool)) {
            var _k = (((@:checkr _h ?? throw "null pointer dereference")._buf.__slice__((@:checkr _h ?? throw "null pointer dereference")._n) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_s) : stdgo.GoInt);
            (@:checkr _h ?? throw "null pointer dereference")._n = ((@:checkr _h ?? throw "null pointer dereference")._n + (_k) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L175"
            if (((@:checkr _h ?? throw "null pointer dereference")._n < (128 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L176"
                return { _0 : _size, _1 : (null : stdgo.Error) };
            };
            _s = (_s.__slice__(_k) : stdgo.GoString)?.__copy__();
            //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L179"
            _h._flush();
        };
        //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L181"
        if (((_s.length) > (128 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L182"
            _h._initSeed();
            //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L183"
            while (((_s.length) > (128 : stdgo.GoInt) : Bool)) {
                (@:checkr _h ?? throw "null pointer dereference")._state._s = stdgo._internal.hash.maphash.Maphash__rthashstring._rthashString((_s.__slice__(0, (128 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (@:checkr _h ?? throw "null pointer dereference")._state._s);
                _s = (_s.__slice__((128 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L188"
        ((@:checkr _h ?? throw "null pointer dereference")._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_s);
        (@:checkr _h ?? throw "null pointer dereference")._n = (_s.length);
        //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L190"
        return { _0 : _size, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function write( _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash> = _h;
        var _size = (_b.length : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L142"
        if ((((@:checkr _h ?? throw "null pointer dereference")._n > (0 : stdgo.GoInt) : Bool) && ((@:checkr _h ?? throw "null pointer dereference")._n <= (128 : stdgo.GoInt) : Bool) : Bool)) {
            var _k = (((@:checkr _h ?? throw "null pointer dereference")._buf.__slice__((@:checkr _h ?? throw "null pointer dereference")._n) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_b) : stdgo.GoInt);
            (@:checkr _h ?? throw "null pointer dereference")._n = ((@:checkr _h ?? throw "null pointer dereference")._n + (_k) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L145"
            if (((@:checkr _h ?? throw "null pointer dereference")._n < (128 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L147"
                return { _0 : _size, _1 : (null : stdgo.Error) };
            };
            _b = (_b.__slice__(_k) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L150"
            _h._flush();
        };
        //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L154"
        if (((_b.length) > (128 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L155"
            _h._initSeed();
            //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L156"
            while (((_b.length) > (128 : stdgo.GoInt) : Bool)) {
                (@:checkr _h ?? throw "null pointer dereference")._state._s = stdgo._internal.hash.maphash.Maphash__rthash._rthash((_b.__slice__(0, (128 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _h ?? throw "null pointer dereference")._state._s);
                _b = (_b.__slice__((128 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L162"
        ((@:checkr _h ?? throw "null pointer dereference")._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_b);
        (@:checkr _h ?? throw "null pointer dereference")._n = (_b.length);
        //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L164"
        return { _0 : _size, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function writeByte( _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash>, _b:stdgo.GoUInt8):stdgo.Error {
        @:recv var _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash> = _h;
        //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L127"
        if ((@:checkr _h ?? throw "null pointer dereference")._n == (((@:checkr _h ?? throw "null pointer dereference")._buf.length))) {
            //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L128"
            _h._flush();
        };
        (@:checkr _h ?? throw "null pointer dereference")._buf[((@:checkr _h ?? throw "null pointer dereference")._n : stdgo.GoInt)] = _b;
        //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L131"
        (@:checkr _h ?? throw "null pointer dereference")._n++;
        //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L132"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _initSeed( _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash>):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash> = _h;
        //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L117"
        if ((@:checkr _h ?? throw "null pointer dereference")._seed._s == ((0i64 : stdgo.GoUInt64))) {
            var _seed = (stdgo._internal.hash.maphash.Maphash_makeseed.makeSeed()?.__copy__() : stdgo._internal.hash.maphash.Maphash_seed.Seed);
            (@:checkr _h ?? throw "null pointer dereference")._seed = _seed?.__copy__();
            (@:checkr _h ?? throw "null pointer dereference")._state = _seed?.__copy__();
        };
    }
}
