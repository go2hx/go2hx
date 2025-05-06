package stdgo._internal.go.types;
function _validatedImportPath(_path:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_path?.__copy__()), _s:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/types/resolver.go#L87"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/resolver.go#L88"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/resolver.go#L90"
        if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/resolver.go#L91"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("empty string" : stdgo.GoString)) };
        };
        {};
        //"file:///home/runner/.go/go1.21.3/src/go/types/resolver.go#L94"
        for (__0 => _r in _s) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/resolver.go#L95"
            if (((!stdgo._internal.unicode.Unicode_isgraphic.isGraphic(_r) || stdgo._internal.unicode.Unicode_isspace.isSpace(_r) : Bool) || stdgo._internal.strings.Strings_containsrune.containsRune(("!\"#$%&\'()*,:;<=>?[\\]^{|}`�" : stdgo.GoString), _r) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/resolver.go#L96"
                return { _0 : _s?.__copy__(), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid character %#U" : stdgo.GoString), stdgo.Go.toInterface(_r)) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/resolver.go#L99"
        return { _0 : _s?.__copy__(), _1 : (null : stdgo.Error) };
    }
