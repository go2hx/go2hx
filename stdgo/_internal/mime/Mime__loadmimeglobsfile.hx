package stdgo._internal.mime;
function _loadMimeGlobsFile(_filename:stdgo.GoString):stdgo.Error {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var __tmp__ = stdgo._internal.os.Os_open.open(_filename?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            {
                final __f__ = @:check2r _f.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _scanner = stdgo._internal.bufio.Bufio_newscanner.newScanner(stdgo.Go.asInterface(_f));
            while (@:check2r _scanner.scan()) {
                var _fields = stdgo._internal.strings.Strings_split.split(@:check2r _scanner.text()?.__copy__(), (":" : stdgo.GoString));
                if (((((_fields.length) < (3 : stdgo.GoInt) : Bool) || ((_fields[(0 : stdgo.GoInt)].length) < (1 : stdgo.GoInt) : Bool) : Bool) || ((_fields[(2 : stdgo.GoInt)].length) < (3 : stdgo.GoInt) : Bool) : Bool)) {
                    continue;
                } else if (((_fields[(0 : stdgo.GoInt)][(0 : stdgo.GoInt)] == ((35 : stdgo.GoUInt8)) || _fields[(2 : stdgo.GoInt)][(0 : stdgo.GoInt)] != ((42 : stdgo.GoUInt8)) : Bool) || (_fields[(2 : stdgo.GoInt)][(1 : stdgo.GoInt)] != (46 : stdgo.GoUInt8)) : Bool)) {
                    continue;
                };
                var _extension = ((_fields[(2 : stdgo.GoInt)].__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (stdgo._internal.strings.Strings_containsany.containsAny(_extension?.__copy__(), ("?*[" : stdgo.GoString))) {
                    continue;
                };
                {
                    var __tmp__ = @:check2 stdgo._internal.mime.Mime__mimetypes._mimeTypes.load(stdgo.Go.toInterface(_extension)), __4:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        continue;
                    };
                };
                stdgo._internal.mime.Mime__setextensiontype._setExtensionType(_extension?.__copy__(), _fields[(1 : stdgo.GoInt)]?.__copy__());
            };
            {
                var _err = (@:check2r _scanner.err() : stdgo.Error);
                if (_err != null) {
                    throw stdgo.Go.toInterface(_err);
                };
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
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
                return (null : stdgo.Error);
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
                return (null : stdgo.Error);
            };
        };
    }
