package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function _writeFile(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _fname:stdgo.GoString, _flag:stdgo.GoInt, _text:stdgo.GoString):stdgo.GoString {
        var __tmp__ = stdgo._internal.os.Os_openFile.openFile(_fname?.__copy__(), _flag, (438u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)), _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Open: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo._internal.io.Io_writeString.writeString(stdgo.Go.asInterface(_f), _text?.__copy__()), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("WriteString: %d, %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        _f.close();
        var __tmp__ = stdgo._internal.os.Os_readFile.readFile(_fname?.__copy__()), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("ReadFile: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        return (_data : stdgo.GoString)?.__copy__();
    }
