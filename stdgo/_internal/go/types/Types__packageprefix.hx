package stdgo._internal.go.types;
function _packagePrefix(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _qf:stdgo._internal.go.types.Types_qualifier.Qualifier):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L559"
        if (({
            final value = _pkg;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L560"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        var _s:stdgo.GoString = ("" : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L563"
        if (_qf != null) {
            _s = _qf(_pkg)?.__copy__();
        } else {
            _s = _pkg.path()?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L568"
        if (_s != ((stdgo.Go.str() : stdgo.GoString))) {
            _s = (_s + (("." : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L571"
        return _s?.__copy__();
    }
