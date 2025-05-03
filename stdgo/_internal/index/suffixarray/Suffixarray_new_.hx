package stdgo._internal.index.suffixarray;
function new_(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_index.Index> {
        var _ix = (stdgo.Go.setRef(({ _data : _data } : stdgo._internal.index.suffixarray.Suffixarray_index.Index)) : stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_index.Index>);
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L77"
        if (((_data.length) <= stdgo._internal.index.suffixarray.Suffixarray__maxdata32._maxData32 : Bool)) {
            (@:checkr _ix ?? throw "null pointer dereference")._sa._int32 = (new stdgo.Slice<stdgo.GoInt32>((_data.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L79"
            stdgo._internal.index.suffixarray.Suffixarray__text_32._text_32(_data, (@:checkr _ix ?? throw "null pointer dereference")._sa._int32);
        } else {
            (@:checkr _ix ?? throw "null pointer dereference")._sa._int64 = (new stdgo.Slice<stdgo.GoInt64>((_data.length : stdgo.GoInt).toBasic(), 0).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L82"
            stdgo._internal.index.suffixarray.Suffixarray__text_64._text_64(_data, (@:checkr _ix ?? throw "null pointer dereference")._sa._int64);
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L84"
        return _ix;
    }
