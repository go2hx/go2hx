package stdgo._internal.net.internal.socktest;
@:keep @:allow(stdgo._internal.net.internal.socktest.Socktest.AfterFilter_asInterface) class AfterFilter_static_extension {
    @:keep
    @:tdfield
    static public function _apply( _f:stdgo._internal.net.internal.socktest.Socktest_afterfilter.AfterFilter, _st:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_status.Status>):stdgo.Error {
        @:recv var _f:stdgo._internal.net.internal.socktest.Socktest_afterfilter.AfterFilter = _f;
        //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/switch.go#L157"
        if (_f == null) {
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/switch.go#L158"
            return (null : stdgo.Error);
        };
        //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/switch.go#L160"
        return _f(_st);
    }
}
