package stdgo._internal.net.internal.socktest;
@:keep @:allow(stdgo._internal.net.internal.socktest.Socktest.Filter_asInterface) class Filter_static_extension {
    @:keep
    @:tdfield
    static public function _apply( _f:stdgo._internal.net.internal.socktest.Socktest_filter.Filter, _st:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_status.Status>):{ var _0 : stdgo._internal.net.internal.socktest.Socktest_afterfilter.AfterFilter; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo._internal.net.internal.socktest.Socktest_filter.Filter = _f;
        //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/switch.go#L141"
        if (_f == null) {
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/switch.go#L142"
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/switch.go#L144"
        return _f(_st);
    }
}
