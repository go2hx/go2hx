package stdgo._internal.internal.fuzz;
@:keep @:allow(stdgo._internal.internal.fuzz.Fuzz.T_contextReader_asInterface) class T_contextReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _cr:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_contextreader.T_contextReader>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _cr:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_contextreader.T_contextReader> = _cr;
        {
            var _ctxErr = ((@:checkr _cr ?? throw "null pointer dereference")._ctx.err() : stdgo.Error);
            if (_ctxErr != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : _ctxErr };
            };
        };
        var _done = (new stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_nocopy.T_noCopy>(0, () -> ({} : stdgo._internal.internal.fuzz.Fuzz_t_nocopy.T_noCopy)) : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_nocopy.T_noCopy>);
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err:stdgo.Error = (null : stdgo.Error);
        stdgo.Go.routine(() -> ({
            var a = function():Void {
                {
                    var __tmp__ = (@:checkr _cr ?? throw "null pointer dereference")._r.read(_b);
                    _n = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_done != null) _done.__close__();
            };
            a();
        }));
        {
            {
                var __select__ = true;
                var __c__0 = (@:checkr _cr ?? throw "null pointer dereference")._ctx.done();
var __c__1 = _done;
                while (__select__) {
                    if (__c__0 != null && __c__0.__isGet__(true)) {
                        __select__ = false;
                        {
                            __c__0.__get__();
                            {
                                return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _cr ?? throw "null pointer dereference")._ctx.err() };
                            };
                        };
                    } else if (__c__1 != null && __c__1.__isGet__(true)) {
                        __select__ = false;
                        {
                            __c__1.__get__();
                            {
                                return { _0 : _n, _1 : _err };
                            };
                        };
                    };
                    #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
                __c__0.__reset__();
__c__1.__reset__();
            };
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
        };
    }
}
