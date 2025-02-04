package stdgo._internal.os;
function lstat(_name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } {
        #if (sys || hxnodejs) {
            if (!sys.FileSystem.exists(_name)) return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_("readFile " + _name + ": no such file or directory") };
        } #else null #end;
        return { _0 : stdgo.Go.asInterface(new stdgo._internal.os.Os_t_filestat.T_fileStat(_name)), _1 : null };
    }
