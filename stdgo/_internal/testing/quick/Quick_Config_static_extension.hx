package stdgo._internal.testing.quick;
import stdgo._internal.flag.Flag;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.time.Time;
@:keep @:allow(stdgo._internal.testing.quick.Quick.Config_asInterface) class Config_static_extension {
    @:keep
    @:tdfield
    static public function _getMaxCount( _c:stdgo.Ref<stdgo._internal.testing.quick.Quick_Config.Config>):stdgo.GoInt {
        @:recv var _c:stdgo.Ref<stdgo._internal.testing.quick.Quick_Config.Config> = _c;
        var _maxCount = (0 : stdgo.GoInt);
        _maxCount = (@:checkr _c ?? throw "null pointer dereference").maxCount;
        if (_maxCount == ((0 : stdgo.GoInt))) {
            if ((@:checkr _c ?? throw "null pointer dereference").maxCountScale != (0 : stdgo.GoFloat64)) {
                _maxCount = (((@:checkr _c ?? throw "null pointer dereference").maxCountScale * (stdgo._internal.testing.quick.Quick__defaultMaxCount._defaultMaxCount.value : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoInt);
            } else {
                _maxCount = stdgo._internal.testing.quick.Quick__defaultMaxCount._defaultMaxCount.value;
            };
        };
        return _maxCount;
    }
    @:keep
    @:tdfield
    static public function _getRand( _c:stdgo.Ref<stdgo._internal.testing.quick.Quick_Config.Config>):stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand> {
        @:recv var _c:stdgo.Ref<stdgo._internal.testing.quick.Quick_Config.Config> = _c;
        if (((@:checkr _c ?? throw "null pointer dereference").rand == null || ((@:checkr _c ?? throw "null pointer dereference").rand : Dynamic).__nil__)) {
            return stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newSource.newSource(stdgo._internal.time.Time_now.now().unixNano()));
        };
        return (@:checkr _c ?? throw "null pointer dereference").rand;
    }
}
