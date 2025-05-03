package stdgo._internal.internal.lazyregexp;
function new_(_str:stdgo.GoString):stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp> {
        var _lr = (stdgo.Go.setRef(({ _str : _str?.__copy__() } : stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp)) : stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp>);
        //"file:///home/runner/.go/go1.21.3/src/internal/lazyregexp/lazyre.go#L73"
        if (stdgo._internal.internal.lazyregexp.Lazyregexp__intest._inTest) {
            //"file:///home/runner/.go/go1.21.3/src/internal/lazyregexp/lazyre.go#L75"
            _lr._re();
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/lazyregexp/lazyre.go#L77"
        return _lr;
    }
