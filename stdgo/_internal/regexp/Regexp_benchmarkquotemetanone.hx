package stdgo._internal.regexp;
function benchmarkQuoteMetaNone(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _s = (("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString) : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L874"
        _b.setBytes((_s.length : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L875"
        _b.resetTimer();
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L876"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                stdgo._internal.regexp.Regexp__sink._sink = stdgo._internal.regexp.Regexp_quotemeta.quoteMeta(_s.__copy__()).__copy__();
                _i++;
            };
        };
    }
