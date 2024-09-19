package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function exampleSprintf():Void {
        {};
        var _s = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s is %d years old.\n" : stdgo.GoString), stdgo.Go.toInterface(("Kim" : stdgo.GoString)), stdgo.Go.toInterface((22 : stdgo.GoInt)))?.__copy__() : stdgo.GoString);
        stdgo._internal.io.Io_writeString.writeString(stdgo.Go.asInterface(stdgo._internal.os.Os_stdout.stdout), _s?.__copy__());
    }
