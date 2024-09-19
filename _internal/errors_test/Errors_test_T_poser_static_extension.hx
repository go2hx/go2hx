package _internal.errors_test;
@:keep @:allow(_internal.errors_test.Errors_test.T_poser_asInterface) class T_poser_static_extension {
    @:keep
    static public function as( _p:stdgo.Ref<_internal.errors_test.Errors_test_T_poser.T_poser>, _err:stdgo.AnyInterface):Bool {
        @:recv var _p:stdgo.Ref<_internal.errors_test.Errors_test_T_poser.T_poser> = _p;
        {
            final __type__ = _err;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.Ref<_internal.errors_test.Errors_test_T_poser.T_poser>>))) {
                var _x:stdgo.Ref<stdgo.Ref<_internal.errors_test.Errors_test_T_poser.T_poser>> = __type__ == null ? (null : stdgo.Ref<stdgo.Ref<_internal.errors_test.Errors_test_T_poser.T_poser>>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.Ref<_internal.errors_test.Errors_test_T_poser.T_poser>>) : __type__ == null ? (null : stdgo.Ref<stdgo.Ref<_internal.errors_test.Errors_test_T_poser.T_poser>>) : __type__.__underlying__().value;
                _x = _p;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<_internal.errors_test.Errors_test_T_errorT.T_errorT>))) {
                var _x:stdgo.Ref<_internal.errors_test.Errors_test_T_errorT.T_errorT> = __type__ == null ? (null : stdgo.Ref<_internal.errors_test.Errors_test_T_errorT.T_errorT>) : __type__.__underlying__() == null ? (null : stdgo.Ref<_internal.errors_test.Errors_test_T_errorT.T_errorT>) : __type__ == null ? (null : stdgo.Ref<_internal.errors_test.Errors_test_T_errorT.T_errorT>) : __type__.__underlying__().value;
                {
                    var __tmp__ = (new _internal.errors_test.Errors_test_T_errorT.T_errorT(("poser" : stdgo.GoString)) : _internal.errors_test.Errors_test_T_errorT.T_errorT);
                    (_x : _internal.errors_test.Errors_test_T_errorT.T_errorT)._s = __tmp__._s;
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>>))) {
                var _x:stdgo.Ref<stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>> = __type__ == null ? (null : stdgo.Ref<stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>>) : __type__ == null ? (null : stdgo.Ref<stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>>) : __type__.__underlying__().value;
                _x = _internal.errors_test.Errors_test__poserPathErr._poserPathErr;
            } else {
                var _x:stdgo.AnyInterface = __type__?.__underlying__();
                return false;
            };
        };
        return true;
    }
    @:keep
    static public function is_( _p:stdgo.Ref<_internal.errors_test.Errors_test_T_poser.T_poser>, _err:stdgo.Error):Bool {
        @:recv var _p:stdgo.Ref<_internal.errors_test.Errors_test_T_poser.T_poser> = _p;
        return _p._f(_err);
    }
    @:keep
    static public function error( _p:stdgo.Ref<_internal.errors_test.Errors_test_T_poser.T_poser>):stdgo.GoString {
        @:recv var _p:stdgo.Ref<_internal.errors_test.Errors_test_T_poser.T_poser> = _p;
        return _p._msg?.__copy__();
    }
}
