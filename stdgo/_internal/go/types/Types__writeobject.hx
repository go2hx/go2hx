package stdgo._internal.go.types;
function _writeObject(_buf:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _obj:stdgo._internal.go.types.Types_object.Object, _qf:stdgo._internal.go.types.Types_qualifier.Qualifier):Void {
        var _tname:stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName> = (null : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>);
        var _typ = (_obj.type() : stdgo._internal.go.types.Types_type_.Type_);
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L464"
        {
            final __type__ = _obj;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_pkgname.PkgName>))) {
                var _obj:stdgo.Ref<stdgo._internal.go.types.Types_pkgname.PkgName> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pkgname.PkgName>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pkgname.PkgName>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pkgname.PkgName>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L466"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf), ("package %s" : stdgo.GoString), stdgo.Go.toInterface(_obj.name()));
                //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L467"
                {
                    var _path = ((@:checkr (@:checkr _obj ?? throw "null pointer dereference")._imported ?? throw "null pointer dereference")._path?.__copy__() : stdgo.GoString);
                    if (((_path != (stdgo.Go.str() : stdgo.GoString)) && (_path != (@:checkr _obj ?? throw "null pointer dereference")._object._name) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L468"
                        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf), (" (%q)" : stdgo.GoString), stdgo.Go.toInterface(_path));
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L470"
                return;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_const.Const>))) {
                var _obj:stdgo.Ref<stdgo._internal.go.types.Types_const.Const> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_const.Const>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_const.Const>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_const.Const>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L473"
                _buf.writeString(("const" : stdgo.GoString));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>))) {
                var _obj:stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>) : __type__.__underlying__().value);
                _tname = _obj;
                //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L477"
                _buf.writeString(("type" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L478"
                if (stdgo._internal.go.types.Types__istypeparam._isTypeParam(_typ)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L479"
                    _buf.writeString((" parameter" : stdgo.GoString));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>))) {
                var _obj:stdgo.Ref<stdgo._internal.go.types.Types_var.Var> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L483"
                if ((@:checkr _obj ?? throw "null pointer dereference")._isField) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L484"
                    _buf.writeString(("field" : stdgo.GoString));
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L486"
                    _buf.writeString(("var" : stdgo.GoString));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>))) {
                var _obj:stdgo.Ref<stdgo._internal.go.types.Types_func.Func> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L490"
                _buf.writeString(("func " : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L491"
                stdgo._internal.go.types.Types__writefuncname._writeFuncName(_buf, _obj, _qf);
                //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L492"
                if (_typ != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L493"
                    stdgo._internal.go.types.Types_writesignature.writeSignature(_buf, (stdgo.Go.typeAssert((stdgo.Go.toInterface(_typ) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>)) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>), _qf);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L495"
                return;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_label.Label>))) {
                var _obj:stdgo.Ref<stdgo._internal.go.types.Types_label.Label> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_label.Label>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_label.Label>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_label.Label>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L498"
                _buf.writeString(("label" : stdgo.GoString));
                _typ = (null : stdgo._internal.go.types.Types_type_.Type_);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_builtin.Builtin>))) {
                var _obj:stdgo.Ref<stdgo._internal.go.types.Types_builtin.Builtin> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_builtin.Builtin>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_builtin.Builtin>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_builtin.Builtin>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L502"
                _buf.writeString(("builtin" : stdgo.GoString));
                _typ = (null : stdgo._internal.go.types.Types_type_.Type_);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_nil.Nil>))) {
                var _obj:stdgo.Ref<stdgo._internal.go.types.Types_nil.Nil> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_nil.Nil>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_nil.Nil>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_nil.Nil>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L506"
                _buf.writeString(("nil" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L507"
                return;
            } else {
                var _obj:stdgo._internal.go.types.Types_object.Object = __type__ == null ? (null : stdgo._internal.go.types.Types_object.Object) : cast __type__;
                //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L510"
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("writeObject(%T)" : stdgo.GoString), stdgo.Go.toInterface(_obj)));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L513"
        _buf.writeByte((32 : stdgo.GoUInt8));
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L516"
        if ((({
            final value = _obj.pkg();
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && (stdgo.Go.toInterface(_obj.pkg()._scope.lookup(_obj.name()?.__copy__())) == stdgo.Go.toInterface(_obj)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L517"
            _buf.writeString(stdgo._internal.go.types.Types__packageprefix._packagePrefix(_obj.pkg(), _qf)?.__copy__());
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L519"
        _buf.writeString(_obj.name()?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L521"
        if (_typ == null) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L522"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L525"
        if (({
            final value = _tname;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L526"
            {
                final __type__ = _typ;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L530"
                    return;
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L532"
                    if ((_t.typeParams().len() > (0 : stdgo.GoInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L533"
                        stdgo._internal.go.types.Types__newtypewriter._newTypeWriter(_buf, _qf)._tParamList(_t.typeParams()._list());
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L536"
            if (_tname.isAlias()) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L537"
                _buf.writeString((" =" : stdgo.GoString));
            } else {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_typ) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : false };
                }, _t = __tmp__._0, __0 = __tmp__._1;
                if (({
                    final value = _t;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    _typ = (@:checkr _t ?? throw "null pointer dereference")._bound;
                } else {
                    _typ = stdgo._internal.go.types.Types__under._under(_typ);
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L549"
        if (stdgo.Go.toInterface(_obj) == (stdgo.Go.toInterface(stdgo._internal.go.types.Types__universeany._universeAny))) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L550"
            stdgo._internal.go.types.Types__assert._assert(stdgo._internal.go.types.Types_identical.identical(_typ, stdgo.Go.asInterface((stdgo.Go.setRef(stdgo._internal.go.types.Types__emptyinterface._emptyInterface) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>))));
            _typ = stdgo.Go.asInterface((stdgo.Go.setRef(stdgo._internal.go.types.Types__emptyinterface._emptyInterface) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L554"
        _buf.writeByte((32 : stdgo.GoUInt8));
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L555"
        stdgo._internal.go.types.Types_writetype.writeType(_buf, _typ, _qf);
    }
