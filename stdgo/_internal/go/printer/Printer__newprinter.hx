package stdgo._internal.go.printer;
function _newPrinter(_cfg:stdgo.Ref<stdgo._internal.go.printer.Printer_config.Config>, _fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _nodeSizes:stdgo.GoMap<stdgo._internal.go.ast.Ast_node.Node, stdgo.GoInt>):stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> {
        var _p = (stdgo.Go.typeAssert((stdgo._internal.go.printer.Printer__printerpool._printerPool.get() : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>)) : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        {
            var __tmp__ = ({ config : (_cfg : stdgo._internal.go.printer.Printer_config.Config)?.__copy__(), _fset : _fset, _pos : ({ line : (1 : stdgo.GoInt), column : (1 : stdgo.GoInt) } : stdgo._internal.go.token.Token_position.Position), _out : ({ line : (1 : stdgo.GoInt), column : (1 : stdgo.GoInt) } : stdgo._internal.go.token.Token_position.Position), _wsbuf : ((@:checkr _p ?? throw "null pointer dereference")._wsbuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace>), _nodeSizes : _nodeSizes, _cachedPos : (-1 : stdgo._internal.go.token.Token_pos.Pos), _output : ((@:checkr _p ?? throw "null pointer dereference")._output.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.go.printer.Printer_t_printer.T_printer);
            var x = (_p : stdgo._internal.go.printer.Printer_t_printer.T_printer);
            x.config = __tmp__?.config;
            x._fset = __tmp__?._fset;
            x._output = __tmp__?._output;
            x._indent = __tmp__?._indent;
            x._level = __tmp__?._level;
            x._mode = __tmp__?._mode;
            x._endAlignment = __tmp__?._endAlignment;
            x._impliedSemi = __tmp__?._impliedSemi;
            x._lastTok = __tmp__?._lastTok;
            x._prevOpen = __tmp__?._prevOpen;
            x._wsbuf = __tmp__?._wsbuf;
            x._goBuild = __tmp__?._goBuild;
            x._plusBuild = __tmp__?._plusBuild;
            x._pos = __tmp__?._pos;
            x._out = __tmp__?._out;
            x._last = __tmp__?._last;
            x._linePtr = __tmp__?._linePtr;
            x._sourcePosErr = __tmp__?._sourcePosErr;
            x._comments = __tmp__?._comments;
            x._useNodeComments = __tmp__?._useNodeComments;
            x._commentInfo = __tmp__?._commentInfo;
            x._nodeSizes = __tmp__?._nodeSizes;
            x._cachedPos = __tmp__?._cachedPos;
            x._cachedLine = __tmp__?._cachedLine;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1350"
        return _p;
    }
