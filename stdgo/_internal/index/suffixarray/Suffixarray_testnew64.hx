package stdgo._internal.index.suffixarray;
function testNew64(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L330"
        stdgo._internal.index.suffixarray.Suffixarray__test._test(_t, function(_x:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoInt> {
            var _sa = (new stdgo.Slice<stdgo.GoInt64>((_x.length : stdgo.GoInt).toBasic(), 0).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L332"
            stdgo._internal.index.suffixarray.Suffixarray__text_64._text_64(_x, _sa);
            var _out = (new stdgo.Slice<stdgo.GoInt>((_sa.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L334"
            for (_i => _v in _sa) {
                _out[(_i : stdgo.GoInt)] = (_v : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L337"
            return _out;
        });
    }
