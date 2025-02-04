package stdgo._internal.net.internal.socktest;
@:keep @:allow(stdgo._internal.net.internal.socktest.Socktest.AfterFilter_asInterface) class AfterFilter_static_extension {
    @:keep
    @:tdfield
    static public function _apply( _f:stdgo._internal.net.internal.socktest.Socktest_afterfilter.AfterFilter, _st:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_status.Status>):stdgo.Error {
        @:recv var _f:stdgo._internal.net.internal.socktest.Socktest_afterfilter.AfterFilter = _f;
        if (_f == null) {
            return (null : stdgo.Error);
        };
        return _f(_st);
    }
}
