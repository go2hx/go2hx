package stdgo._internal.regexp;
@:keep @:allow(stdgo._internal.regexp.Regexp.FindTest_asInterface) class FindTest_static_extension {
    @:keep
    @:tdfield
    static public function string( _t:stdgo._internal.regexp.Regexp_findtest.FindTest):stdgo.GoString {
        @:recv var _t:stdgo._internal.regexp.Regexp_findtest.FindTest = _t?.__copy__();
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("pat: %#q text: %#q" : stdgo.GoString), stdgo.Go.toInterface(_t._pat), stdgo.Go.toInterface(_t._text))?.__copy__();
    }
}
