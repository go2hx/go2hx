package stdgo._internal.io.fs;
@:keep @:allow(stdgo._internal.io.fs.Fs.PathError_asInterface) class PathError_static_extension {
    @:keep
    @:tdfield
    static public function timeout( _e:stdgo.Ref<stdgo._internal.io.fs.Fs_patherror.PathError>):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.io.fs.Fs_patherror.PathError> = _e;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").err) : stdgo._internal.io.fs.Fs_t__interface_0.T__interface_0)) : stdgo._internal.io.fs.Fs_t__interface_0.T__interface_0), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.io.fs.Fs_t__interface_0.T__interface_0), _1 : false };
        }, _t = __tmp__._0, _ok = __tmp__._1;
        return (_ok && _t.timeout() : Bool);
    }
    @:keep
    @:tdfield
    static public function unwrap( _e:stdgo.Ref<stdgo._internal.io.fs.Fs_patherror.PathError>):stdgo.Error {
        @:recv var _e:stdgo.Ref<stdgo._internal.io.fs.Fs_patherror.PathError> = _e;
        return (@:checkr _e ?? throw "null pointer dereference").err;
    }
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.io.fs.Fs_patherror.PathError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.io.fs.Fs_patherror.PathError> = _e;
        return (((((@:checkr _e ?? throw "null pointer dereference").op + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _e ?? throw "null pointer dereference").path?.__copy__() : stdgo.GoString) + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _e ?? throw "null pointer dereference").err.error()?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
