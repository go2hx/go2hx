package stdgo._internal.regexp.syntax;
function testParseInvalidRegexps(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__1 => _regexp in stdgo._internal.regexp.syntax.Syntax__invalidRegexps._invalidRegexps) {
            {
                var __tmp__ = stdgo._internal.regexp.syntax.Syntax_parse.parse(_regexp?.__copy__(), (212 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)), _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    _t.errorf(("Parse(%#q, Perl) = %s, should have failed" : stdgo.GoString), stdgo.Go.toInterface(_regexp), stdgo.Go.toInterface(stdgo._internal.regexp.syntax.Syntax__dump._dump(_re)));
                };
            };
            {
                var __tmp__ = stdgo._internal.regexp.syntax.Syntax_parse.parse(_regexp?.__copy__(), (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)), _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    _t.errorf(("Parse(%#q, POSIX) = %s, should have failed" : stdgo.GoString), stdgo.Go.toInterface(_regexp), stdgo.Go.toInterface(stdgo._internal.regexp.syntax.Syntax__dump._dump(_re)));
                };
            };
        };
        for (__2 => _regexp in stdgo._internal.regexp.syntax.Syntax__onlyPerl._onlyPerl) {
            {
                var __tmp__ = stdgo._internal.regexp.syntax.Syntax_parse.parse(_regexp?.__copy__(), (212 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)), __3:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("Parse(%#q, Perl): %v" : stdgo.GoString), stdgo.Go.toInterface(_regexp), stdgo.Go.toInterface(_err));
                };
            };
            {
                var __tmp__ = stdgo._internal.regexp.syntax.Syntax_parse.parse(_regexp?.__copy__(), (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)), _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    _t.errorf(("Parse(%#q, POSIX) = %s, should have failed" : stdgo.GoString), stdgo.Go.toInterface(_regexp), stdgo.Go.toInterface(stdgo._internal.regexp.syntax.Syntax__dump._dump(_re)));
                };
            };
        };
        for (__3 => _regexp in stdgo._internal.regexp.syntax.Syntax__onlyPOSIX._onlyPOSIX) {
            {
                var __tmp__ = stdgo._internal.regexp.syntax.Syntax_parse.parse(_regexp?.__copy__(), (212 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)), _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    _t.errorf(("Parse(%#q, Perl) = %s, should have failed" : stdgo.GoString), stdgo.Go.toInterface(_regexp), stdgo.Go.toInterface(stdgo._internal.regexp.syntax.Syntax__dump._dump(_re)));
                };
            };
            {
                var __tmp__ = stdgo._internal.regexp.syntax.Syntax_parse.parse(_regexp?.__copy__(), (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)), __4:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("Parse(%#q, POSIX): %v" : stdgo.GoString), stdgo.Go.toInterface(_regexp), stdgo.Go.toInterface(_err));
                };
            };
        };
    }