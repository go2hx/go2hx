package stdgo._internal.os;
function open(_name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_File.File>; var _1 : stdgo.Error; } {
        return #if (sys || hxnodejs) {
            if (!sys.FileSystem.exists(_name)) return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_("open " + _name + ": no such file or directory") };
            throw "os.open is not yet implemented";
            return { _0 : null, _1 : null };
        } #else null #end;
    }
