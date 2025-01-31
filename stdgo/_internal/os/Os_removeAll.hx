package stdgo._internal.os;
function removeAll(_path:stdgo.GoString):stdgo.Error {
        var deleteRecursively:String -> Void = null;
        deleteRecursively = function(path:String) {
            #if (sys || hxnodejs) {
                if (sys.FileSystem.exists(path)) {
                    if (sys.FileSystem.isDirectory(path)) {
                        var entries = sys.FileSystem.readDirectory(path);
                        for (entry in entries) {
                            if (sys.FileSystem.isDirectory(path + '/' + entry)) {
                                deleteRecursively(path + '/' + entry);
                                sys.FileSystem.deleteDirectory(path + '/' + entry);
                            } else {
                                sys.FileSystem.deleteFile(path + '/' + entry);
                            };
                        };
                    } else {
                        sys.FileSystem.deleteFile(path);
                    };
                };
            } #else null #end;
        };
        deleteRecursively(_path);
        return null;
    }
