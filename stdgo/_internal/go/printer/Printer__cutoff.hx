package stdgo._internal.go.printer;
function _cutoff(_e:stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>, _depth:stdgo.GoInt):stdgo.GoInt {
        var __tmp__ = stdgo._internal.go.printer.Printer__walkbinary._walkBinary(_e), _has4:Bool = __tmp__._0, _has5:Bool = __tmp__._1, _maxProblem:stdgo.GoInt = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L712"
        if ((_maxProblem > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L713"
            return (_maxProblem + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L715"
        if ((_has4 && _has5 : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L716"
            if (_depth == ((1 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L717"
                return (5 : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L719"
            return (4 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L721"
        if (_depth == ((1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L722"
            return (6 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L724"
        return (4 : stdgo.GoInt);
    }
