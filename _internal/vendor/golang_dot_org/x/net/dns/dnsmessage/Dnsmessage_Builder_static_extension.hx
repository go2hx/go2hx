package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
@:keep @:allow(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage.Builder_asInterface) class Builder_static_extension {
    @:keep
    static public function finish( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder> = _b;
        if ((_b._section < (1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_errNotStarted.errNotStarted };
        };
        _b._section = (6 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section);
        _b._header._pack((_b._msg.__slice__(_b._start, _b._start) : stdgo.Slice<stdgo.GoUInt8>));
        return { _0 : _b._msg, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function unknownResource( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder>, _h:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader, _r:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_UnknownResource.UnknownResource):stdgo.Error {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder> = _b;
        {
            var _err = (_b._checkResourceSection() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _h.type = _r._realType();
        var __tmp__ = _h._pack(_b._msg, _b._compression, _b._start), _msg:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _lenOff:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("ResourceHeader" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>));
        };
        var _preLen = (_msg.length : stdgo.GoInt);
        {
            {
                var __tmp__ = _r._pack(_msg, _b._compression, _b._start);
                _msg = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("UnknownResource body" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>));
            };
        };
        {
            var _err = (_h._fixLen(_msg, _lenOff, _preLen) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (_b._incrementSectionCount() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _b._msg = _msg;
        return (null : stdgo.Error);
    }
    @:keep
    static public function optresource( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder>, _h:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader, _r:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_OPTResource.OPTResource):stdgo.Error {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder> = _b;
        {
            var _err = (_b._checkResourceSection() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _h.type = _r._realType();
        var __tmp__ = _h._pack(_b._msg, _b._compression, _b._start), _msg:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _lenOff:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("ResourceHeader" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>));
        };
        var _preLen = (_msg.length : stdgo.GoInt);
        {
            {
                var __tmp__ = _r._pack(_msg, _b._compression, _b._start);
                _msg = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("OPTResource body" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>));
            };
        };
        {
            var _err = (_h._fixLen(_msg, _lenOff, _preLen) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (_b._incrementSectionCount() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _b._msg = _msg;
        return (null : stdgo.Error);
    }
    @:keep
    static public function aaaaresource( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder>, _h:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader, _r:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_AAAAResource.AAAAResource):stdgo.Error {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder> = _b;
        {
            var _err = (_b._checkResourceSection() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _h.type = _r._realType();
        var __tmp__ = _h._pack(_b._msg, _b._compression, _b._start), _msg:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _lenOff:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("ResourceHeader" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>));
        };
        var _preLen = (_msg.length : stdgo.GoInt);
        {
            {
                var __tmp__ = _r._pack(_msg, _b._compression, _b._start);
                _msg = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("AAAAResource body" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>));
            };
        };
        {
            var _err = (_h._fixLen(_msg, _lenOff, _preLen) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (_b._incrementSectionCount() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _b._msg = _msg;
        return (null : stdgo.Error);
    }
    @:keep
    static public function aresource( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder>, _h:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader, _r:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_AResource.AResource):stdgo.Error {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder> = _b;
        {
            var _err = (_b._checkResourceSection() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _h.type = _r._realType();
        var __tmp__ = _h._pack(_b._msg, _b._compression, _b._start), _msg:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _lenOff:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("ResourceHeader" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>));
        };
        var _preLen = (_msg.length : stdgo.GoInt);
        {
            {
                var __tmp__ = _r._pack(_msg, _b._compression, _b._start);
                _msg = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("AResource body" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>));
            };
        };
        {
            var _err = (_h._fixLen(_msg, _lenOff, _preLen) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (_b._incrementSectionCount() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _b._msg = _msg;
        return (null : stdgo.Error);
    }
    @:keep
    static public function srvresource( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder>, _h:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader, _r:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SRVResource.SRVResource):stdgo.Error {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder> = _b;
        {
            var _err = (_b._checkResourceSection() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _h.type = _r._realType();
        var __tmp__ = _h._pack(_b._msg, _b._compression, _b._start), _msg:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _lenOff:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("ResourceHeader" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>));
        };
        var _preLen = (_msg.length : stdgo.GoInt);
        {
            {
                var __tmp__ = _r._pack(_msg, _b._compression, _b._start);
                _msg = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("SRVResource body" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>));
            };
        };
        {
            var _err = (_h._fixLen(_msg, _lenOff, _preLen) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (_b._incrementSectionCount() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _b._msg = _msg;
        return (null : stdgo.Error);
    }
    @:keep
    static public function txtresource( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder>, _h:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader, _r:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_TXTResource.TXTResource):stdgo.Error {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder> = _b;
        {
            var _err = (_b._checkResourceSection() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _h.type = _r._realType();
        var __tmp__ = _h._pack(_b._msg, _b._compression, _b._start), _msg:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _lenOff:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("ResourceHeader" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>));
        };
        var _preLen = (_msg.length : stdgo.GoInt);
        {
            {
                var __tmp__ = _r._pack(_msg, _b._compression, _b._start);
                _msg = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("TXTResource body" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>));
            };
        };
        {
            var _err = (_h._fixLen(_msg, _lenOff, _preLen) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (_b._incrementSectionCount() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _b._msg = _msg;
        return (null : stdgo.Error);
    }
    @:keep
    static public function soaresource( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder>, _h:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader, _r:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SOAResource.SOAResource):stdgo.Error {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder> = _b;
        {
            var _err = (_b._checkResourceSection() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _h.type = _r._realType();
        var __tmp__ = _h._pack(_b._msg, _b._compression, _b._start), _msg:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _lenOff:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("ResourceHeader" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>));
        };
        var _preLen = (_msg.length : stdgo.GoInt);
        {
            {
                var __tmp__ = _r._pack(_msg, _b._compression, _b._start);
                _msg = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("SOAResource body" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>));
            };
        };
        {
            var _err = (_h._fixLen(_msg, _lenOff, _preLen) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (_b._incrementSectionCount() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _b._msg = _msg;
        return (null : stdgo.Error);
    }
    @:keep
    static public function ptrresource( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder>, _h:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader, _r:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_PTRResource.PTRResource):stdgo.Error {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder> = _b;
        {
            var _err = (_b._checkResourceSection() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _h.type = _r._realType();
        var __tmp__ = _h._pack(_b._msg, _b._compression, _b._start), _msg:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _lenOff:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("ResourceHeader" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>));
        };
        var _preLen = (_msg.length : stdgo.GoInt);
        {
            {
                var __tmp__ = _r._pack(_msg, _b._compression, _b._start);
                _msg = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("PTRResource body" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>));
            };
        };
        {
            var _err = (_h._fixLen(_msg, _lenOff, _preLen) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (_b._incrementSectionCount() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _b._msg = _msg;
        return (null : stdgo.Error);
    }
    @:keep
    static public function nsresource( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder>, _h:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader, _r:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_NSResource.NSResource):stdgo.Error {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder> = _b;
        {
            var _err = (_b._checkResourceSection() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _h.type = _r._realType();
        var __tmp__ = _h._pack(_b._msg, _b._compression, _b._start), _msg:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _lenOff:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("ResourceHeader" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>));
        };
        var _preLen = (_msg.length : stdgo.GoInt);
        {
            {
                var __tmp__ = _r._pack(_msg, _b._compression, _b._start);
                _msg = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("NSResource body" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>));
            };
        };
        {
            var _err = (_h._fixLen(_msg, _lenOff, _preLen) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (_b._incrementSectionCount() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _b._msg = _msg;
        return (null : stdgo.Error);
    }
    @:keep
    static public function mxresource( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder>, _h:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader, _r:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_MXResource.MXResource):stdgo.Error {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder> = _b;
        {
            var _err = (_b._checkResourceSection() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _h.type = _r._realType();
        var __tmp__ = _h._pack(_b._msg, _b._compression, _b._start), _msg:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _lenOff:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("ResourceHeader" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>));
        };
        var _preLen = (_msg.length : stdgo.GoInt);
        {
            {
                var __tmp__ = _r._pack(_msg, _b._compression, _b._start);
                _msg = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("MXResource body" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>));
            };
        };
        {
            var _err = (_h._fixLen(_msg, _lenOff, _preLen) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (_b._incrementSectionCount() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _b._msg = _msg;
        return (null : stdgo.Error);
    }
    @:keep
    static public function cnameresource( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder>, _h:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader, _r:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_CNAMEResource.CNAMEResource):stdgo.Error {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder> = _b;
        {
            var _err = (_b._checkResourceSection() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _h.type = _r._realType();
        var __tmp__ = _h._pack(_b._msg, _b._compression, _b._start), _msg:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _lenOff:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("ResourceHeader" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>));
        };
        var _preLen = (_msg.length : stdgo.GoInt);
        {
            {
                var __tmp__ = _r._pack(_msg, _b._compression, _b._start);
                _msg = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("CNAMEResource body" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>));
            };
        };
        {
            var _err = (_h._fixLen(_msg, _lenOff, _preLen) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (_b._incrementSectionCount() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _b._msg = _msg;
        return (null : stdgo.Error);
    }
    @:keep
    static public function _checkResourceSection( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder>):stdgo.Error {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder> = _b;
        if ((_b._section < (3 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section) : Bool)) {
            return _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_errNotStarted.errNotStarted;
        };
        if ((_b._section > (5 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section) : Bool)) {
            return _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_errSectionDone.errSectionDone;
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function question( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder>, _q:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Question.Question):stdgo.Error {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder> = _b;
        if ((_b._section < (2 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section) : Bool)) {
            return _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_errNotStarted.errNotStarted;
        };
        if ((_b._section > (2 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section) : Bool)) {
            return _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_errSectionDone.errSectionDone;
        };
        var __tmp__ = _q._pack(_b._msg, _b._compression, _b._start), _msg:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        {
            var _err = (_b._incrementSectionCount() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _b._msg = _msg;
        return (null : stdgo.Error);
    }
    @:keep
    static public function _incrementSectionCount( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder>):stdgo.Error {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder> = _b;
        var _count:stdgo.Pointer<stdgo.GoUInt16> = (null : stdgo.Pointer<stdgo.GoUInt16>);
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            final __value__ = _b._section;
            if (__value__ == ((2 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section))) {
                _count = stdgo.Go.pointer(_b._header._questions);
                _err = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__errTooManyQuestions._errTooManyQuestions;
            } else if (__value__ == ((3 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section))) {
                _count = stdgo.Go.pointer(_b._header._answers);
                _err = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__errTooManyAnswers._errTooManyAnswers;
            } else if (__value__ == ((4 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section))) {
                _count = stdgo.Go.pointer(_b._header._authorities);
                _err = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__errTooManyAuthorities._errTooManyAuthorities;
            } else if (__value__ == ((5 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section))) {
                _count = stdgo.Go.pointer(_b._header._additionals);
                _err = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__errTooManyAdditionals._errTooManyAdditionals;
            };
        };
        if (_count.value == ((65535 : stdgo.GoUInt16))) {
            return _err;
        };
        _count.value++;
        return (null : stdgo.Error);
    }
    @:keep
    static public function startAdditionals( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder>):stdgo.Error {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder> = _b;
        {
            var _err = (_b._startCheck((5 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section)) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _b._section = (5 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section);
        return (null : stdgo.Error);
    }
    @:keep
    static public function startAuthorities( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder>):stdgo.Error {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder> = _b;
        {
            var _err = (_b._startCheck((4 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section)) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _b._section = (4 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section);
        return (null : stdgo.Error);
    }
    @:keep
    static public function startAnswers( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder>):stdgo.Error {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder> = _b;
        {
            var _err = (_b._startCheck((3 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section)) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _b._section = (3 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section);
        return (null : stdgo.Error);
    }
    @:keep
    static public function startQuestions( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder>):stdgo.Error {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder> = _b;
        {
            var _err = (_b._startCheck((2 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section)) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _b._section = (2 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section);
        return (null : stdgo.Error);
    }
    @:keep
    static public function _startCheck( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder>, _s:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section):stdgo.Error {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder> = _b;
        if ((_b._section <= (0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section) : Bool)) {
            return _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_errNotStarted.errNotStarted;
        };
        if ((_b._section > _s : Bool)) {
            return _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_errSectionDone.errSectionDone;
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function enableCompression( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder>):Void {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder> = _b;
        _b._compression = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
    }
}
