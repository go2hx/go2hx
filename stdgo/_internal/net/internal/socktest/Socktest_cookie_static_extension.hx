package stdgo._internal.net.internal.socktest;
@:keep @:allow(stdgo._internal.net.internal.socktest.Socktest.Cookie_asInterface) class Cookie_static_extension {
    @:keep
    @:tdfield
    static public function protocol( _c:stdgo._internal.net.internal.socktest.Socktest_cookie.Cookie):stdgo.GoInt {
        @:recv var _c:stdgo._internal.net.internal.socktest.Socktest_cookie.Cookie = _c;
        //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/switch.go#L66"
        return ((_c & (255i64 : stdgo._internal.net.internal.socktest.Socktest_cookie.Cookie) : stdgo._internal.net.internal.socktest.Socktest_cookie.Cookie) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function type( _c:stdgo._internal.net.internal.socktest.Socktest_cookie.Cookie):stdgo.GoInt {
        @:recv var _c:stdgo._internal.net.internal.socktest.Socktest_cookie.Cookie = _c;
        //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/switch.go#L63"
        return (((_c << (16i64 : stdgo.GoUInt64) : stdgo._internal.net.internal.socktest.Socktest_cookie.Cookie) >> (32i64 : stdgo.GoUInt64) : stdgo._internal.net.internal.socktest.Socktest_cookie.Cookie) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function family( _c:stdgo._internal.net.internal.socktest.Socktest_cookie.Cookie):stdgo.GoInt {
        @:recv var _c:stdgo._internal.net.internal.socktest.Socktest_cookie.Cookie = _c;
        //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/switch.go#L60"
        return ((_c >> (48i64 : stdgo.GoUInt64) : stdgo._internal.net.internal.socktest.Socktest_cookie.Cookie) : stdgo.GoInt);
    }
}
