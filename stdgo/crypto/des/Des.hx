package stdgo.crypto.des;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:named class KeySizeError {
    public function error():GoString {
        var _k = this.__copy__();
        return (("crypto/des: invalid key size " : GoString)) + stdgo.strconv.Strconv.itoa(_k.__t__);
    }
    public var __t__ : GoInt;
    public function new(?t:GoInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new KeySizeError(__t__);
}
@:structInit class T_desCipher {
    public function decrypt(_dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_src.length < Des.blockSize) {
            throw "crypto/des: input not full block";
        };
        if (_dst.length < Des.blockSize) {
            throw "crypto/des: output not full block";
        };
        if (crypto.internal.subtle.Subtle.inexactOverlap(_dst.__slice__(0, Des.blockSize), _src.__slice__(0, Des.blockSize))) {
            throw "crypto/des: invalid buffer overlap";
        };
        _decryptBlock(_c.value._subkeys.__slice__(0), _dst, _src);
    }
    public function encrypt(_dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_src.length < Des.blockSize) {
            throw "crypto/des: input not full block";
        };
        if (_dst.length < Des.blockSize) {
            throw "crypto/des: output not full block";
        };
        if (crypto.internal.subtle.Subtle.inexactOverlap(_dst.__slice__(0, Des.blockSize), _src.__slice__(0, Des.blockSize))) {
            throw "crypto/des: invalid buffer overlap";
        };
        _encryptBlock(_c.value._subkeys.__slice__(0), _dst, _src);
    }
    public function blockSize():GoInt {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return Des.blockSize;
    }
    public function _generateSubkeys(_keyBytes:Slice<GoByte>):Void {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _feistelBoxOnce.do_(_initFeistelBox);
        var _key:GoUInt64 = stdgo.encoding.binary.Binary.bigEndian.uint64(_keyBytes);
        var _permutedKey:GoUInt64 = _permuteBlock(_key, _permutedChoice1.__slice__(0));
        var _leftRotations:Slice<GoUInt32> = _ksRotate((((_permutedKey >> ((28 : GoUnTypedInt))) : GoUInt32)));
        var _rightRotations:Slice<GoUInt32> = _ksRotate(((((_permutedKey << ((4 : GoUnTypedInt))) : GoUInt32)) >> ((4 : GoUnTypedInt))));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((16 : GoInt)), _i++, {
                var _pc2Input:GoUInt64 = (((_leftRotations[_i] : GoUInt64)) << ((28 : GoUnTypedInt))) | ((_rightRotations[_i] : GoUInt64));
                _c.value._subkeys[_i] = _unpack(_permuteBlock(_pc2Input, _permutedChoice2.__slice__(0)));
            });
        };
    }
    public var _subkeys : GoArray<GoUInt64> = new GoArray<GoUInt64>(...[for (i in 0 ... 16) ((0 : GoUInt64))]);
    public function new(?_subkeys:GoArray<GoUInt64>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_subkeys) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_desCipher(_subkeys);
    }
    public function __set__(__tmp__) {
        this._subkeys = __tmp__._subkeys;
        return this;
    }
}
@:structInit class T_tripleDESCipher {
    public function decrypt(_dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_src.length < Des.blockSize) {
            throw "crypto/des: input not full block";
        };
        if (_dst.length < Des.blockSize) {
            throw "crypto/des: output not full block";
        };
        if (crypto.internal.subtle.Subtle.inexactOverlap(_dst.__slice__(0, Des.blockSize), _src.__slice__(0, Des.blockSize))) {
            throw "crypto/des: invalid buffer overlap";
        };
        var _b:GoUInt64 = stdgo.encoding.binary.Binary.bigEndian.uint64(_src);
        _b = _permuteInitialBlock(_b);
        var _left:GoUInt32 = (((_b >> ((32 : GoUnTypedInt))) : GoUInt32)), _right:GoUInt32 = ((_b : GoUInt32));
        _left = ((_left << ((1 : GoUnTypedInt)))) | ((_left >> ((31 : GoUnTypedInt))));
        _right = ((_right << ((1 : GoUnTypedInt)))) | ((_right >> ((31 : GoUnTypedInt))));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((8 : GoInt)), _i++, {
                {
                    var __tmp__ = _feistel(_left, _right, _c.value._cipher3._subkeys[((15 : GoInt)) - ((2 : GoInt)) * _i], _c.value._cipher3._subkeys[((15 : GoInt)) - (((2 : GoInt)) * _i + ((1 : GoInt)))]);
                    _left = __tmp__._0;
                    _right = __tmp__._1;
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((8 : GoInt)), _i++, {
                {
                    var __tmp__ = _feistel(_right, _left, _c.value._cipher2._subkeys[((2 : GoInt)) * _i], _c.value._cipher2._subkeys[((2 : GoInt)) * _i + ((1 : GoInt))]);
                    _right = __tmp__._0;
                    _left = __tmp__._1;
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((8 : GoInt)), _i++, {
                {
                    var __tmp__ = _feistel(_left, _right, _c.value._cipher1._subkeys[((15 : GoInt)) - ((2 : GoInt)) * _i], _c.value._cipher1._subkeys[((15 : GoInt)) - (((2 : GoInt)) * _i + ((1 : GoInt)))]);
                    _left = __tmp__._0;
                    _right = __tmp__._1;
                };
            });
        };
        _left = ((_left << ((31 : GoUnTypedInt)))) | ((_left >> ((1 : GoUnTypedInt))));
        _right = ((_right << ((31 : GoUnTypedInt)))) | ((_right >> ((1 : GoUnTypedInt))));
        var _preOutput:GoUInt64 = ((((_right : GoUInt64)) << ((32 : GoUnTypedInt)))) | ((_left : GoUInt64));
        stdgo.encoding.binary.Binary.bigEndian.putUint64(_dst, _permuteFinalBlock(_preOutput));
    }
    public function encrypt(_dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_src.length < Des.blockSize) {
            throw "crypto/des: input not full block";
        };
        if (_dst.length < Des.blockSize) {
            throw "crypto/des: output not full block";
        };
        if (crypto.internal.subtle.Subtle.inexactOverlap(_dst.__slice__(0, Des.blockSize), _src.__slice__(0, Des.blockSize))) {
            throw "crypto/des: invalid buffer overlap";
        };
        var _b:GoUInt64 = stdgo.encoding.binary.Binary.bigEndian.uint64(_src);
        _b = _permuteInitialBlock(_b);
        var _left:GoUInt32 = (((_b >> ((32 : GoUnTypedInt))) : GoUInt32)), _right:GoUInt32 = ((_b : GoUInt32));
        _left = ((_left << ((1 : GoUnTypedInt)))) | ((_left >> ((31 : GoUnTypedInt))));
        _right = ((_right << ((1 : GoUnTypedInt)))) | ((_right >> ((31 : GoUnTypedInt))));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((8 : GoInt)), _i++, {
                {
                    var __tmp__ = _feistel(_left, _right, _c.value._cipher1._subkeys[((2 : GoInt)) * _i], _c.value._cipher1._subkeys[((2 : GoInt)) * _i + ((1 : GoInt))]);
                    _left = __tmp__._0;
                    _right = __tmp__._1;
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((8 : GoInt)), _i++, {
                {
                    var __tmp__ = _feistel(_right, _left, _c.value._cipher2._subkeys[((15 : GoInt)) - ((2 : GoInt)) * _i], _c.value._cipher2._subkeys[((15 : GoInt)) - (((2 : GoInt)) * _i + ((1 : GoInt)))]);
                    _right = __tmp__._0;
                    _left = __tmp__._1;
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((8 : GoInt)), _i++, {
                {
                    var __tmp__ = _feistel(_left, _right, _c.value._cipher3._subkeys[((2 : GoInt)) * _i], _c.value._cipher3._subkeys[((2 : GoInt)) * _i + ((1 : GoInt))]);
                    _left = __tmp__._0;
                    _right = __tmp__._1;
                };
            });
        };
        _left = ((_left << ((31 : GoUnTypedInt)))) | ((_left >> ((1 : GoUnTypedInt))));
        _right = ((_right << ((31 : GoUnTypedInt)))) | ((_right >> ((1 : GoUnTypedInt))));
        var _preOutput:GoUInt64 = ((((_right : GoUInt64)) << ((32 : GoUnTypedInt)))) | ((_left : GoUInt64));
        stdgo.encoding.binary.Binary.bigEndian.putUint64(_dst, _permuteFinalBlock(_preOutput));
    }
    public function blockSize():GoInt {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return Des.blockSize;
    }
    public var _cipher1 : T_desCipher = new T_desCipher();
    public var _cipher2 : T_desCipher = new T_desCipher();
    public var _cipher3 : T_desCipher = new T_desCipher();
    public function new(?_cipher1:T_desCipher, ?_cipher2:T_desCipher, ?_cipher3:T_desCipher) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_cipher1) + " " + Go.string(_cipher2) + " " + Go.string(_cipher3) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_tripleDESCipher(_cipher1, _cipher2, _cipher3);
    }
    public function __set__(__tmp__) {
        this._cipher1 = __tmp__._cipher1;
        this._cipher2 = __tmp__._cipher2;
        this._cipher3 = __tmp__._cipher3;
        return this;
    }
}
var _permutedChoice1 : GoArray<GoUInt8> = new GoArray<GoUInt8>(
((7 : GoUInt8)),
((15 : GoUInt8)),
((23 : GoUInt8)),
((31 : GoUInt8)),
((39 : GoUInt8)),
((47 : GoUInt8)),
((55 : GoUInt8)),
((63 : GoUInt8)),
((6 : GoUInt8)),
((14 : GoUInt8)),
((22 : GoUInt8)),
((30 : GoUInt8)),
((38 : GoUInt8)),
((46 : GoUInt8)),
((54 : GoUInt8)),
((62 : GoUInt8)),
((5 : GoUInt8)),
((13 : GoUInt8)),
((21 : GoUInt8)),
((29 : GoUInt8)),
((37 : GoUInt8)),
((45 : GoUInt8)),
((53 : GoUInt8)),
((61 : GoUInt8)),
((4 : GoUInt8)),
((12 : GoUInt8)),
((20 : GoUInt8)),
((28 : GoUInt8)),
((1 : GoUInt8)),
((9 : GoUInt8)),
((17 : GoUInt8)),
((25 : GoUInt8)),
((33 : GoUInt8)),
((41 : GoUInt8)),
((49 : GoUInt8)),
((57 : GoUInt8)),
((2 : GoUInt8)),
((10 : GoUInt8)),
((18 : GoUInt8)),
((26 : GoUInt8)),
((34 : GoUInt8)),
((42 : GoUInt8)),
((50 : GoUInt8)),
((58 : GoUInt8)),
((3 : GoUInt8)),
((11 : GoUInt8)),
((19 : GoUInt8)),
((27 : GoUInt8)),
((35 : GoUInt8)),
((43 : GoUInt8)),
((51 : GoUInt8)),
((59 : GoUInt8)),
((36 : GoUInt8)),
((44 : GoUInt8)),
((52 : GoUInt8)),
((60 : GoUInt8))).copy();
var _finalPermutation : GoArray<GoUInt8> = new GoArray<GoUInt8>(
((24 : GoUInt8)),
((56 : GoUInt8)),
((16 : GoUInt8)),
((48 : GoUInt8)),
((8 : GoUInt8)),
((40 : GoUInt8)),
((0 : GoUInt8)),
((32 : GoUInt8)),
((25 : GoUInt8)),
((57 : GoUInt8)),
((17 : GoUInt8)),
((49 : GoUInt8)),
((9 : GoUInt8)),
((41 : GoUInt8)),
((1 : GoUInt8)),
((33 : GoUInt8)),
((26 : GoUInt8)),
((58 : GoUInt8)),
((18 : GoUInt8)),
((50 : GoUInt8)),
((10 : GoUInt8)),
((42 : GoUInt8)),
((2 : GoUInt8)),
((34 : GoUInt8)),
((27 : GoUInt8)),
((59 : GoUInt8)),
((19 : GoUInt8)),
((51 : GoUInt8)),
((11 : GoUInt8)),
((43 : GoUInt8)),
((3 : GoUInt8)),
((35 : GoUInt8)),
((28 : GoUInt8)),
((60 : GoUInt8)),
((20 : GoUInt8)),
((52 : GoUInt8)),
((12 : GoUInt8)),
((44 : GoUInt8)),
((4 : GoUInt8)),
((36 : GoUInt8)),
((29 : GoUInt8)),
((61 : GoUInt8)),
((21 : GoUInt8)),
((53 : GoUInt8)),
((13 : GoUInt8)),
((45 : GoUInt8)),
((5 : GoUInt8)),
((37 : GoUInt8)),
((30 : GoUInt8)),
((62 : GoUInt8)),
((22 : GoUInt8)),
((54 : GoUInt8)),
((14 : GoUInt8)),
((46 : GoUInt8)),
((6 : GoUInt8)),
((38 : GoUInt8)),
((31 : GoUInt8)),
((63 : GoUInt8)),
((23 : GoUInt8)),
((55 : GoUInt8)),
((15 : GoUInt8)),
((47 : GoUInt8)),
((7 : GoUInt8)),
((39 : GoUInt8))).copy();
var _sBoxes : GoArray<GoArray<GoArray<GoUInt8>>> = new GoArray<GoArray<GoArray<GoUInt8>>>(new GoArray<GoArray<GoUInt8>>(new GoArray<GoUInt8>(
((14 : GoUInt8)),
((4 : GoUInt8)),
((13 : GoUInt8)),
((1 : GoUInt8)),
((2 : GoUInt8)),
((15 : GoUInt8)),
((11 : GoUInt8)),
((8 : GoUInt8)),
((3 : GoUInt8)),
((10 : GoUInt8)),
((6 : GoUInt8)),
((12 : GoUInt8)),
((5 : GoUInt8)),
((9 : GoUInt8)),
((0 : GoUInt8)),
((7 : GoUInt8))).copy(), new GoArray<GoUInt8>(
((0 : GoUInt8)),
((15 : GoUInt8)),
((7 : GoUInt8)),
((4 : GoUInt8)),
((14 : GoUInt8)),
((2 : GoUInt8)),
((13 : GoUInt8)),
((1 : GoUInt8)),
((10 : GoUInt8)),
((6 : GoUInt8)),
((12 : GoUInt8)),
((11 : GoUInt8)),
((9 : GoUInt8)),
((5 : GoUInt8)),
((3 : GoUInt8)),
((8 : GoUInt8))).copy(), new GoArray<GoUInt8>(
((4 : GoUInt8)),
((1 : GoUInt8)),
((14 : GoUInt8)),
((8 : GoUInt8)),
((13 : GoUInt8)),
((6 : GoUInt8)),
((2 : GoUInt8)),
((11 : GoUInt8)),
((15 : GoUInt8)),
((12 : GoUInt8)),
((9 : GoUInt8)),
((7 : GoUInt8)),
((3 : GoUInt8)),
((10 : GoUInt8)),
((5 : GoUInt8)),
((0 : GoUInt8))).copy(), new GoArray<GoUInt8>(
((15 : GoUInt8)),
((12 : GoUInt8)),
((8 : GoUInt8)),
((2 : GoUInt8)),
((4 : GoUInt8)),
((9 : GoUInt8)),
((1 : GoUInt8)),
((7 : GoUInt8)),
((5 : GoUInt8)),
((11 : GoUInt8)),
((3 : GoUInt8)),
((14 : GoUInt8)),
((10 : GoUInt8)),
((0 : GoUInt8)),
((6 : GoUInt8)),
((13 : GoUInt8))).copy()).copy(), new GoArray<GoArray<GoUInt8>>(new GoArray<GoUInt8>(
((15 : GoUInt8)),
((1 : GoUInt8)),
((8 : GoUInt8)),
((14 : GoUInt8)),
((6 : GoUInt8)),
((11 : GoUInt8)),
((3 : GoUInt8)),
((4 : GoUInt8)),
((9 : GoUInt8)),
((7 : GoUInt8)),
((2 : GoUInt8)),
((13 : GoUInt8)),
((12 : GoUInt8)),
((0 : GoUInt8)),
((5 : GoUInt8)),
((10 : GoUInt8))).copy(), new GoArray<GoUInt8>(
((3 : GoUInt8)),
((13 : GoUInt8)),
((4 : GoUInt8)),
((7 : GoUInt8)),
((15 : GoUInt8)),
((2 : GoUInt8)),
((8 : GoUInt8)),
((14 : GoUInt8)),
((12 : GoUInt8)),
((0 : GoUInt8)),
((1 : GoUInt8)),
((10 : GoUInt8)),
((6 : GoUInt8)),
((9 : GoUInt8)),
((11 : GoUInt8)),
((5 : GoUInt8))).copy(), new GoArray<GoUInt8>(
((0 : GoUInt8)),
((14 : GoUInt8)),
((7 : GoUInt8)),
((11 : GoUInt8)),
((10 : GoUInt8)),
((4 : GoUInt8)),
((13 : GoUInt8)),
((1 : GoUInt8)),
((5 : GoUInt8)),
((8 : GoUInt8)),
((12 : GoUInt8)),
((6 : GoUInt8)),
((9 : GoUInt8)),
((3 : GoUInt8)),
((2 : GoUInt8)),
((15 : GoUInt8))).copy(), new GoArray<GoUInt8>(
((13 : GoUInt8)),
((8 : GoUInt8)),
((10 : GoUInt8)),
((1 : GoUInt8)),
((3 : GoUInt8)),
((15 : GoUInt8)),
((4 : GoUInt8)),
((2 : GoUInt8)),
((11 : GoUInt8)),
((6 : GoUInt8)),
((7 : GoUInt8)),
((12 : GoUInt8)),
((0 : GoUInt8)),
((5 : GoUInt8)),
((14 : GoUInt8)),
((9 : GoUInt8))).copy()).copy(), new GoArray<GoArray<GoUInt8>>(new GoArray<GoUInt8>(
((10 : GoUInt8)),
((0 : GoUInt8)),
((9 : GoUInt8)),
((14 : GoUInt8)),
((6 : GoUInt8)),
((3 : GoUInt8)),
((15 : GoUInt8)),
((5 : GoUInt8)),
((1 : GoUInt8)),
((13 : GoUInt8)),
((12 : GoUInt8)),
((7 : GoUInt8)),
((11 : GoUInt8)),
((4 : GoUInt8)),
((2 : GoUInt8)),
((8 : GoUInt8))).copy(), new GoArray<GoUInt8>(
((13 : GoUInt8)),
((7 : GoUInt8)),
((0 : GoUInt8)),
((9 : GoUInt8)),
((3 : GoUInt8)),
((4 : GoUInt8)),
((6 : GoUInt8)),
((10 : GoUInt8)),
((2 : GoUInt8)),
((8 : GoUInt8)),
((5 : GoUInt8)),
((14 : GoUInt8)),
((12 : GoUInt8)),
((11 : GoUInt8)),
((15 : GoUInt8)),
((1 : GoUInt8))).copy(), new GoArray<GoUInt8>(
((13 : GoUInt8)),
((6 : GoUInt8)),
((4 : GoUInt8)),
((9 : GoUInt8)),
((8 : GoUInt8)),
((15 : GoUInt8)),
((3 : GoUInt8)),
((0 : GoUInt8)),
((11 : GoUInt8)),
((1 : GoUInt8)),
((2 : GoUInt8)),
((12 : GoUInt8)),
((5 : GoUInt8)),
((10 : GoUInt8)),
((14 : GoUInt8)),
((7 : GoUInt8))).copy(), new GoArray<GoUInt8>(
((1 : GoUInt8)),
((10 : GoUInt8)),
((13 : GoUInt8)),
((0 : GoUInt8)),
((6 : GoUInt8)),
((9 : GoUInt8)),
((8 : GoUInt8)),
((7 : GoUInt8)),
((4 : GoUInt8)),
((15 : GoUInt8)),
((14 : GoUInt8)),
((3 : GoUInt8)),
((11 : GoUInt8)),
((5 : GoUInt8)),
((2 : GoUInt8)),
((12 : GoUInt8))).copy()).copy(), new GoArray<GoArray<GoUInt8>>(new GoArray<GoUInt8>(
((7 : GoUInt8)),
((13 : GoUInt8)),
((14 : GoUInt8)),
((3 : GoUInt8)),
((0 : GoUInt8)),
((6 : GoUInt8)),
((9 : GoUInt8)),
((10 : GoUInt8)),
((1 : GoUInt8)),
((2 : GoUInt8)),
((8 : GoUInt8)),
((5 : GoUInt8)),
((11 : GoUInt8)),
((12 : GoUInt8)),
((4 : GoUInt8)),
((15 : GoUInt8))).copy(), new GoArray<GoUInt8>(
((13 : GoUInt8)),
((8 : GoUInt8)),
((11 : GoUInt8)),
((5 : GoUInt8)),
((6 : GoUInt8)),
((15 : GoUInt8)),
((0 : GoUInt8)),
((3 : GoUInt8)),
((4 : GoUInt8)),
((7 : GoUInt8)),
((2 : GoUInt8)),
((12 : GoUInt8)),
((1 : GoUInt8)),
((10 : GoUInt8)),
((14 : GoUInt8)),
((9 : GoUInt8))).copy(), new GoArray<GoUInt8>(
((10 : GoUInt8)),
((6 : GoUInt8)),
((9 : GoUInt8)),
((0 : GoUInt8)),
((12 : GoUInt8)),
((11 : GoUInt8)),
((7 : GoUInt8)),
((13 : GoUInt8)),
((15 : GoUInt8)),
((1 : GoUInt8)),
((3 : GoUInt8)),
((14 : GoUInt8)),
((5 : GoUInt8)),
((2 : GoUInt8)),
((8 : GoUInt8)),
((4 : GoUInt8))).copy(), new GoArray<GoUInt8>(
((3 : GoUInt8)),
((15 : GoUInt8)),
((0 : GoUInt8)),
((6 : GoUInt8)),
((10 : GoUInt8)),
((1 : GoUInt8)),
((13 : GoUInt8)),
((8 : GoUInt8)),
((9 : GoUInt8)),
((4 : GoUInt8)),
((5 : GoUInt8)),
((11 : GoUInt8)),
((12 : GoUInt8)),
((7 : GoUInt8)),
((2 : GoUInt8)),
((14 : GoUInt8))).copy()).copy(), new GoArray<GoArray<GoUInt8>>(new GoArray<GoUInt8>(
((2 : GoUInt8)),
((12 : GoUInt8)),
((4 : GoUInt8)),
((1 : GoUInt8)),
((7 : GoUInt8)),
((10 : GoUInt8)),
((11 : GoUInt8)),
((6 : GoUInt8)),
((8 : GoUInt8)),
((5 : GoUInt8)),
((3 : GoUInt8)),
((15 : GoUInt8)),
((13 : GoUInt8)),
((0 : GoUInt8)),
((14 : GoUInt8)),
((9 : GoUInt8))).copy(), new GoArray<GoUInt8>(
((14 : GoUInt8)),
((11 : GoUInt8)),
((2 : GoUInt8)),
((12 : GoUInt8)),
((4 : GoUInt8)),
((7 : GoUInt8)),
((13 : GoUInt8)),
((1 : GoUInt8)),
((5 : GoUInt8)),
((0 : GoUInt8)),
((15 : GoUInt8)),
((10 : GoUInt8)),
((3 : GoUInt8)),
((9 : GoUInt8)),
((8 : GoUInt8)),
((6 : GoUInt8))).copy(), new GoArray<GoUInt8>(
((4 : GoUInt8)),
((2 : GoUInt8)),
((1 : GoUInt8)),
((11 : GoUInt8)),
((10 : GoUInt8)),
((13 : GoUInt8)),
((7 : GoUInt8)),
((8 : GoUInt8)),
((15 : GoUInt8)),
((9 : GoUInt8)),
((12 : GoUInt8)),
((5 : GoUInt8)),
((6 : GoUInt8)),
((3 : GoUInt8)),
((0 : GoUInt8)),
((14 : GoUInt8))).copy(), new GoArray<GoUInt8>(
((11 : GoUInt8)),
((8 : GoUInt8)),
((12 : GoUInt8)),
((7 : GoUInt8)),
((1 : GoUInt8)),
((14 : GoUInt8)),
((2 : GoUInt8)),
((13 : GoUInt8)),
((6 : GoUInt8)),
((15 : GoUInt8)),
((0 : GoUInt8)),
((9 : GoUInt8)),
((10 : GoUInt8)),
((4 : GoUInt8)),
((5 : GoUInt8)),
((3 : GoUInt8))).copy()).copy(), new GoArray<GoArray<GoUInt8>>(new GoArray<GoUInt8>(
((12 : GoUInt8)),
((1 : GoUInt8)),
((10 : GoUInt8)),
((15 : GoUInt8)),
((9 : GoUInt8)),
((2 : GoUInt8)),
((6 : GoUInt8)),
((8 : GoUInt8)),
((0 : GoUInt8)),
((13 : GoUInt8)),
((3 : GoUInt8)),
((4 : GoUInt8)),
((14 : GoUInt8)),
((7 : GoUInt8)),
((5 : GoUInt8)),
((11 : GoUInt8))).copy(), new GoArray<GoUInt8>(
((10 : GoUInt8)),
((15 : GoUInt8)),
((4 : GoUInt8)),
((2 : GoUInt8)),
((7 : GoUInt8)),
((12 : GoUInt8)),
((9 : GoUInt8)),
((5 : GoUInt8)),
((6 : GoUInt8)),
((1 : GoUInt8)),
((13 : GoUInt8)),
((14 : GoUInt8)),
((0 : GoUInt8)),
((11 : GoUInt8)),
((3 : GoUInt8)),
((8 : GoUInt8))).copy(), new GoArray<GoUInt8>(
((9 : GoUInt8)),
((14 : GoUInt8)),
((15 : GoUInt8)),
((5 : GoUInt8)),
((2 : GoUInt8)),
((8 : GoUInt8)),
((12 : GoUInt8)),
((3 : GoUInt8)),
((7 : GoUInt8)),
((0 : GoUInt8)),
((4 : GoUInt8)),
((10 : GoUInt8)),
((1 : GoUInt8)),
((13 : GoUInt8)),
((11 : GoUInt8)),
((6 : GoUInt8))).copy(), new GoArray<GoUInt8>(
((4 : GoUInt8)),
((3 : GoUInt8)),
((2 : GoUInt8)),
((12 : GoUInt8)),
((9 : GoUInt8)),
((5 : GoUInt8)),
((15 : GoUInt8)),
((10 : GoUInt8)),
((11 : GoUInt8)),
((14 : GoUInt8)),
((1 : GoUInt8)),
((7 : GoUInt8)),
((6 : GoUInt8)),
((0 : GoUInt8)),
((8 : GoUInt8)),
((13 : GoUInt8))).copy()).copy(), new GoArray<GoArray<GoUInt8>>(new GoArray<GoUInt8>(
((4 : GoUInt8)),
((11 : GoUInt8)),
((2 : GoUInt8)),
((14 : GoUInt8)),
((15 : GoUInt8)),
((0 : GoUInt8)),
((8 : GoUInt8)),
((13 : GoUInt8)),
((3 : GoUInt8)),
((12 : GoUInt8)),
((9 : GoUInt8)),
((7 : GoUInt8)),
((5 : GoUInt8)),
((10 : GoUInt8)),
((6 : GoUInt8)),
((1 : GoUInt8))).copy(), new GoArray<GoUInt8>(
((13 : GoUInt8)),
((0 : GoUInt8)),
((11 : GoUInt8)),
((7 : GoUInt8)),
((4 : GoUInt8)),
((9 : GoUInt8)),
((1 : GoUInt8)),
((10 : GoUInt8)),
((14 : GoUInt8)),
((3 : GoUInt8)),
((5 : GoUInt8)),
((12 : GoUInt8)),
((2 : GoUInt8)),
((15 : GoUInt8)),
((8 : GoUInt8)),
((6 : GoUInt8))).copy(), new GoArray<GoUInt8>(
((1 : GoUInt8)),
((4 : GoUInt8)),
((11 : GoUInt8)),
((13 : GoUInt8)),
((12 : GoUInt8)),
((3 : GoUInt8)),
((7 : GoUInt8)),
((14 : GoUInt8)),
((10 : GoUInt8)),
((15 : GoUInt8)),
((6 : GoUInt8)),
((8 : GoUInt8)),
((0 : GoUInt8)),
((5 : GoUInt8)),
((9 : GoUInt8)),
((2 : GoUInt8))).copy(), new GoArray<GoUInt8>(
((6 : GoUInt8)),
((11 : GoUInt8)),
((13 : GoUInt8)),
((8 : GoUInt8)),
((1 : GoUInt8)),
((4 : GoUInt8)),
((10 : GoUInt8)),
((7 : GoUInt8)),
((9 : GoUInt8)),
((5 : GoUInt8)),
((0 : GoUInt8)),
((15 : GoUInt8)),
((14 : GoUInt8)),
((2 : GoUInt8)),
((3 : GoUInt8)),
((12 : GoUInt8))).copy()).copy(), new GoArray<GoArray<GoUInt8>>(new GoArray<GoUInt8>(
((13 : GoUInt8)),
((2 : GoUInt8)),
((8 : GoUInt8)),
((4 : GoUInt8)),
((6 : GoUInt8)),
((15 : GoUInt8)),
((11 : GoUInt8)),
((1 : GoUInt8)),
((10 : GoUInt8)),
((9 : GoUInt8)),
((3 : GoUInt8)),
((14 : GoUInt8)),
((5 : GoUInt8)),
((0 : GoUInt8)),
((12 : GoUInt8)),
((7 : GoUInt8))).copy(), new GoArray<GoUInt8>(
((1 : GoUInt8)),
((15 : GoUInt8)),
((13 : GoUInt8)),
((8 : GoUInt8)),
((10 : GoUInt8)),
((3 : GoUInt8)),
((7 : GoUInt8)),
((4 : GoUInt8)),
((12 : GoUInt8)),
((5 : GoUInt8)),
((6 : GoUInt8)),
((11 : GoUInt8)),
((0 : GoUInt8)),
((14 : GoUInt8)),
((9 : GoUInt8)),
((2 : GoUInt8))).copy(), new GoArray<GoUInt8>(
((7 : GoUInt8)),
((11 : GoUInt8)),
((4 : GoUInt8)),
((1 : GoUInt8)),
((9 : GoUInt8)),
((12 : GoUInt8)),
((14 : GoUInt8)),
((2 : GoUInt8)),
((0 : GoUInt8)),
((6 : GoUInt8)),
((10 : GoUInt8)),
((13 : GoUInt8)),
((15 : GoUInt8)),
((3 : GoUInt8)),
((5 : GoUInt8)),
((8 : GoUInt8))).copy(), new GoArray<GoUInt8>(
((2 : GoUInt8)),
((1 : GoUInt8)),
((14 : GoUInt8)),
((7 : GoUInt8)),
((4 : GoUInt8)),
((10 : GoUInt8)),
((8 : GoUInt8)),
((13 : GoUInt8)),
((15 : GoUInt8)),
((12 : GoUInt8)),
((9 : GoUInt8)),
((0 : GoUInt8)),
((3 : GoUInt8)),
((5 : GoUInt8)),
((6 : GoUInt8)),
((11 : GoUInt8))).copy()).copy()).copy();
var _permutedChoice2 : GoArray<GoUInt8> = new GoArray<GoUInt8>(
((42 : GoUInt8)),
((39 : GoUInt8)),
((45 : GoUInt8)),
((32 : GoUInt8)),
((55 : GoUInt8)),
((51 : GoUInt8)),
((53 : GoUInt8)),
((28 : GoUInt8)),
((41 : GoUInt8)),
((50 : GoUInt8)),
((35 : GoUInt8)),
((46 : GoUInt8)),
((33 : GoUInt8)),
((37 : GoUInt8)),
((44 : GoUInt8)),
((52 : GoUInt8)),
((30 : GoUInt8)),
((48 : GoUInt8)),
((40 : GoUInt8)),
((49 : GoUInt8)),
((29 : GoUInt8)),
((36 : GoUInt8)),
((43 : GoUInt8)),
((54 : GoUInt8)),
((15 : GoUInt8)),
((4 : GoUInt8)),
((25 : GoUInt8)),
((19 : GoUInt8)),
((9 : GoUInt8)),
((1 : GoUInt8)),
((26 : GoUInt8)),
((16 : GoUInt8)),
((5 : GoUInt8)),
((11 : GoUInt8)),
((23 : GoUInt8)),
((8 : GoUInt8)),
((12 : GoUInt8)),
((7 : GoUInt8)),
((17 : GoUInt8)),
((0 : GoUInt8)),
((22 : GoUInt8)),
((3 : GoUInt8)),
((10 : GoUInt8)),
((14 : GoUInt8)),
((6 : GoUInt8)),
((20 : GoUInt8)),
((27 : GoUInt8)),
((24 : GoUInt8))).copy();
var _permutationFunction : GoArray<GoUInt8> = new GoArray<GoUInt8>(
((16 : GoUInt8)),
((25 : GoUInt8)),
((12 : GoUInt8)),
((11 : GoUInt8)),
((3 : GoUInt8)),
((20 : GoUInt8)),
((4 : GoUInt8)),
((15 : GoUInt8)),
((31 : GoUInt8)),
((17 : GoUInt8)),
((9 : GoUInt8)),
((6 : GoUInt8)),
((27 : GoUInt8)),
((14 : GoUInt8)),
((1 : GoUInt8)),
((22 : GoUInt8)),
((30 : GoUInt8)),
((24 : GoUInt8)),
((8 : GoUInt8)),
((18 : GoUInt8)),
((0 : GoUInt8)),
((5 : GoUInt8)),
((29 : GoUInt8)),
((23 : GoUInt8)),
((13 : GoUInt8)),
((19 : GoUInt8)),
((2 : GoUInt8)),
((26 : GoUInt8)),
((10 : GoUInt8)),
((21 : GoUInt8)),
((28 : GoUInt8)),
((7 : GoUInt8))).copy();
var _ksRotations : GoArray<GoUInt8> = new GoArray<GoUInt8>(
((1 : GoUInt8)),
((1 : GoUInt8)),
((2 : GoUInt8)),
((2 : GoUInt8)),
((2 : GoUInt8)),
((2 : GoUInt8)),
((2 : GoUInt8)),
((2 : GoUInt8)),
((1 : GoUInt8)),
((2 : GoUInt8)),
((2 : GoUInt8)),
((2 : GoUInt8)),
((2 : GoUInt8)),
((2 : GoUInt8)),
((2 : GoUInt8)),
((1 : GoUInt8))).copy();
var _initialPermutation : GoArray<GoUInt8> = new GoArray<GoUInt8>(
((6 : GoUInt8)),
((14 : GoUInt8)),
((22 : GoUInt8)),
((30 : GoUInt8)),
((38 : GoUInt8)),
((46 : GoUInt8)),
((54 : GoUInt8)),
((62 : GoUInt8)),
((4 : GoUInt8)),
((12 : GoUInt8)),
((20 : GoUInt8)),
((28 : GoUInt8)),
((36 : GoUInt8)),
((44 : GoUInt8)),
((52 : GoUInt8)),
((60 : GoUInt8)),
((2 : GoUInt8)),
((10 : GoUInt8)),
((18 : GoUInt8)),
((26 : GoUInt8)),
((34 : GoUInt8)),
((42 : GoUInt8)),
((50 : GoUInt8)),
((58 : GoUInt8)),
((0 : GoUInt8)),
((8 : GoUInt8)),
((16 : GoUInt8)),
((24 : GoUInt8)),
((32 : GoUInt8)),
((40 : GoUInt8)),
((48 : GoUInt8)),
((56 : GoUInt8)),
((7 : GoUInt8)),
((15 : GoUInt8)),
((23 : GoUInt8)),
((31 : GoUInt8)),
((39 : GoUInt8)),
((47 : GoUInt8)),
((55 : GoUInt8)),
((63 : GoUInt8)),
((5 : GoUInt8)),
((13 : GoUInt8)),
((21 : GoUInt8)),
((29 : GoUInt8)),
((37 : GoUInt8)),
((45 : GoUInt8)),
((53 : GoUInt8)),
((61 : GoUInt8)),
((3 : GoUInt8)),
((11 : GoUInt8)),
((19 : GoUInt8)),
((27 : GoUInt8)),
((35 : GoUInt8)),
((43 : GoUInt8)),
((51 : GoUInt8)),
((59 : GoUInt8)),
((1 : GoUInt8)),
((9 : GoUInt8)),
((17 : GoUInt8)),
((25 : GoUInt8)),
((33 : GoUInt8)),
((41 : GoUInt8)),
((49 : GoUInt8)),
((57 : GoUInt8))).copy();
final blockSize : GoInt64 = ((8 : GoUnTypedInt));
var _feistelBox : GoArray<GoArray<GoUInt32>> = new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 8) new GoArray<GoUInt32>(...[for (i in 0 ... 64) ((0 : GoUInt32))])]);
var _feistelBoxOnce : stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();
var _expansionFunction : GoArray<GoUInt8> = new GoArray<GoUInt8>(
((0 : GoUInt8)),
((31 : GoUInt8)),
((30 : GoUInt8)),
((29 : GoUInt8)),
((28 : GoUInt8)),
((27 : GoUInt8)),
((28 : GoUInt8)),
((27 : GoUInt8)),
((26 : GoUInt8)),
((25 : GoUInt8)),
((24 : GoUInt8)),
((23 : GoUInt8)),
((24 : GoUInt8)),
((23 : GoUInt8)),
((22 : GoUInt8)),
((21 : GoUInt8)),
((20 : GoUInt8)),
((19 : GoUInt8)),
((20 : GoUInt8)),
((19 : GoUInt8)),
((18 : GoUInt8)),
((17 : GoUInt8)),
((16 : GoUInt8)),
((15 : GoUInt8)),
((16 : GoUInt8)),
((15 : GoUInt8)),
((14 : GoUInt8)),
((13 : GoUInt8)),
((12 : GoUInt8)),
((11 : GoUInt8)),
((12 : GoUInt8)),
((11 : GoUInt8)),
((10 : GoUInt8)),
((9 : GoUInt8)),
((8 : GoUInt8)),
((7 : GoUInt8)),
((8 : GoUInt8)),
((7 : GoUInt8)),
((6 : GoUInt8)),
((5 : GoUInt8)),
((4 : GoUInt8)),
((3 : GoUInt8)),
((4 : GoUInt8)),
((3 : GoUInt8)),
((2 : GoUInt8)),
((1 : GoUInt8)),
((0 : GoUInt8)),
((31 : GoUInt8))).copy();
function _cryptBlock(_subkeys:Slice<GoUInt64>, _dst:Slice<GoByte>, _src:Slice<GoByte>, _decrypt:Bool):Void {
        var _b:GoUInt64 = stdgo.encoding.binary.Binary.bigEndian.uint64(_src);
        _b = _permuteInitialBlock(_b);
        var _left:GoUInt32 = (((_b >> ((32 : GoUnTypedInt))) : GoUInt32)), _right:GoUInt32 = ((_b : GoUInt32));
        _left = ((_left << ((1 : GoUnTypedInt)))) | ((_left >> ((31 : GoUnTypedInt))));
        _right = ((_right << ((1 : GoUnTypedInt)))) | ((_right >> ((31 : GoUnTypedInt))));
        if (_decrypt) {
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < ((8 : GoInt)), _i++, {
                    {
                        var __tmp__ = _feistel(_left, _right, _subkeys[((15 : GoInt)) - ((2 : GoInt)) * _i], _subkeys[((15 : GoInt)) - (((2 : GoInt)) * _i + ((1 : GoInt)))]);
                        _left = __tmp__._0;
                        _right = __tmp__._1;
                    };
                });
            };
        } else {
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < ((8 : GoInt)), _i++, {
                    {
                        var __tmp__ = _feistel(_left, _right, _subkeys[((2 : GoInt)) * _i], _subkeys[((2 : GoInt)) * _i + ((1 : GoInt))]);
                        _left = __tmp__._0;
                        _right = __tmp__._1;
                    };
                });
            };
        };
        _left = ((_left << ((31 : GoUnTypedInt)))) | ((_left >> ((1 : GoUnTypedInt))));
        _right = ((_right << ((31 : GoUnTypedInt)))) | ((_right >> ((1 : GoUnTypedInt))));
        var _preOutput:GoUInt64 = ((((_right : GoUInt64)) << ((32 : GoUnTypedInt)))) | ((_left : GoUInt64));
        stdgo.encoding.binary.Binary.bigEndian.putUint64(_dst, _permuteFinalBlock(_preOutput));
    }
