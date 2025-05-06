package stdgo._internal.go.scanner;
@:keep @:allow(stdgo._internal.go.scanner.Scanner.Error_asInterface) class Error_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.go.scanner.Scanner_error.Error):stdgo.GoString {
        @:recv var _e:stdgo._internal.go.scanner.Scanner_error.Error = _e?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/errors.go#L25"
        if (((_e.pos.filename != (stdgo.Go.str() : stdgo.GoString)) || _e.pos.isValid() : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/errors.go#L28"
            return (((_e.pos.string() : stdgo.GoString) + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _e.msg?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/errors.go#L30"
        return _e.msg?.__copy__();
    }
}
