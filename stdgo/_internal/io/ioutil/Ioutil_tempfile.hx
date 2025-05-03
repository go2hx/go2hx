package stdgo._internal.io.ioutil;
function tempFile(_dir:stdgo.GoString, _pattern:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } {
        var _f = (null : stdgo.Ref<stdgo._internal.os.Os_file.File>), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/io/ioutil/tempfile.go#L25"
        return ({
            @:explicitConversion final __tmp__ = stdgo._internal.os.Os_createtemp.createTemp(_dir?.__copy__(), _pattern?.__copy__());
            { _0 : __tmp__._0, _1 : __tmp__._1 };
        });
    }
