package stdgo._internal.net.internal.socktest;
@:keep @:allow(stdgo._internal.net.internal.socktest.Socktest.Stat_asInterface) class Stat_static_extension {
    @:keep
    @:tdfield
    static public function string( _st:stdgo._internal.net.internal.socktest.Socktest_stat.Stat):stdgo.GoString {
        @:recv var _st:stdgo._internal.net.internal.socktest.Socktest_stat.Stat = _st?.__copy__();
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("(%s, %s, %s): opened=%d connected=%d listened=%d accepted=%d closed=%d openfailed=%d connectfailed=%d listenfailed=%d acceptfailed=%d closefailed=%d" : stdgo.GoString),
stdgo.Go.toInterface(stdgo._internal.net.internal.socktest.Socktest__familystring._familyString(_st.family)),
stdgo.Go.toInterface(stdgo._internal.net.internal.socktest.Socktest__typestring._typeString(_st.type)),
stdgo.Go.toInterface(stdgo._internal.net.internal.socktest.Socktest__protocolstring._protocolString(_st.protocol)),
stdgo.Go.toInterface(_st.opened),
stdgo.Go.toInterface(_st.connected),
stdgo.Go.toInterface(_st.listened),
stdgo.Go.toInterface(_st.accepted),
stdgo.Go.toInterface(_st.closed),
stdgo.Go.toInterface(_st.openFailed),
stdgo.Go.toInterface(_st.connectFailed),
stdgo.Go.toInterface(_st.listenFailed),
stdgo.Go.toInterface(_st.acceptFailed),
stdgo.Go.toInterface(_st.closeFailed))?.__copy__();
    }
}
