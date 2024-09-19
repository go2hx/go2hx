package stdgo._internal.encoding.json;
function benchmarkTypeFieldsCache(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.reportAllocs();
        var _maxTypes:stdgo.GoInt = (1000000 : stdgo.GoInt);
        if (stdgo._internal.internal.testenv.Testenv_builder.builder() != (stdgo.Go.str())) {
            _maxTypes = (1000 : stdgo.GoInt);
        };
        var _types = (new stdgo.Slice<stdgo._internal.reflect.Reflect_Type_.Type_>((_maxTypes : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.reflect.Reflect_Type_.Type_>);
        var _fs = (new stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>(1, 1, ...[({ type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.str())), index : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(0 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : stdgo._internal.reflect.Reflect_StructField.StructField)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_StructField.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>);
        for (_i => _ in _types) {
            _fs[(0 : stdgo.GoInt)].name = stdgo._internal.fmt.Fmt_sprintf.sprintf(("TypeFieldsCache%d" : stdgo.GoString), stdgo.Go.toInterface(_i))?.__copy__();
            _types[(_i : stdgo.GoInt)] = stdgo._internal.reflect.Reflect_structOf.structOf(_fs);
        };
        var _clearCache = (function():Void {
            stdgo._internal.encoding.json.Json__fieldCache._fieldCache = (new stdgo._internal.sync.Sync_Map_.Map_() : stdgo._internal.sync.Sync_Map_.Map_);
        } : () -> Void);
        {
            var _nt = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_nt <= _maxTypes : Bool), _nt = (_nt * ((10 : stdgo.GoInt)) : stdgo.GoInt), {
                var _ts = (_types.__slice__(0, _nt) : stdgo.Slice<stdgo._internal.reflect.Reflect_Type_.Type_>);
                _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("MissTypes%d" : stdgo.GoString), stdgo.Go.toInterface(_nt))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    var _nc = (stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((0 : stdgo.GoInt)) : stdgo.GoInt);
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                            _clearCache();
                            var _wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
                            {
                                var _j = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_j < _nc : Bool), _j++, {
                                    _wg.add((1 : stdgo.GoInt));
                                    stdgo.Go.routine(() -> {
                                        var a = function(_j:stdgo.GoInt):Void {
                                            for (__36 => _t in (_ts.__slice__((((_j * (_ts.length) : stdgo.GoInt)) / _nc : stdgo.GoInt), (((((_j + (1 : stdgo.GoInt) : stdgo.GoInt)) * (_ts.length) : stdgo.GoInt)) / _nc : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.reflect.Reflect_Type_.Type_>)) {
                                                stdgo._internal.encoding.json.Json__cachedTypeFields._cachedTypeFields(_t);
                                            };
                                            _wg.done();
                                        };
                                        a(_j);
                                    });
                                });
                            };
                            _wg.wait_();
                        });
                    };
                });
            });
        };
        {
            var _nt = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_nt <= _maxTypes : Bool), _nt = (_nt * ((10 : stdgo.GoInt)) : stdgo.GoInt), {
                _clearCache();
                for (__16 => _t in (_types.__slice__(0, _nt) : stdgo.Slice<stdgo._internal.reflect.Reflect_Type_.Type_>)) {
                    stdgo._internal.encoding.json.Json__cachedTypeFields._cachedTypeFields(_t);
                };
                _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("HitTypes%d" : stdgo.GoString), stdgo.Go.toInterface(_nt))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
                        while (_pb.next()) {
                            stdgo._internal.encoding.json.Json__cachedTypeFields._cachedTypeFields(_types[(0 : stdgo.GoInt)]);
                        };
                    });
                });
            });
        };
    }
