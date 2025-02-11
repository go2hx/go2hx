package stdgo._internal.io.ioutil;
function tempFile(_dir:stdgo.GoString, _pattern:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } {
        var _f = (null : stdgo.Ref<stdgo._internal.os.Os_file.File>), _err = (null : stdgo.Error);
        return {
            final __tmp__ = stdgo._internal.os.Os_createtemp.createTemp(_dir?.__copy__(), _pattern?.__copy__());
            _f = __tmp__._0;
            _err = __tmp__._1;
            { _0 : _f, _1 : _err };
        };
    }
