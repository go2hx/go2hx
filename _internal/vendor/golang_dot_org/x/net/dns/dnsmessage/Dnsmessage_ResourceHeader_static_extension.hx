package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
@:keep @:allow(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage.ResourceHeader_asInterface) class ResourceHeader_static_extension {
    @:keep
    static public function extendedRCode( _h:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader>, _rcode:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_RCode.RCode):_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_RCode.RCode {
        @:recv var _h:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader> = _h;
        if ((_h.ttl & (16711680u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
            return ((((_h.ttl >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) << (4i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_RCode.RCode) | _rcode : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_RCode.RCode);
        };
        return _rcode;
    }
    @:keep
    static public function dnssecallowed( _h:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader>):Bool {
        @:recv var _h:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader> = _h;
        return (_h.ttl & (16744448u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((32768u32 : stdgo.GoUInt32));
    }
    @:keep
    static public function setEDNS0( _h:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader>, _udpPayloadLen:stdgo.GoInt, _extRCode:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_RCode.RCode, _dnssecOK:Bool):stdgo.Error {
        @:recv var _h:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader> = _h;
        _h.name = ({ data : (new stdgo.GoArray<stdgo.GoUInt8>(255, 255, ...[(46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__(), length_ : (1 : stdgo.GoUInt8) } : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name);
        _h.type = (41 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_);
        _h.class_ = (_udpPayloadLen : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Class_.Class_);
        _h.ttl = (((_extRCode : stdgo.GoUInt32) >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
        if (_dnssecOK) {
            _h.ttl = (_h.ttl | ((32768u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _fixLen( _h:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader>, _msg:stdgo.Slice<stdgo.GoUInt8>, _lenOff:stdgo.GoInt, _preLen:stdgo.GoInt):stdgo.Error {
        @:recv var _h:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader> = _h;
        var _conLen = ((_msg.length) - _preLen : stdgo.GoInt);
        if ((_conLen > ((65535 : stdgo.GoUInt16) : stdgo.GoInt) : Bool)) {
            return _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__errResTooLong._errResTooLong;
        };
        _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__packUint16._packUint16((_msg.__slice__(_lenOff, _lenOff) : stdgo.Slice<stdgo.GoUInt8>), (_conLen : stdgo.GoUInt16));
        _h.length_ = (_conLen : stdgo.GoUInt16);
        return (null : stdgo.Error);
    }
    @:keep
    static public function _unpack( _h:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader>, _msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _h:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader> = _h;
        var _newOff = (_off : stdgo.GoInt);
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            {
                var __tmp__ = _h.name._unpack(_msg, _newOff);
                _newOff = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _off, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("Name" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
            };
        };
        {
            {
                var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackType._unpackType(_msg, _newOff);
                _h.type = __tmp__._0;
                _newOff = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : _off, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("Type" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
            };
        };
        {
            {
                var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackClass._unpackClass(_msg, _newOff);
                _h.class_ = __tmp__._0;
                _newOff = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : _off, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("Class" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
            };
        };
        {
            {
                var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackUint32._unpackUint32(_msg, _newOff);
                _h.ttl = __tmp__._0;
                _newOff = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : _off, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("TTL" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
            };
        };
        {
            {
                var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackUint16._unpackUint16(_msg, _newOff);
                _h.length_ = __tmp__._0;
                _newOff = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : _off, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("Length" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
            };
        };
        return { _0 : _newOff, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _pack( _h:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader>, _oldMsg:stdgo.Slice<stdgo.GoUInt8>, _compression:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, _compressionOff:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _h:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader> = _h;
        var _msg = (null : stdgo.Slice<stdgo.GoUInt8>), _lenOff = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _msg = _oldMsg;
        {
            {
                var __tmp__ = _h.name._pack(_msg, _compression, _compressionOff);
                _msg = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _oldMsg, _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("Name" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
            };
        };
        _msg = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__packType._packType(_msg, _h.type);
        _msg = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__packClass._packClass(_msg, _h.class_);
        _msg = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__packUint32._packUint32(_msg, _h.ttl);
        _lenOff = (_msg.length);
        _msg = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__packUint16._packUint16(_msg, _h.length_);
        return { _0 : _msg, _1 : _lenOff, _2 : (null : stdgo.Error) };
    }
    @:keep
    static public function goString( _h:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader>):stdgo.GoString {
        @:recv var _h:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader> = _h;
        return ((((((((((((((("dnsmessage.ResourceHeader{Name: " : stdgo.GoString) + _h.name.goString()?.__copy__() : stdgo.GoString) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("Type: " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _h.type.goString()?.__copy__() : stdgo.GoString) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("Class: " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _h.class_.goString()?.__copy__() : stdgo.GoString) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("TTL: " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__printUint32._printUint32(_h.ttl)?.__copy__() : stdgo.GoString) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("Length: " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__printUint16._printUint16(_h.length_)?.__copy__() : stdgo.GoString) + ("}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
