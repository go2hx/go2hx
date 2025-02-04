package stdgo._internal.regexp;
function benchmarkCompile(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        for (__0 => _data in stdgo._internal.regexp.Regexp__compilebenchdata._compileBenchData) {
            @:check2r _b.run(_data._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                @:check2r _b.reportAllocs();
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp_compile.compile(_data._re.__copy__()), __25:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                @:check2r _b.fatal(stdgo.Go.toInterface(_err));
                            };
                        };
                        _i++;
                    };
                };
            });
        };
    }
