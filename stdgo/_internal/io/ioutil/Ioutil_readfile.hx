package stdgo._internal.io.ioutil;
function readFile(_filename:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/io/ioutil/ioutil.go#L37"
        return stdgo._internal.os.Os_readfile.readFile(_filename?.__copy__());
    }
