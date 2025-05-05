package stdgo._internal.regexp;
function _compileTest(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _expr:stdgo.GoString, _error:stdgo.GoString):stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> {
        var __tmp__ = stdgo._internal.regexp.Regexp_compile.compile(_expr?.__copy__()), _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L57"
        if (((_error == (stdgo.Go.str() : stdgo.GoString)) && (_err != null) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L58"
            _t.error(stdgo.Go.toInterface(("compiling `" : stdgo.GoString)), stdgo.Go.toInterface(_expr), stdgo.Go.toInterface(("`; unexpected error: " : stdgo.GoString)), stdgo.Go.toInterface(_err.error()));
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L60"
        if (((_error != (stdgo.Go.str() : stdgo.GoString)) && (_err == null) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L61"
            _t.error(stdgo.Go.toInterface(("compiling `" : stdgo.GoString)), stdgo.Go.toInterface(_expr), stdgo.Go.toInterface(("`; missing error" : stdgo.GoString)));
        } else if (((_error != (stdgo.Go.str() : stdgo.GoString)) && !stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), _error?.__copy__()) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L63"
            _t.error(stdgo.Go.toInterface(("compiling `" : stdgo.GoString)), stdgo.Go.toInterface(_expr), stdgo.Go.toInterface(("`; wrong error: " : stdgo.GoString)), stdgo.Go.toInterface(_err.error()), stdgo.Go.toInterface(("; want " : stdgo.GoString)), stdgo.Go.toInterface(_error));
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L65"
        return _re;
    }
