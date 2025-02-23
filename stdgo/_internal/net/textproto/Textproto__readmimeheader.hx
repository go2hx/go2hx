package stdgo._internal.net.textproto;
function _readMIMEHeader(_r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>, _maxMemory:stdgo.GoInt64, _maxHeaders:stdgo.GoInt64):{ var _0 : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader; var _1 : stdgo.Error; } {
        var _strs:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        var _hint = (@:check2r _r._upcomingHeaderKeys() : stdgo.GoInt);
        if ((_hint > (0 : stdgo.GoInt) : Bool)) {
            if ((_hint > (1000 : stdgo.GoInt) : Bool)) {
                _hint = (1000 : stdgo.GoInt);
            };
            _strs = (new stdgo.Slice<stdgo.GoString>((_hint : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        };
        var _m = ((({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader) : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader);
        _maxMemory = (_maxMemory - ((400i64 : stdgo.GoInt64)) : stdgo.GoInt64);
        {};
        {
            var __tmp__ = @:check2r (@:checkr _r ?? throw "null pointer dereference").r.peek((1 : stdgo.GoInt)), _buf:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err == null) && (((_buf[(0 : stdgo.GoInt)] == (32 : stdgo.GoUInt8)) || (_buf[(0 : stdgo.GoInt)] == (9 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                var __tmp__ = @:check2r _r._readLineSlice(), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : _m, _1 : _err };
                };
                return { _0 : _m, _1 : stdgo.Go.asInterface(((("malformed MIME header initial line: " : stdgo.GoString) + (_line : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo._internal.net.textproto.Textproto_protocolerror.ProtocolError)) };
            };
        };
        while (true) {
            var __tmp__ = @:check2r _r._readContinuedLineSlice(stdgo._internal.net.textproto.Textproto__musthavefieldnamecolon._mustHaveFieldNameColon), _kv:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_kv.length) == ((0 : stdgo.GoInt))) {
                return { _0 : _m, _1 : _err };
            };
            var __tmp__ = stdgo._internal.bytes.Bytes_cut.cut(_kv, stdgo._internal.net.textproto.Textproto__colon._colon), _k:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _v:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _ok:Bool = __tmp__._2;
            if (!_ok) {
                return { _0 : _m, _1 : stdgo.Go.asInterface(((("malformed MIME header line: " : stdgo.GoString) + (_kv : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo._internal.net.textproto.Textproto_protocolerror.ProtocolError)) };
            };
            var __tmp__ = stdgo._internal.net.textproto.Textproto__canonicalmimeheaderkey._canonicalMIMEHeaderKey(_k), _key:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                return { _0 : _m, _1 : stdgo.Go.asInterface(((("malformed MIME header line: " : stdgo.GoString) + (_kv : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo._internal.net.textproto.Textproto_protocolerror.ProtocolError)) };
            };
            for (__0 => _c in _v) {
                if (!stdgo._internal.net.textproto.Textproto__validheadervaluebyte._validHeaderValueByte(_c)) {
                    return { _0 : _m, _1 : stdgo.Go.asInterface(((("malformed MIME header line: " : stdgo.GoString) + (_kv : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo._internal.net.textproto.Textproto_protocolerror.ProtocolError)) };
                };
            };
            if (_key == ((stdgo.Go.str() : stdgo.GoString))) {
                continue;
            };
            _maxHeaders--;
            if ((_maxHeaders < (0i64 : stdgo.GoInt64) : Bool)) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("message too large" : stdgo.GoString)) };
            };
            var _value = ((stdgo._internal.bytes.Bytes_trimleft.trimLeft(_v, (" \t" : stdgo.GoString)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            var _vv = (_m[_key] ?? (null : stdgo.Slice<stdgo.GoString>));
            if (_vv == null) {
                _maxMemory = (_maxMemory - ((_key.length : stdgo.GoInt64)) : stdgo.GoInt64);
                _maxMemory = (_maxMemory - ((200i64 : stdgo.GoInt64)) : stdgo.GoInt64);
            };
            _maxMemory = (_maxMemory - ((_value.length : stdgo.GoInt64)) : stdgo.GoInt64);
            if ((_maxMemory < (0i64 : stdgo.GoInt64) : Bool)) {
                return { _0 : _m, _1 : stdgo._internal.errors.Errors_new_.new_(("message too large" : stdgo.GoString)) };
            };
            if (((_vv == null) && ((_strs.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                {
                    final __tmp__0 = (_strs.__slice__(0, (1 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                    final __tmp__1 = (_strs.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                    _vv = __tmp__0;
                    _strs = __tmp__1;
                };
                _vv[(0 : stdgo.GoInt)] = _value?.__copy__();
                _m[_key] = _vv;
            } else {
                _m[_key] = (_vv.__append__(_value?.__copy__()));
            };
            if (_err != null) {
                return { _0 : _m, _1 : _err };
            };
        };
    }
