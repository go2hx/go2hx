package stdgo._internal.path.filepath;
function volumeName(_path:stdgo.GoString):stdgo.GoString {
        return stdgo._internal.path.filepath.Filepath_fromSlash.fromSlash((_path.__slice__(0, stdgo._internal.path.filepath.Filepath__volumeNameLen._volumeNameLen(_path?.__copy__())) : stdgo.GoString)?.__copy__())?.__copy__();
    }
