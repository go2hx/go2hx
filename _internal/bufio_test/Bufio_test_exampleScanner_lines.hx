package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function exampleScanner_lines():Void {
        var _scanner = stdgo._internal.bufio.Bufio_newScanner.newScanner(stdgo.Go.asInterface(stdgo._internal.os.Os_stdin.stdin));
        while (_scanner.scan()) {
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_scanner.text()));
        };
        {
            var _err = (_scanner.err() : stdgo.Error);
            if (_err != null) {
                stdgo._internal.fmt.Fmt_fprintln.fprintln(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), stdgo.Go.toInterface(("reading standard input:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
    }
