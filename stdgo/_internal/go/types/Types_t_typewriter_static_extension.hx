package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_typeWriter_asInterface) class T_typeWriter_static_extension {
    @:keep
    @:tdfield
    static public function _signature( _w:stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter>, _sig:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter> = _w;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L456"
            if (_sig.typeParams().len() != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L457"
                if (({
                    final value = (@:checkr _w ?? throw "null pointer dereference")._ctxt;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L458"
                    stdgo._internal.go.types.Types__assert._assert(({
                        final value = (@:checkr _w ?? throw "null pointer dereference")._tparams;
                        (value == null || (value : Dynamic).__nil__);
                    }));
                    (@:checkr _w ?? throw "null pointer dereference")._tparams = _sig.typeParams();
                    {
                        __deferstack__.unshift({ ran : false, f : () -> ({
                            var a = function():Void {
                                (@:checkr _w ?? throw "null pointer dereference")._tparams = null;
                            };
                            a();
                        }) });
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L464"
                _w._tParamList(_sig.typeParams()._list());
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L467"
            _w._tuple((@:checkr _sig ?? throw "null pointer dereference")._params, (@:checkr _sig ?? throw "null pointer dereference")._variadic);
            var _n = ((@:checkr _sig ?? throw "null pointer dereference")._results.len() : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L470"
            if (_n == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L472"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L475"
            _w._byte((32 : stdgo.GoUInt8));
            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L476"
            if (((_n == (1 : stdgo.GoInt)) && ((({
                final value = (@:checkr _w ?? throw "null pointer dereference")._ctxt;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) || ((@:checkr (@:checkr (@:checkr _sig ?? throw "null pointer dereference")._results ?? throw "null pointer dereference")._vars[(0 : stdgo.GoInt)] ?? throw "null pointer dereference")._object._name == (stdgo.Go.str() : stdgo.GoString)) : Bool)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L478"
                _w._typ((@:checkr (@:checkr (@:checkr _sig ?? throw "null pointer dereference")._results ?? throw "null pointer dereference")._vars[(0 : stdgo.GoInt)] ?? throw "null pointer dereference")._object._typ);
                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L479"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L483"
            _w._tuple((@:checkr _sig ?? throw "null pointer dereference")._results, false);
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _tuple( _w:stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter>, _tup:stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>, _variadic:Bool):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter> = _w;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L421"
        _w._byte((40 : stdgo.GoUInt8));
        //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L422"
        if (({
            final value = _tup;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L423"
            for (_i => _v in (@:checkr _tup ?? throw "null pointer dereference")._vars) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L424"
                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L425"
                    _w._byte((44 : stdgo.GoUInt8));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L428"
                if (((({
                    final value = (@:checkr _w ?? throw "null pointer dereference")._ctxt;
                    (value == null || (value : Dynamic).__nil__);
                }) && (@:checkr _v ?? throw "null pointer dereference")._object._name != ((stdgo.Go.str() : stdgo.GoString)) : Bool) && (@:checkr _w ?? throw "null pointer dereference")._paramNames : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L429"
                    _w._string((@:checkr _v ?? throw "null pointer dereference")._object._name?.__copy__());
                    //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L430"
                    _w._byte((32 : stdgo.GoUInt8));
                };
                var _typ = ((@:checkr _v ?? throw "null pointer dereference")._object._typ : stdgo._internal.go.types.Types_type_.Type_);
                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L433"
                if ((_variadic && (_i == (((@:checkr _tup ?? throw "null pointer dereference")._vars.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L434"
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_typ) : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>)) : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>), _1 : false };
                        }, _s = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L435"
                            _w._string(("..." : stdgo.GoString));
                            _typ = (@:checkr _s ?? throw "null pointer dereference")._elem;
                        } else {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L440"
                            {
                                var __tmp__ = try {
                                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.go.types.Types__under._under(_typ)) : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>)) : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>), _1 : true };
                                } catch(_) {
                                    { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>), _1 : false };
                                }, _t = __tmp__._0, __0 = __tmp__._1;
                                if ((({
                                    final value = _t;
                                    (value == null || (value : Dynamic).__nil__);
                                }) || ((@:checkr _t ?? throw "null pointer dereference")._kind != (17 : stdgo._internal.go.types.Types_basickind.BasicKind)) : Bool)) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L441"
                                    _w._error(("expected string type" : stdgo.GoString));
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L442"
                                    continue;
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L444"
                            _w._typ(_typ);
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L445"
                            _w._string(("..." : stdgo.GoString));
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L446"
                            continue;
                        };
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L449"
                _w._typ(_typ);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L452"
        _w._byte((41 : stdgo.GoUInt8));
    }
    @:keep
    @:tdfield
    static public function _typeName( _w:stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter>, _obj:stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter> = _w;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L416"
        _w._string(stdgo._internal.go.types.Types__packageprefix._packagePrefix((@:checkr _obj ?? throw "null pointer dereference")._object._pkg, (@:checkr _w ?? throw "null pointer dereference")._qf)?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L417"
        _w._string((@:checkr _obj ?? throw "null pointer dereference")._object._name?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _tParamList( _w:stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter>, _list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter> = _w;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L387"
        _w._byte((91 : stdgo.GoUInt8));
        var _prev:stdgo._internal.go.types.Types_type_.Type_ = (null : stdgo._internal.go.types.Types_type_.Type_);
        //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L389"
        for (_i => _tpar in _list) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L393"
            if (({
                final value = _tpar;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L394"
                _w._error(("nil type parameter" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L395"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L397"
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L398"
                if (stdgo.Go.toInterface((@:checkr _tpar ?? throw "null pointer dereference")._bound) != (stdgo.Go.toInterface(_prev))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L400"
                    _w._byte((32 : stdgo.GoUInt8));
                    //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L401"
                    _w._typ(_prev);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L403"
                _w._byte((44 : stdgo.GoUInt8));
            };
            _prev = (@:checkr _tpar ?? throw "null pointer dereference")._bound;
            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L406"
            _w._typ(stdgo.Go.asInterface(_tpar));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L408"
        if (_prev != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L409"
            _w._byte((32 : stdgo.GoUInt8));
            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L410"
            _w._typ(_prev);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L412"
        _w._byte((93 : stdgo.GoUInt8));
    }
    @:keep
    @:tdfield
    static public function _typeList( _w:stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter>, _list:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter> = _w;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L376"
        _w._byte((91 : stdgo.GoUInt8));
        //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L377"
        for (_i => _typ in _list) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L378"
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L379"
                _w._byte((44 : stdgo.GoUInt8));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L381"
            _w._typ(_typ);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L383"
        _w._byte((93 : stdgo.GoUInt8));
    }
    @:keep
    @:tdfield
    static public function _typeSet( _w:stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter>, _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter> = _w;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L341"
        stdgo._internal.go.types.Types__assert._assert(({
            final value = (@:checkr _w ?? throw "null pointer dereference")._ctxt;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }));
        var _first = (true : Bool);
        //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L343"
        for (__0 => _m in (@:checkr _s ?? throw "null pointer dereference")._methods) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L344"
            if (!_first) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L345"
                _w._byte((59 : stdgo.GoUInt8));
            };
            _first = false;
            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L348"
            _w._string((@:checkr _m ?? throw "null pointer dereference")._object._name?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L349"
            _w._signature((stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _m ?? throw "null pointer dereference")._object._typ) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>)) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L351"
        if ((@:checkr _s ?? throw "null pointer dereference")._terms._isAll()) {} else if ((@:checkr _s ?? throw "null pointer dereference")._terms._isEmpty()) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L355"
            _w._string(((@:checkr _s ?? throw "null pointer dereference")._terms.string() : stdgo.GoString)?.__copy__());
        } else {
            var _termHashes:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L358"
            for (__1 => _term in (@:checkr _s ?? throw "null pointer dereference")._terms) {
                var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L361"
                if ((@:checkr _term ?? throw "null pointer dereference")._tilde) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L362"
                    _buf.writeByte((126 : stdgo.GoUInt8));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L364"
                stdgo._internal.go.types.Types__newtypehasher._newTypeHasher((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), (@:checkr _w ?? throw "null pointer dereference")._ctxt)._typ((@:checkr _term ?? throw "null pointer dereference")._typ);
                _termHashes = (_termHashes.__append__((_buf.string() : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L367"
            stdgo._internal.sort.Sort_strings.strings(_termHashes);
            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L368"
            if (!_first) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L369"
                _w._byte((59 : stdgo.GoUInt8));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L371"
            _w._string(stdgo._internal.strings.Strings_join.join(_termHashes, ("|" : stdgo.GoString))?.__copy__());
        };
    }
    @:keep
    @:tdfield
    static public function _typ( _w:stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter>, _typ:stdgo._internal.go.types.Types_type_.Type_):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter> = _w;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L114"
            if (((@:checkr _w ?? throw "null pointer dereference")._seen[_typ] ?? false)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L115"
                _w._error((("cycle to " : stdgo.GoString) + stdgo._internal.go.types.Types__gotypename._goTypeName(_typ)?.__copy__() : stdgo.GoString)?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L116"
                return;
            };
            (@:checkr _w ?? throw "null pointer dereference")._seen[_typ] = true;
            {
                var _a0 = (@:checkr _w ?? throw "null pointer dereference")._seen;
                var _a1 = _typ;
                __deferstack__.unshift({ ran : false, f : () -> if (_a0 != null) _a0.__remove__(_a1) });
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L121"
            {
                final __type__ = _typ;
                {
                    var __bool__ = true;
                    while (__bool__) {
                        __bool__ = false;
                        if (__type__ == null) {
                            var _t:stdgo.AnyInterface = __type__ == null ? (null : stdgo.AnyInterface) : cast __type__;
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L123"
                            _w._error(("nil" : stdgo.GoString));
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>))) {
                            var _t:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__().value);
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L128"
                            if (stdgo._internal.go.token.Token_isexported.isExported((@:checkr _t ?? throw "null pointer dereference")._name?.__copy__())) {
                                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L129"
                                {
                                    var __tmp__ = try {
                                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr stdgo._internal.go.types.Types_unsafe.unsafe ?? throw "null pointer dereference")._scope.lookup((@:checkr _t ?? throw "null pointer dereference")._name?.__copy__())) : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>)) : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>), _1 : true };
                                    } catch(_) {
                                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>), _1 : false };
                                    }, _obj = __tmp__._0, __0 = __tmp__._1;
                                    if (({
                                        final value = _obj;
                                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                                    })) {
                                        //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L130"
                                        _w._typeName(_obj);
                                        //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L131"
                                        break;
                                    };
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L134"
                            _w._string((@:checkr _t ?? throw "null pointer dereference")._name?.__copy__());
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>))) {
                            var _t:stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__().value);
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L137"
                            _w._byte((91 : stdgo.GoUInt8));
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L138"
                            _w._string(stdgo._internal.strconv.Strconv_formatint.formatInt((@:checkr _t ?? throw "null pointer dereference")._len, (10 : stdgo.GoInt))?.__copy__());
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L139"
                            _w._byte((93 : stdgo.GoUInt8));
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L140"
                            _w._typ((@:checkr _t ?? throw "null pointer dereference")._elem);
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>))) {
                            var _t:stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : __type__.__underlying__().value);
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L143"
                            _w._string(("[]" : stdgo.GoString));
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L144"
                            _w._typ((@:checkr _t ?? throw "null pointer dereference")._elem);
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>))) {
                            var _t:stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__().value);
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L147"
                            _w._string(("struct{" : stdgo.GoString));
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L148"
                            for (_i => _f in (@:checkr _t ?? throw "null pointer dereference")._fields) {
                                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L149"
                                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L150"
                                    _w._byte((59 : stdgo.GoUInt8));
                                };
                                var _pkgAnnotate = (false : Bool);
                                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L156"
                                if ((((@:checkr _w ?? throw "null pointer dereference")._qf == null && (@:checkr _w ?? throw "null pointer dereference")._pkgInfo : Bool) && !stdgo._internal.go.token.Token_isexported.isExported((@:checkr _f ?? throw "null pointer dereference")._object._name?.__copy__()) : Bool)) {
                                    _pkgAnnotate = true;
                                    (@:checkr _w ?? throw "null pointer dereference")._pkgInfo = false;
                                };
                                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L165"
                                if (!(@:checkr _f ?? throw "null pointer dereference")._embedded) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L166"
                                    _w._string((@:checkr _f ?? throw "null pointer dereference")._object._name?.__copy__());
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L167"
                                    _w._byte((32 : stdgo.GoUInt8));
                                };
                                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L169"
                                _w._typ((@:checkr _f ?? throw "null pointer dereference")._object._typ);
                                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L170"
                                if (_pkgAnnotate) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L171"
                                    _w._string((" /* package " : stdgo.GoString));
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L172"
                                    _w._string((@:checkr _f ?? throw "null pointer dereference")._object._pkg.path()?.__copy__());
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L173"
                                    _w._string((" */ " : stdgo.GoString));
                                };
                                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L175"
                                {
                                    var _tag = (_t.tag(_i)?.__copy__() : stdgo.GoString);
                                    if (_tag != ((stdgo.Go.str() : stdgo.GoString))) {
                                        //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L176"
                                        _w._byte((32 : stdgo.GoUInt8));
                                        //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L180"
                                        _w._string(stdgo._internal.strconv.Strconv_quote.quote(_tag?.__copy__())?.__copy__());
                                    };
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L183"
                            _w._byte((125 : stdgo.GoUInt8));
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>))) {
                            var _t:stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : __type__.__underlying__().value);
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L186"
                            _w._byte((42 : stdgo.GoUInt8));
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L187"
                            _w._typ((@:checkr _t ?? throw "null pointer dereference")._base);
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>))) {
                            var _t:stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>) : __type__.__underlying__().value);
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L190"
                            _w._tuple(_t, false);
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>))) {
                            var _t:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) : __type__.__underlying__().value);
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L193"
                            _w._string(("func" : stdgo.GoString));
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L194"
                            _w._signature(_t);
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>))) {
                            var _t:stdgo.Ref<stdgo._internal.go.types.Types_union.Union> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>) : __type__.__underlying__().value);
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L199"
                            if (_t.len() == ((0 : stdgo.GoInt))) {
                                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L200"
                                _w._error(("empty union" : stdgo.GoString));
                                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L201"
                                break;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L203"
                            for (_i => _t in (@:checkr _t ?? throw "null pointer dereference")._terms) {
                                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L204"
                                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L205"
                                    _w._string((" | " : stdgo.GoString));
                                };
                                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L207"
                                if ((@:checkr _t ?? throw "null pointer dereference")._tilde) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L208"
                                    _w._byte((126 : stdgo.GoUInt8));
                                };
                                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L210"
                                _w._typ((@:checkr _t ?? throw "null pointer dereference")._typ);
                            };
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>))) {
                            var _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__().value);
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L214"
                            if (({
                                final value = (@:checkr _w ?? throw "null pointer dereference")._ctxt;
                                (value == null || (value : Dynamic).__nil__);
                            })) {
                                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L215"
                                if (stdgo.Go.toInterface(stdgo.Go.asInterface(_t)) == (stdgo.Go.toInterface(stdgo._internal.go.types.Types__universeany._universeAny.type()))) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L219"
                                    _w._string(("any" : stdgo.GoString));
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L220"
                                    break;
                                };
                                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L222"
                                if (stdgo.Go.toInterface(stdgo.Go.asInterface(_t)) == (stdgo.Go.toInterface((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.go.types.Types__universecomparable._universeComparable.type()) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) ?? throw "null pointer dereference")._underlying))) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L223"
                                    _w._string(("interface{comparable}" : stdgo.GoString));
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L224"
                                    break;
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L227"
                            if ((@:checkr _t ?? throw "null pointer dereference")._implicit) {
                                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L228"
                                if ((((@:checkr _t ?? throw "null pointer dereference")._methods.length == (0 : stdgo.GoInt)) && ((@:checkr _t ?? throw "null pointer dereference")._embeddeds.length == (1 : stdgo.GoInt)) : Bool)) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L229"
                                    _w._typ((@:checkr _t ?? throw "null pointer dereference")._embeddeds[(0 : stdgo.GoInt)]);
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L230"
                                    break;
                                };
                                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L234"
                                _w._string(("/* implicit */ " : stdgo.GoString));
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L236"
                            _w._string(("interface{" : stdgo.GoString));
                            var _first = (true : Bool);
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L238"
                            if (({
                                final value = (@:checkr _w ?? throw "null pointer dereference")._ctxt;
                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                            })) {
                                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L239"
                                _w._typeSet(_t._typeSet());
                            } else {
                                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L241"
                                for (__16 => _m in (@:checkr _t ?? throw "null pointer dereference")._methods) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L242"
                                    if (!_first) {
                                        //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L243"
                                        _w._byte((59 : stdgo.GoUInt8));
                                    };
                                    _first = false;
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L246"
                                    _w._string((@:checkr _m ?? throw "null pointer dereference")._object._name?.__copy__());
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L247"
                                    _w._signature((stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _m ?? throw "null pointer dereference")._object._typ) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>)) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>));
                                };
                                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L249"
                                for (__25 => _typ in (@:checkr _t ?? throw "null pointer dereference")._embeddeds) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L250"
                                    if (!_first) {
                                        //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L251"
                                        _w._byte((59 : stdgo.GoUInt8));
                                    };
                                    _first = false;
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L254"
                                    _w._typ(_typ);
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L257"
                            _w._byte((125 : stdgo.GoUInt8));
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>))) {
                            var _t:stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>) : __type__.__underlying__().value);
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L260"
                            _w._string(("map[" : stdgo.GoString));
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L261"
                            _w._typ((@:checkr _t ?? throw "null pointer dereference")._key);
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L262"
                            _w._byte((93 : stdgo.GoUInt8));
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L263"
                            _w._typ((@:checkr _t ?? throw "null pointer dereference")._elem);
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>))) {
                            var _t:stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>) : __type__.__underlying__().value);
                            var _s:stdgo.GoString = ("" : stdgo.GoString);
                            var _parens:Bool = false;
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L268"
                            {
                                final __value__ = (@:checkr _t ?? throw "null pointer dereference")._dir;
                                if (__value__ == ((0 : stdgo._internal.go.types.Types_chandir.ChanDir))) {
                                    _s = ("chan " : stdgo.GoString);
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L272"
                                    {
                                        var __tmp__ = try {
                                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _t ?? throw "null pointer dereference")._elem) : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>)) : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>), _1 : true };
                                        } catch(_) {
                                            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>), _1 : false };
                                        }, _c = __tmp__._0, __0 = __tmp__._1;
                                        if ((({
                                            final value = _c;
                                            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                                        }) && ((@:checkr _c ?? throw "null pointer dereference")._dir == (2 : stdgo._internal.go.types.Types_chandir.ChanDir)) : Bool)) {
                                            _parens = true;
                                        };
                                    };
                                } else if (__value__ == ((1 : stdgo._internal.go.types.Types_chandir.ChanDir))) {
                                    _s = ("chan<- " : stdgo.GoString);
                                } else if (__value__ == ((2 : stdgo._internal.go.types.Types_chandir.ChanDir))) {
                                    _s = ("<-chan " : stdgo.GoString);
                                } else {
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L280"
                                    _w._error(("unknown channel direction" : stdgo.GoString));
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L282"
                            _w._string(_s?.__copy__());
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L283"
                            if (_parens) {
                                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L284"
                                _w._byte((40 : stdgo.GoUInt8));
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L286"
                            _w._typ((@:checkr _t ?? throw "null pointer dereference")._elem);
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L287"
                            if (_parens) {
                                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L288"
                                _w._byte((41 : stdgo.GoUInt8));
                            };
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>))) {
                            var _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__().value);
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L294"
                            if (({
                                final value = (@:checkr _w ?? throw "null pointer dereference")._ctxt;
                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                            })) {
                                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L295"
                                _w._string(stdgo._internal.strconv.Strconv_itoa.itoa((@:checkr _w ?? throw "null pointer dereference")._ctxt._getID(stdgo.Go.asInterface(_t)))?.__copy__());
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L297"
                            _w._typeName((@:checkr _t ?? throw "null pointer dereference")._obj);
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L298"
                            if (({
                                final value = (@:checkr _t ?? throw "null pointer dereference")._inst;
                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                            })) {
                                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L300"
                                _w._typeList((@:checkr (@:checkr _t ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._targs._list());
                            } else if ((({
                                final value = (@:checkr _w ?? throw "null pointer dereference")._ctxt;
                                (value == null || (value : Dynamic).__nil__);
                            }) && (_t.typeParams().len() != (0 : stdgo.GoInt)) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L303"
                                _w._tParamList(_t.typeParams()._list());
                            };
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>))) {
                            var _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>) : __type__.__underlying__().value);
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L307"
                            if (({
                                final value = (@:checkr _t ?? throw "null pointer dereference")._obj;
                                (value == null || (value : Dynamic).__nil__);
                            })) {
                                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L308"
                                _w._error(("unnamed type parameter" : stdgo.GoString));
                                //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L309"
                                break;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L311"
                            {
                                var _i = (stdgo._internal.go.types.Types__tparamindex._tparamIndex((@:checkr _w ?? throw "null pointer dereference")._tparams._list(), _t) : stdgo.GoInt);
                                if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L315"
                                    _w._string(stdgo._internal.fmt.Fmt_sprintf.sprintf(("$%d" : stdgo.GoString), stdgo.Go.toInterface(_i))?.__copy__());
                                } else {
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L317"
                                    _w._string((@:checkr (@:checkr _t ?? throw "null pointer dereference")._obj ?? throw "null pointer dereference")._object._name?.__copy__());
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L318"
                                    if (((@:checkr _w ?? throw "null pointer dereference")._tpSubscripts || ({
                                        final value = (@:checkr _w ?? throw "null pointer dereference")._ctxt;
                                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                                    }) : Bool)) {
                                        //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L319"
                                        _w._string(stdgo._internal.go.types.Types__subscript._subscript((@:checkr _t ?? throw "null pointer dereference")._id)?.__copy__());
                                    };
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L327"
                                    if ((({
                                        final value = (@:checkr _w ?? throw "null pointer dereference")._ctxt;
                                        (value == null || (value : Dynamic).__nil__);
                                    }) && (stdgo._internal.go.types.Types_universe.universe.lookup((@:checkr (@:checkr _t ?? throw "null pointer dereference")._obj ?? throw "null pointer dereference")._object._name?.__copy__()) != null) : Bool)) {
                                        //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L328"
                                        _w._string(("/* type parameter */" : stdgo.GoString));
                                    };
                                };
                            };
                        } else {
                            var _t:stdgo._internal.go.types.Types_type_.Type_ = __type__ == null ? (null : stdgo._internal.go.types.Types_type_.Type_) : cast __type__;
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L335"
                            _w._string((_t.string() : stdgo.GoString)?.__copy__());
                        };
                        break;
                    };
                };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _error( _w:stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter>, _msg:stdgo.GoString):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter> = _w;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L107"
        if (({
            final value = (@:checkr _w ?? throw "null pointer dereference")._ctxt;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L108"
            throw stdgo.Go.toInterface(_msg);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L110"
        (@:checkr _w ?? throw "null pointer dereference")._buf.writeString(((("<" : stdgo.GoString) + _msg?.__copy__() : stdgo.GoString) + (">" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _string( _w:stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter>, _s:stdgo.GoString):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter> = _w;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L103"
        (@:checkr _w ?? throw "null pointer dereference")._buf.writeString(_s?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _byte( _w:stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter>, _b:stdgo.GoUInt8):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter> = _w;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L89"
        if (({
            final value = (@:checkr _w ?? throw "null pointer dereference")._ctxt;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L90"
            if (_b == ((32 : stdgo.GoUInt8))) {
                _b = (35 : stdgo.GoUInt8);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L93"
            (@:checkr _w ?? throw "null pointer dereference")._buf.writeByte(_b);
            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L94"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L96"
        (@:checkr _w ?? throw "null pointer dereference")._buf.writeByte(_b);
        //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L97"
        if (((_b == (44 : stdgo.GoUInt8)) || (_b == (59 : stdgo.GoUInt8)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L98"
            (@:checkr _w ?? throw "null pointer dereference")._buf.writeByte((32 : stdgo.GoUInt8));
        };
    }
}
