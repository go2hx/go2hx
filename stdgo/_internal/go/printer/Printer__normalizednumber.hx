package stdgo._internal.go.printer;
function _normalizedNumber(_lit:stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>):stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit> {
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1098"
        if ((((@:checkr _lit ?? throw "null pointer dereference").kind != ((5 : stdgo._internal.go.token.Token_token.Token)) && (@:checkr _lit ?? throw "null pointer dereference").kind != ((6 : stdgo._internal.go.token.Token_token.Token)) : Bool) && ((@:checkr _lit ?? throw "null pointer dereference").kind != (7 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1099"
            return _lit;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1101"
        if ((((@:checkr _lit ?? throw "null pointer dereference").value.length) < (2 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1102"
            return _lit;
        };
        var _x = ((@:checkr _lit ?? throw "null pointer dereference").value?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1109"
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = (_x.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString);
                    if (__value__ == (("0X" : stdgo.GoString))) {
                        _x = (("0x" : stdgo.GoString) + (_x.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1126"
                        {
                            var _i = (stdgo._internal.strings.Strings_lastindexbyte.lastIndexByte(_x?.__copy__(), (80 : stdgo.GoUInt8)) : stdgo.GoInt);
                            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                                _x = (((_x.__slice__(0, _i) : stdgo.GoString) + ("p" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (_x.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                            };
                        };
                        break;
                    } else if (__value__ == (("0x" : stdgo.GoString))) {
                        var _i = (stdgo._internal.strings.Strings_lastindexbyte.lastIndexByte(_x?.__copy__(), (80 : stdgo.GoUInt8)) : stdgo.GoInt);
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1132"
                        if (_i == ((-1 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1133"
                            return _lit;
                        };
                        _x = (((_x.__slice__(0, _i) : stdgo.GoString) + ("p" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (_x.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        break;
                    } else if (__value__ == (("0O" : stdgo.GoString))) {
                        _x = (("0o" : stdgo.GoString) + (_x.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        break;
                    } else if (__value__ == (("0o" : stdgo.GoString))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1139"
                        return _lit;
                        break;
                    } else if (__value__ == (("0B" : stdgo.GoString))) {
                        _x = (("0b" : stdgo.GoString) + (_x.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        break;
                    } else if (__value__ == (("0b" : stdgo.GoString))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1143"
                        return _lit;
                        break;
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1112"
                        {
                            var _i = (stdgo._internal.strings.Strings_lastindexbyte.lastIndexByte(_x?.__copy__(), (69 : stdgo.GoUInt8)) : stdgo.GoInt);
                            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                                _x = (((_x.__slice__(0, _i) : stdgo.GoString) + ("e" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (_x.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1114"
                                break;
                            };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1117"
                        if (((_x[((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (105 : stdgo.GoUInt8)) && !stdgo._internal.strings.Strings_containsany.containsAny(_x?.__copy__(), (".e" : stdgo.GoString)) : Bool)) {
                            _x = stdgo._internal.strings.Strings_trimleft.trimLeft(_x?.__copy__(), ("0_" : stdgo.GoString))?.__copy__();
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1119"
                            if (_x == (("i" : stdgo.GoString))) {
                                _x = ("0i" : stdgo.GoString);
                            };
                        };
                    };
                };
                break;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1146"
        return (stdgo.Go.setRef(({ valuePos : (@:checkr _lit ?? throw "null pointer dereference").valuePos, kind : (@:checkr _lit ?? throw "null pointer dereference").kind, value : _x?.__copy__() } : stdgo._internal.go.ast.Ast_basiclit.BasicLit)) : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>);
    }
