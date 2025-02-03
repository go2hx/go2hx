package stdgo.testing.quick;
@:structInit @:using(stdgo.testing.quick.Quick.Config_static_extension) abstract Config(stdgo._internal.testing.quick.Quick_Config.Config) from stdgo._internal.testing.quick.Quick_Config.Config to stdgo._internal.testing.quick.Quick_Config.Config {
    public var maxCount(get, set) : StdTypes.Int;
    function get_maxCount():StdTypes.Int return this.maxCount;
    function set_maxCount(v:StdTypes.Int):StdTypes.Int {
        this.maxCount = (v : stdgo.GoInt);
        return v;
    }
    public var maxCountScale(get, set) : StdTypes.Float;
    function get_maxCountScale():StdTypes.Float return this.maxCountScale;
    function set_maxCountScale(v:StdTypes.Float):StdTypes.Float {
        this.maxCountScale = (v : stdgo.GoFloat64);
        return v;
    }
    public var rand(get, set) : stdgo._internal.math.rand.Rand_Rand.Rand;
    function get_rand():stdgo._internal.math.rand.Rand_Rand.Rand return this.rand;
    function set_rand(v:stdgo._internal.math.rand.Rand_Rand.Rand):stdgo._internal.math.rand.Rand_Rand.Rand {
        this.rand = (v : stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>);
        return v;
    }
    public var values(get, set) : (stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>, stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>) -> Void;
    function get_values():(stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>, stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>) -> Void return (_0, _1) -> this.values([for (i in _0) i], _1);
    function set_values(v:(stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>, stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>) -> Void):(stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>, stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>) -> Void {
        this.values = v;
        return v;
    }
    public function new(?maxCount:StdTypes.Int, ?maxCountScale:StdTypes.Float, ?rand:stdgo._internal.math.rand.Rand_Rand.Rand, ?values:(stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>, stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>) -> Void) this = new stdgo._internal.testing.quick.Quick_Config.Config((maxCount : stdgo.GoInt), (maxCountScale : stdgo.GoFloat64), (rand : stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>), values);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
