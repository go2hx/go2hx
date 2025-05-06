package stdgo._internal.go.types;
function newInterfaceType(_methods:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>, _embeddeds:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>):stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> {
        //"file:///home/runner/.go/go1.21.3/src/go/types/interface.go#L54"
        if (((_methods.length == (0 : stdgo.GoInt)) && (_embeddeds.length == (0 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/interface.go#L55"
            return (stdgo.Go.setRef(stdgo._internal.go.types.Types__emptyinterface._emptyInterface) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>);
        };
        var _typ = (null : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>)._newInterface();
        //"file:///home/runner/.go/go1.21.3/src/go/types/interface.go#L60"
        for (__8 => _m in _methods) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/interface.go#L61"
            {
                var _sig = (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _m ?? throw "null pointer dereference")._object._typ) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>)) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>);
                if (({
                    final value = (@:checkr _sig ?? throw "null pointer dereference")._recv;
                    (value == null || (value : Dynamic).__nil__);
                })) {
                    (@:checkr _sig ?? throw "null pointer dereference")._recv = stdgo._internal.go.types.Types_newvar.newVar((@:checkr _m ?? throw "null pointer dereference")._object._pos, (@:checkr _m ?? throw "null pointer dereference")._object._pkg, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), stdgo.Go.asInterface(_typ));
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/interface.go#L67"
        stdgo._internal.go.types.Types__sortmethods._sortMethods(_methods);
        (@:checkr _typ ?? throw "null pointer dereference")._methods = _methods;
        (@:checkr _typ ?? throw "null pointer dereference")._embeddeds = _embeddeds;
        (@:checkr _typ ?? throw "null pointer dereference")._complete = true;
        //"file:///home/runner/.go/go1.21.3/src/go/types/interface.go#L73"
        return _typ;
    }
