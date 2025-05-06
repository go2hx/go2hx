package stdgo._internal.go.scanner;
function _checkError(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _src:stdgo.GoString, _tok:stdgo._internal.go.token.Token_token.Token, _pos:stdgo.GoInt, _lit:stdgo.GoString, _err:stdgo.GoString):Void {
        var _s:stdgo._internal.go.scanner.Scanner_scanner.Scanner = ({} : stdgo._internal.go.scanner.Scanner_scanner.Scanner);
        var _h:stdgo._internal.go.scanner.Scanner_t_errorcollector.T_errorCollector = ({} : stdgo._internal.go.scanner.Scanner_t_errorcollector.T_errorCollector);
        var _eh = (function(_pos:stdgo._internal.go.token.Token_position.Position, _msg:stdgo.GoString):Void {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L722"
            _h._cnt++;
            _h._msg = _msg?.__copy__();
            _h._pos = _pos?.__copy__();
        } : (stdgo._internal.go.token.Token_position.Position, stdgo.GoString) -> Void);
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L726"
        _s.init(stdgo._internal.go.scanner.Scanner__fset._fset.addFile((stdgo.Go.str() : stdgo.GoString)?.__copy__(), stdgo._internal.go.scanner.Scanner__fset._fset.base(), (_src.length)), (_src : stdgo.Slice<stdgo.GoUInt8>), _eh, (3u32 : stdgo._internal.go.scanner.Scanner_mode.Mode));
        var __tmp__ = _s.scan(), __16:stdgo._internal.go.token.Token_pos.Pos = __tmp__._0, _tok0:stdgo._internal.go.token.Token_token.Token = __tmp__._1, _lit0:stdgo.GoString = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L728"
        if (_tok0 != (_tok)) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L729"
            _t.errorf(("%q: got %s, expected %s" : stdgo.GoString), stdgo.Go.toInterface(_src), stdgo.Go.toInterface(stdgo.Go.asInterface(_tok0)), stdgo.Go.toInterface(stdgo.Go.asInterface(_tok)));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L731"
        if (((_tok0 != (0 : stdgo._internal.go.token.Token_token.Token)) && (_lit0 != _lit) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L732"
            _t.errorf(("%q: got literal %q, expected %q" : stdgo.GoString), stdgo.Go.toInterface(_src), stdgo.Go.toInterface(_lit0), stdgo.Go.toInterface(_lit));
        };
        var _cnt = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L735"
        if (_err != ((stdgo.Go.str() : stdgo.GoString))) {
            _cnt = (1 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L738"
        if (_h._cnt != (_cnt)) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L739"
            _t.errorf(("%q: got cnt %d, expected %d" : stdgo.GoString), stdgo.Go.toInterface(_src), stdgo.Go.toInterface(_h._cnt), stdgo.Go.toInterface(_cnt));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L741"
        if (_h._msg != (_err)) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L742"
            _t.errorf(("%q: got msg %q, expected %q" : stdgo.GoString), stdgo.Go.toInterface(_src), stdgo.Go.toInterface(_h._msg), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L744"
        if (_h._pos.offset != (_pos)) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L745"
            _t.errorf(("%q: got offset %d, expected %d" : stdgo.GoString), stdgo.Go.toInterface(_src), stdgo.Go.toInterface(_h._pos.offset), stdgo.Go.toInterface(_pos));
        };
    }
