package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function exampleToValidUTF8():Void {
        stdgo._internal.fmt.Fmt_printf.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings_toValidUTF8.toValidUTF8(("abc" : stdgo.GoString), ("�" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_printf.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings_toValidUTF8.toValidUTF8(stdgo.Go.str("a", 255, "b", 192, 175, "c", 255)?.__copy__(), stdgo.Go.str()?.__copy__())));
        stdgo._internal.fmt.Fmt_printf.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings_toValidUTF8.toValidUTF8(stdgo.Go.str(237, 160, 128)?.__copy__(), ("abc" : stdgo.GoString))));
    }
