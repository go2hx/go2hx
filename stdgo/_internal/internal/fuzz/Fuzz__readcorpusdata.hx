package stdgo._internal.internal.fuzz;
function _readCorpusData(_data:stdgo.Slice<stdgo.GoUInt8>, _types:stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>):{ var _0 : stdgo.Slice<stdgo.AnyInterface>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__unmarshalcorpusfile._unmarshalCorpusFile(_data), _vals:stdgo.Slice<stdgo.AnyInterface> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1016"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1017"
            return { _0 : (null : stdgo.Slice<stdgo.AnyInterface>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1019"
        {
            _err = stdgo._internal.internal.fuzz.Fuzz_checkcorpus.checkCorpus(_vals, _types);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1020"
                return { _0 : (null : stdgo.Slice<stdgo.AnyInterface>), _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1022"
        return { _0 : _vals, _1 : (null : stdgo.Error) };
    }
