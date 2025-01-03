package stdgo._internal.mime;
function _loadMimeFile(_filename:stdgo.GoString):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo._internal.os.Os_open.open(_filename?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return;
            };
            {
                final __f__ = @:check2r _f.close;
                __deferstack__.unshift(() -> __f__());
            };
            var _scanner = stdgo._internal.bufio.Bufio_newScanner.newScanner(stdgo.Go.asInterface(_f));
            while (@:check2r _scanner.scan()) {
                var _fields = stdgo._internal.strings.Strings_fields.fields(@:check2r _scanner.text()?.__copy__());
                if ((((_fields.length) <= (1 : stdgo.GoInt) : Bool) || (_fields[(0 : stdgo.GoInt)][(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) : Bool)) {
                    continue;
                };
                var _mimeType = (_fields[(0 : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
                for (__0 => _ext in (_fields.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>)) {
                    if (_ext[(0 : stdgo.GoInt)] == ((35 : stdgo.GoUInt8))) {
                        break;
                    };
                    stdgo._internal.mime.Mime__setExtensionType._setExtensionType((("." : stdgo.GoString) + _ext?.__copy__() : stdgo.GoString)?.__copy__(), _mimeType?.__copy__());
                };
            };
            {
                var _err = (@:check2r _scanner.err() : stdgo.Error);
                if (_err != null) {
                    throw stdgo.Go.toInterface(_err);
                };
            };
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
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
            return;
        };
    }
