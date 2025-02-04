package stdgo._internal.runtime.pprof;
function _elfBuildID(_file:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _buf = (new stdgo.Slice<stdgo.GoUInt8>((256 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = stdgo._internal.os.Os_open.open(_file?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
            };
            {
                final __f__ = @:check2r _f.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                var __tmp__ = @:check2r _f.readAt((_buf.__slice__(0, (64 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (0i64 : stdgo.GoInt64)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    {
                        final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            if ((((_buf[(0 : stdgo.GoInt)] != ((127 : stdgo.GoUInt8)) || _buf[(1 : stdgo.GoInt)] != ((69 : stdgo.GoUInt8)) : Bool) || _buf[(2 : stdgo.GoInt)] != ((76 : stdgo.GoUInt8)) : Bool) || (_buf[(3 : stdgo.GoInt)] != (70 : stdgo.GoUInt8)) : Bool)) {
                {
                    final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.runtime.pprof.Pprof__errbadelf._errBadELF };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _byteOrder:stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder = (null : stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder);
            {
                final __value__ = _buf[(5 : stdgo.GoInt)];
                if (__value__ == ((1 : stdgo.GoUInt8))) {
                    _byteOrder = stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian);
                } else if (__value__ == ((2 : stdgo.GoUInt8))) {
                    _byteOrder = stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian);
                } else {
                    {
                        final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.runtime.pprof.Pprof__errbadelf._errBadELF };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            var _shnum:stdgo.GoInt = (0 : stdgo.GoInt);
            var __0:stdgo.GoInt64 = (0 : stdgo.GoInt64), __1:stdgo.GoInt64 = (0 : stdgo.GoInt64);
var _shentsize = __1, _shoff = __0;
            {
                final __value__ = _buf[(4 : stdgo.GoInt)];
                if (__value__ == ((1 : stdgo.GoUInt8))) {
                    _shoff = (_byteOrder.uint32((_buf.__slice__((32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt64);
                    _shentsize = (_byteOrder.uint16((_buf.__slice__((46 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt64);
                    if (_shentsize != ((40i64 : stdgo.GoInt64))) {
                        {
                            final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.runtime.pprof.Pprof__errbadelf._errBadELF };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    _shnum = (_byteOrder.uint16((_buf.__slice__((48 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
                } else if (__value__ == ((2 : stdgo.GoUInt8))) {
                    _shoff = (_byteOrder.uint64((_buf.__slice__((40 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt64);
                    _shentsize = (_byteOrder.uint16((_buf.__slice__((58 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt64);
                    if (_shentsize != ((64i64 : stdgo.GoInt64))) {
                        {
                            final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.runtime.pprof.Pprof__errbadelf._errBadELF };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    _shnum = (_byteOrder.uint16((_buf.__slice__((60 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
                } else {
                    {
                        final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.runtime.pprof.Pprof__errbadelf._errBadELF };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < _shnum : Bool)) {
                    {
                        var __tmp__ = @:check2r _f.readAt((_buf.__slice__(0, _shentsize) : stdgo.Slice<stdgo.GoUInt8>), (_shoff + ((_i : stdgo.GoInt64) * _shentsize : stdgo.GoInt64) : stdgo.GoInt64)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            {
                                final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString).__copy__(), _1 : _err };
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                    };
{
                        var _typ = (_byteOrder.uint32((_buf.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
                        if (_typ != ((7u32 : stdgo.GoUInt32))) {
                            {
                                _i++;
                                continue;
                            };
                        };
                    };
var __0:stdgo.GoInt64 = (0 : stdgo.GoInt64), __1:stdgo.GoInt64 = (0 : stdgo.GoInt64);
var _size = __1, _off = __0;
if (_shentsize == ((40i64 : stdgo.GoInt64))) {
                        _off = (_byteOrder.uint32((_buf.__slice__((16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt64);
                        _size = (_byteOrder.uint32((_buf.__slice__((20 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt64);
                    } else {
                        _off = (_byteOrder.uint64((_buf.__slice__((24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt64);
                        _size = (_byteOrder.uint64((_buf.__slice__((32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt64);
                    };
_size = (_size + (_off) : stdgo.GoInt64);
while ((_off < _size : Bool)) {
                        {
                            var __tmp__ = @:check2r _f.readAt((_buf.__slice__(0, (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _off), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                {
                                    final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return __ret__;
                                };
                            };
                        };
                        var _nameSize = (_byteOrder.uint32((_buf.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
                        var _descSize = (_byteOrder.uint32((_buf.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
                        var _noteType = (_byteOrder.uint32((_buf.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
                        var _descOff = (_off + (((12 : stdgo.GoInt) + (((_nameSize + (3 : stdgo.GoInt) : stdgo.GoInt)) & (((3 : stdgo.GoInt) ^ (-1i32 : stdgo.GoInt32) : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64) : stdgo.GoInt64);
                        _off = (_descOff + ((((_descSize + (3 : stdgo.GoInt) : stdgo.GoInt)) & (((3 : stdgo.GoInt) ^ (-1i32 : stdgo.GoInt32) : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoInt64) : stdgo.GoInt64);
                        if ((((((_nameSize != ((4 : stdgo.GoInt)) || _noteType != ((3 : stdgo.GoInt)) : Bool) || _buf[(12 : stdgo.GoInt)] != ((71 : stdgo.GoUInt8)) : Bool) || _buf[(13 : stdgo.GoInt)] != ((78 : stdgo.GoUInt8)) : Bool) || _buf[(14 : stdgo.GoInt)] != ((85 : stdgo.GoUInt8)) : Bool) || (_buf[(15 : stdgo.GoInt)] != (0 : stdgo.GoUInt8)) : Bool)) {
                            continue;
                        };
                        if ((_descSize > (_buf.length) : Bool)) {
                            {
                                final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.runtime.pprof.Pprof__errbadelf._errBadELF };
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                        {
                            var __tmp__ = @:check2r _f.readAt((_buf.__slice__(0, _descSize) : stdgo.Slice<stdgo.GoUInt8>), _descOff), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                {
                                    final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return __ret__;
                                };
                            };
                        };
                        {
                            final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x" : stdgo.GoString), stdgo.Go.toInterface((_buf.__slice__(0, _descSize) : stdgo.Slice<stdgo.GoUInt8>)))?.__copy__(), _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    _i++;
                };
            };
            {
                final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.runtime.pprof.Pprof__errnobuildid._errNoBuildID };
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : ("" : stdgo.GoString), _1 : (null : stdgo.Error) };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : ("" : stdgo.GoString), _1 : (null : stdgo.Error) };
            };
        };
    }
