package stdgo._internal.mime;
function _setMimeTypes(_lowerExt:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, _mixExt:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            stdgo._internal.mime.Mime__clearsyncmap._clearSyncMap((stdgo.Go.setRef(stdgo._internal.mime.Mime__mimetypes._mimeTypes) : stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>));
            stdgo._internal.mime.Mime__clearsyncmap._clearSyncMap((stdgo.Go.setRef(stdgo._internal.mime.Mime__mimetypeslower._mimeTypesLower) : stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>));
            stdgo._internal.mime.Mime__clearsyncmap._clearSyncMap((stdgo.Go.setRef(stdgo._internal.mime.Mime__extensions._extensions) : stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>));
            for (_k => _v in _lowerExt) {
                @:check2 stdgo._internal.mime.Mime__mimetypeslower._mimeTypesLower.store(stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_v));
            };
            for (_k => _v in _mixExt) {
                @:check2 stdgo._internal.mime.Mime__mimetypes._mimeTypes.store(stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_v));
            };
            @:check2 stdgo._internal.mime.Mime__extensionsmu._extensionsMu.lock();
            {
                final __f__ = @:check2 stdgo._internal.mime.Mime__extensionsmu._extensionsMu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            for (_k => _v in _lowerExt) {
                var __tmp__ = stdgo._internal.mime.Mime_parsemediatype.parseMediaType(_v?.__copy__()), _justType:stdgo.GoString = __tmp__._0, __0:stdgo.GoMap<stdgo.GoString, stdgo.GoString> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err != null) {
                    throw stdgo.Go.toInterface(_err);
                };
                var _exts:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
                {
                    var __tmp__ = @:check2 stdgo._internal.mime.Mime__extensions._extensions.load(stdgo.Go.toInterface(_justType)), _ei:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        _exts = (stdgo.Go.typeAssert((_ei : stdgo.Slice<stdgo.GoString>)) : stdgo.Slice<stdgo.GoString>);
                    };
                };
                @:check2 stdgo._internal.mime.Mime__extensions._extensions.store(stdgo.Go.toInterface(_justType), stdgo.Go.toInterface((_exts.__append__(_k?.__copy__()))));
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
                return;
            };
        };
    }
