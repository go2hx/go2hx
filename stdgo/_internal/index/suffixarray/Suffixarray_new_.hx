package stdgo._internal.index.suffixarray;
function new_(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_Index.Index> {
        var _ix = (stdgo.Go.setRef(({ _data : _data } : stdgo._internal.index.suffixarray.Suffixarray_Index.Index)) : stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_Index.Index>);
        if (((_data.length) <= stdgo._internal.index.suffixarray.Suffixarray__maxData32._maxData32 : Bool)) {
            (@:checkr _ix ?? throw "null pointer dereference")._sa._int32 = (new stdgo.Slice<stdgo.GoInt32>((_data.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            stdgo._internal.index.suffixarray.Suffixarray__text_32._text_32(_data, (@:checkr _ix ?? throw "null pointer dereference")._sa._int32);
        } else {
            (@:checkr _ix ?? throw "null pointer dereference")._sa._int64 = (new stdgo.Slice<stdgo.GoInt64>((_data.length : stdgo.GoInt).toBasic(), 0).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
            stdgo._internal.index.suffixarray.Suffixarray__text_64._text_64(_data, (@:checkr _ix ?? throw "null pointer dereference")._sa._int64);
        };
        return _ix;
    }
