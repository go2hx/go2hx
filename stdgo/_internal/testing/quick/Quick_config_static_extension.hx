package stdgo._internal.testing.quick;
@:keep @:allow(stdgo._internal.testing.quick.Quick.Config_asInterface) class Config_static_extension {
    @:keep
    @:tdfield
    static public function _getMaxCount( _c:stdgo.Ref<stdgo._internal.testing.quick.Quick_config.Config>):stdgo.GoInt {
        @:recv var _c:stdgo.Ref<stdgo._internal.testing.quick.Quick_config.Config> = _c;
        var _maxCount = (0 : stdgo.GoInt);
        _maxCount = (@:checkr _c ?? throw "null pointer dereference").maxCount;
        //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick.go#L210"
        if (_maxCount == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick.go#L211"
            if ((@:checkr _c ?? throw "null pointer dereference").maxCountScale != ((0 : stdgo.GoFloat64))) {
                _maxCount = (((@:checkr _c ?? throw "null pointer dereference").maxCountScale * (stdgo._internal.testing.quick.Quick__defaultmaxcount._defaultMaxCount.value : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoInt);
            } else {
                _maxCount = stdgo._internal.testing.quick.Quick__defaultmaxcount._defaultMaxCount.value;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick.go#L218"
        return _maxCount;
    }
    @:keep
    @:tdfield
    static public function _getRand( _c:stdgo.Ref<stdgo._internal.testing.quick.Quick_config.Config>):stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> {
        @:recv var _c:stdgo.Ref<stdgo._internal.testing.quick.Quick_config.Config> = _c;
        //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick.go#L200"
        if (({
            final value = (@:checkr _c ?? throw "null pointer dereference").rand;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick.go#L201"
            return stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newsource.newSource(stdgo._internal.time.Time_now.now().unixNano()));
        };
        //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick.go#L203"
        return (@:checkr _c ?? throw "null pointer dereference").rand;
    }
}
