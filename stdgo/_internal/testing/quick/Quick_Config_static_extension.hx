package stdgo._internal.testing.quick;
@:keep @:allow(stdgo._internal.testing.quick.Quick.Config_asInterface) class Config_static_extension {
    @:keep
    static public function _getMaxCount( _c:stdgo.Ref<stdgo._internal.testing.quick.Quick_Config.Config>):stdgo.GoInt {
        @:recv var _c:stdgo.Ref<stdgo._internal.testing.quick.Quick_Config.Config> = _c;
        var _maxCount = (0 : stdgo.GoInt);
        _maxCount = _c.maxCount;
        if (_maxCount == ((0 : stdgo.GoInt))) {
            if (_c.maxCountScale != (0 : stdgo.GoFloat64)) {
                _maxCount = ((_c.maxCountScale * (stdgo._internal.testing.quick.Quick__defaultMaxCount._defaultMaxCount.value : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoInt);
            } else {
                _maxCount = stdgo._internal.testing.quick.Quick__defaultMaxCount._defaultMaxCount.value;
            };
        };
        return _maxCount;
    }
    @:keep
    static public function _getRand( _c:stdgo.Ref<stdgo._internal.testing.quick.Quick_Config.Config>):stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand> {
        @:recv var _c:stdgo.Ref<stdgo._internal.testing.quick.Quick_Config.Config> = _c;
        if ((_c.rand == null || (_c.rand : Dynamic).__nil__)) {
            return stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newSource.newSource(stdgo._internal.time.Time_now.now().unixNano()));
        };
        return _c.rand;
    }
}
