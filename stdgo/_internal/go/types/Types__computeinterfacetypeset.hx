package stdgo._internal.go.types;
function _computeInterfaceTypeSet(_check:stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>, _pos:stdgo._internal.go.token.Token_pos.Pos, _ityp:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>):stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet> {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L154"
            if (({
                final value = (@:checkr _ityp ?? throw "null pointer dereference")._tset;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L155"
                return (@:checkr _ityp ?? throw "null pointer dereference")._tset;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L168"
            if (!(@:checkr _ityp ?? throw "null pointer dereference")._complete) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L169"
                return (stdgo.Go.setRef(stdgo._internal.go.types.Types__toptypeset._topTypeSet) : stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L172"
            if ((({
                final value = _check;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && (@:checkr (@:checkr _check ?? throw "null pointer dereference")._conf ?? throw "null pointer dereference").__Trace : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L176"
                if ((!_pos.isValid() && (((@:checkr _ityp ?? throw "null pointer dereference")._methods.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _pos = (@:checkr (@:checkr _ityp ?? throw "null pointer dereference")._methods[(0 : stdgo.GoInt)] ?? throw "null pointer dereference")._object._pos;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L180"
                _check._trace(_pos, ("-- type set for %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ityp)));
                //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L181"
                (@:checkr _check ?? throw "null pointer dereference")._indent++;
                {
                    __deferstack__.unshift({ ran : false, f : () -> ({
                        var a = function():Void {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L183"
                            (@:checkr _check ?? throw "null pointer dereference")._indent--;
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L184"
                            _check._trace(_pos, ("=> %s " : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ityp._typeSet())));
                        };
                        a();
                    }) });
                };
            };
            (@:checkr _ityp ?? throw "null pointer dereference")._tset = (stdgo.Go.setRef(({ _terms : stdgo._internal.go.types.Types__alltermlist._allTermlist } : stdgo._internal.go.types.Types_t__typeset.T__TypeSet)) : stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>);
            var _unionSets:stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_union.Union>, stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>> = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_union.Union>, stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>>);
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L196"
            if (({
                final value = _check;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L197"
                if ((@:checkr _check ?? throw "null pointer dereference")._unionTypeSets == null) {
                    (@:checkr _check ?? throw "null pointer dereference")._unionTypeSets = ({
                        final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.types.Types_union.Union>, stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>>();
                        {};
                        cast x;
                    } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_union.Union>, stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>>);
                };
                _unionSets = (@:checkr _check ?? throw "null pointer dereference")._unionTypeSets;
            } else {
                _unionSets = ({
                    final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.types.Types_union.Union>, stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>>();
                    {};
                    cast x;
                } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_union.Union>, stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>>);
            };
            var _seen:stdgo._internal.go.types.Types_t_objset.T_objset = (null : stdgo._internal.go.types.Types_t_objset.T_objset);
            var _allMethods:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>);
            var _mpos = ({
                final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>, stdgo._internal.go.token.Token_pos.Pos>();
                {};
                cast x;
            } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>, stdgo._internal.go.token.Token_pos.Pos>);
            var _addMethod = function(_pos:stdgo._internal.go.token.Token_pos.Pos, _m:stdgo.Ref<stdgo._internal.go.types.Types_func.Func>, _explicit:Bool):Void {
                //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L222"
                {
                    var _other = (_seen._insert(stdgo.Go.asInterface(_m)) : stdgo._internal.go.types.Types_object.Object);
                    if (_other == null) {
                        _allMethods = (_allMethods.__append__(_m) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>);
                        _mpos[_m] = _pos;
                    } else if (_explicit) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L227"
                        if (({
                            final value = _check;
                            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                        })) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L228"
                            _check._errorf(stdgo.Go.asInterface((_pos : stdgo._internal.go.types.Types_t_atpos.T_atPos)), (10 : stdgo._internal.internal.types.errors.Errors_code.Code), ("duplicate method %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _m ?? throw "null pointer dereference")._object._name));
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L229"
                            _check._errorf(stdgo.Go.asInterface((_mpos[(stdgo.Go.typeAssert((stdgo.Go.toInterface(_other) : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>)) : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>)] ?? ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.types.Types_t_atpos.T_atPos)), (10 : stdgo._internal.internal.types.errors.Errors_code.Code), ("\tother declaration of %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _m ?? throw "null pointer dereference")._object._name));
                        };
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L237"
                        if (({
                            final value = _check;
                            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                        })) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L238"
                            _check._later(function():Void {
                                //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L239"
                                if ((!_check._allowVersion((@:checkr _m ?? throw "null pointer dereference")._object._pkg, stdgo.Go.asInterface((_pos : stdgo._internal.go.types.Types_t_atpos.T_atPos)), stdgo._internal.go.types.Types__go1_14._go1_14?.__copy__()) || !stdgo._internal.go.types.Types_identical.identical((@:checkr _m ?? throw "null pointer dereference")._object._typ, _other.type()) : Bool)) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L240"
                                    _check._errorf(stdgo.Go.asInterface((_pos : stdgo._internal.go.types.Types_t_atpos.T_atPos)), (10 : stdgo._internal.internal.types.errors.Errors_code.Code), ("duplicate method %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _m ?? throw "null pointer dereference")._object._name));
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L241"
                                    _check._errorf(stdgo.Go.asInterface((_mpos[(stdgo.Go.typeAssert((stdgo.Go.toInterface(_other) : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>)) : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>)] ?? ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.types.Types_t_atpos.T_atPos)), (10 : stdgo._internal.internal.types.errors.Errors_code.Code), ("\tother declaration of %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _m ?? throw "null pointer dereference")._object._name));
                                };
                            })._describef(stdgo.Go.asInterface((_pos : stdgo._internal.go.types.Types_t_atpos.T_atPos)), ("duplicate method check for %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _m ?? throw "null pointer dereference")._object._name));
                        };
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L248"
            for (__40 => _m in (@:checkr _ityp ?? throw "null pointer dereference")._methods) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L249"
                _addMethod((@:checkr _m ?? throw "null pointer dereference")._object._pos, _m, true);
            };
            var _allTerms = (stdgo._internal.go.types.Types__alltermlist._allTermlist : stdgo._internal.go.types.Types_t_termlist.T_termlist);
            var _allComparable = (false : Bool);
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L255"
            for (_i => _typ in (@:checkr _ityp ?? throw "null pointer dereference")._embeddeds) {
                var _pos:stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
                //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L260"
                if (({
                    final value = (@:checkr _ityp ?? throw "null pointer dereference")._embedPos;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    _pos = (((@:checkr _ityp ?? throw "null pointer dereference")._embedPos : stdgo.Slice<stdgo._internal.go.token.Token_pos.Pos>))[(_i : stdgo.GoInt)];
                };
                var _comparable:Bool = false;
                var _terms:stdgo._internal.go.types.Types_t_termlist.T_termlist = (new stdgo._internal.go.types.Types_t_termlist.T_termlist(0, 0) : stdgo._internal.go.types.Types_t_termlist.T_termlist);
                //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L265"
                {
                    final __type__ = stdgo._internal.go.types.Types__under._under(_typ);
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>))) {
                        var _u:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L268"
                        stdgo._internal.go.types.Types__assert._assert(!stdgo._internal.go.types.Types__istypeparam._isTypeParam(_typ));
                        var _tset = stdgo._internal.go.types.Types__computeinterfacetypeset._computeInterfaceTypeSet(_check, _pos, _u);
                        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L271"
                        if (((({
                            final value = _check;
                            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                        }) && _check._isImportedConstraint(_typ) : Bool) && !_check._verifyVersionf(stdgo.Go.asInterface((_pos : stdgo._internal.go.types.Types_t_atpos.T_atPos)), stdgo._internal.go.types.Types__go1_18._go1_18?.__copy__(), ("embedding constraint interface %s" : stdgo.GoString), stdgo.Go.toInterface(_typ)) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L272"
                            continue;
                        };
                        _comparable = (@:checkr _tset ?? throw "null pointer dereference")._comparable;
                        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L275"
                        for (__73 => _m in (@:checkr _tset ?? throw "null pointer dereference")._methods) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L276"
                            _addMethod(_pos, _m, false);
                        };
                        _terms = (@:checkr _tset ?? throw "null pointer dereference")._terms;
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>))) {
                        var _u:stdgo.Ref<stdgo._internal.go.types.Types_union.Union> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L280"
                        if ((({
                            final value = _check;
                            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                        }) && !_check._verifyVersionf(stdgo.Go.asInterface((_pos : stdgo._internal.go.types.Types_t_atpos.T_atPos)), stdgo._internal.go.types.Types__go1_18._go1_18?.__copy__(), ("embedding interface element %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_u))) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L281"
                            continue;
                        };
                        var _tset = stdgo._internal.go.types.Types__computeuniontypeset._computeUnionTypeSet(_check, _unionSets, _pos, _u);
                        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L284"
                        if (_tset == ((stdgo.Go.setRef(stdgo._internal.go.types.Types__invalidtypeset._invalidTypeSet) : stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>))) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L285"
                            continue;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L287"
                        stdgo._internal.go.types.Types__assert._assert(!(@:checkr _tset ?? throw "null pointer dereference")._comparable);
                        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L288"
                        stdgo._internal.go.types.Types__assert._assert(((@:checkr _tset ?? throw "null pointer dereference")._methods.length) == ((0 : stdgo.GoInt)));
                        _terms = (@:checkr _tset ?? throw "null pointer dereference")._terms;
                    } else {
                        var _u:stdgo._internal.go.types.Types_type_.Type_ = __type__ == null ? (null : stdgo._internal.go.types.Types_type_.Type_) : cast __type__;
                        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L291"
                        if (stdgo.Go.toInterface(_u) == (stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((0 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)])))) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L292"
                            continue;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L294"
                        if ((({
                            final value = _check;
                            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                        }) && !_check._verifyVersionf(stdgo.Go.asInterface((_pos : stdgo._internal.go.types.Types_t_atpos.T_atPos)), stdgo._internal.go.types.Types__go1_18._go1_18?.__copy__(), ("embedding non-interface type %s" : stdgo.GoString), stdgo.Go.toInterface(_typ)) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L295"
                            continue;
                        };
                        _terms = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>>(1, 1, ...[(new stdgo._internal.go.types.Types_t_term.T_term(false, _typ) : stdgo._internal.go.types.Types_t_term.T_term)]) : stdgo._internal.go.types.Types_t_termlist.T_termlist);
                    };
                };
                {
                    var __tmp__ = stdgo._internal.go.types.Types__intersecttermlists._intersectTermLists(_allTerms, _allComparable, _terms, _comparable);
                    _allTerms = @:tmpset0 __tmp__._0;
                    _allComparable = @:tmpset0 __tmp__._1;
                };
            };
            (@:checkr _ityp ?? throw "null pointer dereference")._embedPos = (null : stdgo.Ref<stdgo.Slice<stdgo._internal.go.token.Token_pos.Pos>>);
            (@:checkr (@:checkr _ityp ?? throw "null pointer dereference")._tset ?? throw "null pointer dereference")._comparable = _allComparable;
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L308"
            if ((_allMethods.length) != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L309"
                stdgo._internal.go.types.Types__sortmethods._sortMethods(_allMethods);
                (@:checkr (@:checkr _ityp ?? throw "null pointer dereference")._tset ?? throw "null pointer dereference")._methods = _allMethods;
            };
            (@:checkr (@:checkr _ityp ?? throw "null pointer dereference")._tset ?? throw "null pointer dereference")._terms = _allTerms;
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L314"
            {
                final __ret__:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet> = (@:checkr _ityp ?? throw "null pointer dereference")._tset;
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
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
                return (null : stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>);
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
                return (null : stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>);
            };
        };
    }
