package stdgo._internal.io.ioutil;
function tempDir(_dir:stdgo.GoString, _pattern:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var _name = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/io/ioutil/tempfile.go#L40"
        return stdgo._internal.os.Os_mkdirtemp.mkdirTemp(_dir?.__copy__(), _pattern?.__copy__());
    }
