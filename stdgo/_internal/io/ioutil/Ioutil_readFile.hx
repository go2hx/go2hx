package stdgo._internal.io.ioutil;
function readFile(_filename:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        return stdgo._internal.os.Os_readFile.readFile(_filename?.__copy__());
    }
