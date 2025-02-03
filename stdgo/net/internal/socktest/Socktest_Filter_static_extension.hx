package stdgo.net.internal.socktest;
class Filter_static_extension {
    static public function _apply(_f:Filter, _st:Status):stdgo.Tuple<AfterFilter, stdgo.Error> {
        final _st = (_st : stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_Status.Status>);
        return {
            final obj = stdgo._internal.net.internal.socktest.Socktest_Filter_static_extension.Filter_static_extension._apply(_f, _st);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
