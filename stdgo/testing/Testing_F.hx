package stdgo.testing;
@:structInit @:using(stdgo.testing.Testing.F_static_extension) abstract F(stdgo._internal.testing.Testing_F.F) from stdgo._internal.testing.Testing_F.F to stdgo._internal.testing.Testing_F.F {
    public var _common(get, set) : T_common;
    function get__common():T_common return this._common;
    function set__common(v:T_common):T_common {
        this._common = v;
        return v;
    }
    public var _fuzzContext(get, set) : T_fuzzContext;
    function get__fuzzContext():T_fuzzContext return this._fuzzContext;
    function set__fuzzContext(v:T_fuzzContext):T_fuzzContext {
        this._fuzzContext = (v : stdgo.Ref<stdgo._internal.testing.Testing_T_fuzzContext.T_fuzzContext>);
        return v;
    }
    public var _testContext(get, set) : T_testContext;
    function get__testContext():T_testContext return this._testContext;
    function set__testContext(v:T_testContext):T_testContext {
        this._testContext = (v : stdgo.Ref<stdgo._internal.testing.Testing_T_testContext.T_testContext>);
        return v;
    }
    public var _inFuzzFn(get, set) : Bool;
    function get__inFuzzFn():Bool return this._inFuzzFn;
    function set__inFuzzFn(v:Bool):Bool {
        this._inFuzzFn = v;
        return v;
    }
    public var _corpus(get, set) : Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>>;
    function get__corpus():Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>> return [for (i in this._corpus) {
        final obj = i;
        { parent : obj.parent, path : obj.path, data : [for (i in obj.data) i], values : [for (i in obj.values) i], generation : obj.generation, isSeed : obj.isSeed };
    }];
    function set__corpus(v:Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>>):Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>> {
        this._corpus = ([for (i in v) {
            final obj = i;
            { parent : (obj.parent : stdgo.GoString), path : (obj.path : stdgo.GoString), data : ([for (i in obj.data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>), generation : (obj.generation : stdgo.GoInt), isSeed : obj.isSeed };
        }] : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>);
        return v;
    }
    public var _result(get, set) : T_fuzzResult;
    function get__result():T_fuzzResult return this._result;
    function set__result(v:T_fuzzResult):T_fuzzResult {
        this._result = v;
        return v;
    }
    public var _fuzzCalled(get, set) : Bool;
    function get__fuzzCalled():Bool return this._fuzzCalled;
    function set__fuzzCalled(v:Bool):Bool {
        this._fuzzCalled = v;
        return v;
    }
    public function new(?_common:T_common, ?_fuzzContext:T_fuzzContext, ?_testContext:T_testContext, ?_inFuzzFn:Bool, ?_corpus:Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>>, ?_result:T_fuzzResult, ?_fuzzCalled:Bool) this = new stdgo._internal.testing.Testing_F.F(_common, (_fuzzContext : stdgo.Ref<stdgo._internal.testing.Testing_T_fuzzContext.T_fuzzContext>), (_testContext : stdgo.Ref<stdgo._internal.testing.Testing_T_testContext.T_testContext>), _inFuzzFn, ([for (i in _corpus) {
        final obj = i;
        { parent : (obj.parent : stdgo.GoString), path : (obj.path : stdgo.GoString), data : ([for (i in obj.data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>), generation : (obj.generation : stdgo.GoInt), isSeed : obj.isSeed };
    }] : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>), _result, _fuzzCalled);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
