package stdgo._internal.index.suffixarray;
function testNew32(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        stdgo._internal.index.suffixarray.Suffixarray__test._test(_t, function(_x:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoInt> {
            var _sa = (new stdgo.Slice<stdgo.GoInt32>((_x.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            stdgo._internal.index.suffixarray.Suffixarray__text_32._text_32(_x, _sa);
            var _out = (new stdgo.Slice<stdgo.GoInt>((_sa.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            for (_i => _v in _sa) {
                _out[(_i : stdgo.GoInt)] = (_v : stdgo.GoInt);
            };
            return _out;
        });
    }
