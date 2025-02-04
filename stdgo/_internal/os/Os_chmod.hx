package stdgo._internal.os;
function chmod(_name:stdgo.GoString, _mode:stdgo._internal.io.fs.Fs_filemode.FileMode):stdgo.Error {
        #if (sys || hxnodejs) {
            final perm:Int = _mode;
            final name = _name;
            if (Sys.command('chmod $perm $name') == 0) {
                return null;
            } else {
                return stdgo._internal.errors.Errors_new_.new_("chmod failed");
            };
        } #else null #end;
        return stdgo._internal.errors.Errors_new_.new_("chmod not supported on this target");
    }
