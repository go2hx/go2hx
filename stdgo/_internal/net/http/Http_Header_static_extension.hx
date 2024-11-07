package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.Header_asInterface) class Header_static_extension {
    @:keep
    static public function _writeSubset( _h:stdgo._internal.net.http.Http_Header.Header, _w:stdgo._internal.io.Io_Writer.Writer, _exclude:stdgo.GoMap<stdgo.GoString, Bool>, _trace:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace>):stdgo.Error {
        @:recv var _h:stdgo._internal.net.http.Http_Header.Header = _h;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w) : stdgo._internal.io.Io_StringWriter.StringWriter)) : stdgo._internal.io.Io_StringWriter.StringWriter), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.io.Io_StringWriter.StringWriter), _1 : false };
        }, _ws = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _ws = stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_stringWriter.T_stringWriter(_w) : stdgo._internal.net.http.Http_T_stringWriter.T_stringWriter));
        };
        var __tmp__ = _h._sortedKeyValues(_exclude), _kvs:stdgo.Slice<stdgo._internal.net.http.Http_T_keyValues.T_keyValues> = __tmp__._0, _sorter:stdgo.Ref<stdgo._internal.net.http.Http_T_headerSorter.T_headerSorter> = __tmp__._1;
        var _formattedVals:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        for (__37692 => _kv in _kvs) {
            if (!_internal.golang_dot_org.x.net.http.httpguts.Httpguts_validHeaderFieldName.validHeaderFieldName(_kv._key?.__copy__())) {
                continue;
            };
            for (__37693 => _v in _kv._values) {
                _v = stdgo._internal.net.http.Http__headerNewlineToSpace._headerNewlineToSpace.replace(_v?.__copy__())?.__copy__();
                _v = stdgo._internal.net.textproto.Textproto_trimString.trimString(_v?.__copy__())?.__copy__();
                for (__37694 => _s in (new stdgo.Slice<stdgo.GoString>(4, 4, ...[_kv._key?.__copy__(), (": " : stdgo.GoString), _v?.__copy__(), ("\r\n" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
                    {
                        var __tmp__ = _ws.writeString(_s?.__copy__()), __37695:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            stdgo._internal.net.http.Http__headerSorterPool._headerSorterPool.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_sorter)));
                            return _err;
                        };
                    };
                };
                if (((_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) && (_trace.wroteHeaderField != null) : Bool)) {
                    _formattedVals = (_formattedVals.__append__(_v?.__copy__()));
                };
            };
            if (((_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) && (_trace.wroteHeaderField != null) : Bool)) {
                _trace.wroteHeaderField(_kv._key?.__copy__(), _formattedVals);
                _formattedVals = (null : stdgo.Slice<stdgo.GoString>);
            };
        };
        stdgo._internal.net.http.Http__headerSorterPool._headerSorterPool.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_sorter)));
        return (null : stdgo.Error);
    }
    @:keep
    static public function writeSubset( _h:stdgo._internal.net.http.Http_Header.Header, _w:stdgo._internal.io.Io_Writer.Writer, _exclude:stdgo.GoMap<stdgo.GoString, Bool>):stdgo.Error {
        @:recv var _h:stdgo._internal.net.http.Http_Header.Header = _h;
        return _h._writeSubset(_w, _exclude, null);
    }
    @:keep
    static public function _sortedKeyValues( _h:stdgo._internal.net.http.Http_Header.Header, _exclude:stdgo.GoMap<stdgo.GoString, Bool>):{ var _0 : stdgo.Slice<stdgo._internal.net.http.Http_T_keyValues.T_keyValues>; var _1 : stdgo.Ref<stdgo._internal.net.http.Http_T_headerSorter.T_headerSorter>; } {
        @:recv var _h:stdgo._internal.net.http.Http_Header.Header = _h;
        var _kvs = (null : stdgo.Slice<stdgo._internal.net.http.Http_T_keyValues.T_keyValues>), _hs = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_headerSorter.T_headerSorter>);
        _hs = (stdgo.Go.typeAssert((stdgo._internal.net.http.Http__headerSorterPool._headerSorterPool.get() : stdgo.Ref<stdgo._internal.net.http.Http_T_headerSorter.T_headerSorter>)) : stdgo.Ref<stdgo._internal.net.http.Http_T_headerSorter.T_headerSorter>);
        if ((_hs._kvs.capacity < (_h.length) : Bool)) {
            _hs._kvs = (new stdgo.Slice<stdgo._internal.net.http.Http_T_keyValues.T_keyValues>((0 : stdgo.GoInt).toBasic(), (_h.length), ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > (_h.length) ? (0 : stdgo.GoInt).toBasic() : (_h.length) : stdgo.GoInt).toBasic()) ({} : stdgo._internal.net.http.Http_T_keyValues.T_keyValues)]) : stdgo.Slice<stdgo._internal.net.http.Http_T_keyValues.T_keyValues>);
        };
        _kvs = (_hs._kvs.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.net.http.Http_T_keyValues.T_keyValues>);
        for (_k => _vv in _h) {
            if (!(_exclude[_k] ?? false)) {
                _kvs = (_kvs.__append__((new stdgo._internal.net.http.Http_T_keyValues.T_keyValues(_k?.__copy__(), _vv) : stdgo._internal.net.http.Http_T_keyValues.T_keyValues)));
            };
        };
        _hs._kvs = _kvs;
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface(_hs));
        return { _0 : _kvs, _1 : _hs };
    }
    @:keep
    static public function clone( _h:stdgo._internal.net.http.Http_Header.Header):stdgo._internal.net.http.Http_Header.Header {
        @:recv var _h:stdgo._internal.net.http.Http_Header.Header = _h;
        if (_h == null) {
            return null;
        };
        var _nv = (0 : stdgo.GoInt);
        for (__37692 => _vv in _h) {
            _nv = (_nv + ((_vv.length)) : stdgo.GoInt);
        };
        var _sv = (new stdgo.Slice<stdgo.GoString>((_nv : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _h2 = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header);
        for (_k => _vv in _h) {
            if (_vv == null) {
                _h2[_k] = (null : stdgo.Slice<stdgo.GoString>);
                continue;
            };
            var _n = (stdgo.Go.copySlice(_sv, _vv) : stdgo.GoInt);
            _h2[_k] = (_sv.__slice__(0, _n, _n) : stdgo.Slice<stdgo.GoString>);
            _sv = (_sv.__slice__(_n) : stdgo.Slice<stdgo.GoString>);
        };
        return _h2;
    }
    @:keep
    static public function _write( _h:stdgo._internal.net.http.Http_Header.Header, _w:stdgo._internal.io.Io_Writer.Writer, _trace:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace>):stdgo.Error {
        @:recv var _h:stdgo._internal.net.http.Http_Header.Header = _h;
        return _h._writeSubset(_w, (null : stdgo.GoMap<stdgo.GoString, Bool>), _trace);
    }
    @:keep
    static public function write( _h:stdgo._internal.net.http.Http_Header.Header, _w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error {
        @:recv var _h:stdgo._internal.net.http.Http_Header.Header = _h;
        return _h._write(_w, null);
    }
    @:keep
    static public function del( _h:stdgo._internal.net.http.Http_Header.Header, _key:stdgo.GoString):Void {
        @:recv var _h:stdgo._internal.net.http.Http_Header.Header = _h;
        (_h : stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader).del(_key?.__copy__());
    }
    @:keep
    static public function _has( _h:stdgo._internal.net.http.Http_Header.Header, _key:stdgo.GoString):Bool {
        @:recv var _h:stdgo._internal.net.http.Http_Header.Header = _h;
        var __tmp__ = (_h != null && _h.exists(_key?.__copy__()) ? { _0 : _h[_key?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __37692:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
        return _ok;
    }
    @:keep
    static public function _get( _h:stdgo._internal.net.http.Http_Header.Header, _key:stdgo.GoString):stdgo.GoString {
        @:recv var _h:stdgo._internal.net.http.Http_Header.Header = _h;
        {
            var _v = (_h[_key] ?? (null : stdgo.Slice<stdgo.GoString>));
            if (((_v.length) > (0 : stdgo.GoInt) : Bool)) {
                return _v[(0 : stdgo.GoInt)]?.__copy__();
            };
        };
        return stdgo.Go.str()?.__copy__();
    }
    @:keep
    static public function values( _h:stdgo._internal.net.http.Http_Header.Header, _key:stdgo.GoString):stdgo.Slice<stdgo.GoString> {
        @:recv var _h:stdgo._internal.net.http.Http_Header.Header = _h;
        return (_h : stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader).values(_key?.__copy__());
    }
    @:keep
    static public function get( _h:stdgo._internal.net.http.Http_Header.Header, _key:stdgo.GoString):stdgo.GoString {
        @:recv var _h:stdgo._internal.net.http.Http_Header.Header = _h;
        return (_h : stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader).get(_key?.__copy__())?.__copy__();
    }
    @:keep
    static public function set( _h:stdgo._internal.net.http.Http_Header.Header, _key:stdgo.GoString, _value:stdgo.GoString):Void {
        @:recv var _h:stdgo._internal.net.http.Http_Header.Header = _h;
        (_h : stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader).set(_key?.__copy__(), _value?.__copy__());
    }
    @:keep
    static public function add( _h:stdgo._internal.net.http.Http_Header.Header, _key:stdgo.GoString, _value:stdgo.GoString):Void {
        @:recv var _h:stdgo._internal.net.http.Http_Header.Header = _h;
        (_h : stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader).add(_key?.__copy__(), _value?.__copy__());
    }
}
