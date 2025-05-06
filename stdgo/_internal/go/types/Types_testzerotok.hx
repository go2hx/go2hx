package stdgo._internal.go.types;
function testZeroTok(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _zero:stdgo._internal.go.token.Token_token.Token = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_token.Token);
        //"file:///home/runner/.go/go1.21.3/src/go/types/token_test.go#L32"
        if ((0 : stdgo._internal.go.token.Token_token.Token) != (_zero)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/token_test.go#L33"
            _t.errorf(("%s == %d; want 0" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((0 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface(stdgo.Go.asInterface(_zero)));
        };
    }
