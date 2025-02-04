package stdgo._internal.io.ioutil;
function writeFile(_filename:stdgo.GoString, _data:stdgo.Slice<stdgo.GoUInt8>, _perm:stdgo._internal.io.fs.Fs_filemode.FileMode):stdgo.Error {
        return stdgo._internal.os.Os_writefile.writeFile(_filename?.__copy__(), _data, _perm);
    }
