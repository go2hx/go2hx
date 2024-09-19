package stdgo._internal.testing.quick;
@:structInit @:using(stdgo._internal.testing.quick.Quick_Config_static_extension.Config_static_extension) class Config {
    public var maxCount : stdgo.GoInt = 0;
    public var maxCountScale : stdgo.GoFloat64 = 0;
    public var rand : stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand> = (null : stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>);
    public var values : (stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>, stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>) -> Void = null;
    public function new(?maxCount:stdgo.GoInt, ?maxCountScale:stdgo.GoFloat64, ?rand:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>, ?values:(stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>, stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>) -> Void) {
        if (maxCount != null) this.maxCount = maxCount;
        if (maxCountScale != null) this.maxCountScale = maxCountScale;
        if (rand != null) this.rand = rand;
        if (values != null) this.values = values;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Config(maxCount, maxCountScale, rand, values);
    }
}
