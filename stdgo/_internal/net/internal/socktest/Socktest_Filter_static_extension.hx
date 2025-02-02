package stdgo._internal.net.internal.socktest;
@:keep @:allow(stdgo._internal.net.internal.socktest.Socktest.Filter_asInterface) class Filter_static_extension {
    @:keep
    @:tdfield
    static public function _apply( _f:stdgo._internal.net.internal.socktest.Socktest_Filter.Filter, _st:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_Status.Status>):{ var _0 : stdgo._internal.net.internal.socktest.Socktest_AfterFilter.AfterFilter; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo._internal.net.internal.socktest.Socktest_Filter.Filter = _f;
        if (_f == null) {
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        return _f(_st);
    }
}