/**
    // Encrypt one block from src into dst, using the subkeys.
**/
function _encryptBlock(_subkeys:Slice<GoUInt64>, _dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
        _cryptBlock(_subkeys, _dst, _src, false);
    }
/**
    // Decrypt one block from src into dst, using the subkeys.
**/
function _decryptBlock(_subkeys:Slice<GoUInt64>, _dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
        _cryptBlock(_subkeys, _dst, _src, true);
    }
/**
    // DES Feistel function. feistelBox must be initialized via
    // feistelBoxOnce.Do(initFeistelBox) first.
**/
function _feistel(_l:GoUInt32, _r:GoUInt32, _k0:GoUInt64, _k1:GoUInt64):{ var _0 : GoUInt32; var _1 : GoUInt32; } {
        var _lout:GoUInt32 = ((0 : GoUInt32)), _rout:GoUInt32 = ((0 : GoUInt32));
        var _t:GoUInt32 = ((0 : GoUInt32));
        _t = _r ^ (((_k0 >> ((32 : GoUnTypedInt))) : GoUInt32));
        _l = _l ^ (_feistelBox[((7 : GoInt))][_t & ((63 : GoUInt32))] ^ _feistelBox[((5 : GoInt))][((_t >> ((8 : GoUnTypedInt)))) & ((63 : GoUInt32))] ^ _feistelBox[((3 : GoInt))][((_t >> ((16 : GoUnTypedInt)))) & ((63 : GoUInt32))] ^ _feistelBox[((1 : GoInt))][((_t >> ((24 : GoUnTypedInt)))) & ((63 : GoUInt32))]);
        _t = (((_r << ((28 : GoUnTypedInt)))) | ((_r >> ((4 : GoUnTypedInt))))) ^ ((_k0 : GoUInt32));
        _l = _l ^ (_feistelBox[((6 : GoInt))][(_t) & ((63 : GoUInt32))] ^ _feistelBox[((4 : GoInt))][((_t >> ((8 : GoUnTypedInt)))) & ((63 : GoUInt32))] ^ _feistelBox[((2 : GoInt))][((_t >> ((16 : GoUnTypedInt)))) & ((63 : GoUInt32))] ^ _feistelBox[((0 : GoInt))][((_t >> ((24 : GoUnTypedInt)))) & ((63 : GoUInt32))]);
        _t = _l ^ (((_k1 >> ((32 : GoUnTypedInt))) : GoUInt32));
        _r = _r ^ (_feistelBox[((7 : GoInt))][_t & ((63 : GoUInt32))] ^ _feistelBox[((5 : GoInt))][((_t >> ((8 : GoUnTypedInt)))) & ((63 : GoUInt32))] ^ _feistelBox[((3 : GoInt))][((_t >> ((16 : GoUnTypedInt)))) & ((63 : GoUInt32))] ^ _feistelBox[((1 : GoInt))][((_t >> ((24 : GoUnTypedInt)))) & ((63 : GoUInt32))]);
        _t = (((_l << ((28 : GoUnTypedInt)))) | ((_l >> ((4 : GoUnTypedInt))))) ^ ((_k1 : GoUInt32));
        _r = _r ^ (_feistelBox[((6 : GoInt))][(_t) & ((63 : GoUInt32))] ^ _feistelBox[((4 : GoInt))][((_t >> ((8 : GoUnTypedInt)))) & ((63 : GoUInt32))] ^ _feistelBox[((2 : GoInt))][((_t >> ((16 : GoUnTypedInt)))) & ((63 : GoUInt32))] ^ _feistelBox[((0 : GoInt))][((_t >> ((24 : GoUnTypedInt)))) & ((63 : GoUInt32))]);
        return { _0 : _l, _1 : _r };
    }
