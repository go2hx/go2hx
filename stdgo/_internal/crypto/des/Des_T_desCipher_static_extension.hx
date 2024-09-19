package stdgo._internal.crypto.des;
@:keep @:allow(stdgo._internal.crypto.des.Des.T_desCipher_asInterface) class T_desCipher_static_extension {
    @:keep
    static public function decrypt( _c:stdgo.Ref<stdgo._internal.crypto.des.Des_T_desCipher.T_desCipher>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.des.Des_T_desCipher.T_desCipher> = _c;
        if (((_src.length) < (8 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("crypto/des: input not full block" : stdgo.GoString));
        };
        if (((_dst.length) < (8 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("crypto/des: output not full block" : stdgo.GoString));
        };
        if (stdgo._internal.crypto.internal.alias.Alias_inexactOverlap.inexactOverlap((_dst.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))) {
            throw stdgo.Go.toInterface(("crypto/des: invalid buffer overlap" : stdgo.GoString));
        };
        stdgo._internal.crypto.des.Des__decryptBlock._decryptBlock((_c._subkeys.__slice__(0) : stdgo.Slice<stdgo.GoUInt64>), _dst, _src);
    }
    @:keep
    static public function encrypt( _c:stdgo.Ref<stdgo._internal.crypto.des.Des_T_desCipher.T_desCipher>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.des.Des_T_desCipher.T_desCipher> = _c;
        if (((_src.length) < (8 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("crypto/des: input not full block" : stdgo.GoString));
        };
        if (((_dst.length) < (8 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("crypto/des: output not full block" : stdgo.GoString));
        };
        if (stdgo._internal.crypto.internal.alias.Alias_inexactOverlap.inexactOverlap((_dst.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))) {
            throw stdgo.Go.toInterface(("crypto/des: invalid buffer overlap" : stdgo.GoString));
        };
        stdgo._internal.crypto.des.Des__encryptBlock._encryptBlock((_c._subkeys.__slice__(0) : stdgo.Slice<stdgo.GoUInt64>), _dst, _src);
    }
    @:keep
    static public function blockSize( _c:stdgo.Ref<stdgo._internal.crypto.des.Des_T_desCipher.T_desCipher>):stdgo.GoInt {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.des.Des_T_desCipher.T_desCipher> = _c;
        return (8 : stdgo.GoInt);
    }
    @:keep
    static public function _generateSubkeys( _c:stdgo.Ref<stdgo._internal.crypto.des.Des_T_desCipher.T_desCipher>, _keyBytes:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.des.Des_T_desCipher.T_desCipher> = _c;
        stdgo._internal.crypto.des.Des__feistelBoxOnce._feistelBoxOnce.do_(stdgo._internal.crypto.des.Des__initFeistelBox._initFeistelBox);
        var _key = (stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint64(_keyBytes) : stdgo.GoUInt64);
        var _permutedKey = (stdgo._internal.crypto.des.Des__permuteBlock._permuteBlock(_key, (stdgo._internal.crypto.des.Des__permutedChoice1._permutedChoice1.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt64);
        var _leftRotations = stdgo._internal.crypto.des.Des__ksRotate._ksRotate(((_permutedKey >> (28i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32));
        var _rightRotations = stdgo._internal.crypto.des.Des__ksRotate._ksRotate((((_permutedKey << (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32) >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt32));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (16 : stdgo.GoInt) : Bool), _i++, {
                var _pc2Input = (((_leftRotations[(_i : stdgo.GoInt)] : stdgo.GoUInt64) << (28i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (_rightRotations[(_i : stdgo.GoInt)] : stdgo.GoUInt64) : stdgo.GoUInt64);
                _c._subkeys[(_i : stdgo.GoInt)] = stdgo._internal.crypto.des.Des__unpack._unpack(stdgo._internal.crypto.des.Des__permuteBlock._permuteBlock(_pc2Input, (stdgo._internal.crypto.des.Des__permutedChoice2._permutedChoice2.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)));
            });
        };
    }
}