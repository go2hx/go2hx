package _internal.vendor.golang_dot_org.x.crypto.chacha20;
function _hChaCha20(_out:stdgo.Slice<stdgo.GoUInt8>, _key:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        if ((_key.length) != ((32 : stdgo.GoInt))) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("chacha20: wrong HChaCha20 key size" : stdgo.GoString)) };
        };
        if ((_nonce.length) != ((16 : stdgo.GoInt))) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("chacha20: wrong HChaCha20 nonce size" : stdgo.GoString)) };
        };
        var __0 = (1634760805u32 : stdgo.GoUInt32), __1 = (857760878u32 : stdgo.GoUInt32), __2 = (2036477234u32 : stdgo.GoUInt32), __3 = (1797285236u32 : stdgo.GoUInt32);
var _x3 = __3, _x2 = __2, _x1 = __1, _x0 = __0;
        var _x4 = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_key.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        var _x5 = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_key.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        var _x6 = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_key.__slice__((8 : stdgo.GoInt), (12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        var _x7 = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_key.__slice__((12 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        var _x8 = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_key.__slice__((16 : stdgo.GoInt), (20 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        var _x9 = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_key.__slice__((20 : stdgo.GoInt), (24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        var _x10 = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_key.__slice__((24 : stdgo.GoInt), (28 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        var _x11 = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_key.__slice__((28 : stdgo.GoInt), (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        var _x12 = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_nonce.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        var _x13 = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_nonce.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        var _x14 = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_nonce.__slice__((8 : stdgo.GoInt), (12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        var _x15 = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_nonce.__slice__((12 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
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
        var __blank__ = _out[(31 : stdgo.GoInt)];
        stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.putUint32((_out.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x0);
        stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.putUint32((_out.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x1);
        stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.putUint32((_out.__slice__((8 : stdgo.GoInt), (12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x2);
        stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.putUint32((_out.__slice__((12 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x3);
        stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.putUint32((_out.__slice__((16 : stdgo.GoInt), (20 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x12);
        stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.putUint32((_out.__slice__((20 : stdgo.GoInt), (24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x13);
        stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.putUint32((_out.__slice__((24 : stdgo.GoInt), (28 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x14);
        stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.putUint32((_out.__slice__((28 : stdgo.GoInt), (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x15);
        return { _0 : _out, _1 : (null : stdgo.Error) };
    }
