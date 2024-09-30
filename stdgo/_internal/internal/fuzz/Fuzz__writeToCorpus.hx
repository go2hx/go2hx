package stdgo._internal.internal.fuzz;
function _writeToCorpus(_entry:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry>, _dir:stdgo.GoString):stdgo.Error {
        var _err = (null : stdgo.Error);
        var _sum = ((stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.crypto.sha256.Sha256_sum256.sum256(_entry.data))).__slice__(0, (16 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        _entry.path = stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), _sum?.__copy__())?.__copy__();
        {
            var _err = (stdgo._internal.os.Os_mkdirAll.mkdirAll(_dir?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (stdgo._internal.os.Os_writeFile.writeFile(_entry.path?.__copy__(), _entry.data, (438u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
            if (_err != null) {
                stdgo._internal.os.Os_remove.remove(_entry.path?.__copy__());
                return _err;
            };
        };
        return (null : stdgo.Error);
    }
