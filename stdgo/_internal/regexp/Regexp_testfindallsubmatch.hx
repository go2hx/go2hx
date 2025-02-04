package stdgo._internal.regexp;
function testFindAllSubmatch(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__0 => _test in stdgo._internal.regexp.Regexp__findtests._findTests) {
            var _result = @:check2r stdgo._internal.regexp.Regexp_mustcompile.mustCompile(_test._pat?.__copy__()).findAllSubmatch((_test._text : stdgo.Slice<stdgo.GoUInt8>), (-1 : stdgo.GoInt));
            if (((_test._matches == null) && (_result == null) : Bool)) {} else if (((_test._matches == null) && (_result != null) : Bool)) {
                @:check2r _t.errorf(("expected no match; got one: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            } else if (((_test._matches != null) && (_result == null) : Bool)) {
                @:check2r _t.errorf(("expected match; got none: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            } else if ((_test._matches.length) != ((_result.length))) {
                @:check2r _t.errorf(("expected %d matches; got %d: %s" : stdgo.GoString), stdgo.Go.toInterface((_test._matches.length)), stdgo.Go.toInterface((_result.length)), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            } else if (((_test._matches != null) && (_result != null) : Bool)) {
                for (_k => _match in _test._matches) {
                    stdgo._internal.regexp.Regexp__testsubmatchbytes._testSubmatchBytes((stdgo.Go.setRef(_test) : stdgo.Ref<stdgo._internal.regexp.Regexp_findtest.FindTest>), _k, _match, _result[(_k : stdgo.GoInt)], _t);
                };
            };
        };
    }
