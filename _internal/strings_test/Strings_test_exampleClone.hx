package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function exampleClone():Void {
        var _s = ("abc" : stdgo.GoString);
        var _clone = (stdgo._internal.strings.Strings_clone.clone(_s?.__copy__())?.__copy__() : stdgo.GoString);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_s == (_clone)));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.unsafe.Unsafe_stringData.stringData(_s?.__copy__()) == (stdgo._internal.unsafe.Unsafe_stringData.stringData(_clone?.__copy__()))));
    }
