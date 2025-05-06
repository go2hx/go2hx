package stdgo._internal.go.scanner;
function printError(_w:stdgo._internal.io.Io_writer.Writer, _err:stdgo.Error):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/errors.go#L113"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.go.scanner.Scanner_errorlist.ErrorList)) : stdgo._internal.go.scanner.Scanner_errorlist.ErrorList), _1 : true };
            } catch(_) {
                { _0 : (new stdgo._internal.go.scanner.Scanner_errorlist.ErrorList(0, 0) : stdgo._internal.go.scanner.Scanner_errorlist.ErrorList), _1 : false };
            }, _list = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/errors.go#L114"
                for (__0 => _e in _list) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/errors.go#L115"
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_e)));
                };
            } else if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/errors.go#L118"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
    }
