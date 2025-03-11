package stdgo._internal.crypto.sha512;
@:keep @:allow(stdgo._internal.crypto.sha512.Sha512.T_digest_asInterface) class T_digest_static_extension {
    @:keep
    @:tdfield
    static public function _checkSum( _d:stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest>):stdgo.GoArray<stdgo.GoUInt8> {
        @:recv var _d:stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest> = _d;
        var _len = ((@:checkr _d ?? throw "null pointer dereference")._len : stdgo.GoUInt64);
        var _tmp:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(144, 144).__setNumber32__();
        _tmp[(0 : stdgo.GoInt)] = (128 : stdgo.GoUInt8);
        var _t:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        if (((_len % (128i64 : stdgo.GoUInt64) : stdgo.GoUInt64) < (112i64 : stdgo.GoUInt64) : Bool)) {
            _t = ((112i64 : stdgo.GoUInt64) - (_len % (128i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        } else {
            _t = ((240i64 : stdgo.GoUInt64) - (_len % (128i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        };
        _len = (_len << ((3i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        var _padlen = (_tmp.__slice__(0, (_t + (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint64((_padlen.__slice__((_t + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _len);
        @:check2r _d.write(_padlen);
        if ((@:checkr _d ?? throw "null pointer dereference")._nx != ((0 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("d.nx != 0" : stdgo.GoString));
        };
        var _digest:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(64, 64).__setNumber32__();
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint64((_digest.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _d ?? throw "null pointer dereference")._h[(0 : stdgo.GoInt)]);
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint64((_digest.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _d ?? throw "null pointer dereference")._h[(1 : stdgo.GoInt)]);
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint64((_digest.__slice__((16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _d ?? throw "null pointer dereference")._h[(2 : stdgo.GoInt)]);
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint64((_digest.__slice__((24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _d ?? throw "null pointer dereference")._h[(3 : stdgo.GoInt)]);
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint64((_digest.__slice__((32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _d ?? throw "null pointer dereference")._h[(4 : stdgo.GoInt)]);
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint64((_digest.__slice__((40 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _d ?? throw "null pointer dereference")._h[(5 : stdgo.GoInt)]);
        if ((@:checkr _d ?? throw "null pointer dereference")._function != ((6u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
            stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint64((_digest.__slice__((48 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _d ?? throw "null pointer dereference")._h[(6 : stdgo.GoInt)]);
            stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint64((_digest.__slice__((56 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _d ?? throw "null pointer dereference")._h[(7 : stdgo.GoInt)]);
        };
        return _digest?.__copy__();
    }
    @:keep
    @:tdfield
    static public function sum( _d:stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest>, _in:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _d:stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest> = _d;
        if ((((@:checkr _d ?? throw "null pointer dereference")._function != (14u32 : stdgo._internal.crypto.Crypto_hash.Hash)) && ((@:checkr _d ?? throw "null pointer dereference")._function != (15u32 : stdgo._internal.crypto.Crypto_hash.Hash)) : Bool)) {
            stdgo._internal.crypto.internal.boring.Boring_unreachable.unreachable();
        };
        var _d0 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest)) : stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest>);
        {
            var __tmp__ = (_d : stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest)?.__copy__();
            var x = (_d0 : stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest);
            x._h = __tmp__?._h;
            x._x = __tmp__?._x;
            x._nx = __tmp__?._nx;
            x._len = __tmp__?._len;
            x._function = __tmp__?._function;
        };
        var _hash = @:check2r _d0._checkSum()?.__copy__();
        {
            final __value__ = (@:checkr _d0 ?? throw "null pointer dereference")._function;
            if (__value__ == ((6u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                return (_in.__append__(...((_hash.__slice__(0, (48 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
            } else if (__value__ == ((14u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                return (_in.__append__(...((_hash.__slice__(0, (28 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
            } else if (__value__ == ((15u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                return (_in.__append__(...((_hash.__slice__(0, (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
            } else {
                return (_in.__append__(...((_hash.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
            };
        };
    }
    @:keep
    @:tdfield
    static public function write( _d:stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest> = _d;
        var _nn = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((((@:checkr _d ?? throw "null pointer dereference")._function != (14u32 : stdgo._internal.crypto.Crypto_hash.Hash)) && ((@:checkr _d ?? throw "null pointer dereference")._function != (15u32 : stdgo._internal.crypto.Crypto_hash.Hash)) : Bool)) {
            stdgo._internal.crypto.internal.boring.Boring_unreachable.unreachable();
        };
        _nn = (_p.length);
        (@:checkr _d ?? throw "null pointer dereference")._len = ((@:checkr _d ?? throw "null pointer dereference")._len + ((_nn : stdgo.GoUInt64)) : stdgo.GoUInt64);
        if (((@:checkr _d ?? throw "null pointer dereference")._nx > (0 : stdgo.GoInt) : Bool)) {
            var _n = (((@:checkr _d ?? throw "null pointer dereference")._x.__slice__((@:checkr _d ?? throw "null pointer dereference")._nx) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_p) : stdgo.GoInt);
            (@:checkr _d ?? throw "null pointer dereference")._nx = ((@:checkr _d ?? throw "null pointer dereference")._nx + (_n) : stdgo.GoInt);
            if ((@:checkr _d ?? throw "null pointer dereference")._nx == ((128 : stdgo.GoInt))) {
                stdgo._internal.crypto.sha512.Sha512__block._block(_d, ((@:checkr _d ?? throw "null pointer dereference")._x.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                (@:checkr _d ?? throw "null pointer dereference")._nx = (0 : stdgo.GoInt);
            };
            _p = (_p.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        };
        if (((_p.length) >= (128 : stdgo.GoInt) : Bool)) {
            var _n = ((_p.length) & (((127 : stdgo.GoInt) ^ (-1i32 : stdgo.GoInt32) : stdgo.GoInt)) : stdgo.GoInt);
            stdgo._internal.crypto.sha512.Sha512__block._block(_d, (_p.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
            _p = (_p.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        };
        if (((_p.length) > (0 : stdgo.GoInt) : Bool)) {
            (@:checkr _d ?? throw "null pointer dereference")._nx = ((@:checkr _d ?? throw "null pointer dereference")._x.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_p);
        };
        return { _0 : _nn, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function blockSize( _d:stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest>):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest> = _d;
        return (128 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function size( _d:stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest>):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest> = _d;
        {
            final __value__ = (@:checkr _d ?? throw "null pointer dereference")._function;
            if (__value__ == ((14u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                return (28 : stdgo.GoInt);
            } else if (__value__ == ((15u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                return (32 : stdgo.GoInt);
            } else if (__value__ == ((6u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                return (48 : stdgo.GoInt);
            } else {
                return (64 : stdgo.GoInt);
            };
        };
    }
    @:keep
    @:tdfield
    static public function unmarshalBinary( _d:stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest> = _d;
        if (((_b.length) < ((("sha\x07" : stdgo.GoString) : stdgo.GoString).length) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("crypto/sha512: invalid hash state identifier" : stdgo.GoString));
        };
        if ((((@:checkr _d ?? throw "null pointer dereference")._function == (6u32 : stdgo._internal.crypto.Crypto_hash.Hash)) && (((_b.__slice__(0, ((stdgo.Go.str("sha", 4) : stdgo.GoString).length)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) == (stdgo.Go.str("sha", 4) : stdgo.GoString)) : Bool)) {} else if ((((@:checkr _d ?? throw "null pointer dereference")._function == (14u32 : stdgo._internal.crypto.Crypto_hash.Hash)) && (((_b.__slice__(0, ((stdgo.Go.str("sha", 5) : stdgo.GoString).length)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) == (stdgo.Go.str("sha", 5) : stdgo.GoString)) : Bool)) {} else if ((((@:checkr _d ?? throw "null pointer dereference")._function == (15u32 : stdgo._internal.crypto.Crypto_hash.Hash)) && (((_b.__slice__(0, ((stdgo.Go.str("sha", 6) : stdgo.GoString).length)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) == (stdgo.Go.str("sha", 6) : stdgo.GoString)) : Bool)) {} else if ((((@:checkr _d ?? throw "null pointer dereference")._function == (7u32 : stdgo._internal.crypto.Crypto_hash.Hash)) && (((_b.__slice__(0, ((("sha\x07" : stdgo.GoString) : stdgo.GoString).length)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) == ("sha\x07" : stdgo.GoString)) : Bool)) {} else {
            return stdgo._internal.errors.Errors_new_.new_(("crypto/sha512: invalid hash state identifier" : stdgo.GoString));
        };
        if ((_b.length) != ((204 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("crypto/sha512: invalid hash state size" : stdgo.GoString));
        };
        _b = (_b.__slice__(((("sha\x07" : stdgo.GoString) : stdgo.GoString).length)) : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.crypto.sha512.Sha512__consumeuint64._consumeUint64(_b);
            _b = @:tmpset0 __tmp__._0;
            (@:checkr _d ?? throw "null pointer dereference")._h[(0 : stdgo.GoInt)] = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = stdgo._internal.crypto.sha512.Sha512__consumeuint64._consumeUint64(_b);
            _b = @:tmpset0 __tmp__._0;
            (@:checkr _d ?? throw "null pointer dereference")._h[(1 : stdgo.GoInt)] = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = stdgo._internal.crypto.sha512.Sha512__consumeuint64._consumeUint64(_b);
            _b = @:tmpset0 __tmp__._0;
            (@:checkr _d ?? throw "null pointer dereference")._h[(2 : stdgo.GoInt)] = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = stdgo._internal.crypto.sha512.Sha512__consumeuint64._consumeUint64(_b);
            _b = @:tmpset0 __tmp__._0;
            (@:checkr _d ?? throw "null pointer dereference")._h[(3 : stdgo.GoInt)] = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = stdgo._internal.crypto.sha512.Sha512__consumeuint64._consumeUint64(_b);
            _b = @:tmpset0 __tmp__._0;
            (@:checkr _d ?? throw "null pointer dereference")._h[(4 : stdgo.GoInt)] = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = stdgo._internal.crypto.sha512.Sha512__consumeuint64._consumeUint64(_b);
            _b = @:tmpset0 __tmp__._0;
            (@:checkr _d ?? throw "null pointer dereference")._h[(5 : stdgo.GoInt)] = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = stdgo._internal.crypto.sha512.Sha512__consumeuint64._consumeUint64(_b);
            _b = @:tmpset0 __tmp__._0;
            (@:checkr _d ?? throw "null pointer dereference")._h[(6 : stdgo.GoInt)] = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = stdgo._internal.crypto.sha512.Sha512__consumeuint64._consumeUint64(_b);
            _b = @:tmpset0 __tmp__._0;
            (@:checkr _d ?? throw "null pointer dereference")._h[(7 : stdgo.GoInt)] = @:tmpset0 __tmp__._1;
        };
        _b = (_b.__slice__(((@:checkr _d ?? throw "null pointer dereference")._x.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_b)) : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.crypto.sha512.Sha512__consumeuint64._consumeUint64(_b);
            _b = @:tmpset0 __tmp__._0;
            (@:checkr _d ?? throw "null pointer dereference")._len = @:tmpset0 __tmp__._1;
        };
        (@:checkr _d ?? throw "null pointer dereference")._nx = (((@:checkr _d ?? throw "null pointer dereference")._len % (128i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function marshalBinary( _d:stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest> = _d;
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (204 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            final __value__ = (@:checkr _d ?? throw "null pointer dereference")._function;
            if (__value__ == ((6u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                _b = (_b.__append__(...((stdgo.Go.str("sha", 4) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
            } else if (__value__ == ((14u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                _b = (_b.__append__(...((stdgo.Go.str("sha", 5) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
            } else if (__value__ == ((15u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                _b = (_b.__append__(...((stdgo.Go.str("sha", 6) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
            } else if (__value__ == ((7u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                _b = (_b.__append__(...((("sha\x07" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
            } else {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/sha512: invalid hash function" : stdgo.GoString)) };
            };
        };
        _b = stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.appendUint64(_b, (@:checkr _d ?? throw "null pointer dereference")._h[(0 : stdgo.GoInt)]);
        _b = stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.appendUint64(_b, (@:checkr _d ?? throw "null pointer dereference")._h[(1 : stdgo.GoInt)]);
        _b = stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.appendUint64(_b, (@:checkr _d ?? throw "null pointer dereference")._h[(2 : stdgo.GoInt)]);
        _b = stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.appendUint64(_b, (@:checkr _d ?? throw "null pointer dereference")._h[(3 : stdgo.GoInt)]);
        _b = stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.appendUint64(_b, (@:checkr _d ?? throw "null pointer dereference")._h[(4 : stdgo.GoInt)]);
        _b = stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.appendUint64(_b, (@:checkr _d ?? throw "null pointer dereference")._h[(5 : stdgo.GoInt)]);
        _b = stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.appendUint64(_b, (@:checkr _d ?? throw "null pointer dereference")._h[(6 : stdgo.GoInt)]);
        _b = stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.appendUint64(_b, (@:checkr _d ?? throw "null pointer dereference")._h[(7 : stdgo.GoInt)]);
        _b = (_b.__append__(...(((@:checkr _d ?? throw "null pointer dereference")._x.__slice__(0, (@:checkr _d ?? throw "null pointer dereference")._nx) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
        _b = (_b.__slice__(0, (((_b.length) + ((@:checkr _d ?? throw "null pointer dereference")._x.length) : stdgo.GoInt) - (@:checkr _d ?? throw "null pointer dereference")._nx : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _b = stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.appendUint64(_b, (@:checkr _d ?? throw "null pointer dereference")._len);
        return { _0 : _b, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function reset( _d:stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest> = _d;
        {
            final __value__ = (@:checkr _d ?? throw "null pointer dereference")._function;
            if (__value__ == ((6u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                (@:checkr _d ?? throw "null pointer dereference")._h[(0 : stdgo.GoInt)] = (-3766243637369397544i64 : stdgo.GoUInt64);
                (@:checkr _d ?? throw "null pointer dereference")._h[(1 : stdgo.GoInt)] = (7105036623409894663i64 : stdgo.GoUInt64);
                (@:checkr _d ?? throw "null pointer dereference")._h[(2 : stdgo.GoInt)] = (-7973340178411365097i64 : stdgo.GoUInt64);
                (@:checkr _d ?? throw "null pointer dereference")._h[(3 : stdgo.GoInt)] = (1526699215303891257i64 : stdgo.GoUInt64);
                (@:checkr _d ?? throw "null pointer dereference")._h[(4 : stdgo.GoInt)] = (7436329637833083697i64 : stdgo.GoUInt64);
                (@:checkr _d ?? throw "null pointer dereference")._h[(5 : stdgo.GoInt)] = (-8163818279084223215i64 : stdgo.GoUInt64);
                (@:checkr _d ?? throw "null pointer dereference")._h[(6 : stdgo.GoInt)] = (-2662702644619276377i64 : stdgo.GoUInt64);
                (@:checkr _d ?? throw "null pointer dereference")._h[(7 : stdgo.GoInt)] = (5167115440072839076i64 : stdgo.GoUInt64);
            } else if (__value__ == ((14u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                (@:checkr _d ?? throw "null pointer dereference")._h[(0 : stdgo.GoInt)] = (-8341449602262348382i64 : stdgo.GoUInt64);
                (@:checkr _d ?? throw "null pointer dereference")._h[(1 : stdgo.GoInt)] = (8350123849800275158i64 : stdgo.GoUInt64);
                (@:checkr _d ?? throw "null pointer dereference")._h[(2 : stdgo.GoInt)] = (2160240930085379202i64 : stdgo.GoUInt64);
                (@:checkr _d ?? throw "null pointer dereference")._h[(3 : stdgo.GoInt)] = (7466358040605728719i64 : stdgo.GoUInt64);
                (@:checkr _d ?? throw "null pointer dereference")._h[(4 : stdgo.GoInt)] = (1111592415079452072i64 : stdgo.GoUInt64);
                (@:checkr _d ?? throw "null pointer dereference")._h[(5 : stdgo.GoInt)] = (8638871050018654530i64 : stdgo.GoUInt64);
                (@:checkr _d ?? throw "null pointer dereference")._h[(6 : stdgo.GoInt)] = (4583966954114332360i64 : stdgo.GoUInt64);
                (@:checkr _d ?? throw "null pointer dereference")._h[(7 : stdgo.GoInt)] = (1230299281376055969i64 : stdgo.GoUInt64);
            } else if (__value__ == ((15u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                (@:checkr _d ?? throw "null pointer dereference")._h[(0 : stdgo.GoInt)] = (2463787394917988140i64 : stdgo.GoUInt64);
                (@:checkr _d ?? throw "null pointer dereference")._h[(1 : stdgo.GoInt)] = (-6965556091613846334i64 : stdgo.GoUInt64);
                (@:checkr _d ?? throw "null pointer dereference")._h[(2 : stdgo.GoInt)] = (2563595384472711505i64 : stdgo.GoUInt64);
                (@:checkr _d ?? throw "null pointer dereference")._h[(3 : stdgo.GoInt)] = (-7622211418569250115i64 : stdgo.GoUInt64);
                (@:checkr _d ?? throw "null pointer dereference")._h[(4 : stdgo.GoInt)] = (-7626776825740460061i64 : stdgo.GoUInt64);
                (@:checkr _d ?? throw "null pointer dereference")._h[(5 : stdgo.GoInt)] = (-4729309413028513390i64 : stdgo.GoUInt64);
                (@:checkr _d ?? throw "null pointer dereference")._h[(6 : stdgo.GoInt)] = (3098927326965381290i64 : stdgo.GoUInt64);
                (@:checkr _d ?? throw "null pointer dereference")._h[(7 : stdgo.GoInt)] = (1060366662362279074i64 : stdgo.GoUInt64);
            } else {
                (@:checkr _d ?? throw "null pointer dereference")._h[(0 : stdgo.GoInt)] = (7640891576956012808i64 : stdgo.GoUInt64);
                (@:checkr _d ?? throw "null pointer dereference")._h[(1 : stdgo.GoInt)] = (-4942790177534073029i64 : stdgo.GoUInt64);
                (@:checkr _d ?? throw "null pointer dereference")._h[(2 : stdgo.GoInt)] = (4354685564936845355i64 : stdgo.GoUInt64);
                (@:checkr _d ?? throw "null pointer dereference")._h[(3 : stdgo.GoInt)] = (-6534734903238641935i64 : stdgo.GoUInt64);
                (@:checkr _d ?? throw "null pointer dereference")._h[(4 : stdgo.GoInt)] = (5840696475078001361i64 : stdgo.GoUInt64);
                (@:checkr _d ?? throw "null pointer dereference")._h[(5 : stdgo.GoInt)] = (-7276294671716946913i64 : stdgo.GoUInt64);
                (@:checkr _d ?? throw "null pointer dereference")._h[(6 : stdgo.GoInt)] = (2270897969802886507i64 : stdgo.GoUInt64);
                (@:checkr _d ?? throw "null pointer dereference")._h[(7 : stdgo.GoInt)] = (6620516959819538809i64 : stdgo.GoUInt64);
            };
        };
        (@:checkr _d ?? throw "null pointer dereference")._nx = (0 : stdgo.GoInt);
        (@:checkr _d ?? throw "null pointer dereference")._len = (0i64 : stdgo.GoUInt64);
    }
}
