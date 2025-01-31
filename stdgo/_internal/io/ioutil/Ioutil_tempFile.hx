package stdgo._internal.io.ioutil;
import stdgo._internal.io.Io;
import stdgo._internal.os.Os;
import stdgo._internal.sort.Sort;
function tempFile(_dir:stdgo.GoString, _pattern:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_File.File>; var _1 : stdgo.Error; } {
        var _f = (null : stdgo.Ref<stdgo._internal.os.Os_File.File>), _err = (null : stdgo.Error);
        return {
            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.os.Os_File.File>; var _1 : stdgo.Error; } = stdgo._internal.os.Os_createTemp.createTemp(_dir?.__copy__(), _pattern?.__copy__());
            _f = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
