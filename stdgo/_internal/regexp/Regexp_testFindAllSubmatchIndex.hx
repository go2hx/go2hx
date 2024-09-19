package stdgo._internal.regexp;
function testFindAllSubmatchIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _test in stdgo._internal.regexp.Regexp__findTests._findTests) {
            stdgo._internal.regexp.Regexp__testFindAllSubmatchIndex._testFindAllSubmatchIndex((stdgo.Go.setRef(_test) : stdgo.Ref<stdgo._internal.regexp.Regexp_FindTest.FindTest>), stdgo._internal.regexp.Regexp_mustCompile.mustCompile(_test._pat?.__copy__()).findAllSubmatchIndex((_test._text : stdgo.Slice<stdgo.GoUInt8>), (-1 : stdgo.GoInt)), _t);
        };
    }
