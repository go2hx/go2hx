package stdgo.math.rand;
class Rand_static_extension {
    static public function read(_r:Rand_, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.math.rand.Rand_Rand_static_extension.Rand_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function shuffle(_r:Rand_, _n:StdTypes.Int, _swap:(stdgo.GoInt, stdgo.GoInt) -> Void):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>);
        final _n = (_n : stdgo.GoInt);
        final _swap = _swap;
        stdgo._internal.math.rand.Rand_Rand_static_extension.Rand_static_extension.shuffle(_r, _n, _swap);
    }
    static public function perm(_r:Rand_, _n:StdTypes.Int):Array<StdTypes.Int> {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>);
        final _n = (_n : stdgo.GoInt);
        return [for (i in stdgo._internal.math.rand.Rand_Rand_static_extension.Rand_static_extension.perm(_r, _n)) i];
    }
    static public function float32(_r:Rand_):StdTypes.Float {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>);
        return stdgo._internal.math.rand.Rand_Rand_static_extension.Rand_static_extension.float32(_r);
    }
    static public function float64(_r:Rand_):StdTypes.Float {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>);
        return stdgo._internal.math.rand.Rand_Rand_static_extension.Rand_static_extension.float64(_r);
    }
    static public function intn(_r:Rand_, _n:StdTypes.Int):StdTypes.Int {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.math.rand.Rand_Rand_static_extension.Rand_static_extension.intn(_r, _n);
    }
    static public function _int31n(_r:Rand_, _n:StdTypes.Int):StdTypes.Int {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>);
        final _n = (_n : stdgo.GoInt32);
        return stdgo._internal.math.rand.Rand_Rand_static_extension.Rand_static_extension._int31n(_r, _n);
    }
    static public function int31n(_r:Rand_, _n:StdTypes.Int):StdTypes.Int {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>);
        final _n = (_n : stdgo.GoInt32);
        return stdgo._internal.math.rand.Rand_Rand_static_extension.Rand_static_extension.int31n(_r, _n);
    }
    static public function int63n(_r:Rand_, _n:haxe.Int64):haxe.Int64 {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>);
        final _n = (_n : stdgo.GoInt64);
        return stdgo._internal.math.rand.Rand_Rand_static_extension.Rand_static_extension.int63n(_r, _n);
    }
    static public function int_(_r:Rand_):StdTypes.Int {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>);
        return stdgo._internal.math.rand.Rand_Rand_static_extension.Rand_static_extension.int_(_r);
    }
    static public function int31(_r:Rand_):StdTypes.Int {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>);
        return stdgo._internal.math.rand.Rand_Rand_static_extension.Rand_static_extension.int31(_r);
    }
    static public function uint64(_r:Rand_):haxe.UInt64 {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>);
        return stdgo._internal.math.rand.Rand_Rand_static_extension.Rand_static_extension.uint64(_r);
    }
    static public function uint32(_r:Rand_):std.UInt {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>);
        return stdgo._internal.math.rand.Rand_Rand_static_extension.Rand_static_extension.uint32(_r);
    }
    static public function int63(_r:Rand_):haxe.Int64 {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>);
        return stdgo._internal.math.rand.Rand_Rand_static_extension.Rand_static_extension.int63(_r);
    }
    static public function seed(_r:Rand_, _seed:haxe.Int64):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>);
        final _seed = (_seed : stdgo.GoInt64);
        stdgo._internal.math.rand.Rand_Rand_static_extension.Rand_static_extension.seed(_r, _seed);
    }
    static public function normFloat64(_r:Rand_):StdTypes.Float {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>);
        return stdgo._internal.math.rand.Rand_Rand_static_extension.Rand_static_extension.normFloat64(_r);
    }
    static public function expFloat64(_r:Rand_):StdTypes.Float {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>);
        return stdgo._internal.math.rand.Rand_Rand_static_extension.Rand_static_extension.expFloat64(_r);
    }
}
