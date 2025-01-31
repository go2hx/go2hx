package stdgo._internal.regexp;
import stdgo._internal.strings.Strings;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.testing.Testing;
import stdgo._internal.os.Os;
import stdgo._internal.compress.bzip2.Bzip2;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.Io;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
function testLiteralPrefix(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tc in (stdgo._internal.regexp.Regexp__metaTests._metaTests.__append__(...(stdgo._internal.regexp.Regexp__literalPrefixTests._literalPrefixTests : Array<stdgo._internal.regexp.Regexp_MetaTest.MetaTest>)))) {
            var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(_tc._pattern?.__copy__());
            var __tmp__ = @:check2r _re.literalPrefix(), _str:stdgo.GoString = __tmp__._0, _complete:Bool = __tmp__._1;
            if (_complete != (_tc._isLiteral)) {
                @:check2r _t.errorf(("LiteralPrefix(`%s`) = %t; want %t" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_complete), stdgo.Go.toInterface(_tc._isLiteral));
            };
            if (_str != (_tc._literal)) {
                @:check2r _t.errorf(("LiteralPrefix(`%s`) = `%s`; want `%s`" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_str), stdgo.Go.toInterface(_tc._literal));
            };
        };
    }
