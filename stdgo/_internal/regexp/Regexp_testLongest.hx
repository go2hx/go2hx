package stdgo._internal.regexp;
function testLongest(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = stdgo._internal.regexp.Regexp_compile.compile(("a(|b)" : stdgo.GoString)), _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var __0 = (_re.findString(("ab" : stdgo.GoString))?.__copy__() : stdgo.GoString), __1 = ("a" : stdgo.GoString);
var _w = __1, _g = __0;
            if (_g != (_w)) {
                _t.errorf(("first match was %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_w));
            };
        };
        _re.longest();
        {
            var __0 = (_re.findString(("ab" : stdgo.GoString))?.__copy__() : stdgo.GoString), __1 = ("ab" : stdgo.GoString);
var _w = __1, _g = __0;
            if (_g != (_w)) {
                _t.errorf(("longest match was %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_w));
            };
        };
    }
