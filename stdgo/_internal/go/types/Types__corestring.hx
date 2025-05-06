package stdgo._internal.go.types;
function _coreString(_t:stdgo._internal.go.types.Types_type_.Type_):stdgo._internal.go.types.Types_type_.Type_ {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : false };
        }, _tpar = __tmp__._0, __0 = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/types/under.go#L57"
        if (({
            final value = _tpar;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/under.go#L58"
            return stdgo._internal.go.types.Types__under._under(_t);
        };
        var _su:stdgo._internal.go.types.Types_type_.Type_ = (null : stdgo._internal.go.types.Types_type_.Type_);
        var _hasString = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/go/types/under.go#L63"
        if (_tpar._underIs(function(_u:stdgo._internal.go.types.Types_type_.Type_):Bool {
            //"file:///home/runner/.go/go1.21.3/src/go/types/under.go#L64"
            if (_u == null) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/under.go#L65"
                return false;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/under.go#L67"
            if (stdgo._internal.go.types.Types__isstring._isString(_u)) {
                _u = stdgo.Go.asInterface(stdgo._internal.go.types.Types_newslice.newSlice(stdgo._internal.go.types.Types__universebyte._universeByte));
                _hasString = true;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/under.go#L71"
            if (_su != null) {
                _u = stdgo._internal.go.types.Types__match._match(_su, _u);
                //"file:///home/runner/.go/go1.21.3/src/go/types/under.go#L73"
                if (_u == null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/under.go#L74"
                    return false;
                };
            };
            _su = _u;
            //"file:///home/runner/.go/go1.21.3/src/go/types/under.go#L79"
            return true;
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/under.go#L81"
            if (_hasString) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/under.go#L82"
                return stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((17 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/under.go#L84"
            return _su;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/under.go#L86"
        return (null : stdgo._internal.go.types.Types_type_.Type_);
    }
