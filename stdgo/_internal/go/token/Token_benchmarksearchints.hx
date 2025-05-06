package stdgo._internal.go.token;
function benchmarkSearchInts(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _data = (new stdgo.Slice<stdgo.GoInt>((10000 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_bench_test.go#L13"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (10000 : stdgo.GoInt) : Bool)) {
                _data[(_i : stdgo.GoInt)] = _i;
                _i++;
            };
        };
        {};
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_bench_test.go#L17"
        {
            var _r = (stdgo._internal.go.token.Token__searchints._searchInts(_data, (8 : stdgo.GoInt)) : stdgo.GoInt);
            if (_r != ((8 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/go/token/position_bench_test.go#L18"
                _b.errorf(("got index = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface((8 : stdgo.GoInt)));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_bench_test.go#L20"
        _b.resetTimer();
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_bench_test.go#L21"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/token/position_bench_test.go#L22"
                stdgo._internal.go.token.Token__searchints._searchInts(_data, (8 : stdgo.GoInt));
                _i++;
            };
        };
    }
