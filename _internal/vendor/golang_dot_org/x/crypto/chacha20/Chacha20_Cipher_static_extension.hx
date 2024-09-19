package _internal.vendor.golang_dot_org.x.crypto.chacha20;
@:keep @:allow(_internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20.Cipher_asInterface) class Cipher_static_extension {
    @:keep
    static public function _xorKeyStreamBlocks( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20_Cipher.Cipher>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20_Cipher.Cipher> = _s;
        _s._xorKeyStreamBlocksGeneric(_dst, _src);
    }
    @:keep
    static public function _xorKeyStreamBlocksGeneric( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20_Cipher.Cipher>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20_Cipher.Cipher> = _s;
        if (((_dst.length != (_src.length)) || (((_dst.length) % (64 : stdgo.GoInt) : stdgo.GoInt) != (0 : stdgo.GoInt)) : Bool)) {
            throw stdgo.Go.toInterface(("chacha20: internal error: wrong dst and/or src length" : stdgo.GoString));
        };
        var __0:stdgo.GoUInt32 = (1634760805u32 : stdgo.GoUInt32), __1:stdgo.GoUInt32 = (857760878u32 : stdgo.GoUInt32), __2:stdgo.GoUInt32 = (2036477234u32 : stdgo.GoUInt32), __3:stdgo.GoUInt32 = (1797285236u32 : stdgo.GoUInt32), __4:stdgo.GoUInt32 = _s._key[(0 : stdgo.GoInt)], __5:stdgo.GoUInt32 = _s._key[(1 : stdgo.GoInt)], __6:stdgo.GoUInt32 = _s._key[(2 : stdgo.GoInt)], __7:stdgo.GoUInt32 = _s._key[(3 : stdgo.GoInt)], __8:stdgo.GoUInt32 = _s._key[(4 : stdgo.GoInt)], __9:stdgo.GoUInt32 = _s._key[(5 : stdgo.GoInt)], __10:stdgo.GoUInt32 = _s._key[(6 : stdgo.GoInt)], __11:stdgo.GoUInt32 = _s._key[(7 : stdgo.GoInt)], __12:stdgo.GoUInt32 = _s._counter, __13:stdgo.GoUInt32 = _s._nonce[(0 : stdgo.GoInt)], __14:stdgo.GoUInt32 = _s._nonce[(1 : stdgo.GoInt)], __15:stdgo.GoUInt32 = _s._nonce[(2 : stdgo.GoInt)];
var _c15 = __15, _c14 = __14, _c13 = __13, __2 = __12, _c11 = __11, _c10 = __10, _c9 = __9, _c8 = __8, _c7 = __7, _c6 = __6, _c5 = __5, _c4 = __4, _c3 = __3, _c2 = __2, _c1 = __1, _c0 = __0;
        if (!_s._precompDone) {
            {
                var __tmp__ = _internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20__quarterRound._quarterRound(_c1, _c5, _c9, _c13);
                _s._p1 = __tmp__._0;
                _s._p5 = __tmp__._1;
                _s._p9 = __tmp__._2;
                _s._p13 = __tmp__._3;
            };
            {
                var __tmp__ = _internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20__quarterRound._quarterRound(_c2, _c6, _c10, _c14);
                _s._p2 = __tmp__._0;
                _s._p6 = __tmp__._1;
                _s._p10 = __tmp__._2;
                _s._p14 = __tmp__._3;
            };
            {
                var __tmp__ = _internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20__quarterRound._quarterRound(_c3, _c7, _c11, _c15);
                _s._p3 = __tmp__._0;
                _s._p7 = __tmp__._1;
                _s._p11 = __tmp__._2;
                _s._p15 = __tmp__._3;
            };
            _s._precompDone = true;
        };
        while ((((_src.length) >= (64 : stdgo.GoInt) : Bool) && ((_dst.length) >= (64 : stdgo.GoInt) : Bool) : Bool)) {
            var __tmp__ = _internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20__quarterRound._quarterRound(_c0, _c4, _c8, _s._counter), _fcr0:stdgo.GoUInt32 = __tmp__._0, _fcr4:stdgo.GoUInt32 = __tmp__._1, _fcr8:stdgo.GoUInt32 = __tmp__._2, _fcr12:stdgo.GoUInt32 = __tmp__._3;
            var __tmp__ = _internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20__quarterRound._quarterRound(_fcr0, _s._p5, _s._p10, _s._p15), _x0:stdgo.GoUInt32 = __tmp__._0, _x5:stdgo.GoUInt32 = __tmp__._1, _x10:stdgo.GoUInt32 = __tmp__._2, _x15:stdgo.GoUInt32 = __tmp__._3;
            var __tmp__ = _internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20__quarterRound._quarterRound(_s._p1, _s._p6, _s._p11, _fcr12), _x1:stdgo.GoUInt32 = __tmp__._0, _x6:stdgo.GoUInt32 = __tmp__._1, _x11:stdgo.GoUInt32 = __tmp__._2, _x12:stdgo.GoUInt32 = __tmp__._3;
            var __tmp__ = _internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20__quarterRound._quarterRound(_s._p2, _s._p7, _fcr8, _s._p13), _x2:stdgo.GoUInt32 = __tmp__._0, _x7:stdgo.GoUInt32 = __tmp__._1, _x8:stdgo.GoUInt32 = __tmp__._2, _x13:stdgo.GoUInt32 = __tmp__._3;
            var __tmp__ = _internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20__quarterRound._quarterRound(_s._p3, _fcr4, _s._p9, _s._p14), _x3:stdgo.GoUInt32 = __tmp__._0, _x4:stdgo.GoUInt32 = __tmp__._1, _x9:stdgo.GoUInt32 = __tmp__._2, _x14:stdgo.GoUInt32 = __tmp__._3;
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (9 : stdgo.GoInt) : Bool), _i++, {
                    {
                        var __tmp__ = _internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20__quarterRound._quarterRound(_x0, _x4, _x8, _x12);
                        _x0 = __tmp__._0;
                        _x4 = __tmp__._1;
                        _x8 = __tmp__._2;
                        _x12 = __tmp__._3;
                    };
                    {
                        var __tmp__ = _internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20__quarterRound._quarterRound(_x1, _x5, _x9, _x13);
                        _x1 = __tmp__._0;
                        _x5 = __tmp__._1;
                        _x9 = __tmp__._2;
                        _x13 = __tmp__._3;
                    };
                    {
                        var __tmp__ = _internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20__quarterRound._quarterRound(_x2, _x6, _x10, _x14);
                        _x2 = __tmp__._0;
                        _x6 = __tmp__._1;
                        _x10 = __tmp__._2;
                        _x14 = __tmp__._3;
                    };
                    {
                        var __tmp__ = _internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20__quarterRound._quarterRound(_x3, _x7, _x11, _x15);
                        _x3 = __tmp__._0;
                        _x7 = __tmp__._1;
                        _x11 = __tmp__._2;
                        _x15 = __tmp__._3;
                    };
                    {
                        var __tmp__ = _internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20__quarterRound._quarterRound(_x0, _x5, _x10, _x15);
                        _x0 = __tmp__._0;
                        _x5 = __tmp__._1;
                        _x10 = __tmp__._2;
                        _x15 = __tmp__._3;
                    };
                    {
                        var __tmp__ = _internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20__quarterRound._quarterRound(_x1, _x6, _x11, _x12);
                        _x1 = __tmp__._0;
                        _x6 = __tmp__._1;
                        _x11 = __tmp__._2;
                        _x12 = __tmp__._3;
                    };
                    {
                        var __tmp__ = _internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20__quarterRound._quarterRound(_x2, _x7, _x8, _x13);
                        _x2 = __tmp__._0;
                        _x7 = __tmp__._1;
                        _x8 = __tmp__._2;
                        _x13 = __tmp__._3;
                    };
                    {
                        var __tmp__ = _internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20__quarterRound._quarterRound(_x3, _x4, _x9, _x14);
                        _x3 = __tmp__._0;
                        _x4 = __tmp__._1;
                        _x9 = __tmp__._2;
                        _x14 = __tmp__._3;
                    };
                });
            };
            _internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20__addXor._addXor((_dst.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x0, _c0);
            _internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20__addXor._addXor((_dst.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x1, _c1);
            _internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20__addXor._addXor((_dst.__slice__((8 : stdgo.GoInt), (12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__((8 : stdgo.GoInt), (12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x2, _c2);
            _internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20__addXor._addXor((_dst.__slice__((12 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__((12 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x3, _c3);
            _internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20__addXor._addXor((_dst.__slice__((16 : stdgo.GoInt), (20 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__((16 : stdgo.GoInt), (20 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x4, _c4);
            _internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20__addXor._addXor((_dst.__slice__((20 : stdgo.GoInt), (24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__((20 : stdgo.GoInt), (24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x5, _c5);
            _internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20__addXor._addXor((_dst.__slice__((24 : stdgo.GoInt), (28 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__((24 : stdgo.GoInt), (28 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x6, _c6);
            _internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20__addXor._addXor((_dst.__slice__((28 : stdgo.GoInt), (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__((28 : stdgo.GoInt), (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x7, _c7);
            _internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20__addXor._addXor((_dst.__slice__((32 : stdgo.GoInt), (36 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__((32 : stdgo.GoInt), (36 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x8, _c8);
            _internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20__addXor._addXor((_dst.__slice__((36 : stdgo.GoInt), (40 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__((36 : stdgo.GoInt), (40 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x9, _c9);
            _internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20__addXor._addXor((_dst.__slice__((40 : stdgo.GoInt), (44 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__((40 : stdgo.GoInt), (44 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x10, _c10);
            _internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20__addXor._addXor((_dst.__slice__((44 : stdgo.GoInt), (48 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__((44 : stdgo.GoInt), (48 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x11, _c11);
            _internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20__addXor._addXor((_dst.__slice__((48 : stdgo.GoInt), (52 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__((48 : stdgo.GoInt), (52 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x12, _s._counter);
            _internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20__addXor._addXor((_dst.__slice__((52 : stdgo.GoInt), (56 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__((52 : stdgo.GoInt), (56 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x13, _c13);
            _internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20__addXor._addXor((_dst.__slice__((56 : stdgo.GoInt), (60 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__((56 : stdgo.GoInt), (60 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x14, _c14);
            _internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20__addXor._addXor((_dst.__slice__((60 : stdgo.GoInt), (64 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__((60 : stdgo.GoInt), (64 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x15, _c15);
            _s._counter = (_s._counter + ((1u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
            {
                final __tmp__0 = (_src.__slice__((64 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                final __tmp__1 = (_dst.__slice__((64 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                _src = __tmp__0;
                _dst = __tmp__1;
            };
        };
    }
    @:keep
    static public function xorkeyStream( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20_Cipher.Cipher>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20_Cipher.Cipher> = _s;
        if ((_src.length) == ((0 : stdgo.GoInt))) {
            return;
        };
        if (((_dst.length) < (_src.length) : Bool)) {
            throw stdgo.Go.toInterface(("chacha20: output smaller than input" : stdgo.GoString));
        };
        _dst = (_dst.__slice__(0, (_src.length)) : stdgo.Slice<stdgo.GoUInt8>);
        if (_internal.golang_dot_org.x.crypto.internal.alias.Alias_inexactOverlap.inexactOverlap(_dst, _src)) {
            throw stdgo.Go.toInterface(("chacha20: invalid buffer overlap" : stdgo.GoString));
        };
        if (_s._len != ((0 : stdgo.GoInt))) {
            var _keyStream = (_s._buf.__slice__(((64 : stdgo.GoInt) - _s._len : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            if (((_src.length) < (_keyStream.length) : Bool)) {
                _keyStream = (_keyStream.__slice__(0, (_src.length)) : stdgo.Slice<stdgo.GoUInt8>);
            };
            var __blank__ = _src[((_keyStream.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
            for (_i => _b in _keyStream) {
                _dst[(_i : stdgo.GoInt)] = (_src[(_i : stdgo.GoInt)] ^ _b : stdgo.GoUInt8);
            };
            _s._len = (_s._len - ((_keyStream.length)) : stdgo.GoInt);
            {
                final __tmp__0 = (_dst.__slice__((_keyStream.length)) : stdgo.Slice<stdgo.GoUInt8>);
                final __tmp__1 = (_src.__slice__((_keyStream.length)) : stdgo.Slice<stdgo.GoUInt8>);
                _dst = __tmp__0;
                _src = __tmp__1;
            };
        };
        if ((_src.length) == ((0 : stdgo.GoInt))) {
            return;
        };
        var _numBlocks = (((((_src.length : stdgo.GoUInt64) + (64i64 : stdgo.GoUInt64) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) / (64i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        if ((_s._overflow || (((_s._counter : stdgo.GoUInt64) + _numBlocks : stdgo.GoUInt64) > (4294967296i64 : stdgo.GoUInt64) : Bool) : Bool)) {
            throw stdgo.Go.toInterface(("chacha20: counter overflow" : stdgo.GoString));
        } else if (((_s._counter : stdgo.GoUInt64) + _numBlocks : stdgo.GoUInt64) == ((4294967296i64 : stdgo.GoUInt64))) {
            _s._overflow = true;
        };
        var _full = ((_src.length) - ((_src.length) % (64 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
        if ((_full > (0 : stdgo.GoInt) : Bool)) {
            _s._xorKeyStreamBlocks((_dst.__slice__(0, _full) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__(0, _full) : stdgo.Slice<stdgo.GoUInt8>));
        };
        {
            final __tmp__0 = (_dst.__slice__(_full) : stdgo.Slice<stdgo.GoUInt8>);
            final __tmp__1 = (_src.__slice__(_full) : stdgo.Slice<stdgo.GoUInt8>);
            _dst = __tmp__0;
            _src = __tmp__1;
        };
        {};
        if ((((_s._counter : stdgo.GoUInt64) + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) > (4294967296i64 : stdgo.GoUInt64) : Bool)) {
            _s._buf = (new stdgo.GoArray<stdgo.GoUInt8>(64, 64, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__();
            var _numBlocks = (((((_src.length) + (64 : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) / (64 : stdgo.GoInt) : stdgo.GoInt);
            var _buf = (_s._buf.__slice__(((64 : stdgo.GoInt) - (_numBlocks * (64 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            stdgo.Go.copySlice(_buf, _src);
            _s._xorKeyStreamBlocksGeneric(_buf, _buf);
            _s._len = ((_buf.length) - stdgo.Go.copySlice(_dst, _buf) : stdgo.GoInt);
            return;
        };
        if (((_src.length) > (0 : stdgo.GoInt) : Bool)) {
            _s._buf = (new stdgo.GoArray<stdgo.GoUInt8>(64, 64, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__();
            stdgo.Go.copySlice((_s._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _src);
            _s._xorKeyStreamBlocks((_s._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_s._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
            _s._len = ((64 : stdgo.GoInt) - stdgo.Go.copySlice(_dst, (_s._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
        };
    }
    @:keep
    static public function setCounter( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20_Cipher.Cipher>, _counter:stdgo.GoUInt32):Void {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20_Cipher.Cipher> = _s;
        var _outputCounter = (_s._counter - ((_s._len : stdgo.GoUInt32) / (64u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32);
        if ((_s._overflow || (_counter < _outputCounter : Bool) : Bool)) {
            throw stdgo.Go.toInterface(("chacha20: SetCounter attempted to rollback counter" : stdgo.GoString));
        };
        if ((_counter < _s._counter : Bool)) {
            _s._len = (((_s._counter - _counter : stdgo.GoUInt32) : stdgo.GoInt) * (64 : stdgo.GoInt) : stdgo.GoInt);
        } else {
            _s._counter = _counter;
            _s._len = (0 : stdgo.GoInt);
        };
    }
}
