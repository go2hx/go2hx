package stdgo.internal.obscuretestdata;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
function decodeToTempFile(_name:GoString):{ var _0 : GoString; var _1 : Error; } {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        var _path:GoString = (("" : GoString)), _err:Error = ((null : stdgo.Error));
        var __tmp__ = stdgo.os.Os.open(_name), _f:Ref<stdgo.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        try {
            if (_err != null) {
                return { _0 : ((("" : GoString))), _1 : _err };
            };
            __deferstack__.unshift(() -> _f.close());
            var __tmp__ = stdgo.os.Os.createTemp(((("" : GoString))), ((("obscuretestdata-decoded-" : GoString)))), _tmp:Ref<stdgo.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return { _0 : ((("" : GoString))), _1 : _err };
                };
            };
            {
                var __tmp__ = stdgo.io.Io.copy(_tmp, stdgo.encoding.base64.Base64.newDecoder(stdgo.encoding.base64.Base64.stdEncoding, _f)), _0:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _tmp.close();
                    stdgo.os.Os.remove(_tmp.name());
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return { _0 : ((("" : GoString))), _1 : _err };
                    };
                };
            };
            {
                var _err:stdgo.Error = _tmp.close();
                if (_err != null) {
                    stdgo.os.Os.remove(_tmp.name());
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return { _0 : ((("" : GoString))), _1 : _err };
                    };
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return { _0 : _tmp.name(), _1 : ((null : stdgo.Error)) };
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return { _0 : _path, _1 : _err };
            };
        };
    }
function readFile(_name:GoString):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        var __tmp__ = stdgo.os.Os.open(_name), _f:Ref<stdgo.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : Slice<GoUInt8>)), _1 : _err };
        };
        try {
            __deferstack__.unshift(() -> _f.close());
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return stdgo.io.Io.readAll(stdgo.encoding.base64.Base64.newDecoder(stdgo.encoding.base64.Base64.stdEncoding, _f));
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return { _0 : ((null : Slice<GoUInt8>)), _1 : ((null : stdgo.Error)) };
            };
        };
    }
