package stdgo._internal.regexp;
function testLiteralPrefix(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L412"
        for (__0 => _tc in (stdgo._internal.regexp.Regexp__metatests._metaTests.__append__(...(stdgo._internal.regexp.Regexp__literalprefixtests._literalPrefixTests : Array<stdgo._internal.regexp.Regexp_metatest.MetaTest>)) : stdgo.Slice<stdgo._internal.regexp.Regexp_metatest.MetaTest>)) {
            var _re = stdgo._internal.regexp.Regexp_mustcompile.mustCompile(_tc._pattern?.__copy__());
            var __tmp__ = _re.literalPrefix(), _str:stdgo.GoString = __tmp__._0, _complete:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L416"
            if (_complete != (_tc._isLiteral)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L417"
                _t.errorf(("LiteralPrefix(`%s`) = %t; want %t" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_complete), stdgo.Go.toInterface(_tc._isLiteral));
            };
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L419"
            if (_str != (_tc._literal)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L420"
                _t.errorf(("LiteralPrefix(`%s`) = `%s`; want `%s`" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_str), stdgo.Go.toInterface(_tc._literal));
            };
        };
    }
