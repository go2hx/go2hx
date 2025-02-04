package stdgo._internal.crypto.des;
@:keep @:allow(stdgo._internal.crypto.des.Des.T_tripleDESCipher_asInterface) class T_tripleDESCipher_static_extension {
    @:keep
    @:tdfield
    static public function decrypt( _c:stdgo.Ref<stdgo._internal.crypto.des.Des_t_tripledescipher.T_tripleDESCipher>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.des.Des_t_tripledescipher.T_tripleDESCipher> = _c;
        if (((_src.length) < (8 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("crypto/des: input not full block" : stdgo.GoString));
        };
        if (((_dst.length) < (8 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("crypto/des: output not full block" : stdgo.GoString));
        };
        if (stdgo._internal.crypto.internal.alias.Alias_inexactoverlap.inexactOverlap((_dst.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))) {
            throw stdgo.Go.toInterface(("crypto/des: invalid buffer overlap" : stdgo.GoString));
        };
        var _b = (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint64(_src) : stdgo.GoUInt64);
        _b = stdgo._internal.crypto.des.Des__permuteinitialblock._permuteInitialBlock(_b);
        var __0 = ((_b >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32), __1 = (_b : stdgo.GoUInt32);
var _right = __1, _left = __0;
        _left = (((_left << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) | ((_left >> (31i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _right = (((_right << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) | ((_right >> (31i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (8 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.crypto.des.Des__feistel._feistel(_left, _right, (@:checkr _c ?? throw "null pointer dereference")._cipher3._subkeys[((15 : stdgo.GoInt) - ((2 : stdgo.GoInt) * _i : stdgo.GoInt) : stdgo.GoInt)], (@:checkr _c ?? throw "null pointer dereference")._cipher3._subkeys[((15 : stdgo.GoInt) - ((((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)]);
                    _left = @:tmpset0 __tmp__._0;
                    _right = @:tmpset0 __tmp__._1;
                };
                _i++;
            };
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (8 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.crypto.des.Des__feistel._feistel(_right, _left, (@:checkr _c ?? throw "null pointer dereference")._cipher2._subkeys[((2 : stdgo.GoInt) * _i : stdgo.GoInt)], (@:checkr _c ?? throw "null pointer dereference")._cipher2._subkeys[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]);
                    _right = @:tmpset0 __tmp__._0;
                    _left = @:tmpset0 __tmp__._1;
                };
                _i++;
            };
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (8 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.crypto.des.Des__feistel._feistel(_left, _right, (@:checkr _c ?? throw "null pointer dereference")._cipher1._subkeys[((15 : stdgo.GoInt) - ((2 : stdgo.GoInt) * _i : stdgo.GoInt) : stdgo.GoInt)], (@:checkr _c ?? throw "null pointer dereference")._cipher1._subkeys[((15 : stdgo.GoInt) - ((((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)]);
                    _left = @:tmpset0 __tmp__._0;
                    _right = @:tmpset0 __tmp__._1;
                };
                _i++;
            };
        };
        _left = (((_left << (31i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) | ((_left >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _right = (((_right << (31i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) | ((_right >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        var _preOutput = ((((_right : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) | (_left : stdgo.GoUInt64) : stdgo.GoUInt64);
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint64(_dst, stdgo._internal.crypto.des.Des__permutefinalblock._permuteFinalBlock(_preOutput));
    }
    @:keep
    @:tdfield
    static public function encrypt( _c:stdgo.Ref<stdgo._internal.crypto.des.Des_t_tripledescipher.T_tripleDESCipher>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.des.Des_t_tripledescipher.T_tripleDESCipher> = _c;
        if (((_src.length) < (8 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("crypto/des: input not full block" : stdgo.GoString));
        };
        if (((_dst.length) < (8 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("crypto/des: output not full block" : stdgo.GoString));
        };
        if (stdgo._internal.crypto.internal.alias.Alias_inexactoverlap.inexactOverlap((_dst.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))) {
            throw stdgo.Go.toInterface(("crypto/des: invalid buffer overlap" : stdgo.GoString));
        };
        var _b = (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint64(_src) : stdgo.GoUInt64);
        _b = stdgo._internal.crypto.des.Des__permuteinitialblock._permuteInitialBlock(_b);
        var __0 = ((_b >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32), __1 = (_b : stdgo.GoUInt32);
var _right = __1, _left = __0;
        _left = (((_left << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) | ((_left >> (31i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _right = (((_right << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) | ((_right >> (31i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (8 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.crypto.des.Des__feistel._feistel(_left, _right, (@:checkr _c ?? throw "null pointer dereference")._cipher1._subkeys[((2 : stdgo.GoInt) * _i : stdgo.GoInt)], (@:checkr _c ?? throw "null pointer dereference")._cipher1._subkeys[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]);
                    _left = @:tmpset0 __tmp__._0;
                    _right = @:tmpset0 __tmp__._1;
                };
                _i++;
            };
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (8 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.crypto.des.Des__feistel._feistel(_right, _left, (@:checkr _c ?? throw "null pointer dereference")._cipher2._subkeys[((15 : stdgo.GoInt) - ((2 : stdgo.GoInt) * _i : stdgo.GoInt) : stdgo.GoInt)], (@:checkr _c ?? throw "null pointer dereference")._cipher2._subkeys[((15 : stdgo.GoInt) - ((((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)]);
                    _right = @:tmpset0 __tmp__._0;
                    _left = @:tmpset0 __tmp__._1;
                };
                _i++;
            };
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (8 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.crypto.des.Des__feistel._feistel(_left, _right, (@:checkr _c ?? throw "null pointer dereference")._cipher3._subkeys[((2 : stdgo.GoInt) * _i : stdgo.GoInt)], (@:checkr _c ?? throw "null pointer dereference")._cipher3._subkeys[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]);
                    _left = @:tmpset0 __tmp__._0;
                    _right = @:tmpset0 __tmp__._1;
                };
                _i++;
            };
        };
        _left = (((_left << (31i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) | ((_left >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _right = (((_right << (31i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) | ((_right >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        var _preOutput = ((((_right : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) | (_left : stdgo.GoUInt64) : stdgo.GoUInt64);
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint64(_dst, stdgo._internal.crypto.des.Des__permutefinalblock._permuteFinalBlock(_preOutput));
    }
    @:keep
    @:tdfield
    static public function blockSize( _c:stdgo.Ref<stdgo._internal.crypto.des.Des_t_tripledescipher.T_tripleDESCipher>):stdgo.GoInt {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.des.Des_t_tripledescipher.T_tripleDESCipher> = _c;
        return (8 : stdgo.GoInt);
    }
}
