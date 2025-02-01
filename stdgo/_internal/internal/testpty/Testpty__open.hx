package stdgo._internal.internal.testpty;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
function _open():{ var _0 : stdgo.Ref<stdgo._internal.os.Os_File.File>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        var _pty = (null : stdgo.Ref<stdgo._internal.os.Os_File.File>), _processTTY = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        return {
            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.os.Os_File.File>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.str()?.__copy__(), _2 : stdgo._internal.internal.testpty.Testpty_errNotSupported.errNotSupported };
            _pty = __tmp__._0;
            _processTTY = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
