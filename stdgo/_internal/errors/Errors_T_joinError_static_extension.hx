package stdgo._internal.errors;
@:keep @:allow(stdgo._internal.errors.Errors.T_joinError_asInterface) class T_joinError_static_extension {
    @:keep
    static public function unwrap( _e:stdgo.Ref<stdgo._internal.errors.Errors_T_joinError.T_joinError>):stdgo.Slice<stdgo.Error> {
        @:recv var _e:stdgo.Ref<stdgo._internal.errors.Errors_T_joinError.T_joinError> = _e;
        return _e._errs;
    }
    @:keep
    static public function error( _e:stdgo.Ref<stdgo._internal.errors.Errors_T_joinError.T_joinError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.errors.Errors_T_joinError.T_joinError> = _e;
        var _b:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _err in _e._errs) {
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                _b = (_b.__append__((10 : stdgo.GoUInt8)));
            };
            _b = (_b.__append__(...(_err.error() : Array<stdgo.GoUInt8>)));
        };
        return (_b : stdgo.GoString)?.__copy__();
    }
}
