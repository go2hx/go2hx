package stdgo._internal.go.scanner;
function testInit(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _s:stdgo._internal.go.scanner.Scanner_scanner.Scanner = ({} : stdgo._internal.go.scanner.Scanner_scanner.Scanner);
        var _src1 = (("if true { }" : stdgo.GoString) : stdgo.GoString);
        var _f1 = stdgo._internal.go.scanner.Scanner__fset._fset.addFile(("src1" : stdgo.GoString), stdgo._internal.go.scanner.Scanner__fset._fset.base(), (_src1.length));
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L641"
        _s.init(_f1, (_src1 : stdgo.Slice<stdgo.GoUInt8>), null, (2u32 : stdgo._internal.go.scanner.Scanner_mode.Mode));
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L642"
        if (_f1.size() != ((_src1.length))) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L643"
            _t.errorf(("bad file size: got %d, expected %d" : stdgo.GoString), stdgo.Go.toInterface(_f1.size()), stdgo.Go.toInterface((_src1.length)));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L645"
        _s.scan();
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L646"
        _s.scan();
        var __tmp__ = _s.scan(), __16:stdgo._internal.go.token.Token_pos.Pos = __tmp__._0, _tok:stdgo._internal.go.token.Token_token.Token = __tmp__._1, __17:stdgo.GoString = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L648"
        if (_tok != ((51 : stdgo._internal.go.token.Token_token.Token))) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L649"
            _t.errorf(("bad token: got %s, expected %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tok)), stdgo.Go.toInterface(stdgo.Go.asInterface((51 : stdgo._internal.go.token.Token_token.Token))));
        };
        var _src2 = (("go true { ]" : stdgo.GoString) : stdgo.GoString);
        var _f2 = stdgo._internal.go.scanner.Scanner__fset._fset.addFile(("src2" : stdgo.GoString), stdgo._internal.go.scanner.Scanner__fset._fset.base(), (_src2.length));
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L655"
        _s.init(_f2, (_src2 : stdgo.Slice<stdgo.GoUInt8>), null, (2u32 : stdgo._internal.go.scanner.Scanner_mode.Mode));
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L656"
        if (_f2.size() != ((_src2.length))) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L657"
            _t.errorf(("bad file size: got %d, expected %d" : stdgo.GoString), stdgo.Go.toInterface(_f2.size()), stdgo.Go.toInterface((_src2.length)));
        };
        {
            var __tmp__ = _s.scan();
            _tok = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L660"
        if (_tok != ((72 : stdgo._internal.go.token.Token_token.Token))) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L661"
            _t.errorf(("bad token: got %s, expected %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tok)), stdgo.Go.toInterface(stdgo.Go.asInterface((72 : stdgo._internal.go.token.Token_token.Token))));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L664"
        if (_s.errorCount != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L665"
            _t.errorf(("found %d errors" : stdgo.GoString), stdgo.Go.toInterface(_s.errorCount));
        };
    }
