package stdgo._internal.errors;
@:keep @:allow(stdgo._internal.errors.Errors.T_joinError_asInterface) class T_joinError_static_extension {
    @:keep
    @:tdfield
    static public function unwrap( _e:stdgo.Ref<stdgo._internal.errors.Errors_t_joinerror.T_joinError>):stdgo.Slice<stdgo.Error> {
        @:recv var _e:stdgo.Ref<stdgo._internal.errors.Errors_t_joinerror.T_joinError> = _e;
        //"file:///home/runner/.go/go1.21.3/src/errors/join.go#L52"
        return (@:checkr _e ?? throw "null pointer dereference")._errs;
    }
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.errors.Errors_t_joinerror.T_joinError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.errors.Errors_t_joinerror.T_joinError> = _e;
        var _b:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/errors/join.go#L42"
        for (_i => _err in (@:checkr _e ?? throw "null pointer dereference")._errs) {
            //"file:///home/runner/.go/go1.21.3/src/errors/join.go#L43"
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                _b = (_b.__append__((10 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            };
            _b = (_b.__append__(...(_err.error() : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/errors/join.go#L48"
        return (_b : stdgo.GoString)?.__copy__();
    }
}
