package stdgo.math.big;
class Rat_static_extension {
    static public function unmarshalText(_z:Rat, _text:Array<std.UInt>):stdgo.Error {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        final _text = ([for (i in _text) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.math.big.Big_Rat_static_extension.Rat_static_extension.unmarshalText(_z, _text);
    }
    static public function marshalText(_x:Rat):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        return {
            final obj = stdgo._internal.math.big.Big_Rat_static_extension.Rat_static_extension.marshalText(_x);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function gobDecode(_z:Rat, _buf:Array<std.UInt>):stdgo.Error {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.math.big.Big_Rat_static_extension.Rat_static_extension.gobDecode(_z, _buf);
    }
    static public function gobEncode(_x:Rat):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        return {
            final obj = stdgo._internal.math.big.Big_Rat_static_extension.Rat_static_extension.gobEncode(_x);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function floatString(_x:Rat, _prec:StdTypes.Int):String {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        final _prec = (_prec : stdgo.GoInt);
        return stdgo._internal.math.big.Big_Rat_static_extension.Rat_static_extension.floatString(_x, _prec);
    }
    static public function ratString(_x:Rat):String {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        return stdgo._internal.math.big.Big_Rat_static_extension.Rat_static_extension.ratString(_x);
    }
    static public function _marshal(_x:Rat):Array<std.UInt> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        return [for (i in stdgo._internal.math.big.Big_Rat_static_extension.Rat_static_extension._marshal(_x)) i];
    }
    static public function string(_x:Rat):String {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        return stdgo._internal.math.big.Big_Rat_static_extension.Rat_static_extension.string(_x);
    }
    static public function setString(_z:Rat, _s:String):stdgo.Tuple<Rat, Bool> {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.math.big.Big_Rat_static_extension.Rat_static_extension.setString(_z, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function scan(_z:Rat, _s:stdgo._internal.fmt.Fmt_ScanState.ScanState, _ch:StdTypes.Int):stdgo.Error {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        final _ch = (_ch : stdgo.GoInt32);
        return stdgo._internal.math.big.Big_Rat_static_extension.Rat_static_extension.scan(_z, _s, _ch);
    }
    static public function quo(_z:Rat, _x:Rat, _y:Rat):Rat {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        return stdgo._internal.math.big.Big_Rat_static_extension.Rat_static_extension.quo(_z, _x, _y);
    }
    static public function mul(_z:Rat, _x:Rat, _y:Rat):Rat {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        return stdgo._internal.math.big.Big_Rat_static_extension.Rat_static_extension.mul(_z, _x, _y);
    }
    static public function sub(_z:Rat, _x:Rat, _y:Rat):Rat {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        return stdgo._internal.math.big.Big_Rat_static_extension.Rat_static_extension.sub(_z, _x, _y);
    }
    static public function add(_z:Rat, _x:Rat, _y:Rat):Rat {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        return stdgo._internal.math.big.Big_Rat_static_extension.Rat_static_extension.add(_z, _x, _y);
    }
    static public function cmp(_x:Rat, _y:Rat):StdTypes.Int {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        return stdgo._internal.math.big.Big_Rat_static_extension.Rat_static_extension.cmp(_x, _y);
    }
    static public function _norm(_z:Rat):Rat {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        return stdgo._internal.math.big.Big_Rat_static_extension.Rat_static_extension._norm(_z);
    }
    static public function denom(_x:Rat):Int_ {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        return stdgo._internal.math.big.Big_Rat_static_extension.Rat_static_extension.denom(_x);
    }
    static public function num(_x:Rat):Int_ {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        return stdgo._internal.math.big.Big_Rat_static_extension.Rat_static_extension.num(_x);
    }
    static public function isInt(_x:Rat):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        return stdgo._internal.math.big.Big_Rat_static_extension.Rat_static_extension.isInt(_x);
    }
    static public function sign(_x:Rat):StdTypes.Int {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        return stdgo._internal.math.big.Big_Rat_static_extension.Rat_static_extension.sign(_x);
    }
    static public function inv(_z:Rat, _x:Rat):Rat {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        return stdgo._internal.math.big.Big_Rat_static_extension.Rat_static_extension.inv(_z, _x);
    }
    static public function neg(_z:Rat, _x:Rat):Rat {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        return stdgo._internal.math.big.Big_Rat_static_extension.Rat_static_extension.neg(_z, _x);
    }
    static public function abs(_z:Rat, _x:Rat):Rat {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        return stdgo._internal.math.big.Big_Rat_static_extension.Rat_static_extension.abs(_z, _x);
    }
    static public function set(_z:Rat, _x:Rat):Rat {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        return stdgo._internal.math.big.Big_Rat_static_extension.Rat_static_extension.set(_z, _x);
    }
    static public function setUint64(_z:Rat, _x:haxe.UInt64):Rat {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        final _x = (_x : stdgo.GoUInt64);
        return stdgo._internal.math.big.Big_Rat_static_extension.Rat_static_extension.setUint64(_z, _x);
    }
    static public function setInt64(_z:Rat, _x:haxe.Int64):Rat {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        final _x = (_x : stdgo.GoInt64);
        return stdgo._internal.math.big.Big_Rat_static_extension.Rat_static_extension.setInt64(_z, _x);
    }
    static public function setInt(_z:Rat, _x:Int_):Rat {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.math.big.Big_Rat_static_extension.Rat_static_extension.setInt(_z, _x);
    }
    static public function setFrac64(_z:Rat, _a:haxe.Int64, _b:haxe.Int64):Rat {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        final _a = (_a : stdgo.GoInt64);
        final _b = (_b : stdgo.GoInt64);
        return stdgo._internal.math.big.Big_Rat_static_extension.Rat_static_extension.setFrac64(_z, _a, _b);
    }
    static public function setFrac(_z:Rat, _a:Int_, _b:Int_):Rat {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        final _a = (_a : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _b = (_b : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.math.big.Big_Rat_static_extension.Rat_static_extension.setFrac(_z, _a, _b);
    }
    static public function float64(_x:Rat):stdgo.Tuple<StdTypes.Float, Bool> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        return {
            final obj = stdgo._internal.math.big.Big_Rat_static_extension.Rat_static_extension.float64(_x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function float32(_x:Rat):stdgo.Tuple<StdTypes.Float, Bool> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        return {
            final obj = stdgo._internal.math.big.Big_Rat_static_extension.Rat_static_extension.float32(_x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setFloat64(_z:Rat, _f:StdTypes.Float):Rat {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        final _f = (_f : stdgo.GoFloat64);
        return stdgo._internal.math.big.Big_Rat_static_extension.Rat_static_extension.setFloat64(_z, _f);
    }
}
