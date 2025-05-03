package stdgo._internal.encoding.json;
function benchmarkTypeFieldsCache(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L431"
        _b.reportAllocs();
        var _maxTypes:stdgo.GoInt = (1000000 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L433"
        if (stdgo._internal.internal.testenv.Testenv_builder.builder() != ((stdgo.Go.str() : stdgo.GoString))) {
            _maxTypes = (1000 : stdgo.GoInt);
        };
        var _types = (new stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>((_maxTypes : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>);
        var _fs = (new stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>(1, 1, ...[({ type : stdgo._internal.reflect.Reflect_typeof.typeOf(stdgo.Go.toInterface((stdgo.Go.str() : stdgo.GoString))), index : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(0 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : stdgo._internal.reflect.Reflect_structfield.StructField)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_structfield.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L443"
        for (_i => _ in _types) {
            _fs[(0 : stdgo.GoInt)].name = stdgo._internal.fmt.Fmt_sprintf.sprintf(("TypeFieldsCache%d" : stdgo.GoString), stdgo.Go.toInterface(_i))?.__copy__();
            _types[(_i : stdgo.GoInt)] = stdgo._internal.reflect.Reflect_structof.structOf(_fs);
        };
        var _clearCache = (function():Void {
            stdgo._internal.encoding.json.Json__fieldcache._fieldCache = (new stdgo._internal.sync.Sync_map_.Map_() : stdgo._internal.sync.Sync_map_.Map_);
        } : () -> Void);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L455"
        {
            var _nt = (1 : stdgo.GoInt);
            while ((_nt <= _maxTypes : Bool)) {
                var _ts = (_types.__slice__(0, _nt) : stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>);
//"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L457"
                _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("MissTypes%d" : stdgo.GoString), stdgo.Go.toInterface(_nt)).__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                    var _nc = (stdgo._internal.runtime.Runtime_gomaxprocs.gOMAXPROCS((0 : stdgo.GoInt)) : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L459"
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L460"
                            _clearCache();
var _wg:stdgo._internal.sync.Sync_waitgroup.WaitGroup = ({} : stdgo._internal.sync.Sync_waitgroup.WaitGroup);
//"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L462"
                            {
                                var _j = (0 : stdgo.GoInt);
                                while ((_j < _nc : Bool)) {
                                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L463"
                                    _wg.add((1 : stdgo.GoInt));
//"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L464"
                                    stdgo.Go.routine(() -> ({
                                        var a = function(_j:stdgo.GoInt):Void {
                                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L465"
                                            for (__32 => _t in (_ts.__slice__((((_j * (_ts.length) : stdgo.GoInt)) / _nc : stdgo.GoInt), (((((_j + (1 : stdgo.GoInt) : stdgo.GoInt)) * (_ts.length) : stdgo.GoInt)) / _nc : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>)) {
                                                //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L466"
                                                stdgo._internal.encoding.json.Json__cachedtypefields._cachedTypeFields(_t);
                                            };
                                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L468"
                                            _wg.done();
                                        };
                                        a(_j);
                                    }));
                                    _j++;
                                };
                            };
//"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L471"
                            _wg.wait_();
                            _i++;
                        };
                    };
                });
                _nt = (_nt * ((10 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L478"
        {
            var _nt = (1 : stdgo.GoInt);
            while ((_nt <= _maxTypes : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L480"
                _clearCache();
//"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L481"
                for (__12 => _t in (_types.__slice__(0, _nt) : stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L482"
                    stdgo._internal.encoding.json.Json__cachedtypefields._cachedTypeFields(_t);
                };
//"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L484"
                _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("HitTypes%d" : stdgo.GoString), stdgo.Go.toInterface(_nt)).__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L485"
                    _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L486"
                        while (_pb.next()) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L487"
                            stdgo._internal.encoding.json.Json__cachedtypefields._cachedTypeFields(_types[(0 : stdgo.GoInt)]);
                        };
                    });
                });
                _nt = (_nt * ((10 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
    }
