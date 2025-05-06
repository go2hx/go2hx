package stdgo._internal.go.printer;
function _identListSize(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>, _maxSize:stdgo.GoInt):stdgo.GoInt {
        var _size = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L464"
        for (_i => _x in _list) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L465"
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                _size = (_size + ((((", " : stdgo.GoString) : stdgo.GoString).length)) : stdgo.GoInt);
            };
            _size = (_size + (stdgo._internal.unicode.utf8.Utf8_runecountinstring.runeCountInString((@:checkr _x ?? throw "null pointer dereference").name?.__copy__())) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L469"
            if ((_size >= _maxSize : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L470"
                break;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L473"
        return _size;
    }