/**
    // general purpose function to perform DES block permutations
**/
function _permuteBlock(_src:GoUInt64, _permutation:Slice<GoUInt8>):GoUInt64 {
        var _block:GoUInt64 = ((0 : GoUInt64));
        for (_position => _n in _permutation) {
            var _bit:GoUInt64 = ((_src >> _n)) & ((1 : GoUInt64));
            _block = _block | ((_bit << ((((_permutation.length - ((1 : GoInt))) - _position) : GoUInt))));
        };
        return _block;
    }
function _initFeistelBox():Void {
        for (_s => _ in _sBoxes) {
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < ((4 : GoInt)), _i++, {
                    {
                        var _j:GoInt = ((0 : GoInt));
                        Go.cfor(_j < ((16 : GoInt)), _j++, {
                            var _f:GoUInt64 = (((_sBoxes[_s][_i][_j] : GoUInt64)) << (((4 : GoUInt)) * (((7 : GoUInt)) - ((_s : GoUInt)))));
                            _f = _permuteBlock(_f, _permutationFunction.__slice__(0));
                            var _row:GoUInt8 = ((((((_i & ((2 : GoInt))) << ((4 : GoUnTypedInt)))) | _i & ((1 : GoInt))) : GoUInt8));
                            var _col:GoUInt8 = (((_j << ((1 : GoUnTypedInt))) : GoUInt8));
                            var _t:GoUInt8 = _row | _col;
                            _f = ((_f << ((1 : GoUnTypedInt)))) | ((_f >> ((31 : GoUnTypedInt))));
                            _feistelBox[_s][_t] = ((_f : GoUInt32));
                        });
                    };
                });
            };
        };
    }
