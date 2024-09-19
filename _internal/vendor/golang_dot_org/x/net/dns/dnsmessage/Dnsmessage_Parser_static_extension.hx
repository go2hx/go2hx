package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
@:keep @:allow(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage.Parser_asInterface) class Parser_static_extension {
    @:keep
    static public function unknownResource( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser>):{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_UnknownResource.UnknownResource; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser> = _p;
        if (!_p._resHeaderValid) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_UnknownResource.UnknownResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_UnknownResource.UnknownResource), _1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_errNotStarted.errNotStarted };
        };
        var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackUnknownResource._unpackUnknownResource(_p._resHeader.type, _p._msg, _p._off, _p._resHeader.length_), _r:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_UnknownResource.UnknownResource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_UnknownResource.UnknownResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_UnknownResource.UnknownResource), _1 : _err };
        };
        _p._off = (_p._off + ((_p._resHeader.length_ : stdgo.GoInt)) : stdgo.GoInt);
        _p._resHeaderValid = false;
        _p._index++;
        return { _0 : _r?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function optresource( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser>):{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_OPTResource.OPTResource; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser> = _p;
        if ((!_p._resHeaderValid || (_p._resHeader.type != (41 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_)) : Bool)) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_OPTResource.OPTResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_OPTResource.OPTResource), _1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_errNotStarted.errNotStarted };
        };
        var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackOPTResource._unpackOPTResource(_p._msg, _p._off, _p._resHeader.length_), _r:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_OPTResource.OPTResource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_OPTResource.OPTResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_OPTResource.OPTResource), _1 : _err };
        };
        _p._off = (_p._off + ((_p._resHeader.length_ : stdgo.GoInt)) : stdgo.GoInt);
        _p._resHeaderValid = false;
        _p._index++;
        return { _0 : _r?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function aaaaresource( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser>):{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_AAAAResource.AAAAResource; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser> = _p;
        if ((!_p._resHeaderValid || (_p._resHeader.type != (28 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_)) : Bool)) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_AAAAResource.AAAAResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_AAAAResource.AAAAResource), _1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_errNotStarted.errNotStarted };
        };
        var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackAAAAResource._unpackAAAAResource(_p._msg, _p._off), _r:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_AAAAResource.AAAAResource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_AAAAResource.AAAAResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_AAAAResource.AAAAResource), _1 : _err };
        };
        _p._off = (_p._off + ((_p._resHeader.length_ : stdgo.GoInt)) : stdgo.GoInt);
        _p._resHeaderValid = false;
        _p._index++;
        return { _0 : _r?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function aresource( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser>):{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_AResource.AResource; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser> = _p;
        if ((!_p._resHeaderValid || (_p._resHeader.type != (1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_)) : Bool)) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_AResource.AResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_AResource.AResource), _1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_errNotStarted.errNotStarted };
        };
        var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackAResource._unpackAResource(_p._msg, _p._off), _r:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_AResource.AResource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_AResource.AResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_AResource.AResource), _1 : _err };
        };
        _p._off = (_p._off + ((_p._resHeader.length_ : stdgo.GoInt)) : stdgo.GoInt);
        _p._resHeaderValid = false;
        _p._index++;
        return { _0 : _r?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function srvresource( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser>):{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SRVResource.SRVResource; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser> = _p;
        if ((!_p._resHeaderValid || (_p._resHeader.type != (33 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_)) : Bool)) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SRVResource.SRVResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SRVResource.SRVResource), _1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_errNotStarted.errNotStarted };
        };
        var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackSRVResource._unpackSRVResource(_p._msg, _p._off), _r:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SRVResource.SRVResource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SRVResource.SRVResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SRVResource.SRVResource), _1 : _err };
        };
        _p._off = (_p._off + ((_p._resHeader.length_ : stdgo.GoInt)) : stdgo.GoInt);
        _p._resHeaderValid = false;
        _p._index++;
        return { _0 : _r?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function txtresource( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser>):{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_TXTResource.TXTResource; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser> = _p;
        if ((!_p._resHeaderValid || (_p._resHeader.type != (16 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_)) : Bool)) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_TXTResource.TXTResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_TXTResource.TXTResource), _1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_errNotStarted.errNotStarted };
        };
        var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackTXTResource._unpackTXTResource(_p._msg, _p._off, _p._resHeader.length_), _r:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_TXTResource.TXTResource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_TXTResource.TXTResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_TXTResource.TXTResource), _1 : _err };
        };
        _p._off = (_p._off + ((_p._resHeader.length_ : stdgo.GoInt)) : stdgo.GoInt);
        _p._resHeaderValid = false;
        _p._index++;
        return { _0 : _r?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function soaresource( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser>):{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SOAResource.SOAResource; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser> = _p;
        if ((!_p._resHeaderValid || (_p._resHeader.type != (6 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_)) : Bool)) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SOAResource.SOAResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SOAResource.SOAResource), _1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_errNotStarted.errNotStarted };
        };
        var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackSOAResource._unpackSOAResource(_p._msg, _p._off), _r:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SOAResource.SOAResource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SOAResource.SOAResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SOAResource.SOAResource), _1 : _err };
        };
        _p._off = (_p._off + ((_p._resHeader.length_ : stdgo.GoInt)) : stdgo.GoInt);
        _p._resHeaderValid = false;
        _p._index++;
        return { _0 : _r?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function ptrresource( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser>):{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_PTRResource.PTRResource; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser> = _p;
        if ((!_p._resHeaderValid || (_p._resHeader.type != (12 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_)) : Bool)) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_PTRResource.PTRResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_PTRResource.PTRResource), _1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_errNotStarted.errNotStarted };
        };
        var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackPTRResource._unpackPTRResource(_p._msg, _p._off), _r:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_PTRResource.PTRResource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_PTRResource.PTRResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_PTRResource.PTRResource), _1 : _err };
        };
        _p._off = (_p._off + ((_p._resHeader.length_ : stdgo.GoInt)) : stdgo.GoInt);
        _p._resHeaderValid = false;
        _p._index++;
        return { _0 : _r?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function nsresource( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser>):{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_NSResource.NSResource; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser> = _p;
        if ((!_p._resHeaderValid || (_p._resHeader.type != (2 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_)) : Bool)) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_NSResource.NSResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_NSResource.NSResource), _1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_errNotStarted.errNotStarted };
        };
        var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackNSResource._unpackNSResource(_p._msg, _p._off), _r:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_NSResource.NSResource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_NSResource.NSResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_NSResource.NSResource), _1 : _err };
        };
        _p._off = (_p._off + ((_p._resHeader.length_ : stdgo.GoInt)) : stdgo.GoInt);
        _p._resHeaderValid = false;
        _p._index++;
        return { _0 : _r?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function mxresource( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser>):{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_MXResource.MXResource; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser> = _p;
        if ((!_p._resHeaderValid || (_p._resHeader.type != (15 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_)) : Bool)) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_MXResource.MXResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_MXResource.MXResource), _1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_errNotStarted.errNotStarted };
        };
        var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackMXResource._unpackMXResource(_p._msg, _p._off), _r:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_MXResource.MXResource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_MXResource.MXResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_MXResource.MXResource), _1 : _err };
        };
        _p._off = (_p._off + ((_p._resHeader.length_ : stdgo.GoInt)) : stdgo.GoInt);
        _p._resHeaderValid = false;
        _p._index++;
        return { _0 : _r?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function cnameresource( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser>):{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_CNAMEResource.CNAMEResource; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser> = _p;
        if ((!_p._resHeaderValid || (_p._resHeader.type != (5 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_)) : Bool)) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_CNAMEResource.CNAMEResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_CNAMEResource.CNAMEResource), _1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_errNotStarted.errNotStarted };
        };
        var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackCNAMEResource._unpackCNAMEResource(_p._msg, _p._off), _r:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_CNAMEResource.CNAMEResource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_CNAMEResource.CNAMEResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_CNAMEResource.CNAMEResource), _1 : _err };
        };
        _p._off = (_p._off + ((_p._resHeader.length_ : stdgo.GoInt)) : stdgo.GoInt);
        _p._resHeaderValid = false;
        _p._index++;
        return { _0 : _r?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function skipAllAdditionals( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser>):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser> = _p;
        while (true) {
            {
                var _err = (_p.skipAdditional() : stdgo.Error);
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_errSectionDone.errSectionDone))) {
                    return (null : stdgo.Error);
                } else if (_err != null) {
                    return _err;
                };
            };
        };
    }
    @:keep
    static public function skipAdditional( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser>):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser> = _p;
        return _p._skipResource((5 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section));
    }
    @:keep
    static public function allAdditionals( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser>):{ var _0 : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser> = _p;
        var _n = (_p._header._additionals : stdgo.GoInt);
        if ((_n > (10 : stdgo.GoInt) : Bool)) {
            _n = (10 : stdgo.GoInt);
        };
        var _as = (new stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource>((0 : stdgo.GoInt).toBasic(), _n, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _n ? (0 : stdgo.GoInt).toBasic() : _n : stdgo.GoInt).toBasic()) ({} : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource)]) : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource>);
        while (true) {
            var __tmp__ = _p.additional(), _a:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_errSectionDone.errSectionDone))) {
                return { _0 : _as, _1 : (null : stdgo.Error) };
            };
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource>), _1 : _err };
            };
            _as = (_as.__append__(_a?.__copy__()));
        };
    }
    @:keep
    static public function additional( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser>):{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser> = _p;
        return _p._resource((5 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section));
    }
    @:keep
    static public function additionalHeader( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser>):{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser> = _p;
        return _p._resourceHeader((5 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section));
    }
    @:keep
    static public function skipAllAuthorities( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser>):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser> = _p;
        while (true) {
            {
                var _err = (_p.skipAuthority() : stdgo.Error);
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_errSectionDone.errSectionDone))) {
                    return (null : stdgo.Error);
                } else if (_err != null) {
                    return _err;
                };
            };
        };
    }
    @:keep
    static public function skipAuthority( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser>):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser> = _p;
        return _p._skipResource((4 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section));
    }
    @:keep
    static public function allAuthorities( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser>):{ var _0 : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser> = _p;
        var _n = (_p._header._authorities : stdgo.GoInt);
        if ((_n > (10 : stdgo.GoInt) : Bool)) {
            _n = (10 : stdgo.GoInt);
        };
        var _as = (new stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource>((0 : stdgo.GoInt).toBasic(), _n, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _n ? (0 : stdgo.GoInt).toBasic() : _n : stdgo.GoInt).toBasic()) ({} : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource)]) : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource>);
        while (true) {
            var __tmp__ = _p.authority(), _a:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_errSectionDone.errSectionDone))) {
                return { _0 : _as, _1 : (null : stdgo.Error) };
            };
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource>), _1 : _err };
            };
            _as = (_as.__append__(_a?.__copy__()));
        };
    }
    @:keep
    static public function authority( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser>):{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser> = _p;
        return _p._resource((4 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section));
    }
    @:keep
    static public function authorityHeader( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser>):{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser> = _p;
        return _p._resourceHeader((4 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section));
    }
    @:keep
    static public function skipAllAnswers( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser>):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser> = _p;
        while (true) {
            {
                var _err = (_p.skipAnswer() : stdgo.Error);
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_errSectionDone.errSectionDone))) {
                    return (null : stdgo.Error);
                } else if (_err != null) {
                    return _err;
                };
            };
        };
    }
    @:keep
    static public function skipAnswer( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser>):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser> = _p;
        return _p._skipResource((3 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section));
    }
    @:keep
    static public function allAnswers( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser>):{ var _0 : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser> = _p;
        var _n = (_p._header._answers : stdgo.GoInt);
        if ((_n > (20 : stdgo.GoInt) : Bool)) {
            _n = (20 : stdgo.GoInt);
        };
        var _as = (new stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource>((0 : stdgo.GoInt).toBasic(), _n, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _n ? (0 : stdgo.GoInt).toBasic() : _n : stdgo.GoInt).toBasic()) ({} : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource)]) : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource>);
        while (true) {
            var __tmp__ = _p.answer(), _a:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_errSectionDone.errSectionDone))) {
                return { _0 : _as, _1 : (null : stdgo.Error) };
            };
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource>), _1 : _err };
            };
            _as = (_as.__append__(_a?.__copy__()));
        };
    }
    @:keep
    static public function answer( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser>):{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser> = _p;
        return _p._resource((3 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section));
    }
    @:keep
    static public function answerHeader( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser>):{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser> = _p;
        return _p._resourceHeader((3 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section));
    }
    @:keep
    static public function skipAllQuestions( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser>):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser> = _p;
        while (true) {
            {
                var _err = (_p.skipQuestion() : stdgo.Error);
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_errSectionDone.errSectionDone))) {
                    return (null : stdgo.Error);
                } else if (_err != null) {
                    return _err;
                };
            };
        };
    }
    @:keep
    static public function skipQuestion( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser>):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser> = _p;
        {
            var _err = (_p._checkAdvance((2 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section)) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__skipName._skipName(_p._msg, _p._off), _off:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("skipping Question Name" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>));
        };
        {
            {
                var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__skipType._skipType(_p._msg, _off);
                _off = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("skipping Question Type" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>));
            };
        };
        {
            {
                var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__skipClass._skipClass(_p._msg, _off);
                _off = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("skipping Question Class" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>));
            };
        };
        _p._off = _off;
        _p._index++;
        return (null : stdgo.Error);
    }
    @:keep
    static public function allQuestions( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser>):{ var _0 : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Question.Question>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser> = _p;
        var _qs = (new stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Question.Question>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Question.Question)])) : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Question.Question>);
        while (true) {
            var __tmp__ = _p.question(), _q:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Question.Question = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_errSectionDone.errSectionDone))) {
                return { _0 : _qs, _1 : (null : stdgo.Error) };
            };
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Question.Question>), _1 : _err };
            };
            _qs = (_qs.__append__(_q?.__copy__()));
        };
    }
    @:keep
    static public function question( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser>):{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Question.Question; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser> = _p;
        {
            var _err = (_p._checkAdvance((2 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section)) : stdgo.Error);
            if (_err != null) {
                return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Question.Question() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Question.Question), _1 : _err };
            };
        };
        var _name:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name = ({} : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name);
        var __tmp__ = _name._unpack(_p._msg, _p._off), _off:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Question.Question() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Question.Question), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("unpacking Question.Name" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
        };
        var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackType._unpackType(_p._msg, _off), _typ:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_ = __tmp__._0, _off:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Question.Question() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Question.Question), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("unpacking Question.Type" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
        };
        var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackClass._unpackClass(_p._msg, _off), _class:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Class_.Class_ = __tmp__._0, _off:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Question.Question() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Question.Question), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("unpacking Question.Class" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
        };
        _p._off = _off;
        _p._index++;
        return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Question.Question(_name?.__copy__(), _typ, _class) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Question.Question), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _skipResource( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser>, _sec:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser> = _p;
        if (_p._resHeaderValid) {
            var _newOff = (_p._off + (_p._resHeader.length_ : stdgo.GoInt) : stdgo.GoInt);
            if ((_newOff > (_p._msg.length) : Bool)) {
                return _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__errResourceLen._errResourceLen;
            };
            _p._off = _newOff;
            _p._resHeaderValid = false;
            _p._index++;
            return (null : stdgo.Error);
        };
        {
            var _err = (_p._checkAdvance(_sec) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__skipResource._skipResource(_p._msg, _p._off);
            _p._off = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError((("skipping: " : stdgo.GoString) + (_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__sectionNames._sectionNames[_sec] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString)?.__copy__(), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>));
        };
        _p._index++;
        return (null : stdgo.Error);
    }
    @:keep
    static public function _resourceHeader( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser>, _sec:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section):{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser> = _p;
        if (_p._resHeaderValid) {
            return { _0 : _p._resHeader?.__copy__(), _1 : (null : stdgo.Error) };
        };
        {
            var _err = (_p._checkAdvance(_sec) : stdgo.Error);
            if (_err != null) {
                return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader), _1 : _err };
            };
        };
        var _hdr:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader = ({} : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader);
        var __tmp__ = _hdr._unpack(_p._msg, _p._off), _off:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader), _1 : _err };
        };
        _p._resHeaderValid = true;
        _p._resHeader = _hdr?.__copy__();
        _p._off = _off;
        return { _0 : _hdr?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _resource( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser>, _sec:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section):{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser> = _p;
        var _r:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource = ({} : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource);
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = _p._resourceHeader(_sec);
            _r.header = __tmp__._0?.__copy__();
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : _r?.__copy__(), _1 : _err };
        };
        _p._resHeaderValid = false;
        {
            var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackResourceBody._unpackResourceBody(_p._msg, _p._off, _r.header?.__copy__());
            _r.body = __tmp__._0;
            _p._off = __tmp__._1;
            _err = __tmp__._2;
        };
        if (_err != null) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError((("unpacking " : stdgo.GoString) + (_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__sectionNames._sectionNames[_sec] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString)?.__copy__(), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
        };
        _p._index++;
        return { _0 : _r?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _checkAdvance( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser>, _sec:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser> = _p;
        if ((_p._section < _sec : Bool)) {
            return _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_errNotStarted.errNotStarted;
        };
        if ((_p._section > _sec : Bool)) {
            return _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_errSectionDone.errSectionDone;
        };
        _p._resHeaderValid = false;
        if (_p._index == ((_p._header._count(_sec) : stdgo.GoInt))) {
            _p._index = (0 : stdgo.GoInt);
            _p._section++;
            return _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_errSectionDone.errSectionDone;
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function start( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser>, _msg:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Header.Header; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser> = _p;
        if (_p._msg != null) {
            {
                var __tmp__ = (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser);
                (_p : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser)._msg = __tmp__._msg;
                (_p : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser)._header = __tmp__._header;
                (_p : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser)._section = __tmp__._section;
                (_p : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser)._off = __tmp__._off;
                (_p : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser)._index = __tmp__._index;
                (_p : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser)._resHeaderValid = __tmp__._resHeaderValid;
                (_p : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser)._resHeader = __tmp__._resHeader;
            };
        };
        _p._msg = _msg;
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            {
                var __tmp__ = _p._header._unpack(_msg, (0 : stdgo.GoInt));
                _p._off = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Header.Header() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Header.Header), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("unpacking header" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
            };
        };
        _p._section = (2 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section);
        return { _0 : _p._header._header()?.__copy__(), _1 : (null : stdgo.Error) };
    }
}
