package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function exampleWriter():Void {
        var _w = stdgo._internal.bufio.Bufio_newWriter.newWriter(stdgo.Go.asInterface(stdgo._internal.os.Os_stdout.stdout));
        stdgo._internal.fmt.Fmt_fprint.fprint(stdgo.Go.asInterface(_w), stdgo.Go.toInterface(("Hello, " : stdgo.GoString)));
        stdgo._internal.fmt.Fmt_fprint.fprint(stdgo.Go.asInterface(_w), stdgo.Go.toInterface(("world!" : stdgo.GoString)));
        _w.flush();
    }