/**
    // permuteInitialBlock is equivalent to the permutation defined
    // by initialPermutation.
**/
function _permuteInitialBlock(_block:GoUInt64):GoUInt64 {
        var _b1:GoUInt64 = (_block >> ((48 : GoUnTypedInt)));
        var _b2:GoUInt64 = (_block << ((48 : GoUnTypedInt)));
        _block = _block ^ (_b1 ^ _b2 ^ (_b1 << ((48 : GoUnTypedInt))) ^ (_b2 >> ((48 : GoUnTypedInt))));
        _b1 = (_block >> ((32 : GoUnTypedInt))) & ((16711935 : GoUInt64));
        _b2 = (_block & (("4278255360" : GoUInt64)));
        _block = _block ^ ((_b1 << ((32 : GoUnTypedInt))) ^ _b2 ^ (_b1 << ((8 : GoUnTypedInt))) ^ (_b2 << ((24 : GoUnTypedInt))));
        _b1 = _block & (("1085086035472220160" : GoUInt64));
        _b2 = _block & (("264913582878960" : GoUInt64));
        _block = _block ^ (_b1 ^ _b2 ^ (_b1 >> ((12 : GoUnTypedInt))) ^ (_b2 << ((12 : GoUnTypedInt))));
        _b1 = _block & (("3674993371882992384" : GoUInt64));
        _b2 = _block & (("57421771435671756" : GoUInt64));
        _block = _block ^ (_b1 ^ _b2 ^ (_b1 >> ((6 : GoUnTypedInt))) ^ (_b2 << ((6 : GoUnTypedInt))));
        _b1 = _block & (("12297829381041378645" : GoUInt64));
        _block = _block ^ (_b1 ^ (_b1 >> ((33 : GoUnTypedInt))) ^ (_b1 << ((33 : GoUnTypedInt))));
        return _block;
    }
