package stdgo._internal.go.format;
function _format(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _file:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>, _sourceAdj:(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt) -> stdgo.Slice<stdgo.GoUInt8>, _indentAdj:stdgo.GoInt, _src:stdgo.Slice<stdgo.GoUInt8>, _cfg:stdgo._internal.go.printer.Printer_config.Config):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/go/format/internal.go#L102"
        if (_sourceAdj == null) {
            var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
            var _err = (_cfg.fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), _fset, stdgo.Go.toInterface(stdgo.Go.asInterface(_file))) : stdgo.Error);
            //"file:///home/runner/.go/go1.21.3/src/go/format/internal.go#L106"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/format/internal.go#L107"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/format/internal.go#L109"
            return { _0 : _buf.bytes(), _1 : (null : stdgo.Error) };
        };
        var __0 = (0 : stdgo.GoInt), __1 = (0 : stdgo.GoInt);
var _j = __1, _i = __0;
        //"file:///home/runner/.go/go1.21.3/src/go/format/internal.go#L115"
        while (((_j < (_src.length) : Bool) && stdgo._internal.go.format.Format__isspace._isSpace(_src[(_j : stdgo.GoInt)]) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/format/internal.go#L116"
            if (_src[(_j : stdgo.GoInt)] == ((10 : stdgo.GoUInt8))) {
                _i = (_j + (1 : stdgo.GoInt) : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/format/internal.go#L119"
            _j++;
        };
        var _res:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        _res = (_res.__append__(...((_src.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        var _indent = (0 : stdgo.GoInt);
        var _hasSpace = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/go/format/internal.go#L129"
        for (__0 => _b in (_src.__slice__(_i, _j) : stdgo.Slice<stdgo.GoUInt8>)) {
            //"file:///home/runner/.go/go1.21.3/src/go/format/internal.go#L130"
            {
                final __value__ = _b;
                if (__value__ == ((32 : stdgo.GoUInt8))) {
                    _hasSpace = true;
                } else if (__value__ == ((9 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/format/internal.go#L134"
                    _indent++;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/format/internal.go#L137"
        if (((_indent == (0 : stdgo.GoInt)) && _hasSpace : Bool)) {
            _indent = (1 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/format/internal.go#L140"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _indent : Bool)) {
                _res = (_res.__append__((9 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                _i++;
            };
        };
        _cfg.indent = (_indent + _indentAdj : stdgo.GoInt);
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _err = (_cfg.fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), _fset, stdgo.Go.toInterface(stdgo.Go.asInterface(_file))) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/go/format/internal.go#L149"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/format/internal.go#L150"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var _out = _sourceAdj(_buf.bytes(), _cfg.indent);
        //"file:///home/runner/.go/go1.21.3/src/go/format/internal.go#L157"
        if ((_out.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/go/format/internal.go#L158"
            return { _0 : _src, _1 : (null : stdgo.Error) };
        };
        _res = (_res.__append__(...(_out : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        _i = (_src.length);
        //"file:///home/runner/.go/go1.21.3/src/go/format/internal.go#L166"
        while (((_i > (0 : stdgo.GoInt) : Bool) && stdgo._internal.go.format.Format__isspace._isSpace(_src[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/format/internal.go#L167"
            _i--;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/format/internal.go#L169"
        return { _0 : (_res.__append__(...((_src.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
