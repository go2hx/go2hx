package stdgo._internal.runtime.pprof;
function _peBuildID(_file:stdgo.GoString):stdgo.GoString {
        var __tmp__ = stdgo._internal.os.Os_stat.stat(_file?.__copy__()), _s:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _file?.__copy__();
        };
        return (_file + (_s.modTime().string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
