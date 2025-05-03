package stdgo._internal.regexp;
function benchmarkCompile(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L888"
        for (__0 => _data in stdgo._internal.regexp.Regexp__compilebenchdata._compileBenchData) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L889"
            _b.run(_data._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L890"
                _b.reportAllocs();
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L891"
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L892"
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp_compile.compile(_data._re.__copy__()), __25:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L893"
                                _b.fatal(stdgo.Go.toInterface(_err));
                            };
                        };
                        _i++;
                    };
                };
            });
        };
    }