/**
    // permuteInitialBlock is equivalent to the permutation defined
    // by finalPermutation.
**/
function _permuteFinalBlock(_block:GoUInt64):GoUInt64 {
        var _b1:GoUInt64 = _block & (("12297829381041378645" : GoUInt64));
        _block = _block ^ (_b1 ^ (_b1 >> ((33 : GoUnTypedInt))) ^ (_b1 << ((33 : GoUnTypedInt))));
        _b1 = _block & (("3674993371882992384" : GoUInt64));
        var _b2:GoUInt64 = _block & (("57421771435671756" : GoUInt64));
        _block = _block ^ (_b1 ^ _b2 ^ (_b1 >> ((6 : GoUnTypedInt))) ^ (_b2 << ((6 : GoUnTypedInt))));
        _b1 = _block & (("1085086035472220160" : GoUInt64));
        _b2 = _block & (("264913582878960" : GoUInt64));
        _block = _block ^ (_b1 ^ _b2 ^ (_b1 >> ((12 : GoUnTypedInt))) ^ (_b2 << ((12 : GoUnTypedInt))));
        _b1 = (_block >> ((32 : GoUnTypedInt))) & ((16711935 : GoUInt64));
        _b2 = (_block & (("4278255360" : GoUInt64)));
        _block = _block ^ ((_b1 << ((32 : GoUnTypedInt))) ^ _b2 ^ (_b1 << ((8 : GoUnTypedInt))) ^ (_b2 << ((24 : GoUnTypedInt))));
        _b1 = (_block >> ((48 : GoUnTypedInt)));
        _b2 = (_block << ((48 : GoUnTypedInt)));
        _block = _block ^ (_b1 ^ _b2 ^ (_b1 << ((48 : GoUnTypedInt))) ^ (_b2 >> ((48 : GoUnTypedInt))));
        return _block;
    }
