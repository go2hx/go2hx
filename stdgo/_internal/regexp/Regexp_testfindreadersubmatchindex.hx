package stdgo._internal.regexp;
function testFindReaderSubmatchIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__0 => _test in stdgo._internal.regexp.Regexp__findtests._findTests) {
            stdgo._internal.regexp.Regexp__testfindsubmatchindex._testFindSubmatchIndex((stdgo.Go.setRef(_test) : stdgo.Ref<stdgo._internal.regexp.Regexp_findtest.FindTest>), @:check2r stdgo._internal.regexp.Regexp_mustcompile.mustCompile(_test._pat?.__copy__()).findReaderSubmatchIndex(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader(_test._text?.__copy__()))), _t);
        };
    }
