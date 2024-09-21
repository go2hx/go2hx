package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function exampleSectionReader_Size():Void {
        var _r = stdgo._internal.strings.Strings_newReader.newReader(("some io.Reader stream to be read\n" : stdgo.GoString));
        var _s = stdgo._internal.io.Io_newSectionReader.newSectionReader(stdgo.Go.asInterface(_r), (5i64 : stdgo.GoInt64), (17i64 : stdgo.GoInt64));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_s.size()));
    }
