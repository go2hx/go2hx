package stdgo._internal.errors;
function join(_errs:haxe.Rest<stdgo.Error>):stdgo.Error {
        var _errs = new stdgo.Slice<stdgo.Error>(_errs.length, 0, ..._errs);
        var _n = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/errors/join.go#L17"
        for (__0 => _err in _errs) {
            //"file:///home/runner/.go/go1.21.3/src/errors/join.go#L18"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/errors/join.go#L19"
                _n++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/errors/join.go#L22"
        if (_n == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/errors/join.go#L23"
            return (null : stdgo.Error);
        };
        var _e = (stdgo.Go.setRef(({ _errs : (new stdgo.Slice<stdgo.Error>((0 : stdgo.GoInt).toBasic(), _n) : stdgo.Slice<stdgo.Error>) } : stdgo._internal.errors.Errors_t_joinerror.T_joinError)) : stdgo.Ref<stdgo._internal.errors.Errors_t_joinerror.T_joinError>);
        //"file:///home/runner/.go/go1.21.3/src/errors/join.go#L28"
        for (__1 => _err in _errs) {
            //"file:///home/runner/.go/go1.21.3/src/errors/join.go#L29"
            if (_err != null) {
                (@:checkr _e ?? throw "null pointer dereference")._errs = ((@:checkr _e ?? throw "null pointer dereference")._errs.__append__(_err) : stdgo.Slice<stdgo.Error>);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/errors/join.go#L33"
        return stdgo.Go.asInterface(_e);
    }
