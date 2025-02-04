package stdgo._internal.os;
function writeFile(_name:stdgo.GoString, _data:stdgo.Slice<stdgo.GoUInt8>, _perm:stdgo._internal.io.fs.Fs_filemode.FileMode):stdgo.Error {
        return #if (sys || hxnodejs) {
            if (!sys.FileSystem.exists(_name)) {
                return stdgo._internal.errors.Errors_new_.new_("writeFile " + _name + ": no such file or directory");
            } else {
                try {
                    sys.io.File.saveBytes(_name, _data.toBytes());
                    return null;
                } catch(e) {
                    return null;
                };
            };
        } #else null #end;
    }
