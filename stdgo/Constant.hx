package stdgo;
final unknown : Kind = stdgo._internal.go.constant.Constant_unknown.unknown;
final bool_ = stdgo._internal.go.constant.Constant_bool_.bool_;
final string = stdgo._internal.go.constant.Constant_string.string;
final int_ = stdgo._internal.go.constant.Constant_int_.int_;
final float_ = stdgo._internal.go.constant.Constant_float_.float_;
final complex = stdgo._internal.go.constant.Constant_complex.complex;
class Value_static_extension {
    static public function _implementsValue(t:stdgo._internal.go.constant.Constant_value.Value):Void {
        stdgo._internal.go.constant.Constant_value_static_extension.Value_static_extension._implementsValue(t);
    }
    static public function exactString(t:stdgo._internal.go.constant.Constant_value.Value):String {
        return stdgo._internal.go.constant.Constant_value_static_extension.Value_static_extension.exactString(t);
    }
    static public function string(t:stdgo._internal.go.constant.Constant_value.Value):String {
        return stdgo._internal.go.constant.Constant_value_static_extension.Value_static_extension.string(t);
    }
    static public function kind(t:stdgo._internal.go.constant.Constant_value.Value):Kind {
        return stdgo._internal.go.constant.Constant_value_static_extension.Value_static_extension.kind(t);
    }
}
@:forward abstract Value(stdgo._internal.go.constant.Constant_value.Value) from stdgo._internal.go.constant.Constant_value.Value to stdgo._internal.go.constant.Constant_value.Value {
    @:from
    static function fromHaxeInterface(x:{ function kind():Kind; function string():String; function exactString():String; function _implementsValue():Void; }):Value {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Value = { kind : () -> x.kind(), string : () -> x.string(), exactString : () -> x.exactString(), _implementsValue : () -> x._implementsValue(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.go.constant.Constant.T_unknownVal_static_extension) @:dox(hide) abstract T_unknownVal(stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) from stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal to stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal {
    public function new() this = new stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.constant.Constant.T_stringVal_static_extension) @:dox(hide) abstract T_stringVal(stdgo._internal.go.constant.Constant_t_stringval.T_stringVal) from stdgo._internal.go.constant.Constant_t_stringval.T_stringVal to stdgo._internal.go.constant.Constant_t_stringval.T_stringVal {
    public var _mu(get, set) : stdgo._internal.sync.Sync_mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_mutex.Mutex):stdgo._internal.sync.Sync_mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _s(get, set) : String;
    function get__s():String return this._s;
    function set__s(v:String):String {
        this._s = (v : stdgo.GoString);
        return v;
    }
    public var _l(get, set) : T_stringVal;
    function get__l():T_stringVal return this._l;
    function set__l(v:T_stringVal):T_stringVal {
        this._l = (v : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>);
        return v;
    }
    public var _r(get, set) : T_stringVal;
    function get__r():T_stringVal return this._r;
    function set__r(v:T_stringVal):T_stringVal {
        this._r = (v : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>);
        return v;
    }
    public function new(?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_s:String, ?_l:T_stringVal, ?_r:T_stringVal) this = new stdgo._internal.go.constant.Constant_t_stringval.T_stringVal(_mu, (_s : stdgo.GoString), (_l : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>), (_r : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.constant.Constant.T_intVal_static_extension) @:dox(hide) abstract T_intVal(stdgo._internal.go.constant.Constant_t_intval.T_intVal) from stdgo._internal.go.constant.Constant_t_intval.T_intVal to stdgo._internal.go.constant.Constant_t_intval.T_intVal {
    public var _val(get, set) : stdgo._internal.math.big.Big_int_.Int_;
    function get__val():stdgo._internal.math.big.Big_int_.Int_ return this._val;
    function set__val(v:stdgo._internal.math.big.Big_int_.Int_):stdgo._internal.math.big.Big_int_.Int_ {
        this._val = (v : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return v;
    }
    public function new(?_val:stdgo._internal.math.big.Big_int_.Int_) this = new stdgo._internal.go.constant.Constant_t_intval.T_intVal((_val : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.constant.Constant.T_ratVal_static_extension) @:dox(hide) abstract T_ratVal(stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) from stdgo._internal.go.constant.Constant_t_ratval.T_ratVal to stdgo._internal.go.constant.Constant_t_ratval.T_ratVal {
    public var _val(get, set) : stdgo._internal.math.big.Big_rat.Rat;
    function get__val():stdgo._internal.math.big.Big_rat.Rat return this._val;
    function set__val(v:stdgo._internal.math.big.Big_rat.Rat):stdgo._internal.math.big.Big_rat.Rat {
        this._val = (v : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        return v;
    }
    public function new(?_val:stdgo._internal.math.big.Big_rat.Rat) this = new stdgo._internal.go.constant.Constant_t_ratval.T_ratVal((_val : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.constant.Constant.T_floatVal_static_extension) @:dox(hide) abstract T_floatVal(stdgo._internal.go.constant.Constant_t_floatval.T_floatVal) from stdgo._internal.go.constant.Constant_t_floatval.T_floatVal to stdgo._internal.go.constant.Constant_t_floatval.T_floatVal {
    public var _val(get, set) : stdgo._internal.math.big.Big_float_.Float_;
    function get__val():stdgo._internal.math.big.Big_float_.Float_ return this._val;
    function set__val(v:stdgo._internal.math.big.Big_float_.Float_):stdgo._internal.math.big.Big_float_.Float_ {
        this._val = (v : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        return v;
    }
    public function new(?_val:stdgo._internal.math.big.Big_float_.Float_) this = new stdgo._internal.go.constant.Constant_t_floatval.T_floatVal((_val : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.constant.Constant.T_complexVal_static_extension) @:dox(hide) abstract T_complexVal(stdgo._internal.go.constant.Constant_t_complexval.T_complexVal) from stdgo._internal.go.constant.Constant_t_complexval.T_complexVal to stdgo._internal.go.constant.Constant_t_complexval.T_complexVal {
    public var _re(get, set) : Value;
    function get__re():Value return this._re;
    function set__re(v:Value):Value {
        this._re = v;
        return v;
    }
    public var _im(get, set) : Value;
    function get__im():Value return this._im;
    function set__im(v:Value):Value {
        this._im = v;
        return v;
    }
    public function new(?_re:Value, ?_im:Value) this = new stdgo._internal.go.constant.Constant_t_complexval.T_complexVal(_re, _im);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.constant.Constant.T_makeTestCase_static_extension) @:dox(hide) abstract T_makeTestCase(stdgo._internal.go.constant.Constant_t_maketestcase.T_makeTestCase) from stdgo._internal.go.constant.Constant_t_maketestcase.T_makeTestCase to stdgo._internal.go.constant.Constant_t_maketestcase.T_makeTestCase {
    public var _kind(get, set) : Kind;
    function get__kind():Kind return this._kind;
    function set__kind(v:Kind):Kind {
        this._kind = v;
        return v;
    }
    public var _arg(get, set) : stdgo.AnyInterface;
    function get__arg():stdgo.AnyInterface return this._arg;
    function set__arg(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._arg = (v : stdgo.AnyInterface);
        return v;
    }
    public var _want(get, set) : stdgo.AnyInterface;
    function get__want():stdgo.AnyInterface return this._want;
    function set__want(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._want = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?_kind:Kind, ?_arg:stdgo.AnyInterface, ?_want:stdgo.AnyInterface) this = new stdgo._internal.go.constant.Constant_t_maketestcase.T_makeTestCase(_kind, (_arg : stdgo.AnyInterface), (_want : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.go.constant.Constant_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {

}
@:dox(hide) typedef T__struct_0 = stdgo._internal.go.constant.Constant_t__struct_0.T__struct_0;
@:dox(hide) typedef T__struct_1Pointer = stdgo._internal.go.constant.Constant_t__struct_1pointer.T__struct_1Pointer;
@:dox(hide) class T__struct_1_static_extension {

}
@:dox(hide) typedef T__struct_1 = stdgo._internal.go.constant.Constant_t__struct_1.T__struct_1;
@:dox(hide) typedef T__struct_2Pointer = stdgo._internal.go.constant.Constant_t__struct_2pointer.T__struct_2Pointer;
@:dox(hide) class T__struct_2_static_extension {

}
@:dox(hide) typedef T__struct_2 = stdgo._internal.go.constant.Constant_t__struct_2.T__struct_2;
typedef Kind = stdgo._internal.go.constant.Constant_kind.Kind;
@:dox(hide) typedef T_boolVal = stdgo._internal.go.constant.Constant_t_boolval.T_boolVal;
@:dox(hide) typedef T_int64Val = stdgo._internal.go.constant.Constant_t_int64val.T_int64Val;
@:dox(hide) typedef T_unknownValPointer = stdgo._internal.go.constant.Constant_t_unknownvalpointer.T_unknownValPointer;
@:dox(hide) class T_unknownVal_static_extension {
    static public function _implementsValue(_:T_unknownVal):Void {
        stdgo._internal.go.constant.Constant_t_unknownval_static_extension.T_unknownVal_static_extension._implementsValue(_);
    }
    static public function exactString(_x:T_unknownVal):String {
        return stdgo._internal.go.constant.Constant_t_unknownval_static_extension.T_unknownVal_static_extension.exactString(_x);
    }
    static public function string(_:T_unknownVal):String {
        return stdgo._internal.go.constant.Constant_t_unknownval_static_extension.T_unknownVal_static_extension.string(_);
    }
    static public function kind(_:T_unknownVal):Kind {
        return stdgo._internal.go.constant.Constant_t_unknownval_static_extension.T_unknownVal_static_extension.kind(_);
    }
}
@:dox(hide) typedef T_stringValPointer = stdgo._internal.go.constant.Constant_t_stringvalpointer.T_stringValPointer;
@:dox(hide) class T_stringVal_static_extension {
    static public function _implementsValue(_:T_stringVal):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>);
        stdgo._internal.go.constant.Constant_t_stringval_static_extension.T_stringVal_static_extension._implementsValue(_);
    }
    static public function exactString(_x:T_stringVal):String {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>);
        return stdgo._internal.go.constant.Constant_t_stringval_static_extension.T_stringVal_static_extension.exactString(_x);
    }
    static public function _appendReverse(_x:T_stringVal, _list:Array<String>):Array<String> {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>);
        final _list = ([for (i in _list) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return [for (i in stdgo._internal.go.constant.Constant_t_stringval_static_extension.T_stringVal_static_extension._appendReverse(_x, _list)) i];
    }
    static public function _string(_x:T_stringVal):String {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>);
        return stdgo._internal.go.constant.Constant_t_stringval_static_extension.T_stringVal_static_extension._string(_x);
    }
    static public function string(_x:T_stringVal):String {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>);
        return stdgo._internal.go.constant.Constant_t_stringval_static_extension.T_stringVal_static_extension.string(_x);
    }
    static public function kind(_:T_stringVal):Kind {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>);
        return stdgo._internal.go.constant.Constant_t_stringval_static_extension.T_stringVal_static_extension.kind(_);
    }
}
@:dox(hide) typedef T_intValPointer = stdgo._internal.go.constant.Constant_t_intvalpointer.T_intValPointer;
@:dox(hide) class T_intVal_static_extension {
    static public function _implementsValue(_:T_intVal):Void {
        stdgo._internal.go.constant.Constant_t_intval_static_extension.T_intVal_static_extension._implementsValue(_);
    }
    static public function exactString(_x:T_intVal):String {
        return stdgo._internal.go.constant.Constant_t_intval_static_extension.T_intVal_static_extension.exactString(_x);
    }
    static public function string(_x:T_intVal):String {
        return stdgo._internal.go.constant.Constant_t_intval_static_extension.T_intVal_static_extension.string(_x);
    }
    static public function kind(_:T_intVal):Kind {
        return stdgo._internal.go.constant.Constant_t_intval_static_extension.T_intVal_static_extension.kind(_);
    }
}
@:dox(hide) typedef T_ratValPointer = stdgo._internal.go.constant.Constant_t_ratvalpointer.T_ratValPointer;
@:dox(hide) class T_ratVal_static_extension {
    static public function _implementsValue(_:T_ratVal):Void {
        stdgo._internal.go.constant.Constant_t_ratval_static_extension.T_ratVal_static_extension._implementsValue(_);
    }
    static public function exactString(_x:T_ratVal):String {
        return stdgo._internal.go.constant.Constant_t_ratval_static_extension.T_ratVal_static_extension.exactString(_x);
    }
    static public function string(_x:T_ratVal):String {
        return stdgo._internal.go.constant.Constant_t_ratval_static_extension.T_ratVal_static_extension.string(_x);
    }
    static public function kind(_:T_ratVal):Kind {
        return stdgo._internal.go.constant.Constant_t_ratval_static_extension.T_ratVal_static_extension.kind(_);
    }
}
@:dox(hide) typedef T_floatValPointer = stdgo._internal.go.constant.Constant_t_floatvalpointer.T_floatValPointer;
@:dox(hide) class T_floatVal_static_extension {
    static public function _implementsValue(_:T_floatVal):Void {
        stdgo._internal.go.constant.Constant_t_floatval_static_extension.T_floatVal_static_extension._implementsValue(_);
    }
    static public function exactString(_x:T_floatVal):String {
        return stdgo._internal.go.constant.Constant_t_floatval_static_extension.T_floatVal_static_extension.exactString(_x);
    }
    static public function string(_x:T_floatVal):String {
        return stdgo._internal.go.constant.Constant_t_floatval_static_extension.T_floatVal_static_extension.string(_x);
    }
    static public function kind(_:T_floatVal):Kind {
        return stdgo._internal.go.constant.Constant_t_floatval_static_extension.T_floatVal_static_extension.kind(_);
    }
}
@:dox(hide) typedef T_complexValPointer = stdgo._internal.go.constant.Constant_t_complexvalpointer.T_complexValPointer;
@:dox(hide) class T_complexVal_static_extension {
    static public function _implementsValue(_:T_complexVal):Void {
        stdgo._internal.go.constant.Constant_t_complexval_static_extension.T_complexVal_static_extension._implementsValue(_);
    }
    static public function exactString(_x:T_complexVal):String {
        return stdgo._internal.go.constant.Constant_t_complexval_static_extension.T_complexVal_static_extension.exactString(_x);
    }
    static public function string(_x:T_complexVal):String {
        return stdgo._internal.go.constant.Constant_t_complexval_static_extension.T_complexVal_static_extension.string(_x);
    }
    static public function kind(_:T_complexVal):Kind {
        return stdgo._internal.go.constant.Constant_t_complexval_static_extension.T_complexVal_static_extension.kind(_);
    }
}
@:dox(hide) typedef T_makeTestCasePointer = stdgo._internal.go.constant.Constant_t_maketestcasepointer.T_makeTestCasePointer;
@:dox(hide) class T_makeTestCase_static_extension {

}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.go.constant.Constant_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
@:dox(hide) typedef T__struct_1PointerPointer = stdgo._internal.go.constant.Constant_t__struct_1pointerpointer.T__struct_1PointerPointer;
@:dox(hide) class T__struct_1Pointer_static_extension {

}
@:dox(hide) typedef T__struct_2PointerPointer = stdgo._internal.go.constant.Constant_t__struct_2pointerpointer.T__struct_2PointerPointer;
@:dox(hide) class T__struct_2Pointer_static_extension {

}
typedef KindPointer = stdgo._internal.go.constant.Constant_kindpointer.KindPointer;
class Kind_static_extension {
    static public function string(_i:Kind):String {
        return stdgo._internal.go.constant.Constant_kind_static_extension.Kind_static_extension.string(_i);
    }
}
@:dox(hide) typedef T_boolValPointer = stdgo._internal.go.constant.Constant_t_boolvalpointer.T_boolValPointer;
@:dox(hide) class T_boolVal_static_extension {
    static public function _implementsValue(_:T_boolVal):Void {
        stdgo._internal.go.constant.Constant_t_boolval_static_extension.T_boolVal_static_extension._implementsValue(_);
    }
    static public function exactString(_x:T_boolVal):String {
        return stdgo._internal.go.constant.Constant_t_boolval_static_extension.T_boolVal_static_extension.exactString(_x);
    }
    static public function string(_x:T_boolVal):String {
        return stdgo._internal.go.constant.Constant_t_boolval_static_extension.T_boolVal_static_extension.string(_x);
    }
    static public function kind(_:T_boolVal):Kind {
        return stdgo._internal.go.constant.Constant_t_boolval_static_extension.T_boolVal_static_extension.kind(_);
    }
}
@:dox(hide) typedef T_int64ValPointer = stdgo._internal.go.constant.Constant_t_int64valpointer.T_int64ValPointer;
@:dox(hide) class T_int64Val_static_extension {
    static public function _implementsValue(_:T_int64Val):Void {
        stdgo._internal.go.constant.Constant_t_int64val_static_extension.T_int64Val_static_extension._implementsValue(_);
    }
    static public function exactString(_x:T_int64Val):String {
        return stdgo._internal.go.constant.Constant_t_int64val_static_extension.T_int64Val_static_extension.exactString(_x);
    }
    static public function string(_x:T_int64Val):String {
        return stdgo._internal.go.constant.Constant_t_int64val_static_extension.T_int64Val_static_extension.string(_x);
    }
    static public function kind(_:T_int64Val):Kind {
        return stdgo._internal.go.constant.Constant_t_int64val_static_extension.T_int64Val_static_extension.kind(_);
    }
}
/**
    * Package constant implements Values representing untyped
    * Go constants and their corresponding operations.
    * 
    * A special Unknown value may be used when a value
    * is unknown due to an error. Operations on unknown
    * values produce unknown values unless specified
    * otherwise.
**/
class Constant {
    /**
        * MakeUnknown returns the Unknown value.
    **/
    static public inline function makeUnknown():Value {
        return stdgo._internal.go.constant.Constant_makeunknown.makeUnknown();
    }
    /**
        * MakeBool returns the Bool value for b.
    **/
    static public inline function makeBool(_b:Bool):Value {
        return stdgo._internal.go.constant.Constant_makebool.makeBool(_b);
    }
    /**
        * MakeString returns the String value for s.
    **/
    static public inline function makeString(_s:String):Value {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.go.constant.Constant_makestring.makeString(_s);
    }
    /**
        * MakeInt64 returns the Int value for x.
    **/
    static public inline function makeInt64(_x:haxe.Int64):Value {
        final _x = (_x : stdgo.GoInt64);
        return stdgo._internal.go.constant.Constant_makeint64.makeInt64(_x);
    }
    /**
        * MakeUint64 returns the Int value for x.
    **/
    static public inline function makeUint64(_x:haxe.UInt64):Value {
        final _x = (_x : stdgo.GoUInt64);
        return stdgo._internal.go.constant.Constant_makeuint64.makeUint64(_x);
    }
    /**
        * MakeFloat64 returns the Float value for x.
        * If x is -0.0, the result is 0.0.
        * If x is not finite, the result is an Unknown.
    **/
    static public inline function makeFloat64(_x:StdTypes.Float):Value {
        final _x = (_x : stdgo.GoFloat64);
        return stdgo._internal.go.constant.Constant_makefloat64.makeFloat64(_x);
    }
    /**
        * MakeFromLiteral returns the corresponding integer, floating-point,
        * imaginary, character, or string value for a Go literal string. The
        * tok value must be one of token.INT, token.FLOAT, token.IMAG,
        * token.CHAR, or token.STRING. The final argument must be zero.
        * If the literal string syntax is invalid, the result is an Unknown.
    **/
    static public inline function makeFromLiteral(_lit:String, _tok:stdgo._internal.go.token.Token_token.Token, _zero:std.UInt):Value {
        final _lit = (_lit : stdgo.GoString);
        final _zero = (_zero : stdgo.GoUInt);
        return stdgo._internal.go.constant.Constant_makefromliteral.makeFromLiteral(_lit, _tok, _zero);
    }
    /**
        * BoolVal returns the Go boolean value of x, which must be a Bool or an Unknown.
        * If x is Unknown, the result is false.
    **/
    static public inline function boolVal(_x:Value):Bool {
        return stdgo._internal.go.constant.Constant_boolval.boolVal(_x);
    }
    /**
        * StringVal returns the Go string value of x, which must be a String or an Unknown.
        * If x is Unknown, the result is "".
    **/
    static public inline function stringVal(_x:Value):String {
        return stdgo._internal.go.constant.Constant_stringval.stringVal(_x);
    }
    /**
        * Int64Val returns the Go int64 value of x and whether the result is exact;
        * x must be an Int or an Unknown. If the result is not exact, its value is undefined.
        * If x is Unknown, the result is (0, false).
    **/
    static public inline function int64Val(_x:Value):stdgo.Tuple<haxe.Int64, Bool> {
        return {
            final obj = stdgo._internal.go.constant.Constant_int64val.int64Val(_x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Uint64Val returns the Go uint64 value of x and whether the result is exact;
        * x must be an Int or an Unknown. If the result is not exact, its value is undefined.
        * If x is Unknown, the result is (0, false).
    **/
    static public inline function uint64Val(_x:Value):stdgo.Tuple<haxe.UInt64, Bool> {
        return {
            final obj = stdgo._internal.go.constant.Constant_uint64val.uint64Val(_x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Float32Val is like Float64Val but for float32 instead of float64.
    **/
    static public inline function float32Val(_x:Value):stdgo.Tuple<StdTypes.Float, Bool> {
        return {
            final obj = stdgo._internal.go.constant.Constant_float32val.float32Val(_x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Float64Val returns the nearest Go float64 value of x and whether the result is exact;
        * x must be numeric or an Unknown, but not Complex. For values too small (too close to 0)
        * to represent as float64, Float64Val silently underflows to 0. The result sign always
        * matches the sign of x, even for 0.
        * If x is Unknown, the result is (0, false).
    **/
    static public inline function float64Val(_x:Value):stdgo.Tuple<StdTypes.Float, Bool> {
        return {
            final obj = stdgo._internal.go.constant.Constant_float64val.float64Val(_x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Val returns the underlying value for a given constant. Since it returns an
        * interface, it is up to the caller to type assert the result to the expected
        * type. The possible dynamic return types are:
        * 
        * 	x Kind             type of result
        * 	-----------------------------------------
        * 	Bool               bool
        * 	String             string
        * 	Int                int64 or *big.Int
        * 	Float              *big.Float or *big.Rat
        * 	everything else    nil
    **/
    static public inline function val(_x:Value):stdgo.AnyInterface {
        return stdgo._internal.go.constant.Constant_val.val(_x);
    }
    /**
        * Make returns the Value for x.
        * 
        * 	type of x        result Kind
        * 	----------------------------
        * 	bool             Bool
        * 	string           String
        * 	int64            Int
        * 	*big.Int         Int
        * 	*big.Float       Float
        * 	*big.Rat         Float
        * 	anything else    Unknown
    **/
    static public inline function make(_x:stdgo.AnyInterface):Value {
        final _x = (_x : stdgo.AnyInterface);
        return stdgo._internal.go.constant.Constant_make.make(_x);
    }
    /**
        * BitLen returns the number of bits required to represent
        * the absolute value x in binary representation; x must be an Int or an Unknown.
        * If x is Unknown, the result is 0.
    **/
    static public inline function bitLen(_x:Value):StdTypes.Int {
        return stdgo._internal.go.constant.Constant_bitlen.bitLen(_x);
    }
    /**
        * Sign returns -1, 0, or 1 depending on whether x < 0, x == 0, or x > 0;
        * x must be numeric or Unknown. For complex values x, the sign is 0 if x == 0,
        * otherwise it is != 0. If x is Unknown, the result is 1.
    **/
    static public inline function sign(_x:Value):StdTypes.Int {
        return stdgo._internal.go.constant.Constant_sign.sign(_x);
    }
    /**
        * Bytes returns the bytes for the absolute value of x in little-
        * endian binary representation; x must be an Int.
    **/
    static public inline function bytes(_x:Value):Array<std.UInt> {
        return [for (i in stdgo._internal.go.constant.Constant_bytes.bytes(_x)) i];
    }
    /**
        * MakeFromBytes returns the Int value given the bytes of its little-endian
        * binary representation. An empty byte slice argument represents 0.
    **/
    static public inline function makeFromBytes(_bytes:Array<std.UInt>):Value {
        final _bytes = ([for (i in _bytes) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.go.constant.Constant_makefrombytes.makeFromBytes(_bytes);
    }
    /**
        * Num returns the numerator of x; x must be Int, Float, or Unknown.
        * If x is Unknown, or if it is too large or small to represent as a
        * fraction, the result is Unknown. Otherwise the result is an Int
        * with the same sign as x.
    **/
    static public inline function num(_x:Value):Value {
        return stdgo._internal.go.constant.Constant_num.num(_x);
    }
    /**
        * Denom returns the denominator of x; x must be Int, Float, or Unknown.
        * If x is Unknown, or if it is too large or small to represent as a
        * fraction, the result is Unknown. Otherwise the result is an Int >= 1.
    **/
    static public inline function denom(_x:Value):Value {
        return stdgo._internal.go.constant.Constant_denom.denom(_x);
    }
    /**
        * MakeImag returns the Complex value x*i;
        * x must be Int, Float, or Unknown.
        * If x is Unknown, the result is Unknown.
    **/
    static public inline function makeImag(_x:Value):Value {
        return stdgo._internal.go.constant.Constant_makeimag.makeImag(_x);
    }
    /**
        * Real returns the real part of x, which must be a numeric or unknown value.
        * If x is Unknown, the result is Unknown.
    **/
    static public inline function real(_x:Value):Value {
        return stdgo._internal.go.constant.Constant_real.real(_x);
    }
    /**
        * Imag returns the imaginary part of x, which must be a numeric or unknown value.
        * If x is Unknown, the result is Unknown.
    **/
    static public inline function imag(_x:Value):Value {
        return stdgo._internal.go.constant.Constant_imag.imag(_x);
    }
    /**
        * ToInt converts x to an Int value if x is representable as an Int.
        * Otherwise it returns an Unknown.
    **/
    static public inline function toInt(_x:Value):Value {
        return stdgo._internal.go.constant.Constant_toint.toInt(_x);
    }
    /**
        * ToFloat converts x to a Float value if x is representable as a Float.
        * Otherwise it returns an Unknown.
    **/
    static public inline function toFloat(_x:Value):Value {
        return stdgo._internal.go.constant.Constant_tofloat.toFloat(_x);
    }
    /**
        * ToComplex converts x to a Complex value if x is representable as a Complex.
        * Otherwise it returns an Unknown.
    **/
    static public inline function toComplex(_x:Value):Value {
        return stdgo._internal.go.constant.Constant_tocomplex.toComplex(_x);
    }
    /**
        * UnaryOp returns the result of the unary expression op y.
        * The operation must be defined for the operand.
        * If prec > 0 it specifies the ^ (xor) result size in bits.
        * If y is Unknown, the result is Unknown.
    **/
    static public inline function unaryOp(_op:stdgo._internal.go.token.Token_token.Token, _y:Value, _prec:std.UInt):Value {
        final _prec = (_prec : stdgo.GoUInt);
        return stdgo._internal.go.constant.Constant_unaryop.unaryOp(_op, _y, _prec);
    }
    /**
        * BinaryOp returns the result of the binary expression x op y.
        * The operation must be defined for the operands. If one of the
        * operands is Unknown, the result is Unknown.
        * BinaryOp doesn't handle comparisons or shifts; use Compare
        * or Shift instead.
        * 
        * To force integer division of Int operands, use op == token.QUO_ASSIGN
        * instead of token.QUO; the result is guaranteed to be Int in this case.
        * Division by zero leads to a run-time panic.
    **/
    static public inline function binaryOp(_x_:Value, _op:stdgo._internal.go.token.Token_token.Token, _y_:Value):Value {
        return stdgo._internal.go.constant.Constant_binaryop.binaryOp(_x_, _op, _y_);
    }
    /**
        * Shift returns the result of the shift expression x op s
        * with op == token.SHL or token.SHR (<< or >>). x must be
        * an Int or an Unknown. If x is Unknown, the result is x.
    **/
    static public inline function shift(_x:Value, _op:stdgo._internal.go.token.Token_token.Token, _s:std.UInt):Value {
        final _s = (_s : stdgo.GoUInt);
        return stdgo._internal.go.constant.Constant_shift.shift(_x, _op, _s);
    }
    /**
        * Compare returns the result of the comparison x op y.
        * The comparison must be defined for the operands.
        * If one of the operands is Unknown, the result is
        * false.
    **/
    static public inline function compare(_x_:Value, _op:stdgo._internal.go.token.Token_token.Token, _y_:Value):Bool {
        return stdgo._internal.go.constant.Constant_compare.compare(_x_, _op, _y_);
    }
    /**
        * TestNumbers verifies that differently written literals
        * representing the same number do have the same value.
    **/
    static public inline function testNumbers(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.constant.Constant_testnumbers.testNumbers(_t);
    }
    static public inline function testOps(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.constant.Constant_testops.testOps(_t);
    }
    static public inline function testString(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.constant.Constant_teststring.testString(_t);
    }
    static public inline function testFractions(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.constant.Constant_testfractions.testFractions(_t);
    }
    static public inline function testBytes(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.constant.Constant_testbytes.testBytes(_t);
    }
    static public inline function testUnknown(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.constant.Constant_testunknown.testUnknown(_t);
    }
    static public inline function testMakeFloat64(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.constant.Constant_testmakefloat64.testMakeFloat64(_t);
    }
    static public inline function testMake(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.constant.Constant_testmake.testMake(_t);
    }
    static public inline function benchmarkStringAdd(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.go.constant.Constant_benchmarkstringadd.benchmarkStringAdd(_b);
    }
    static public inline function testBitLen(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.constant.Constant_testbitlen.testBitLen(_t);
    }
}
