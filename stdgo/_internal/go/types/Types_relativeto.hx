package stdgo._internal.go.types;
function relativeTo(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>):stdgo._internal.go.types.Types_qualifier.Qualifier {
        //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L34"
        if (({
            final value = _pkg;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L35"
            return null;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L37"
        return function(_other:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>):stdgo.GoString {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L38"
            if (_pkg == (_other)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L39"
                return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L41"
            return _other.path()?.__copy__();
        };
    }
