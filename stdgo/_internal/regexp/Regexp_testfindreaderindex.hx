package stdgo._internal.regexp;
function testFindReaderIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L233"
        for (__0 => _test in stdgo._internal.regexp.Regexp__findtests._findTests) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L234"
            stdgo._internal.regexp.Regexp__testfindindex._testFindIndex((stdgo.Go.setRef(_test) : stdgo.Ref<stdgo._internal.regexp.Regexp_findtest.FindTest>), stdgo._internal.regexp.Regexp_mustcompile.mustCompile(_test._pat?.__copy__()).findReaderIndex(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader(_test._text?.__copy__()))), _t);
        };
    }
