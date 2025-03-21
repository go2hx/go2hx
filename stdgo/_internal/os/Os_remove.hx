package stdgo._internal.os;
function remove(_name:stdgo.GoString):stdgo.Error {
        #if (sys || hxnodejs) {
            final path = _name;
            if (sys.FileSystem.isDirectory(path)) {
                sys.FileSystem.deleteDirectory(path);
            } else {
                sys.FileSystem.deleteFile(path);
            };
        } #else null #end;
        return null;
    }
