package _internal.syscall_test;
function testOpenFileLimit(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _fileCount = (1200 : stdgo.GoInt);
        if (false) {
            _fileCount = (768 : stdgo.GoInt);
        };
        var _files:stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os_File.File>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os_File.File>>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _fileCount : Bool), _i++, {
                var __tmp__ = stdgo._internal.os.Os_open.open(("rlimit.go" : stdgo.GoString)), _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.error(stdgo.Go.toInterface(_err));
                    break;
                };
                _files = (_files.__append__(_f));
            });
        };
        for (__0 => _f in _files) {
            _f.close();
        };
    }
