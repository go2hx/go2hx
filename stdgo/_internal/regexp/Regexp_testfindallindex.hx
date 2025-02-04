package stdgo._internal.regexp;
function testFindAllIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__0 => _test in stdgo._internal.regexp.Regexp__findtests._findTests) {
            stdgo._internal.regexp.Regexp__testfindallindex._testFindAllIndex((stdgo.Go.setRef(_test) : stdgo.Ref<stdgo._internal.regexp.Regexp_findtest.FindTest>), @:check2r stdgo._internal.regexp.Regexp_mustcompile.mustCompile(_test._pat?.__copy__()).findAllIndex((_test._text : stdgo.Slice<stdgo.GoUInt8>), (-1 : stdgo.GoInt)), _t);
        };
    }
