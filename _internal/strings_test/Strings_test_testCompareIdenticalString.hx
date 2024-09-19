package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testCompareIdenticalString(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _s:stdgo.GoString = ("Hello Gophers!" : stdgo.GoString);
        if (stdgo._internal.strings.Strings_compare.compare(_s?.__copy__(), _s?.__copy__()) != ((0 : stdgo.GoInt))) {
            _t.error(stdgo.Go.toInterface(("s != s" : stdgo.GoString)));
        };
        if (stdgo._internal.strings.Strings_compare.compare(_s?.__copy__(), (_s.__slice__(0, (1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) != ((1 : stdgo.GoInt))) {
            _t.error(stdgo.Go.toInterface(("s > s[:1] failed" : stdgo.GoString)));
        };
    }
