package stdgo._internal.internal.fuzz;
function readCorpus(_dir:stdgo.GoString, _types:stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>):{ var _0 : stdgo.Slice<stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.os.Os_readdir.readDir(_dir?.__copy__()), _files:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L979"
        if (stdgo._internal.os.Os_isnotexist.isNotExist(_err)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L980"
            return { _0 : (null : stdgo.Slice<stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry>), _1 : (null : stdgo.Error) };
        } else if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L982"
            return { _0 : (null : stdgo.Slice<stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("reading seed corpus from testdata: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
        };
        var _corpus:stdgo.Slice<stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry> = (null : stdgo.Slice<stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry>);
        var _errs:stdgo.Slice<stdgo.Error> = (null : stdgo.Slice<stdgo.Error>);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L986"
        for (__8 => _file in _files) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L992"
            if (_file.isDir()) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L993"
                continue;
            };
            var _filename = (stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), _file.name()?.__copy__())?.__copy__() : stdgo.GoString);
            var __tmp__ = stdgo._internal.os.Os_readfile.readFile(_filename?.__copy__()), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L997"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L998"
                return { _0 : (null : stdgo.Slice<stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("failed to read corpus file: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
            };
            var _vals:stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
            {
                var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__readcorpusdata._readCorpusData(_data, _types);
                _vals = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1002"
            if (_err != null) {
                _errs = (_errs.__append__(stdgo._internal.fmt.Fmt_errorf.errorf(("%q: %v" : stdgo.GoString), stdgo.Go.toInterface(_filename), stdgo.Go.toInterface(_err))) : stdgo.Slice<stdgo.Error>);
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1004"
                continue;
            };
            _corpus = (_corpus.__append__(({ path : _filename?.__copy__(), values : _vals, parent : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry)) : stdgo.Slice<stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry>);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1008"
        if (((_errs.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1009"
            return { _0 : _corpus, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ _errs : _errs } : stdgo._internal.internal.fuzz.Fuzz_malformedcorpuserror.MalformedCorpusError)) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_malformedcorpuserror.MalformedCorpusError>)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1011"
        return { _0 : _corpus, _1 : (null : stdgo.Error) };
    }
