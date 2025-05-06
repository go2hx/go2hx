package stdgo._internal.go.scanner;
function _tokenclass(_tok:stdgo._internal.go.token.Token_token.Token):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L26"
        if (_tok.isLiteral()) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L28"
            return (1 : stdgo.GoInt);
        } else if (_tok.isOperator()) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L30"
            return (2 : stdgo.GoInt);
        } else if (_tok.isKeyword()) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L32"
            return (3 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L34"
        return (0 : stdgo.GoInt);
    }
