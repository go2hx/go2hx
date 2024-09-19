package stdgo._internal.regexp;
function testLiteralPrefix(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tc in (stdgo._internal.regexp.Regexp__metaTests._metaTests.__append__(...(stdgo._internal.regexp.Regexp__literalPrefixTests._literalPrefixTests : Array<stdgo._internal.regexp.Regexp_MetaTest.MetaTest>)))) {
            var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(_tc._pattern?.__copy__());
            var __tmp__ = _re.literalPrefix(), _str:stdgo.GoString = __tmp__._0, _complete:Bool = __tmp__._1;
            if (_complete != (_tc._isLiteral)) {
                _t.errorf(("LiteralPrefix(`%s`) = %t; want %t" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_complete), stdgo.Go.toInterface(_tc._isLiteral));
            };
            if (_str != (_tc._literal)) {
                _t.errorf(("LiteralPrefix(`%s`) = `%s`; want `%s`" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_str), stdgo.Go.toInterface(_tc._literal));
            };
        };
    }
