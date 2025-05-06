package stdgo._internal.go.printer;
function _walkBinary(_e:stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>):{ var _0 : Bool; var _1 : Bool; var _2 : stdgo.GoInt; } {
        var _has4 = false, _has5 = false, _maxProblem = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L656"
        {
            final __value__ = (@:checkr _e ?? throw "null pointer dereference").op.precedence();
            if (__value__ == ((4 : stdgo.GoInt))) {
                _has4 = true;
            } else if (__value__ == ((5 : stdgo.GoInt))) {
                _has5 = true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L663"
        {
            final __type__ = (@:checkr _e ?? throw "null pointer dereference").x;
            {
                var __bool__ = true;
                while (__bool__) {
                    __bool__ = false;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>))) {
                        var _l:stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L665"
                        if (((@:checkr _l ?? throw "null pointer dereference").op.precedence() < (@:checkr _e ?? throw "null pointer dereference").op.precedence() : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L668"
                            break;
                        };
                        var __tmp__ = stdgo._internal.go.printer.Printer__walkbinary._walkBinary(_l), _h4:Bool = __tmp__._0, _h5:Bool = __tmp__._1, _mp:stdgo.GoInt = __tmp__._2;
                        _has4 = (_has4 || _h4 : Bool);
                        _has5 = (_has5 || _h5 : Bool);
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L673"
                        if ((_maxProblem < _mp : Bool)) {
                            _maxProblem = _mp;
                        };
                    };
                    break;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L678"
        {
            final __type__ = (@:checkr _e ?? throw "null pointer dereference").y;
            {
                var __bool__ = true;
                while (__bool__) {
                    __bool__ = false;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>))) {
                        var _r:stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L680"
                        if (((@:checkr _r ?? throw "null pointer dereference").op.precedence() <= (@:checkr _e ?? throw "null pointer dereference").op.precedence() : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L683"
                            break;
                        };
                        var __tmp__ = stdgo._internal.go.printer.Printer__walkbinary._walkBinary(_r), _h4:Bool = __tmp__._0, _h5:Bool = __tmp__._1, _mp:stdgo.GoInt = __tmp__._2;
                        _has4 = (_has4 || _h4 : Bool);
                        _has5 = (_has5 || _h5 : Bool);
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L688"
                        if ((_maxProblem < _mp : Bool)) {
                            _maxProblem = _mp;
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>))) {
                        var _r:stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L693"
                        if ((@:checkr _e ?? throw "null pointer dereference").op == ((15 : stdgo._internal.go.token.Token_token.Token))) {
                            _maxProblem = (5 : stdgo.GoInt);
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>))) {
                        var _r:stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L698"
                        {
                            final __value__ = (((@:checkr _e ?? throw "null pointer dereference").op.string() : stdgo.GoString) + ((@:checkr _r ?? throw "null pointer dereference").op.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                            if (__value__ == (("/*" : stdgo.GoString)) || __value__ == (("&&" : stdgo.GoString)) || __value__ == (("&^" : stdgo.GoString))) {
                                _maxProblem = (5 : stdgo.GoInt);
                            } else if (__value__ == (("++" : stdgo.GoString)) || __value__ == (("--" : stdgo.GoString))) {
                                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L702"
                                if ((_maxProblem < (4 : stdgo.GoInt) : Bool)) {
                                    _maxProblem = (4 : stdgo.GoInt);
                                };
                            };
                        };
                    };
                    break;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L707"
        return { _0 : _has4, _1 : _has5, _2 : _maxProblem };
    }
