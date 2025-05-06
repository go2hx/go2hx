package stdgo._internal.go.scanner;
function benchmarkScanFiles(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L896"
        for (__0 => _p in (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("go/types/expr.go" : stdgo.GoString), ("go/parser/parser.go" : stdgo.GoString), ("net/http/server.go" : stdgo.GoString), ("go/scanner/errors.go" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L902"
            _b.run(_p?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L903"
                _b.stopTimer();
                var _filename = (stdgo._internal.path.filepath.Filepath_join.join((".." : stdgo.GoString), (".." : stdgo.GoString), stdgo._internal.path.filepath.Filepath_fromslash.fromSlash(_p?.__copy__())?.__copy__())?.__copy__() : stdgo.GoString);
                var __tmp__ = stdgo._internal.os.Os_readfile.readFile(_filename?.__copy__()), _src:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L906"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L907"
                    _b.fatal(stdgo.Go.toInterface(_err));
                };
                var _fset = stdgo._internal.go.token.Token_newfileset.newFileSet();
                var _file = _fset.addFile(_filename?.__copy__(), _fset.base(), (_src.length));
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L911"
                _b.setBytes((_src.length : stdgo.GoInt64));
                var _s:stdgo._internal.go.scanner.Scanner_scanner.Scanner = ({} : stdgo._internal.go.scanner.Scanner_scanner.Scanner);
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L913"
                _b.startTimer();
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L914"
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L915"
                        _s.init(_file, _src, null, (1u32 : stdgo._internal.go.scanner.Scanner_mode.Mode));
//"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L916"
                        while (true) {
                            var __tmp__ = _s.scan(), __57:stdgo._internal.go.token.Token_pos.Pos = __tmp__._0, _tok:stdgo._internal.go.token.Token_token.Token = __tmp__._1, __58:stdgo.GoString = __tmp__._2;
                            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L918"
                            if (_tok == ((1 : stdgo._internal.go.token.Token_token.Token))) {
                                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L919"
                                break;
                            };
                        };
                        _i++;
                    };
                };
            });
        };
    }
