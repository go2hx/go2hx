package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function exampleScanner_Bytes():Void {
        var _scanner = stdgo._internal.bufio.Bufio_newScanner.newScanner(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("gopher" : stdgo.GoString))));
        while (_scanner.scan()) {
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface((_scanner.bytes().length) == ((6 : stdgo.GoInt))));
        };
        {
            var _err = (_scanner.err() : stdgo.Error);
            if (_err != null) {
                stdgo._internal.fmt.Fmt_fprintln.fprintln(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), stdgo.Go.toInterface(("shouldn\'t see an error scanning a string" : stdgo.GoString)));
            };
        };
    }
