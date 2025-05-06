package stdgo._internal.go.types;
function _isIntegerOrFloat(_t:stdgo._internal.go.types.Types_type_.Type_):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L22"
        return stdgo._internal.go.types.Types__isbasic._isBasic(_t, (10 : stdgo._internal.go.types.Types_basicinfo.BasicInfo));
    }
