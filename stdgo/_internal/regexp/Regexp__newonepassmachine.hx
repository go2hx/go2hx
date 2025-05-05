package stdgo._internal.regexp;
function _newOnePassMachine():stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassmachine.T_onePassMachine> {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo._internal.regexp.Regexp__onepasspool._onePassPool.get() : stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassmachine.T_onePassMachine>)) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassmachine.T_onePassMachine>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassmachine.T_onePassMachine>), _1 : false };
        }, _m = __tmp__._0, _ok = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L385"
        if (!_ok) {
            _m = (stdgo.Go.setRef(({} : stdgo._internal.regexp.Regexp_t_onepassmachine.T_onePassMachine)) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassmachine.T_onePassMachine>);
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L388"
        return _m;
    }
