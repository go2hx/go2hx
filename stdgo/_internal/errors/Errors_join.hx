package stdgo._internal.errors;
function join(_errs:haxe.Rest<stdgo.Error>):stdgo.Error {
        var _errs = new stdgo.Slice<stdgo.Error>(_errs.length, 0, ..._errs);
        var _n = (0 : stdgo.GoInt);
        for (__0 => _err in _errs) {
            if (_err != null) {
                _n++;
            };
        };
        if (_n == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Error);
        };
        var _e = (stdgo.Go.setRef(({ _errs : (new stdgo.Slice<stdgo.Error>((0 : stdgo.GoInt).toBasic(), _n) : stdgo.Slice<stdgo.Error>) } : stdgo._internal.errors.Errors_T_joinError.T_joinError)) : stdgo.Ref<stdgo._internal.errors.Errors_T_joinError.T_joinError>);
        for (__1 => _err in _errs) {
            if (_err != null) {
                _e._errs = (_e._errs.__append__(_err));
            };
        };
        return stdgo.Go.asInterface(_e);
    }
