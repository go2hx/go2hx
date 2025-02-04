package stdgo._internal.regexp;
function testParseAndCompile(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _expr = (("a$" : stdgo.GoString) : stdgo.GoString);
        var _s = (("a\nb" : stdgo.GoString) : stdgo.GoString);
        for (_i => _tc in (new stdgo.Slice<stdgo._internal.regexp.Regexp_t__struct_1.T__struct_1>(2, 2, ...[({ _reFlags : (212 : stdgo._internal.regexp.syntax.Syntax_flags.Flags), _expMatch : false } : stdgo._internal.regexp.Regexp_t__struct_1.T__struct_1), ({ _reFlags : (196 : stdgo._internal.regexp.syntax.Syntax_flags.Flags), _expMatch : true } : stdgo._internal.regexp.Regexp_t__struct_1.T__struct_1)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _reFlags : ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_flags.Flags), _expMatch : false } : stdgo._internal.regexp.Regexp_t__struct_1.T__struct_1)])) : stdgo.Slice<stdgo._internal.regexp.Regexp_t__struct_1.T__struct_1>)) {
            var __tmp__ = stdgo._internal.regexp.syntax.Syntax_parse.parse(_expr?.__copy__(), _tc._reFlags), _parsed:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t.fatalf(("%d: parse: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
            };
            var __tmp__ = stdgo._internal.regexp.Regexp_compile.compile((@:check2r _parsed.string() : stdgo.GoString)?.__copy__()), _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t.fatalf(("%d: compile: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
            };
            {
                var _match = (@:check2r _re.matchString(_s?.__copy__()) : Bool);
                if (_match != (_tc._expMatch)) {
                    @:check2r _t.errorf(("%d: %q.MatchString(%q)=%t; expected=%t" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_re)), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_match), stdgo.Go.toInterface(_tc._expMatch));
                };
            };
        };
    }
