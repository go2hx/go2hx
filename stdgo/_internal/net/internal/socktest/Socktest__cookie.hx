package stdgo._internal.net.internal.socktest;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.syscall.Syscall;
function _cookie(_family:stdgo.GoInt, _sotype:stdgo.GoInt, _proto:stdgo.GoInt):stdgo._internal.net.internal.socktest.Socktest_Cookie.Cookie {
        return ((((_family : stdgo._internal.net.internal.socktest.Socktest_Cookie.Cookie) << (48i64 : stdgo.GoUInt64) : stdgo._internal.net.internal.socktest.Socktest_Cookie.Cookie) | (((_sotype : stdgo._internal.net.internal.socktest.Socktest_Cookie.Cookie) & (4294967295i64 : stdgo._internal.net.internal.socktest.Socktest_Cookie.Cookie) : stdgo._internal.net.internal.socktest.Socktest_Cookie.Cookie) << (16i64 : stdgo.GoUInt64) : stdgo._internal.net.internal.socktest.Socktest_Cookie.Cookie) : stdgo._internal.net.internal.socktest.Socktest_Cookie.Cookie) | ((_proto : stdgo._internal.net.internal.socktest.Socktest_Cookie.Cookie) & (255i64 : stdgo._internal.net.internal.socktest.Socktest_Cookie.Cookie) : stdgo._internal.net.internal.socktest.Socktest_Cookie.Cookie) : stdgo._internal.net.internal.socktest.Socktest_Cookie.Cookie);
    }
