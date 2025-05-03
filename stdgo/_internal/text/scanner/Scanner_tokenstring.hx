package stdgo._internal.text.scanner;
function tokenString(_tok:stdgo.GoInt32):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L103"
        {
            var __tmp__ = (stdgo._internal.text.scanner.Scanner__tokenstring._tokenString != null && stdgo._internal.text.scanner.Scanner__tokenstring._tokenString.__exists__(_tok) ? { _0 : stdgo._internal.text.scanner.Scanner__tokenstring._tokenString[_tok], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _s:stdgo.GoString = __tmp__._0, _found:Bool = __tmp__._1;
            if (_found) {
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L104"
                return _s?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L106"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%q" : stdgo.GoString), stdgo.Go.toInterface((_tok : stdgo.GoString)))?.__copy__();
    }
