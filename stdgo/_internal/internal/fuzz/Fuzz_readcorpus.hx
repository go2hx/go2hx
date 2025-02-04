package stdgo._internal.internal.fuzz;
function readCorpus(_dir:stdgo.GoString, _types:stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>):{ var _0 : stdgo.Slice<stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.os.Os_readdir.readDir(_dir?.__copy__()), _files:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (stdgo._internal.os.Os_isnotexist.isNotExist(_err)) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry>), _1 : (null : stdgo.Error) };
        } else if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("reading seed corpus from testdata: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
        };
        var _corpus:stdgo.Slice<stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry> = (null : stdgo.Slice<stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry>);
        var _errs:stdgo.Slice<stdgo.Error> = (null : stdgo.Slice<stdgo.Error>);
        for (__8 => _file in _files) {
            if (_file.isDir()) {
                continue;
            };
            var _filename = (stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), _file.name()?.__copy__())?.__copy__() : stdgo.GoString);
            var __tmp__ = stdgo._internal.os.Os_readfile.readFile(_filename?.__copy__()), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("failed to read corpus file: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
            };
            var _vals:stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
            {
                var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__readcorpusdata._readCorpusData(_data, _types);
                _vals = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                _errs = (_errs.__append__(stdgo._internal.fmt.Fmt_errorf.errorf(("%q: %v" : stdgo.GoString), stdgo.Go.toInterface(_filename), stdgo.Go.toInterface(_err))));
                continue;
            };
            _corpus = (_corpus.__append__(({ path : _filename?.__copy__(), values : _vals, parent : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry)));
        };
        if (((_errs.length) > (0 : stdgo.GoInt) : Bool)) {
            return { _0 : _corpus, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ _errs : _errs } : stdgo._internal.internal.fuzz.Fuzz_malformedcorpuserror.MalformedCorpusError)) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_malformedcorpuserror.MalformedCorpusError>)) };
        };
        return { _0 : _corpus, _1 : (null : stdgo.Error) };
    }
