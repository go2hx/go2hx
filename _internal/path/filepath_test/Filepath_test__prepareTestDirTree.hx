package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function _prepareTestDirTree(_tree:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.os.Os_mkdirTemp.mkdirTemp(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()), _tmpDir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("error creating temp directory: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
        };
        _err = stdgo._internal.os.Os_mkdirAll.mkdirAll(stdgo._internal.path.filepath.Filepath_join.join(_tmpDir?.__copy__(), _tree?.__copy__())?.__copy__(), (493u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode));
        if (_err != null) {
            stdgo._internal.os.Os_removeAll.removeAll(_tmpDir?.__copy__());
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : _err };
        };
        return { _0 : _tmpDir?.__copy__(), _1 : (null : stdgo.Error) };
    }
