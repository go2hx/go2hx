package stdgo._internal.regexp;
function testFindAllIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L316"
        for (__0 => _test in stdgo._internal.regexp.Regexp__findtests._findTests) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L317"
            stdgo._internal.regexp.Regexp__testfindallindex._testFindAllIndex((stdgo.Go.setRef(_test) : stdgo.Ref<stdgo._internal.regexp.Regexp_findtest.FindTest>), stdgo._internal.regexp.Regexp_mustcompile.mustCompile(_test._pat?.__copy__()).findAllIndex((_test._text : stdgo.Slice<stdgo.GoUInt8>), (-1 : stdgo.GoInt)), _t);
        };
    }
