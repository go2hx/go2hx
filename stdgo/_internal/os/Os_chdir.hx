package stdgo._internal.os;
function chdir(_dir:stdgo.GoString):stdgo.Error {
        #if (sys || hxnodejs) {
            Sys.setCwd(_dir);
            return null;
        } #else null #end;
        return stdgo._internal.errors.Errors_new_.new_("chdir not supported on this target");
    }
