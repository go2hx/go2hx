package stdgo._internal.internal.testpty;
function open():{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        var _pty = (null : stdgo.Ref<stdgo._internal.os.Os_file.File>), _processTTY = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        return {
            final __tmp__ = stdgo._internal.internal.testpty.Testpty__open._open();
            _pty = __tmp__._0;
            _processTTY = __tmp__._1?.__copy__();
            _err = __tmp__._2;
            { _0 : _pty, _1 : _processTTY, _2 : _err };
        };
    }
