package stdgo._internal.internal.profile;
function _checkType(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _typ:stdgo.GoInt):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L238"
        if ((@:checkr _b ?? throw "null pointer dereference")._typ != (_typ)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L239"
            return stdgo._internal.errors.Errors_new_.new_(("type mismatch" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L241"
        return (null : stdgo.Error);
    }
