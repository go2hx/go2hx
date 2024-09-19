package _internal.internal.profile;
function _checkType(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _typ:stdgo.GoInt):stdgo.Error {
        if (_b._typ != (_typ)) {
            return stdgo._internal.errors.Errors_new_.new_(("type mismatch" : stdgo.GoString));
        };
        return (null : stdgo.Error);
    }
