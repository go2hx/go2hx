package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
@:keep @:allow(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage.T_header_asInterface) class T_header_static_extension {
    @:keep
    static public function _header( _h:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_header.T_header>):_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Header.Header {
        @:recv var _h:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_header.T_header> = _h;
        return ({ id : _h._id, response : ((_h._bits & (32768 : stdgo.GoUInt16) : stdgo.GoUInt16)) != ((0 : stdgo.GoUInt16)), opCode : (((_h._bits >> (11i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_OpCode.OpCode) & (15 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_OpCode.OpCode) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_OpCode.OpCode), authoritative : ((_h._bits & (1024 : stdgo.GoUInt16) : stdgo.GoUInt16)) != ((0 : stdgo.GoUInt16)), truncated : ((_h._bits & (512 : stdgo.GoUInt16) : stdgo.GoUInt16)) != ((0 : stdgo.GoUInt16)), recursionDesired : ((_h._bits & (256 : stdgo.GoUInt16) : stdgo.GoUInt16)) != ((0 : stdgo.GoUInt16)), recursionAvailable : ((_h._bits & (128 : stdgo.GoUInt16) : stdgo.GoUInt16)) != ((0 : stdgo.GoUInt16)), authenticData : ((_h._bits & (32 : stdgo.GoUInt16) : stdgo.GoUInt16)) != ((0 : stdgo.GoUInt16)), checkingDisabled : ((_h._bits & (16 : stdgo.GoUInt16) : stdgo.GoUInt16)) != ((0 : stdgo.GoUInt16)), rcode : ((_h._bits & (15 : stdgo.GoUInt16) : stdgo.GoUInt16) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_RCode.RCode) } : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Header.Header);
    }
    @:keep
    static public function _unpack( _h:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_header.T_header>, _msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _h:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_header.T_header> = _h;
        var _newOff = (_off : stdgo.GoInt);
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            {
                var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackUint16._unpackUint16(_msg, _newOff);
                _h._id = __tmp__._0;
                _newOff = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : _off, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("id" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
            };
        };
        {
            {
                var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackUint16._unpackUint16(_msg, _newOff);
                _h._bits = __tmp__._0;
                _newOff = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : _off, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("bits" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
            };
        };
        {
            {
                var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackUint16._unpackUint16(_msg, _newOff);
                _h._questions = __tmp__._0;
                _newOff = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : _off, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("questions" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
            };
        };
        {
            {
                var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackUint16._unpackUint16(_msg, _newOff);
                _h._answers = __tmp__._0;
                _newOff = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : _off, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("answers" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
            };
        };
        {
            {
                var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackUint16._unpackUint16(_msg, _newOff);
                _h._authorities = __tmp__._0;
                _newOff = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : _off, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("authorities" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
            };
        };
        {
            {
                var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackUint16._unpackUint16(_msg, _newOff);
                _h._additionals = __tmp__._0;
                _newOff = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : _off, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("additionals" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
            };
        };
        return { _0 : _newOff, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _pack( _h:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_header.T_header>, _msg:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _h:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_header.T_header> = _h;
        _msg = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__packUint16._packUint16(_msg, _h._id);
        _msg = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__packUint16._packUint16(_msg, _h._bits);
        _msg = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__packUint16._packUint16(_msg, _h._questions);
        _msg = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__packUint16._packUint16(_msg, _h._answers);
        _msg = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__packUint16._packUint16(_msg, _h._authorities);
        return _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__packUint16._packUint16(_msg, _h._additionals);
    }
    @:keep
    static public function _count( _h:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_header.T_header>, _sec:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section):stdgo.GoUInt16 {
        @:recv var _h:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_header.T_header> = _h;
        {
            final __value__ = _sec;
            if (__value__ == ((2 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section))) {
                return _h._questions;
            } else if (__value__ == ((3 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section))) {
                return _h._answers;
            } else if (__value__ == ((4 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section))) {
                return _h._authorities;
            } else if (__value__ == ((5 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section))) {
                return _h._additionals;
            };
        };
        return (0 : stdgo.GoUInt16);
    }
}
