package stdgo._internal.go.types;
function testAssignOp(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/types/token_test.go#L39"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (256 : stdgo.GoInt) : Bool)) {
                var _tok = (_i : stdgo._internal.go.token.Token_token.Token);
var _got = (stdgo._internal.go.types.Types__assignop._assignOp(_tok) : stdgo._internal.go.token.Token_token.Token);
var _want = (stdgo._internal.go.types.Types__assignops._assignOps[_tok] ?? ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_token.Token) : stdgo._internal.go.token.Token_token.Token);
//"file:///home/runner/.go/go1.21.3/src/go/types/token_test.go#L43"
                if (_got != (_want)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/token_test.go#L44"
                    _t.errorf(("for assignOp(%s): got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tok)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
                };
                _i++;
            };
        };
    }
