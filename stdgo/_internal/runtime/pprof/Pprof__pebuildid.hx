package stdgo._internal.runtime.pprof;
function _peBuildID(_file:stdgo.GoString):stdgo.GoString {
        var __tmp__ = stdgo._internal.os.Os_stat.stat(_file?.__copy__()), _s:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pe.go#L15"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pe.go#L16"
            return _file?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pe.go#L18"
        return (_file + (_s.modTime().string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
