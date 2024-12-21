package stdgo._internal.os;
function readFile(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        return #if (sys || hxnodejs) {
            if (!sys.FileSystem.exists(_name)) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_("readFile " + _name + ": no such file or directory") };
            } else {
                try {
                    return { _0 : sys.io.File.getBytes(_name), _1 : null };
                } catch(e) {
                    { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(e.details()) };
                };
            };
        } #else null #end;
    }
