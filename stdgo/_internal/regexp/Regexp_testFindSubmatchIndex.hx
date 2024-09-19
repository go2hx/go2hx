package stdgo._internal.regexp;
function testFindSubmatchIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _test in stdgo._internal.regexp.Regexp__findTests._findTests) {
            stdgo._internal.regexp.Regexp__testFindSubmatchIndex._testFindSubmatchIndex((stdgo.Go.setRef(_test) : stdgo.Ref<stdgo._internal.regexp.Regexp_FindTest.FindTest>), stdgo._internal.regexp.Regexp_mustCompile.mustCompile(_test._pat?.__copy__()).findSubmatchIndex((_test._text : stdgo.Slice<stdgo.GoUInt8>)), _t);
        };
    }
