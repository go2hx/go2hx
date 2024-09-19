package stdgo._internal.regexp;
function benchmarkCompile(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        for (__0 => _data in stdgo._internal.regexp.Regexp__compileBenchData._compileBenchData) {
            _b.run(_data._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                _b.reportAllocs();
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp_compile.compile(_data._re?.__copy__()), __25:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                _b.fatal(stdgo.Go.toInterface(_err));
                            };
                        };
                    });
                };
            });
        };
    }
