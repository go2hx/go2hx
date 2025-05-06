package stdgo._internal.go.scanner;
function testScan(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _whitespace_linecount = (stdgo._internal.go.scanner.Scanner__newlinecount._newlineCount(("  \t  \n\n\n" : stdgo.GoString)) : stdgo.GoInt);
        var _eh = (function(__0:stdgo._internal.go.token.Token_position.Position, _msg:stdgo.GoString):Void {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L231"
            _t.errorf(("error handler called (msg = %s)" : stdgo.GoString), stdgo.Go.toInterface(_msg));
        } : (stdgo._internal.go.token.Token_position.Position, stdgo.GoString) -> Void);
        var _s:stdgo._internal.go.scanner.Scanner_scanner.Scanner = ({} : stdgo._internal.go.scanner.Scanner_scanner.Scanner);
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L236"
        _s.init(stdgo._internal.go.scanner.Scanner__fset._fset.addFile((stdgo.Go.str() : stdgo.GoString)?.__copy__(), stdgo._internal.go.scanner.Scanner__fset._fset.base(), (stdgo._internal.go.scanner.Scanner__source._source.length)), stdgo._internal.go.scanner.Scanner__source._source, _eh, (3u32 : stdgo._internal.go.scanner.Scanner_mode.Mode));
        var _epos = ({ filename : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), offset : (0 : stdgo.GoInt), line : (1 : stdgo.GoInt), column : (1 : stdgo.GoInt) } : stdgo._internal.go.token.Token_position.Position);
        var _index = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L247"
        while (true) {
            var __tmp__ = _s.scan(), _pos:stdgo._internal.go.token.Token_pos.Pos = __tmp__._0, _tok:stdgo._internal.go.token.Token_token.Token = __tmp__._1, _lit:stdgo.GoString = __tmp__._2;
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L251"
            if (_tok == ((1 : stdgo._internal.go.token.Token_token.Token))) {
                _epos.line = stdgo._internal.go.scanner.Scanner__newlinecount._newlineCount((stdgo._internal.go.scanner.Scanner__source._source : stdgo.GoString)?.__copy__());
                _epos.column = (2 : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L256"
            stdgo._internal.go.scanner.Scanner__checkpos._checkPos(_t, _lit?.__copy__(), _pos, _epos?.__copy__());
            var _e = (new stdgo._internal.go.scanner.Scanner_t_elt.T_elt((1 : stdgo._internal.go.token.Token_token.Token), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt)) : stdgo._internal.go.scanner.Scanner_t_elt.T_elt);
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L260"
            if ((_index < (stdgo._internal.go.scanner.Scanner__tokens._tokens.length) : Bool)) {
                _e = stdgo._internal.go.scanner.Scanner__tokens._tokens[(_index : stdgo.GoInt)];
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L262"
                _index++;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L264"
            if (_tok != (_e._tok)) {
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L265"
                _t.errorf(("bad token for %q: got %s, expected %s" : stdgo.GoString), stdgo.Go.toInterface(_lit), stdgo.Go.toInterface(stdgo.Go.asInterface(_tok)), stdgo.Go.toInterface(stdgo.Go.asInterface(_e._tok)));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L269"
            if (stdgo._internal.go.scanner.Scanner__tokenclass._tokenclass(_tok) != (_e._class)) {
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L270"
                _t.errorf(("bad class for %q: got %d, expected %d" : stdgo.GoString), stdgo.Go.toInterface(_lit), stdgo.Go.toInterface(stdgo._internal.go.scanner.Scanner__tokenclass._tokenclass(_tok)), stdgo.Go.toInterface(_e._class));
            };
            var _elit = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L275"
            {
                final __value__ = _e._tok;
                if (__value__ == ((2 : stdgo._internal.go.token.Token_token.Token))) {
                    _elit = (stdgo._internal.go.scanner.Scanner__stripcr._stripCR((_e._lit : stdgo.Slice<stdgo.GoUInt8>), _e._lit[(1 : stdgo.GoInt)] == ((42 : stdgo.GoUInt8))) : stdgo.GoString)?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L280"
                    if (_elit[(1 : stdgo.GoInt)] == ((47 : stdgo.GoUInt8))) {
                        _elit = (_elit.__slice__((0 : stdgo.GoInt), ((_elit.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    };
                } else if (__value__ == ((4 : stdgo._internal.go.token.Token_token.Token))) {
                    _elit = _e._lit?.__copy__();
                } else if (__value__ == ((57 : stdgo._internal.go.token.Token_token.Token))) {
                    _elit = (";" : stdgo.GoString);
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L288"
                    if (_e._tok.isLiteral()) {
                        _elit = _e._lit?.__copy__();
                        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L291"
                        if (_elit[(0 : stdgo.GoInt)] == ((96 : stdgo.GoUInt8))) {
                            _elit = (stdgo._internal.go.scanner.Scanner__stripcr._stripCR((_elit : stdgo.Slice<stdgo.GoUInt8>), false) : stdgo.GoString)?.__copy__();
                        };
                    } else if (_e._tok.isKeyword()) {
                        _elit = _e._lit?.__copy__();
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L298"
            if (_lit != (_elit)) {
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L299"
                _t.errorf(("bad literal for %q: got %q, expected %q" : stdgo.GoString), stdgo.Go.toInterface(_lit), stdgo.Go.toInterface(_lit), stdgo.Go.toInterface(_elit));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L302"
            if (_tok == ((1 : stdgo._internal.go.token.Token_token.Token))) {
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L303"
                break;
            };
            _epos.offset = (_epos.offset + (((_e._lit.length) + ((("  \t  \n\n\n" : stdgo.GoString) : stdgo.GoString).length) : stdgo.GoInt)) : stdgo.GoInt);
            _epos.line = (_epos.line + ((stdgo._internal.go.scanner.Scanner__newlinecount._newlineCount(_e._lit?.__copy__()) + _whitespace_linecount : stdgo.GoInt)) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L312"
        if (_s.errorCount != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L313"
            _t.errorf(("found %d errors" : stdgo.GoString), stdgo.Go.toInterface(_s.errorCount));
        };
    }
