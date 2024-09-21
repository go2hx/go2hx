package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function exampleScanner_words():Void {
        {};
        var _scanner = stdgo._internal.bufio.Bufio_newScanner.newScanner(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("Now is the winter of our discontent,\nMade glorious summer by this sun of York.\n" : stdgo.GoString))));
        _scanner.split(stdgo._internal.bufio.Bufio_scanWords.scanWords);
        var _count = (0 : stdgo.GoInt);
        while (_scanner.scan()) {
            _count++;
        };
        {
            var _err = (_scanner.err() : stdgo.Error);
            if (_err != null) {
                stdgo._internal.fmt.Fmt_fprintln.fprintln(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), stdgo.Go.toInterface(("reading input:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        stdgo._internal.fmt.Fmt_printf.printf(("%d\n" : stdgo.GoString), stdgo.Go.toInterface(_count));
    }
