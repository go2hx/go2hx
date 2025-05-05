package stdgo._internal.index.suffixarray;
function testNew32(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L318"
        stdgo._internal.index.suffixarray.Suffixarray__test._test(_t, function(_x:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoInt> {
            var _sa = (new stdgo.Slice<stdgo.GoInt32>((_x.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L320"
            stdgo._internal.index.suffixarray.Suffixarray__text_32._text_32(_x, _sa);
            var _out = (new stdgo.Slice<stdgo.GoInt>((_sa.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L322"
            for (_i => _v in _sa) {
                _out[(_i : stdgo.GoInt)] = (_v : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L325"
            return _out;
        });
    }
