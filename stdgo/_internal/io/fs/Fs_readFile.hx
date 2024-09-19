package stdgo._internal.io.fs;
function readFile(_fsys:stdgo._internal.io.fs.Fs_FS.FS, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_fsys) : stdgo._internal.io.fs.Fs_ReadFileFS.ReadFileFS)) : stdgo._internal.io.fs.Fs_ReadFileFS.ReadFileFS), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.io.fs.Fs_ReadFileFS.ReadFileFS), _1 : false };
                }, _fsys = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    return _fsys.readFile(_name?.__copy__());
                };
            };
            var __tmp__ = _fsys.open(_name?.__copy__()), _file:stdgo._internal.io.fs.Fs_File.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            __deferstack__.unshift(() -> _file.close());
            var _size:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                var __tmp__ = _file.stat(), _info:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    var _size64 = (_info.size() : stdgo.GoInt64);
                    if (((_size64 : stdgo.GoInt) : stdgo.GoInt64) == (_size64)) {
                        _size = (_size64 : stdgo.GoInt);
                    };
                };
            };
            var _data = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (_size + (1 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            while (true) {
                if (((_data.length) >= _data.capacity : Bool)) {
                    var _d = ((_data.__slice__(0, _data.capacity) : stdgo.Slice<stdgo.GoUInt8>).__append__((0 : stdgo.GoUInt8)));
                    _data = (_d.__slice__(0, (_data.length)) : stdgo.Slice<stdgo.GoUInt8>);
                };
                var __tmp__ = _file.read((_data.__slice__((_data.length), _data.capacity) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _data = (_data.__slice__(0, ((_data.length) + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                        _err = (null : stdgo.Error);
                    };
                    {
                        final __ret__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : _data, _1 : _err };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            {
                final __ret__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
