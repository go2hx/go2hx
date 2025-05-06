package stdgo._internal.go.types;
function _stripAnnotations(_s:stdgo.GoString):stdgo.GoString {
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L390"
        for (__0 => _r in _s) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L392"
            if (((_r < (8320 : stdgo.GoInt32) : Bool) || ((8330 : stdgo.GoInt32) <= _r : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L393"
                _buf.writeRune(_r);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L396"
        if ((_buf.len() < (_s.length) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L397"
            return (_buf.string() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L399"
        return _s?.__copy__();
    }
