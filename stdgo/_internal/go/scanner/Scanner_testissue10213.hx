package stdgo._internal.go.scanner;
function testIssue10213(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _s:stdgo._internal.go.scanner.Scanner_scanner.Scanner = ({} : stdgo._internal.go.scanner.Scanner_scanner.Scanner);
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L846"
        _s.init(stdgo._internal.go.scanner.Scanner__fset._fset.addFile((stdgo.Go.str() : stdgo.GoString)?.__copy__(), stdgo._internal.go.scanner.Scanner__fset._fset.base(), ((("\n\t\tvar (\n\t\t\tA = 1 // foo\n\t\t)\n\n\t\tvar (\n\t\t\tB = 2\n\t\t\t// foo\n\t\t)\n\n\t\tvar C = 3 // foo\n\n\t\tvar D = 4\n\t\t// foo\n\n\t\tfunc anycode() {\n\t\t// foo\n\t\t}\n\t" : stdgo.GoString) : stdgo.GoString).length)), ((("\n\t\tvar (\n\t\t\tA = 1 // foo\n\t\t)\n\n\t\tvar (\n\t\t\tB = 2\n\t\t\t// foo\n\t\t)\n\n\t\tvar C = 3 // foo\n\n\t\tvar D = 4\n\t\t// foo\n\n\t\tfunc anycode() {\n\t\t// foo\n\t\t}\n\t" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), null, (0u32 : stdgo._internal.go.scanner.Scanner_mode.Mode));
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L847"
        while (true) {
            var __tmp__ = _s.scan(), _pos:stdgo._internal.go.token.Token_pos.Pos = __tmp__._0, _tok:stdgo._internal.go.token.Token_token.Token = __tmp__._1, _lit:stdgo.GoString = __tmp__._2;
            var _class = (stdgo._internal.go.scanner.Scanner__tokenclass._tokenclass(_tok) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L850"
            if ((((_lit != ((stdgo.Go.str() : stdgo.GoString)) && _class != ((3 : stdgo.GoInt)) : Bool) && _class != ((1 : stdgo.GoInt)) : Bool) && (_tok != (57 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L851"
                _t.errorf(("%s: tok = %s, lit = %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.go.scanner.Scanner__fset._fset.position(_pos))), stdgo.Go.toInterface(stdgo.Go.asInterface(_tok)), stdgo.Go.toInterface(_lit));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L853"
            if ((_tok <= (1 : stdgo._internal.go.token.Token_token.Token) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L854"
                break;
            };
        };
    }
