package stdgo._internal.go.types;
function lookupFieldOrMethod(t:stdgo._internal.go.types.Types_type_.Type_, _addressable:Bool, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString):{ var _0 : stdgo._internal.go.types.Types_object.Object; var _1 : stdgo.Slice<stdgo.GoInt>; var _2 : Bool; } {
        var _obj = (null : stdgo._internal.go.types.Types_object.Object), _index = (null : stdgo.Slice<stdgo.GoInt>), _indirect = false;
        //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L48"
        if (t == null) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L49"
            throw stdgo.Go.toInterface(("LookupFieldOrMethod on nil type" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L59"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(t) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : false };
            }, _t = __tmp__._0, __0 = __tmp__._1;
            if (({
                final value = _t;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L60"
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t.underlying()) : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>)) : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>), _1 : false };
                    }, _p = __tmp__._0, __9 = __tmp__._1;
                    if (({
                        final value = _p;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        {
                            var __tmp__ = stdgo._internal.go.types.Types__lookupfieldormethodimpl._lookupFieldOrMethodImpl(stdgo.Go.asInterface(_p), false, _pkg, _name?.__copy__(), false);
                            _obj = @:tmpset0 __tmp__._0;
                            _index = @:tmpset0 __tmp__._1;
                            _indirect = @:tmpset0 __tmp__._2;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L62"
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_obj) : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>)) : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>), _1 : true };
                            } catch(_) {
                                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>), _1 : false };
                            }, __10 = __tmp__._0, _ok = __tmp__._1;
                            if (_ok) {
                                //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L63"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.go.types.Types_object.Object; var _1 : stdgo.Slice<stdgo.GoInt>; var _2 : Bool; } = { _0 : (null : stdgo._internal.go.types.Types_object.Object), _1 : (null : stdgo.Slice<stdgo.GoInt>), _2 : false };
                                    _obj = __tmp__._0;
                                    _index = __tmp__._1;
                                    _indirect = __tmp__._2;
                                    __tmp__;
                                };
                            };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L65"
                        return { _0 : _obj, _1 : _index, _2 : _indirect };
                    };
                };
            };
        };
        {
            var __tmp__ = stdgo._internal.go.types.Types__lookupfieldormethodimpl._lookupFieldOrMethodImpl(t, _addressable, _pkg, _name?.__copy__(), false);
            _obj = @:tmpset0 __tmp__._0;
            _index = @:tmpset0 __tmp__._1;
            _indirect = @:tmpset0 __tmp__._2;
        };
        {};
        //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L76"
        if (((false && _obj == null : Bool) && stdgo._internal.go.types.Types__istypeparam._isTypeParam(t) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L77"
            {
                var _t = (stdgo._internal.go.types.Types__coretype._coreType(t) : stdgo._internal.go.types.Types_type_.Type_);
                if (_t != null) {
                    {
                        var __tmp__ = stdgo._internal.go.types.Types__lookupfieldormethodimpl._lookupFieldOrMethodImpl(_t, _addressable, _pkg, _name?.__copy__(), false);
                        _obj = @:tmpset0 __tmp__._0;
                        _index = @:tmpset0 __tmp__._1;
                        _indirect = @:tmpset0 __tmp__._2;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L79"
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_obj) : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>)) : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>), _1 : false };
                        }, __1 = __tmp__._0, _ok = __tmp__._1;
                        if (!_ok) {
                            {
                                final __tmp__0 = (null : stdgo._internal.go.types.Types_object.Object);
                                final __tmp__1 = (null : stdgo.Slice<stdgo.GoInt>);
                                final __tmp__2 = false;
                                _obj = @:binopAssign __tmp__0;
                                _index = @:binopAssign __tmp__1;
                                _indirect = @:binopAssign __tmp__2;
                            };
                        };
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L84"
        return { _0 : _obj, _1 : _index, _2 : _indirect };
    }
