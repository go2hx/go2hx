package stdgo._internal.encoding.binary;
function testSizeStructCache(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        stdgo._internal.encoding.binary.Binary__structsize._structSize = (new stdgo._internal.sync.Sync_map_.Map_() : stdgo._internal.sync.Sync_map_.Map_);
        var _count = (function():stdgo.GoInt {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            @:check2 stdgo._internal.encoding.binary.Binary__structsize._structSize.range(function(__12:stdgo.AnyInterface, __13:stdgo.AnyInterface):Bool {
                _i++;
                return true;
            });
            return _i;
        } : () -> stdgo.GoInt);
        var _total:stdgo.GoInt = (0 : stdgo.GoInt);
        var _added = (function():stdgo.GoInt {
            var _delta = (_count() - _total : stdgo.GoInt);
            _total = (_total + (_delta) : stdgo.GoInt);
            return _delta;
        } : () -> stdgo.GoInt);
        {};
        {};
        var _testcases = (new stdgo.Slice<stdgo._internal.encoding.binary.Binary_t__struct_2.T__struct_2>(5, 5, ...[({ _val : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.encoding.binary.Binary_t_testsizestructcache___localname___foo_7241.T_testSizeStructCache___localname___foo_7241)) : stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_testsizestructcache___localname___foo_7241.T_testSizeStructCache___localname___foo_7241>))), _want : (1 : stdgo.GoInt) } : stdgo._internal.encoding.binary.Binary_t__struct_2.T__struct_2), ({ _val : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.encoding.binary.Binary_t_testsizestructcache___localname___bar_7275.T_testSizeStructCache___localname___bar_7275)) : stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_testsizestructcache___localname___bar_7275.T_testSizeStructCache___localname___bar_7275>))), _want : (1 : stdgo.GoInt) } : stdgo._internal.encoding.binary.Binary_t__struct_2.T__struct_2), ({ _val : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.encoding.binary.Binary_t_testsizestructcache___localname___bar_7275.T_testSizeStructCache___localname___bar_7275)) : stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_testsizestructcache___localname___bar_7275.T_testSizeStructCache___localname___bar_7275>))), _want : (0 : stdgo.GoInt) } : stdgo._internal.encoding.binary.Binary_t__struct_2.T__struct_2), ({ _val : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ a : ({} : stdgo._internal.encoding.binary.Binary_struct.Struct) } : stdgo._internal.encoding.binary.Binary_t__struct_3.T__struct_3)) : stdgo.Ref<stdgo._internal.encoding.binary.Binary_t__struct_3.T__struct_3>))), _want : (1 : stdgo.GoInt) } : stdgo._internal.encoding.binary.Binary_t__struct_2.T__struct_2), ({ _val : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ a : ({} : stdgo._internal.encoding.binary.Binary_struct.Struct) } : stdgo._internal.encoding.binary.Binary_t__struct_3.T__struct_3)) : stdgo.Ref<stdgo._internal.encoding.binary.Binary_t__struct_3.T__struct_3>))), _want : (0 : stdgo.GoInt) } : stdgo._internal.encoding.binary.Binary_t__struct_2.T__struct_2)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({ _val : (null : stdgo.AnyInterface), _want : (0 : stdgo.GoInt) } : stdgo._internal.encoding.binary.Binary_t__struct_2.T__struct_2)])) : stdgo.Slice<stdgo._internal.encoding.binary.Binary_t__struct_2.T__struct_2>);
        for (__8 => _tc in _testcases) {
            if (stdgo._internal.encoding.binary.Binary_size.size(_tc._val) == ((-1 : stdgo.GoInt))) {
                @:check2r _t.fatalf(("Can\'t get the size of %T" : stdgo.GoString), _tc._val);
            };
            {
                var _n = (_added() : stdgo.GoInt);
                if (_n != (_tc._want)) {
                    @:check2r _t.errorf(("Sizing %T added %d entries to the cache, want %d" : stdgo.GoString), _tc._val, stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_tc._want));
                };
            };
        };
    }
