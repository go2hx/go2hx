package stdgo._internal.net.internal.socktest;
@:keep @:allow(stdgo._internal.net.internal.socktest.Socktest.Cookie_asInterface) class Cookie_static_extension {
    @:keep
    @:tdfield
    static public function protocol( _c:stdgo._internal.net.internal.socktest.Socktest_Cookie.Cookie):stdgo.GoInt {
        @:recv var _c:stdgo._internal.net.internal.socktest.Socktest_Cookie.Cookie = _c;
        return ((_c & (255i64 : stdgo._internal.net.internal.socktest.Socktest_Cookie.Cookie) : stdgo._internal.net.internal.socktest.Socktest_Cookie.Cookie) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function type( _c:stdgo._internal.net.internal.socktest.Socktest_Cookie.Cookie):stdgo.GoInt {
        @:recv var _c:stdgo._internal.net.internal.socktest.Socktest_Cookie.Cookie = _c;
        return (((_c << (16i64 : stdgo.GoUInt64) : stdgo._internal.net.internal.socktest.Socktest_Cookie.Cookie) >> (32i64 : stdgo.GoUInt64) : stdgo._internal.net.internal.socktest.Socktest_Cookie.Cookie) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function family( _c:stdgo._internal.net.internal.socktest.Socktest_Cookie.Cookie):stdgo.GoInt {
        @:recv var _c:stdgo._internal.net.internal.socktest.Socktest_Cookie.Cookie = _c;
        return ((_c >> (48i64 : stdgo.GoUInt64) : stdgo._internal.net.internal.socktest.Socktest_Cookie.Cookie) : stdgo.GoInt);
    }
}
