package stdgo._internal.internal.profile;
function _checkType(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _typ:stdgo.GoInt):stdgo.Error {
        if ((@:checkr _b ?? throw "null pointer dereference")._typ != (_typ)) {
            return stdgo._internal.errors.Errors_new_.new_(("type mismatch" : stdgo.GoString));
        };
        return (null : stdgo.Error);
    }
