package stdgo._internal.mime;
function _loadMimeFile(_filename:stdgo.GoString):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var __tmp__ = stdgo._internal.os.Os_open.open(_filename?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/mime/type_unix.go#L81"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/mime/type_unix.go#L82"
                return;
            };
            {
                final __f__ = _f.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _scanner = stdgo._internal.bufio.Bufio_newscanner.newScanner(stdgo.Go.asInterface(_f));
            //"file:///home/runner/.go/go1.21.3/src/mime/type_unix.go#L87"
            while (_scanner.scan()) {
                var _fields = stdgo._internal.strings.Strings_fields.fields(_scanner.text()?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/mime/type_unix.go#L89"
                if ((((_fields.length) <= (1 : stdgo.GoInt) : Bool) || (_fields[(0 : stdgo.GoInt)][(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/mime/type_unix.go#L90"
                    continue;
                };
                var _mimeType = (_fields[(0 : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/mime/type_unix.go#L93"
                for (__0 => _ext in (_fields.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>)) {
                    //"file:///home/runner/.go/go1.21.3/src/mime/type_unix.go#L94"
                    if (_ext[(0 : stdgo.GoInt)] == ((35 : stdgo.GoUInt8))) {
                        //"file:///home/runner/.go/go1.21.3/src/mime/type_unix.go#L95"
                        break;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/mime/type_unix.go#L97"
                    stdgo._internal.mime.Mime__setextensiontype._setExtensionType((("." : stdgo.GoString) + _ext?.__copy__() : stdgo.GoString)?.__copy__(), _mimeType?.__copy__());
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/mime/type_unix.go#L100"
            {
                var _err = (_scanner.err() : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/mime/type_unix.go#L101"
                    throw stdgo.Go.toInterface(_err);
                };
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
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
                return;
            };
        };
    }
