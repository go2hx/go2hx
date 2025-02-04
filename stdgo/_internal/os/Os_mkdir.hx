package stdgo._internal.os;
function mkdir(_name:stdgo.GoString, _perm:stdgo._internal.io.fs.Fs_filemode.FileMode):stdgo.Error #if (sys || hxnodejs) try {
        sys.FileSystem.createDirectory(_name);
        return null;
    } catch(e) {
        return stdgo._internal.errors.Errors_new_.new_("mkdir failed");
    } #else null #end;
