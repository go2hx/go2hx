package stdgo._internal.crypto.des;
@:keep @:allow(stdgo._internal.crypto.des.Des.T_tripleDESCipher_asInterface) class T_tripleDESCipher_static_extension {
    @:keep
    static public function decrypt( _c:stdgo.Ref<stdgo._internal.crypto.des.Des_T_tripleDESCipher.T_tripleDESCipher>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.des.Des_T_tripleDESCipher.T_tripleDESCipher> = _c;
        if (((_src.length) < (8 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("crypto/des: input not full block" : stdgo.GoString));
        };
        if (((_dst.length) < (8 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("crypto/des: output not full block" : stdgo.GoString));
        };
        if (stdgo._internal.crypto.internal.alias.Alias_inexactOverlap.inexactOverlap((_dst.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))) {
            throw stdgo.Go.toInterface(("crypto/des: invalid buffer overlap" : stdgo.GoString));
        };
        var _b = (stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint64(_src) : stdgo.GoUInt64);
        _b = stdgo._internal.crypto.des.Des__permuteInitialBlock._permuteInitialBlock(_b);
        var __0 = ((_b >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32), __1 = (_b : stdgo.GoUInt32);
var _right = __1, _left = __0;
        _left = (((_left << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) | ((_left >> (31i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _right = (((_right << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) | ((_right >> (31i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (8 : stdgo.GoInt) : Bool), _i++, {
                {
                    var __tmp__ = stdgo._internal.crypto.des.Des__feistel._feistel(_left, _right, _c._cipher3._subkeys[((15 : stdgo.GoInt) - ((2 : stdgo.GoInt) * _i : stdgo.GoInt) : stdgo.GoInt)], _c._cipher3._subkeys[((15 : stdgo.GoInt) - ((((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)]);
                    _left = __tmp__._0;
                    _right = __tmp__._1;
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (8 : stdgo.GoInt) : Bool), _i++, {
                {
                    var __tmp__ = stdgo._internal.crypto.des.Des__feistel._feistel(_right, _left, _c._cipher2._subkeys[((2 : stdgo.GoInt) * _i : stdgo.GoInt)], _c._cipher2._subkeys[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]);
                    _right = __tmp__._0;
                    _left = __tmp__._1;
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (8 : stdgo.GoInt) : Bool), _i++, {
                {
                    var __tmp__ = stdgo._internal.crypto.des.Des__feistel._feistel(_left, _right, _c._cipher1._subkeys[((15 : stdgo.GoInt) - ((2 : stdgo.GoInt) * _i : stdgo.GoInt) : stdgo.GoInt)], _c._cipher1._subkeys[((15 : stdgo.GoInt) - ((((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)]);
                    _left = __tmp__._0;
                    _right = __tmp__._1;
                };
            });
        };
        _left = (((_left << (31i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) | ((_left >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _right = (((_right << (31i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) | ((_right >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        var _preOutput = ((((_right : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) | (_left : stdgo.GoUInt64) : stdgo.GoUInt64);
        stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.putUint64(_dst, stdgo._internal.crypto.des.Des__permuteFinalBlock._permuteFinalBlock(_preOutput));
    }
    @:keep
    static public function encrypt( _c:stdgo.Ref<stdgo._internal.crypto.des.Des_T_tripleDESCipher.T_tripleDESCipher>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.des.Des_T_tripleDESCipher.T_tripleDESCipher> = _c;
        if (((_src.length) < (8 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("crypto/des: input not full block" : stdgo.GoString));
        };
        if (((_dst.length) < (8 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("crypto/des: output not full block" : stdgo.GoString));
        };
        if (stdgo._internal.crypto.internal.alias.Alias_inexactOverlap.inexactOverlap((_dst.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))) {
            throw stdgo.Go.toInterface(("crypto/des: invalid buffer overlap" : stdgo.GoString));
        };
        var _b = (stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint64(_src) : stdgo.GoUInt64);
        _b = stdgo._internal.crypto.des.Des__permuteInitialBlock._permuteInitialBlock(_b);
        var __0 = ((_b >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32), __1 = (_b : stdgo.GoUInt32);
var _right = __1, _left = __0;
        _left = (((_left << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) | ((_left >> (31i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _right = (((_right << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) | ((_right >> (31i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (8 : stdgo.GoInt) : Bool), _i++, {
                {
                    var __tmp__ = stdgo._internal.crypto.des.Des__feistel._feistel(_left, _right, _c._cipher1._subkeys[((2 : stdgo.GoInt) * _i : stdgo.GoInt)], _c._cipher1._subkeys[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]);
                    _left = __tmp__._0;
                    _right = __tmp__._1;
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (8 : stdgo.GoInt) : Bool), _i++, {
                {
                    var __tmp__ = stdgo._internal.crypto.des.Des__feistel._feistel(_right, _left, _c._cipher2._subkeys[((15 : stdgo.GoInt) - ((2 : stdgo.GoInt) * _i : stdgo.GoInt) : stdgo.GoInt)], _c._cipher2._subkeys[((15 : stdgo.GoInt) - ((((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)]);
                    _right = __tmp__._0;
                    _left = __tmp__._1;
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (8 : stdgo.GoInt) : Bool), _i++, {
                {
                    var __tmp__ = stdgo._internal.crypto.des.Des__feistel._feistel(_left, _right, _c._cipher3._subkeys[((2 : stdgo.GoInt) * _i : stdgo.GoInt)], _c._cipher3._subkeys[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]);
                    _left = __tmp__._0;
                    _right = __tmp__._1;
                };
            });
        };
        _left = (((_left << (31i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) | ((_left >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _right = (((_right << (31i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) | ((_right >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        var _preOutput = ((((_right : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) | (_left : stdgo.GoUInt64) : stdgo.GoUInt64);
        stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.putUint64(_dst, stdgo._internal.crypto.des.Des__permuteFinalBlock._permuteFinalBlock(_preOutput));
    }
    @:keep
    static public function blockSize( _c:stdgo.Ref<stdgo._internal.crypto.des.Des_T_tripleDESCipher.T_tripleDESCipher>):stdgo.GoInt {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.des.Des_T_tripleDESCipher.T_tripleDESCipher> = _c;
        return (8 : stdgo.GoInt);
    }
}