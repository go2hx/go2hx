package stdgo._internal.io.ioutil;
import stdgo._internal.io.Io;
import stdgo._internal.os.Os;
import stdgo._internal.sort.Sort;
function writeFile(_filename:stdgo.GoString, _data:stdgo.Slice<stdgo.GoUInt8>, _perm:stdgo._internal.io.fs.Fs_FileMode.FileMode):stdgo.Error {
        return stdgo._internal.os.Os_writeFile.writeFile(_filename?.__copy__(), _data, _perm);
    }
