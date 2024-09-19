package stdgo._internal.mime;
function _setExtensionType(_extension:stdgo.GoString, _mimeType:stdgo.GoString):stdgo.Error {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo._internal.mime.Mime_parseMediaType.parseMediaType(_mimeType?.__copy__()), _justType:stdgo.GoString = __tmp__._0, _param:stdgo.GoMap<stdgo.GoString, stdgo.GoString> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return _err;
            };
            if ((stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_mimeType?.__copy__(), ("text/" : stdgo.GoString)) && ((_param[("charset" : stdgo.GoString)] ?? ("" : stdgo.GoString)) == stdgo.Go.str()) : Bool)) {
                _param[("charset" : stdgo.GoString)] = ("utf-8" : stdgo.GoString);
                _mimeType = stdgo._internal.mime.Mime_formatMediaType.formatMediaType(_mimeType?.__copy__(), _param)?.__copy__();
            };
            var _extLower = (stdgo._internal.strings.Strings_toLower.toLower(_extension?.__copy__())?.__copy__() : stdgo.GoString);
            stdgo._internal.mime.Mime__mimeTypes._mimeTypes.store(stdgo.Go.toInterface(_extension), stdgo.Go.toInterface(_mimeType));
            stdgo._internal.mime.Mime__mimeTypesLower._mimeTypesLower.store(stdgo.Go.toInterface(_extLower), stdgo.Go.toInterface(_mimeType));
            stdgo._internal.mime.Mime__extensionsMu._extensionsMu.lock();
            __deferstack__.unshift(() -> stdgo._internal.mime.Mime__extensionsMu._extensionsMu.unlock());
            var _exts:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            {
                var __tmp__ = stdgo._internal.mime.Mime__extensions._extensions.load(stdgo.Go.toInterface(_justType)), _ei:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _exts = (stdgo.Go.typeAssert((_ei : stdgo.Slice<stdgo.GoString>)) : stdgo.Slice<stdgo.GoString>);
                };
            };
            for (__12 => _v in _exts) {
                if (_v == (_extLower)) {
                    {
                        final __ret__:stdgo.Error = (null : stdgo.Error);
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            stdgo._internal.mime.Mime__extensions._extensions.store(stdgo.Go.toInterface(_justType), stdgo.Go.toInterface((_exts.__append__(_extLower?.__copy__()))));
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
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
            final __ret__:stdgo.Error = (null : stdgo.Error);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }