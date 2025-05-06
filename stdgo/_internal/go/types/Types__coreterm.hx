package stdgo._internal.go.types;
function _coreTerm(_tpar:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>; var _1 : Bool; } {
        var _n = (0 : stdgo.GoInt);
        var _single:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term> = (null : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>);
        var _tilde:Bool = false;
        //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L624"
        _tpar._is(function(_t:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>):Bool {
            //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L625"
            if (({
                final value = _t;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L626"
                stdgo._internal.go.types.Types__assert._assert(_n == ((0 : stdgo.GoInt)));
                //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L627"
                return false;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L629"
            _n++;
            _single = _t;
            //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L631"
            if ((@:checkr _t ?? throw "null pointer dereference")._tilde) {
                _tilde = true;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L634"
            return true;
        });
        //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L636"
        if (_n == ((1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L637"
            if (false) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L638"
                stdgo._internal.go.types.Types__assert._assert((false && (stdgo.Go.toInterface(stdgo._internal.go.types.Types__under._under((@:checkr _single ?? throw "null pointer dereference")._typ)) == stdgo.Go.toInterface(stdgo._internal.go.types.Types__coretype._coreType(stdgo.Go.asInterface(_tpar)))) : Bool));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L640"
            return { _0 : _single, _1 : true };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L642"
        {
            var _typ = (stdgo._internal.go.types.Types__coretype._coreType(stdgo.Go.asInterface(_tpar)) : stdgo._internal.go.types.Types_type_.Type_);
            if (_typ != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L647"
                return { _0 : (stdgo.Go.setRef((new stdgo._internal.go.types.Types_t_term.T_term(_tilde, _typ) : stdgo._internal.go.types.Types_t_term.T_term)) : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>), _1 : false };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L649"
        return { _0 : null, _1 : false };
    }
