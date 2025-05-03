package stdgo._internal.regexp;
function testFindAllSubmatchIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L509"
        for (__0 => _test in stdgo._internal.regexp.Regexp__findtests._findTests) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L510"
            stdgo._internal.regexp.Regexp__testfindallsubmatchindex._testFindAllSubmatchIndex((stdgo.Go.setRef(_test) : stdgo.Ref<stdgo._internal.regexp.Regexp_findtest.FindTest>), stdgo._internal.regexp.Regexp_mustcompile.mustCompile(_test._pat?.__copy__()).findAllSubmatchIndex((_test._text : stdgo.Slice<stdgo.GoUInt8>), (-1 : stdgo.GoInt)), _t);
        };
    }
