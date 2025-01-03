package stdgo._internal.time;
function _loadTzinfoFromZip(_zipfile:stdgo.GoString, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo._internal.time.Time__open._open(_zipfile?.__copy__()), _fd:stdgo.GoUIntptr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            {
                var _a0 = _fd;
                final __f__ = stdgo._internal.time.Time__closefd._closefd;
                __deferstack__.unshift(() -> __f__(_a0));
            };
            {};
            var _buf = (new stdgo.Slice<stdgo.GoUInt8>((22 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            {
                var _err = (stdgo._internal.time.Time__preadn._preadn(_fd, _buf, (-22 : stdgo.GoInt)) : stdgo.Error);
                if (((_err != null) || (stdgo._internal.time.Time__get4._get4(_buf) != (101010256 : stdgo.GoInt)) : Bool)) {
                    {
                        final __ret__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_((("corrupt zip file " : stdgo.GoString) + _zipfile?.__copy__() : stdgo.GoString)?.__copy__()) };
                        for (defer in __deferstack__) {
                            __deferstack__.remove(defer);
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            var _n = (stdgo._internal.time.Time__get2._get2((_buf.__slice__((10 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
            var _size = (stdgo._internal.time.Time__get4._get4((_buf.__slice__((12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
            var _off = (stdgo._internal.time.Time__get4._get4((_buf.__slice__((16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
            _buf = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            {
                var _err = (stdgo._internal.time.Time__preadn._preadn(_fd, _buf, _off) : stdgo.Error);
                if (_err != null) {
                    {
                        final __ret__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_((("corrupt zip file " : stdgo.GoString) + _zipfile?.__copy__() : stdgo.GoString)?.__copy__()) };
                        for (defer in __deferstack__) {
                            __deferstack__.remove(defer);
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < _n : Bool)) {
                    if (stdgo._internal.time.Time__get4._get4(_buf) != ((33639248 : stdgo.GoInt))) {
                        break;
                    };
var _meth = (stdgo._internal.time.Time__get2._get2((_buf.__slice__((10 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
var _size = (stdgo._internal.time.Time__get4._get4((_buf.__slice__((24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
var _namelen = (stdgo._internal.time.Time__get2._get2((_buf.__slice__((28 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
var _xlen = (stdgo._internal.time.Time__get2._get2((_buf.__slice__((30 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
var _fclen = (stdgo._internal.time.Time__get2._get2((_buf.__slice__((32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
var _off = (stdgo._internal.time.Time__get4._get4((_buf.__slice__((42 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
var _zname = (_buf.__slice__((46 : stdgo.GoInt), ((46 : stdgo.GoInt) + _namelen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
_buf = (_buf.__slice__(((((46 : stdgo.GoInt) + _namelen : stdgo.GoInt) + _xlen : stdgo.GoInt) + _fclen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
if ((_zname : stdgo.GoString) != (_name)) {
                        {
                            _i++;
                            continue;
                        };
                    };
if (_meth != ((0 : stdgo.GoInt))) {
                        {
                            final __ret__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_((((("unsupported compression for " : stdgo.GoString) + _name.__copy__() : stdgo.GoString) + (" in " : stdgo.GoString).__copy__() : stdgo.GoString) + _zipfile.__copy__() : stdgo.GoString).__copy__()) };
                            for (defer in __deferstack__) {
                                __deferstack__.remove(defer);
                                defer();
                            };
                            return __ret__;
                        };
                    };
_buf = (new stdgo.Slice<stdgo.GoUInt8>(((30 : stdgo.GoInt) + _namelen : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
{
                        var _err = (stdgo._internal.time.Time__preadn._preadn(_fd, _buf, _off) : stdgo.Error);
                        if (((((_err != null || stdgo._internal.time.Time__get4._get4(_buf) != ((67324752 : stdgo.GoInt)) : Bool) || stdgo._internal.time.Time__get2._get2((_buf.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) != (_meth) : Bool) || stdgo._internal.time.Time__get2._get2((_buf.__slice__((26 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) != (_namelen) : Bool) || (((_buf.__slice__((30 : stdgo.GoInt), ((30 : stdgo.GoInt) + _namelen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != _name) : Bool)) {
                            {
                                final __ret__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_((("corrupt zip file " : stdgo.GoString) + _zipfile.__copy__() : stdgo.GoString).__copy__()) };
                                for (defer in __deferstack__) {
                                    __deferstack__.remove(defer);
                                    defer();
                                };
                                return __ret__;
                            };
                        };
                    };
_xlen = stdgo._internal.time.Time__get2._get2((_buf.__slice__((28 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
_buf = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
{
                        var _err = (stdgo._internal.time.Time__preadn._preadn(_fd, _buf, (((_off + (30 : stdgo.GoInt) : stdgo.GoInt) + _namelen : stdgo.GoInt) + _xlen : stdgo.GoInt)) : stdgo.Error);
                        if (_err != null) {
                            {
                                final __ret__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_((("corrupt zip file " : stdgo.GoString) + _zipfile.__copy__() : stdgo.GoString).__copy__()) };
                                for (defer in __deferstack__) {
                                    __deferstack__.remove(defer);
                                    defer();
                                };
                                return __ret__;
                            };
                        };
                    };
{
                        final __ret__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : _buf, _1 : (null : stdgo.Error) };
                        for (defer in __deferstack__) {
                            __deferstack__.remove(defer);
                            defer();
                        };
                        return __ret__;
                    };
                    _i++;
                };
            };
            {
                final __ret__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo.Go.asInterface((2 : stdgo._internal.syscall.Syscall_Errno.Errno)) };
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
