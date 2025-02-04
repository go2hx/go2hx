package stdgo._internal.internal.fuzz;
function _writeToCorpus(_entry:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry>, _dir:stdgo.GoString):stdgo.Error {
        var _err = (null : stdgo.Error);
        var _sum = ((stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.crypto.sha256.Sha256_sum256.sum256((@:checkr _entry ?? throw "null pointer dereference").data))).__slice__(0, (16 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        (@:checkr _entry ?? throw "null pointer dereference").path = stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), _sum?.__copy__())?.__copy__();
        {
            var _err = (stdgo._internal.os.Os_mkdirall.mkdirAll(_dir?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (stdgo._internal.os.Os_writefile.writeFile((@:checkr _entry ?? throw "null pointer dereference").path?.__copy__(), (@:checkr _entry ?? throw "null pointer dereference").data, (438u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo.Error);
            if (_err != null) {
                stdgo._internal.os.Os_remove.remove((@:checkr _entry ?? throw "null pointer dereference").path?.__copy__());
                return _err;
            };
        };
        return _err = (null : stdgo.Error);
    }
