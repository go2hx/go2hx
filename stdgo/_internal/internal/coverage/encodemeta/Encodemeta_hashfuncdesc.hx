package stdgo._internal.internal.coverage.encodemeta;
function hashFuncDesc(_f:stdgo.Ref<stdgo._internal.internal.coverage.Coverage_funcdesc.FuncDesc>):stdgo.GoArray<stdgo.GoUInt8> {
        var _h = (stdgo._internal.crypto.md5.Md5_new_.new_() : stdgo._internal.hash.Hash_hash.Hash);
        var _tmp = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (32 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.internal.coverage.encodemeta.Encodemeta__hashfuncdesc._hashFuncDesc(_h, _f, _tmp);
        var _r:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
        (_r.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_h.sum((null : stdgo.Slice<stdgo.GoUInt8>)));
        return _r?.__copy__();
    }
