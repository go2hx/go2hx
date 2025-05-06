package stdgo._internal.go.types;
function _computeUnionTypeSet(_check:stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>, _unionSets:stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_union.Union>, stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>>, _pos:stdgo._internal.go.token.Token_pos.Pos, _utyp:stdgo.Ref<stdgo._internal.go.types.Types_union.Union>):stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet> {
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L375"
        {
            var __tmp__ = (_unionSets != null && _unionSets.__exists__(_utyp) ? { _0 : _unionSets[_utyp], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>), _1 : false }), _tset:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet> = __tmp__._0, __0:Bool = __tmp__._1;
            if (({
                final value = _tset;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L376"
                return _tset;
            };
        };
        _unionSets[_utyp] = (stdgo.Go.setRef(({} : stdgo._internal.go.types.Types_t__typeset.T__TypeSet)) : stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>);
        var _allTerms:stdgo._internal.go.types.Types_t_termlist.T_termlist = (new stdgo._internal.go.types.Types_t_termlist.T_termlist(0, 0) : stdgo._internal.go.types.Types_t_termlist.T_termlist);
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L383"
        for (__1 => _t in (@:checkr _utyp ?? throw "null pointer dereference")._terms) {
            var _terms:stdgo._internal.go.types.Types_t_termlist.T_termlist = (new stdgo._internal.go.types.Types_t_termlist.T_termlist(0, 0) : stdgo._internal.go.types.Types_t_termlist.T_termlist);
            var _u = (stdgo._internal.go.types.Types__under._under((@:checkr _t ?? throw "null pointer dereference")._typ) : stdgo._internal.go.types.Types_type_.Type_);
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L386"
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_u) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>)) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : false };
                }, _ui = __tmp__._0, __2 = __tmp__._1;
                if (({
                    final value = _ui;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L388"
                    stdgo._internal.go.types.Types__assert._assert(!stdgo._internal.go.types.Types__istypeparam._isTypeParam((@:checkr _t ?? throw "null pointer dereference")._typ));
                    _terms = stdgo._internal.go.types.Types__computeinterfacetypeset._computeInterfaceTypeSet(_check, _pos, _ui)._terms;
                } else if (stdgo.Go.toInterface(_u) == (stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((0 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)])))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L391"
                    continue;
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L393"
                    if (((@:checkr _t ?? throw "null pointer dereference")._tilde && !stdgo._internal.go.types.Types_identical.identical((@:checkr _t ?? throw "null pointer dereference")._typ, _u) : Bool)) {
                        _t = null;
                    };
                    _terms = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>>(1, 1, ...[(({
                        final e = _t;
                        ({ _tilde : e._tilde, _typ : e._typ } : stdgo._internal.go.types.Types_t_term.T_term);
                    }))]) : stdgo._internal.go.types.Types_t_termlist.T_termlist);
                };
            };
            _allTerms = _allTerms._union(_terms);
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L403"
            if (((_allTerms.length) > (100 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L404"
                if (({
                    final value = _check;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L405"
                    _check._errorf(stdgo.Go.asInterface((_pos : stdgo._internal.go.types.Types_t_atpos.T_atPos)), (141 : stdgo._internal.internal.types.errors.Errors_code.Code), ("cannot handle more than %d union terms (implementation limitation)" : stdgo.GoString), stdgo.Go.toInterface((100 : stdgo.GoInt)));
                };
                _unionSets[_utyp] = (stdgo.Go.setRef(stdgo._internal.go.types.Types__invalidtypeset._invalidTypeSet) : stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>);
                //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L408"
                return (_unionSets[_utyp] ?? (null : stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>));
            };
        };
        (@:checkr (_unionSets[_utyp] ?? (null : stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>)) ?? throw "null pointer dereference")._terms = _allTerms;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L413"
        return (_unionSets[_utyp] ?? (null : stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>));
    }
