package stdgo._internal.go.scanner;
function testIssue28112(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _tokens = (new stdgo.Slice<stdgo._internal.go.token.Token_token.Token>(8, 8, ...[(48 : stdgo._internal.go.token.Token_token.Token), (53 : stdgo._internal.go.token.Token_token.Token), (53 : stdgo._internal.go.token.Token_token.Token), (6 : stdgo._internal.go.token.Token_token.Token), (53 : stdgo._internal.go.token.Token_token.Token), (53 : stdgo._internal.go.token.Token_token.Token), (53 : stdgo._internal.go.token.Token_token.Token), (1 : stdgo._internal.go.token.Token_token.Token)]).__setNumber32__() : stdgo.Slice<stdgo._internal.go.token.Token_token.Token>);
        var _s:stdgo._internal.go.scanner.Scanner_scanner.Scanner = ({} : stdgo._internal.go.scanner.Scanner_scanner.Scanner);
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L863"
        _s.init(stdgo._internal.go.scanner.Scanner__fset._fset.addFile((stdgo.Go.str() : stdgo.GoString)?.__copy__(), stdgo._internal.go.scanner.Scanner__fset._fset.base(), ((("... .. 0.. .." : stdgo.GoString) : stdgo.GoString).length)), ((("... .. 0.. .." : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), null, (0u32 : stdgo._internal.go.scanner.Scanner_mode.Mode));
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L864"
        for (__16 => _want in _tokens) {
            var __tmp__ = _s.scan(), _pos:stdgo._internal.go.token.Token_pos.Pos = __tmp__._0, _got:stdgo._internal.go.token.Token_token.Token = __tmp__._1, _lit:stdgo.GoString = __tmp__._2;
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L866"
            if (_got != (_want)) {
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L867"
                _t.errorf(("%s: got %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.go.scanner.Scanner__fset._fset.position(_pos))), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L870"
            if (((stdgo._internal.go.scanner.Scanner__tokenclass._tokenclass(_got) == (1 : stdgo.GoInt)) && (_lit == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L871"
                _t.errorf(("%s: for %s got empty literal string" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.go.scanner.Scanner__fset._fset.position(_pos))), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)));
            };
        };
    }
