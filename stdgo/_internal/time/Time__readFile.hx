package stdgo._internal.time;
function _readFile(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo._internal.time.Time__open._open(_name?.__copy__()), _f:stdgo.GoUIntptr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            {
                var _a0 = _f;
                final __f__ = stdgo._internal.time.Time__closefd._closefd;
                __deferstack__.unshift(() -> __f__(_a0));
            };
            var __0:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4096, 4096, ...[for (i in 0 ... 4096) (0 : stdgo.GoUInt8)]), __1:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>), __2:stdgo.GoInt = (0 : stdgo.GoInt);
var _n = __2, _ret = __1, _buf = __0;
            while (true) {
                {
                    var __tmp__ = stdgo._internal.time.Time__read._read(_f, (_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                };
                if ((_n > (0 : stdgo.GoInt) : Bool)) {
                    _ret = (_ret.__append__(...((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                };
                if (((_n == (0 : stdgo.GoInt)) || (_err != null) : Bool)) {
                    break;
                };
                if (((_ret.length) > (10485760 : stdgo.GoInt) : Bool)) {
                    {
                        final __ret__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo.Go.asInterface((_name : stdgo._internal.time.Time_T_fileSizeError.T_fileSizeError)) };
                        for (defer in __deferstack__) {
                            __deferstack__.remove(defer);
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            {
                final __ret__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : _ret, _1 : _err };
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                __deferstack__.remove(defer);
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
        };
    }
