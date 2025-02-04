package stdgo._internal.encoding.pem;
function decode(_data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.encoding.pem.Pem_block.Block>; var _1 : stdgo.Slice<stdgo.GoUInt8>; } {
        var _p = (null : stdgo.Ref<stdgo._internal.encoding.pem.Pem_block.Block>), _rest = (null : stdgo.Slice<stdgo.GoUInt8>);
        _rest = _data;
        while (true) {
            if (stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_rest, (stdgo._internal.encoding.pem.Pem__pemstart._pemStart.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))) {
                _rest = (_rest.__slice__(((stdgo._internal.encoding.pem.Pem__pemstart._pemStart.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            } else {
                var __tmp__ = stdgo._internal.bytes.Bytes_cut.cut(_rest, stdgo._internal.encoding.pem.Pem__pemstart._pemStart), __0:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _after:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _ok:Bool = __tmp__._2;
                if (_ok) {
                    _rest = _after;
                } else {
                    return {
                        final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.encoding.pem.Pem_block.Block>; var _1 : stdgo.Slice<stdgo.GoUInt8>; } = { _0 : null, _1 : _data };
                        _p = __tmp__._0;
                        _rest = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            var _typeLine:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            {
                var __tmp__ = stdgo._internal.encoding.pem.Pem__getline._getLine(_rest);
                _typeLine = @:tmpset0 __tmp__._0;
                _rest = @:tmpset0 __tmp__._1;
            };
            if (!stdgo._internal.bytes.Bytes_hassuffix.hasSuffix(_typeLine, stdgo._internal.encoding.pem.Pem__pemendofline._pemEndOfLine)) {
                continue;
            };
            _typeLine = (_typeLine.__slice__((0 : stdgo.GoInt), ((_typeLine.length) - (stdgo._internal.encoding.pem.Pem__pemendofline._pemEndOfLine.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _p = (stdgo.Go.setRef(({ headers : (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
                x.__defaultValue__ = () -> ("" : stdgo.GoString);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>), type : (_typeLine : stdgo.GoString)?.__copy__() } : stdgo._internal.encoding.pem.Pem_block.Block)) : stdgo.Ref<stdgo._internal.encoding.pem.Pem_block.Block>);
            while (true) {
                if ((_rest.length) == ((0 : stdgo.GoInt))) {
                    return {
                        final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.encoding.pem.Pem_block.Block>; var _1 : stdgo.Slice<stdgo.GoUInt8>; } = { _0 : null, _1 : _data };
                        _p = __tmp__._0;
                        _rest = __tmp__._1;
                        __tmp__;
                    };
                };
                var __tmp__ = stdgo._internal.encoding.pem.Pem__getline._getLine(_rest), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _next:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1;
                var __tmp__ = stdgo._internal.bytes.Bytes_cut.cut(_line, stdgo._internal.encoding.pem.Pem__colon._colon), _key:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _val:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _ok:Bool = __tmp__._2;
                if (!_ok) {
                    break;
                };
                _key = stdgo._internal.bytes.Bytes_trimspace.trimSpace(_key);
                _val = stdgo._internal.bytes.Bytes_trimspace.trimSpace(_val);
                (@:checkr _p ?? throw "null pointer dereference").headers[(_key : stdgo.GoString)] = (_val : stdgo.GoString)?.__copy__();
                _rest = _next;
            };
            var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt);
var _endTrailerIndex = __1, _endIndex = __0;
            if ((((@:checkr _p ?? throw "null pointer dereference").headers.length == (0 : stdgo.GoInt)) && stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_rest, (stdgo._internal.encoding.pem.Pem__pemend._pemEnd.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : Bool)) {
                _endIndex = (0 : stdgo.GoInt);
                _endTrailerIndex = ((stdgo._internal.encoding.pem.Pem__pemend._pemEnd.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _endIndex = stdgo._internal.bytes.Bytes_index.index(_rest, stdgo._internal.encoding.pem.Pem__pemend._pemEnd);
                _endTrailerIndex = (_endIndex + (stdgo._internal.encoding.pem.Pem__pemend._pemEnd.length) : stdgo.GoInt);
            };
            if ((_endIndex < (0 : stdgo.GoInt) : Bool)) {
                continue;
            };
            var _endTrailer = (_rest.__slice__(_endTrailerIndex) : stdgo.Slice<stdgo.GoUInt8>);
            var _endTrailerLen = ((_typeLine.length) + (stdgo._internal.encoding.pem.Pem__pemendofline._pemEndOfLine.length) : stdgo.GoInt);
            if (((_endTrailer.length) < _endTrailerLen : Bool)) {
                continue;
            };
            var _restOfEndLine = (_endTrailer.__slice__(_endTrailerLen) : stdgo.Slice<stdgo.GoUInt8>);
            _endTrailer = (_endTrailer.__slice__(0, _endTrailerLen) : stdgo.Slice<stdgo.GoUInt8>);
            if ((!stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_endTrailer, _typeLine) || !stdgo._internal.bytes.Bytes_hassuffix.hasSuffix(_endTrailer, stdgo._internal.encoding.pem.Pem__pemendofline._pemEndOfLine) : Bool)) {
                continue;
            };
            {
                var __tmp__ = stdgo._internal.encoding.pem.Pem__getline._getLine(_restOfEndLine), _s:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __1:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1;
                if ((_s.length) != ((0 : stdgo.GoInt))) {
                    continue;
                };
            };
            var _base64Data = stdgo._internal.encoding.pem.Pem__removespacesandtabs._removeSpacesAndTabs((_rest.__slice__(0, _endIndex) : stdgo.Slice<stdgo.GoUInt8>));
            (@:checkr _p ?? throw "null pointer dereference").bytes = (new stdgo.Slice<stdgo.GoUInt8>((@:check2r stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding.decodedLen((_base64Data.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = @:check2r stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding.decode((@:checkr _p ?? throw "null pointer dereference").bytes, _base64Data), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                continue;
            };
            (@:checkr _p ?? throw "null pointer dereference").bytes = ((@:checkr _p ?? throw "null pointer dereference").bytes.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>);
            {
                var __tmp__ = stdgo._internal.encoding.pem.Pem__getline._getLine((_rest.__slice__(((_endIndex + (stdgo._internal.encoding.pem.Pem__pemend._pemEnd.length) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                _rest = @:tmpset0 __tmp__._1;
            };
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.encoding.pem.Pem_block.Block>; var _1 : stdgo.Slice<stdgo.GoUInt8>; } = { _0 : _p, _1 : _rest };
                _p = __tmp__._0;
                _rest = __tmp__._1;
                __tmp__;
            };
        };
    }