/**
    // creates 16 28-bit blocks rotated according
    // to the rotation schedule
**/
function _ksRotate(_in:GoUInt32):Slice<GoUInt32> {
        var _out:Slice<GoUInt32> = new Slice<GoUInt32>().nil();
        _out = new Slice<GoUInt32>(...[for (i in 0 ... ((((16 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt32))]);
        var _last:GoUInt32 = _in;
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((16 : GoInt)), _i++, {
                var _left:GoUInt32 = (((_last << (((4 : GoUInt8)) + _ksRotations[_i]))) >> ((4 : GoUnTypedInt)));
                var _right:GoUInt32 = (((_last << ((4 : GoUnTypedInt)))) >> (((32 : GoUInt8)) - _ksRotations[_i]));
                _out[_i] = _left | _right;
                _last = _out[_i];
            });
        };
        return _out;
    }
/**
    // Expand 48-bit input to 64-bit, with each 6-bit block padded by extra two bits at the top.
    // By doing so, we can have the input blocks (four bits each), and the key blocks (six bits each) well-aligned without
    // extra shifts/rotations for alignments.
**/
function _unpack(_x:GoUInt64):GoUInt64 {
        var _result:GoUInt64 = ((0 : GoUInt64));
        _result = ((((_x >> (((6 : GoUnTypedInt)) * ((1 : GoUnTypedInt))))) & ((255 : GoUInt64))) << (((8 : GoUnTypedInt)) * ((0 : GoUnTypedInt)))) | ((((_x >> (((6 : GoUnTypedInt)) * ((3 : GoUnTypedInt))))) & ((255 : GoUInt64))) << (((8 : GoUnTypedInt)) * ((1 : GoUnTypedInt)))) | ((((_x >> (((6 : GoUnTypedInt)) * ((5 : GoUnTypedInt))))) & ((255 : GoUInt64))) << (((8 : GoUnTypedInt)) * ((2 : GoUnTypedInt)))) | ((((_x >> (((6 : GoUnTypedInt)) * ((7 : GoUnTypedInt))))) & ((255 : GoUInt64))) << (((8 : GoUnTypedInt)) * ((3 : GoUnTypedInt)))) | ((((_x >> (((6 : GoUnTypedInt)) * ((0 : GoUnTypedInt))))) & ((255 : GoUInt64))) << (((8 : GoUnTypedInt)) * ((4 : GoUnTypedInt)))) | ((((_x >> (((6 : GoUnTypedInt)) * ((2 : GoUnTypedInt))))) & ((255 : GoUInt64))) << (((8 : GoUnTypedInt)) * ((5 : GoUnTypedInt)))) | ((((_x >> (((6 : GoUnTypedInt)) * ((4 : GoUnTypedInt))))) & ((255 : GoUInt64))) << (((8 : GoUnTypedInt)) * ((6 : GoUnTypedInt)))) | ((((_x >> (((6 : GoUnTypedInt)) * ((6 : GoUnTypedInt))))) & ((255 : GoUInt64))) << (((8 : GoUnTypedInt)) * ((7 : GoUnTypedInt))));
        return _result;
    }
/**
    // NewCipher creates and returns a new cipher.Block.
**/
function newCipher(_key:Slice<GoByte>):{ var _0 : stdgo.crypto.cipher.Cipher.Block; var _1 : Error; } {
        if (_key.length != ((8 : GoInt))) {
            return { _0 : ((null : stdgo.crypto.cipher.Cipher.Block)), _1 : new KeySizeError(_key.length) };
        };
        var _c:Pointer<T_desCipher> = Go.pointer(new T_desCipher());
        _c.value._generateSubkeys(_key);
        return { _0 : _c.value, _1 : ((null : stdgo.Error)) };
    }
/**
    // NewTripleDESCipher creates and returns a new cipher.Block.
**/
function newTripleDESCipher(_key:Slice<GoByte>):{ var _0 : stdgo.crypto.cipher.Cipher.Block; var _1 : Error; } {
        if (_key.length != ((24 : GoInt))) {
            return { _0 : ((null : stdgo.crypto.cipher.Cipher.Block)), _1 : new KeySizeError(_key.length) };
        };
        var _c:Pointer<T_tripleDESCipher> = Go.pointer(new T_tripleDESCipher());
        _c.value._cipher1._generateSubkeys(_key.__slice__(0, ((8 : GoInt))));
        _c.value._cipher2._generateSubkeys(_key.__slice__(((8 : GoInt)), ((16 : GoInt))));
        _c.value._cipher3._generateSubkeys(_key.__slice__(((16 : GoInt))));
        return { _0 : _c.value, _1 : ((null : stdgo.Error)) };
    }
class KeySizeError_extension_fields {
    public function error(__tmp__):GoString return __tmp__.error();
}
class T_desCipher_extension_fields {
    public function _generateSubkeys(__tmp__, _keyBytes:Slice<GoByte>):Void __tmp__._generateSubkeys(_keyBytes);
    public function blockSize(__tmp__):GoInt return __tmp__.blockSize();
    public function encrypt(__tmp__, _dst:Slice<GoByte>, _src:Slice<GoByte>):Void __tmp__.encrypt(_dst, _src);
    public function decrypt(__tmp__, _dst:Slice<GoByte>, _src:Slice<GoByte>):Void __tmp__.decrypt(_dst, _src);
}
class T_tripleDESCipher_extension_fields {
    public function blockSize(__tmp__):GoInt return __tmp__.blockSize();
    public function encrypt(__tmp__, _dst:Slice<GoByte>, _src:Slice<GoByte>):Void __tmp__.encrypt(_dst, _src);
    public function decrypt(__tmp__, _dst:Slice<GoByte>, _src:Slice<GoByte>):Void __tmp__.decrypt(_dst, _src);
}
