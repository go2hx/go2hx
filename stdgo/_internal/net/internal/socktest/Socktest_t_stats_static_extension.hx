package stdgo._internal.net.internal.socktest;
@:keep @:allow(stdgo._internal.net.internal.socktest.Socktest.T_stats_asInterface) class T_stats_static_extension {
    @:keep
    @:tdfield
    static public function _getLocked( _st:stdgo._internal.net.internal.socktest.Socktest_t_stats.T_stats, _c:stdgo._internal.net.internal.socktest.Socktest_cookie.Cookie):stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_stat.Stat> {
        @:recv var _st:stdgo._internal.net.internal.socktest.Socktest_t_stats.T_stats = _st;
        var __tmp__ = (_st != null && _st.__exists__(_c) ? { _0 : _st[_c], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_stat.Stat>), _1 : false }), _s:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_stat.Stat> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _s = (stdgo.Go.setRef(({ family : _c.family(), type : _c.type(), protocol : _c.protocol() } : stdgo._internal.net.internal.socktest.Socktest_stat.Stat)) : stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_stat.Stat>);
            _st[_c] = _s;
        };
        return _s;
    }
}
