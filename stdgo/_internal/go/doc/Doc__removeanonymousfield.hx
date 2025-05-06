package stdgo._internal.go.doc;
function _removeAnonymousField(_name:stdgo.GoString, _ityp:stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>):Void {
        var _list = (@:checkr (@:checkr _ityp ?? throw "null pointer dereference").methods ?? throw "null pointer dereference").list;
        var _j = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L84"
        for (__0 => _field in _list) {
            var _keepField = (true : Bool);
            //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L86"
            {
                var _n = ((@:checkr _field ?? throw "null pointer dereference").names.length : stdgo.GoInt);
                if (_n == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L88"
                    {
                        var __tmp__ = stdgo._internal.go.doc.Doc__basetypename._baseTypeName((@:checkr _field ?? throw "null pointer dereference").type), _fname:stdgo.GoString = __tmp__._0, __1:Bool = __tmp__._1;
                        if (_fname == (_name)) {
                            _keepField = false;
                        };
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L92"
            if (_keepField) {
                _list[(_j : stdgo.GoInt)] = _field;
                //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L94"
                _j++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L97"
        if ((_j < (_list.length) : Bool)) {
            (@:checkr _ityp ?? throw "null pointer dereference").incomplete = true;
        };
        (@:checkr (@:checkr _ityp ?? throw "null pointer dereference").methods ?? throw "null pointer dereference").list = (_list.__slice__((0 : stdgo.GoInt), _j) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>);
    }
