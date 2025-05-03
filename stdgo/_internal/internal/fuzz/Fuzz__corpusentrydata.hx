package stdgo._internal.internal.fuzz;
function _corpusEntryData(_ce:stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L488"
        if (_ce.data != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L489"
            return { _0 : _ce.data, _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L492"
        return stdgo._internal.os.Os_readfile.readFile(_ce.path?.__copy__());
    }
