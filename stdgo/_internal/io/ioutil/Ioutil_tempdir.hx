package stdgo._internal.io.ioutil;
function tempDir(_dir:stdgo.GoString, _pattern:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var _name = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        return {
            final __tmp__ = stdgo._internal.os.Os_mkdirtemp.mkdirTemp(_dir?.__copy__(), _pattern?.__copy__());
            _name = __tmp__._0?.__copy__();
            _err = __tmp__._1;
            { _0 : _name, _1 : _err };
        };
    }
