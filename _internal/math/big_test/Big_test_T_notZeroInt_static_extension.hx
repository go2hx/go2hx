package _internal.math.big_test;
@:keep @:allow(_internal.math.big_test.Big_test.T_notZeroInt_asInterface) class T_notZeroInt_static_extension {
    @:keep
    static public function generate( _:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _rand:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>, _size:stdgo.GoInt):stdgo._internal.reflect.Reflect_Value.Value {
        @:recv var _:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt = _?.__copy__();
        var _n = _internal.math.big_test.Big_test__generatePositiveInt._generatePositiveInt(_rand, _size);
        if (_rand.intn((4 : stdgo.GoInt)) == ((0 : stdgo.GoInt))) {
            _n.neg(_n);
        };
        if (_n.sign() == ((0 : stdgo.GoInt))) {
            _n.setInt64((1i64 : stdgo.GoInt64));
        };
        return stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((new _internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt(_n) : _internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt))))?.__copy__();
    }
    @:embedded
    public static function _setFromScanner( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _r:stdgo._internal.io.Io_ByteScanner.ByteScanner, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : Bool; } return __self__._setFromScanner(_r, _base);
    @:embedded
    public static function _scan( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _r:stdgo._internal.io.Io_ByteScanner.ByteScanner, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__._scan(_r, _base);
    @:embedded
    public static function _scaleDenom( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _f:stdgo._internal.math.big.Big_T_nat.T_nat) __self__._scaleDenom(_x, _f);
    @:embedded
    public static function _modSqrtTonelliShanks( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__._modSqrtTonelliShanks(_z, _x);
    @:embedded
    public static function _modSqrt5Mod8Prime( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__._modSqrt5Mod8Prime(_z, _x);
    @:embedded
    public static function _modSqrt3Mod4Prime( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__._modSqrt3Mod4Prime(_z, _x);
    @:embedded
    public static function _lehmerGCD( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _a:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__._lehmerGCD(_x, _y, _a, _b);
    @:embedded
    public static function _expSlow( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__._expSlow(_x, _y, _m);
    @:embedded
    public static function _exp( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _slow:Bool):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__._exp(_x, _y, _m, _slow);
    @:embedded
    public static function xor( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.xor(_z, _x);
    @:embedded
    public static function unmarshalText( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, __0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.unmarshalText(__0);
    @:embedded
    public static function unmarshalJSON( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, __0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.unmarshalJSON(__0);
    @:embedded
    public static function uint64( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt):stdgo.GoUInt64 return __self__.uint64();
    @:embedded
    public static function trailingZeroBits( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt):stdgo.GoUInt return __self__.trailingZeroBits();
    @:embedded
    public static function text( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _i:stdgo.GoInt):stdgo.GoString return __self__.text(_i);
    @:embedded
    public static function sub( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.sub(_z, _x);
    @:embedded
    public static function string( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt):stdgo.GoString return __self__.string();
    @:embedded
    public static function sqrt( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.sqrt(_x);
    @:embedded
    public static function sign( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt):stdgo.GoInt return __self__.sign();
    @:embedded
    public static function setUint64( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, __0:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.setUint64(__0);
    @:embedded
    public static function setString( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _s:stdgo.GoString, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : Bool; } return __self__.setString(_s, _base);
    @:embedded
    public static function setInt64( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, __0:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.setInt64(__0);
    @:embedded
    public static function setBytes( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, __0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.setBytes(__0);
    @:embedded
    public static function setBits( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, __0:stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.setBits(__0);
    @:embedded
    public static function setBit( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _i:stdgo.GoInt, _b:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.setBit(_x, _i, _b);
    @:embedded
    public static function set( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.set(_x);
    @:embedded
    public static function scan( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _s:stdgo._internal.fmt.Fmt_ScanState.ScanState, _ch:stdgo.GoInt32):stdgo.Error return __self__.scan(_s, _ch);
    @:embedded
    public static function rsh( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _n:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.rsh(_x, _n);
    @:embedded
    public static function rem( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.rem(_z, _x);
    @:embedded
    public static function rand( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _rnd:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>, _n:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.rand(_rnd, _n);
    @:embedded
    public static function quoRem( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return __self__.quoRem(_x, _y, _m);
    @:embedded
    public static function quo( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.quo(_z, _x);
    @:embedded
    public static function probablyPrime( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _i:stdgo.GoInt):Bool return __self__.probablyPrime(_i);
    @:embedded
    public static function or( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.or(_z, _x);
    @:embedded
    public static function not( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.not(_x);
    @:embedded
    public static function neg( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.neg(_x);
    @:embedded
    public static function mulRange( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _n:stdgo.GoInt64, _k:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.mulRange(_n, _k);
    @:embedded
    public static function mul( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.mul(_z, _x);
    @:embedded
    public static function modSqrt( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.modSqrt(_z, _x);
    @:embedded
    public static function modInverse( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.modInverse(_z, _x);
    @:embedded
    public static function mod( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.mod(_z, _x);
    @:embedded
    public static function marshalText( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.marshalText();
    @:embedded
    public static function marshalJSON( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.marshalJSON();
    @:embedded
    public static function lsh( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _n:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.lsh(_x, _n);
    @:embedded
    public static function isUint64( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt):Bool return __self__.isUint64();
    @:embedded
    public static function isInt64( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt):Bool return __self__.isInt64();
    @:embedded
    public static function int64( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt):stdgo.GoInt64 return __self__.int64();
    @:embedded
    public static function gobEncode( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.gobEncode();
    @:embedded
    public static function gobDecode( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, __0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.gobDecode(__0);
    @:embedded
    public static function gcd( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _a:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.gcd(_x, _y, _a, _b);
    @:embedded
    public static function format( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _s:stdgo._internal.fmt.Fmt_State.State, _ch:stdgo.GoInt32) __self__.format(_s, _ch);
    @:embedded
    public static function float64( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt):{ var _0 : stdgo.GoFloat64; var _1 : stdgo._internal.math.big.Big_Accuracy.Accuracy; } return __self__.float64();
    @:embedded
    public static function fillBytes( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, __0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return __self__.fillBytes(__0);
    @:embedded
    public static function exp( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.exp(_x, _y, _m);
    @:embedded
    public static function divMod( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return __self__.divMod(_x, _y, _m);
    @:embedded
    public static function div( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.div(_z, _x);
    @:embedded
    public static function cmpAbs( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.GoInt return __self__.cmpAbs(_x);
    @:embedded
    public static function cmp( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.GoInt return __self__.cmp(_x);
    @:embedded
    public static function bytes( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt):stdgo.Slice<stdgo.GoUInt8> return __self__.bytes();
    @:embedded
    public static function bits( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt):stdgo.Slice<stdgo._internal.math.big.Big_Word.Word> return __self__.bits();
    @:embedded
    public static function bitLen( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt):stdgo.GoInt return __self__.bitLen();
    @:embedded
    public static function bit( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _i:stdgo.GoInt):stdgo.GoUInt return __self__.bit(_i);
    @:embedded
    public static function binomial( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _n:stdgo.GoInt64, _k:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.binomial(_n, _k);
    @:embedded
    public static function append( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _buf:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return __self__.append(_buf, _base);
    @:embedded
    public static function andNot( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.andNot(_z, _x);
    @:embedded
    public static function and( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.and(_z, _x);
    @:embedded
    public static function add( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.add(_z, _x);
    @:embedded
    public static function abs( __self__:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.abs(_x);
}
