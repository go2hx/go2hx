package stdgo._internal.net.internal.socktest;
@:keep @:allow(stdgo._internal.net.internal.socktest.Socktest.Status_asInterface) class Status_static_extension {
    @:keep
    @:tdfield
    static public function string( _so:stdgo._internal.net.internal.socktest.Socktest_status.Status):stdgo.GoString {
        @:recv var _so:stdgo._internal.net.internal.socktest.Socktest_status.Status = _so?.__copy__();
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("(%s, %s, %s): syscallerr=%v socketerr=%v" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.net.internal.socktest.Socktest__familystring._familyString(_so.cookie.family())), stdgo.Go.toInterface(stdgo._internal.net.internal.socktest.Socktest__typestring._typeString(_so.cookie.type())), stdgo.Go.toInterface(stdgo._internal.net.internal.socktest.Socktest__protocolstring._protocolString(_so.cookie.protocol())), stdgo.Go.toInterface(_so.err), stdgo.Go.toInterface(_so.socketErr))?.__copy__();
    }
}
