package stdgo._internal.go.scanner;
function _checkSemi(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _input:stdgo.GoString, _want:stdgo.GoString, _mode:stdgo._internal.go.scanner.Scanner_mode.Mode):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L338"
        if ((_mode & (1u32 : stdgo._internal.go.scanner.Scanner_mode.Mode) : stdgo._internal.go.scanner.Scanner_mode.Mode) == ((0u32 : stdgo._internal.go.scanner.Scanner_mode.Mode))) {
            _want = stdgo._internal.strings.Strings_replaceall.replaceAll(_want?.__copy__(), ("COMMENT " : stdgo.GoString), (stdgo.Go.str() : stdgo.GoString)?.__copy__())?.__copy__();
            _want = stdgo._internal.strings.Strings_replaceall.replaceAll(_want?.__copy__(), (" COMMENT" : stdgo.GoString), (stdgo.Go.str() : stdgo.GoString)?.__copy__())?.__copy__();
            _want = stdgo._internal.strings.Strings_replaceall.replaceAll(_want?.__copy__(), ("COMMENT" : stdgo.GoString), (stdgo.Go.str() : stdgo.GoString)?.__copy__())?.__copy__();
        };
        var _file = stdgo._internal.go.scanner.Scanner__fset._fset.addFile(("TestSemis" : stdgo.GoString), stdgo._internal.go.scanner.Scanner__fset._fset.base(), (_input.length));
        var _scan:stdgo._internal.go.scanner.Scanner_scanner.Scanner = ({} : stdgo._internal.go.scanner.Scanner_scanner.Scanner);
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L346"
        _scan.init(_file, (_input : stdgo.Slice<stdgo.GoUInt8>), null, _mode);
        var _tokens:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L348"
        while (true) {
            var __tmp__ = _scan.scan(), _pos:stdgo._internal.go.token.Token_pos.Pos = __tmp__._0, _tok:stdgo._internal.go.token.Token_token.Token = __tmp__._1, _lit:stdgo.GoString = __tmp__._2;
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L350"
            if (_tok == ((1 : stdgo._internal.go.token.Token_token.Token))) {
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L351"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L353"
            if (((_tok == (57 : stdgo._internal.go.token.Token_token.Token)) && (_lit != (";" : stdgo.GoString)) : Bool)) {
                var _off = (_file.offset(_pos) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L357"
                if (((_off != (_input.length)) && (_input[(_off : stdgo.GoInt)] != (10 : stdgo.GoUInt8)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L358"
                    _t.errorf(("scanning <<%s>>, got SEMICOLON at offset %d, want newline or EOF" : stdgo.GoString), stdgo.Go.toInterface(_input), stdgo.Go.toInterface(_off));
                };
            };
            _lit = (_tok.string() : stdgo.GoString)?.__copy__();
            _tokens = (_tokens.__append__(_lit?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L364"
        {
            var _got = (stdgo._internal.strings.Strings_join.join(_tokens, (" " : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_got != (_want)) {
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L365"
                _t.errorf(("scanning <<%s>>, got [%s], want [%s]" : stdgo.GoString), stdgo.Go.toInterface(_input), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
