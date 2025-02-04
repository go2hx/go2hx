package stdgo._internal.regexp;
function testFindSubmatch(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__0 => _test in stdgo._internal.regexp.Regexp__findtests._findTests) {
            var _result = @:check2r stdgo._internal.regexp.Regexp_mustcompile.mustCompile(_test._pat?.__copy__()).findSubmatch((_test._text : stdgo.Slice<stdgo.GoUInt8>));
            if (((_test._matches == null) && (_result == null) : Bool)) {} else if (((_test._matches == null) && (_result != null) : Bool)) {
                @:check2r _t.errorf(("expected no match; got one: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            } else if (((_test._matches != null) && (_result == null) : Bool)) {
                @:check2r _t.errorf(("expected match; got none: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            } else if (((_test._matches != null) && (_result != null) : Bool)) {
                stdgo._internal.regexp.Regexp__testsubmatchbytes._testSubmatchBytes((stdgo.Go.setRef(_test) : stdgo.Ref<stdgo._internal.regexp.Regexp_findtest.FindTest>), (0 : stdgo.GoInt), _test._matches[(0 : stdgo.GoInt)], _result, _t);
            };
        };
    }
