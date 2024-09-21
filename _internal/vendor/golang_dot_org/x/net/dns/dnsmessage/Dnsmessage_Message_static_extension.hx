package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
@:keep @:allow(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage.Message_asInterface) class Message_static_extension {
    @:keep
    static public function goString( _m:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Message.Message>):stdgo.GoString {
        @:recv var _m:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Message.Message> = _m;
        var _s = ((((("dnsmessage.Message{Header: " : stdgo.GoString) + _m.header.goString()?.__copy__() : stdgo.GoString) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("Questions: []dnsmessage.Question{" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (((_m.questions.length) > (0 : stdgo.GoInt) : Bool)) {
            _s = (_s + (_m.questions[(0 : stdgo.GoInt)].goString())?.__copy__() : stdgo.GoString);
            for (__0 => _q in (_m.questions.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Question.Question>)) {
                _s = (_s + (((", " : stdgo.GoString) + _q.goString()?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
        };
        _s = (_s + (("}, Answers: []dnsmessage.Resource{" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        if (((_m.answers.length) > (0 : stdgo.GoInt) : Bool)) {
            _s = (_s + (_m.answers[(0 : stdgo.GoInt)].goString())?.__copy__() : stdgo.GoString);
            for (__0 => _a in (_m.answers.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource>)) {
                _s = (_s + (((", " : stdgo.GoString) + _a.goString()?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
        };
        _s = (_s + (("}, Authorities: []dnsmessage.Resource{" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        if (((_m.authorities.length) > (0 : stdgo.GoInt) : Bool)) {
            _s = (_s + (_m.authorities[(0 : stdgo.GoInt)].goString())?.__copy__() : stdgo.GoString);
            for (__0 => _a in (_m.authorities.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource>)) {
                _s = (_s + (((", " : stdgo.GoString) + _a.goString()?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
        };
        _s = (_s + (("}, Additionals: []dnsmessage.Resource{" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        if (((_m.additionals.length) > (0 : stdgo.GoInt) : Bool)) {
            _s = (_s + (_m.additionals[(0 : stdgo.GoInt)].goString())?.__copy__() : stdgo.GoString);
            for (__0 => _a in (_m.additionals.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource>)) {
                _s = (_s + (((", " : stdgo.GoString) + _a.goString()?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
        };
        return (_s + ("}}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function appendPack( _m:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Message.Message>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Message.Message> = _m;
        if (((_m.questions.length) > ((65535 : stdgo.GoUInt16) : stdgo.GoInt) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__errTooManyQuestions._errTooManyQuestions };
        };
        if (((_m.answers.length) > ((65535 : stdgo.GoUInt16) : stdgo.GoInt) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__errTooManyAnswers._errTooManyAnswers };
        };
        if (((_m.authorities.length) > ((65535 : stdgo.GoUInt16) : stdgo.GoInt) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__errTooManyAuthorities._errTooManyAuthorities };
        };
        if (((_m.additionals.length) > ((65535 : stdgo.GoUInt16) : stdgo.GoInt) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__errTooManyAdditionals._errTooManyAdditionals };
        };
        var _h:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_header.T_header = ({} : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_header.T_header);
        {
            var __tmp__ = _m.header._pack();
            _h._id = __tmp__._0;
            _h._bits = __tmp__._1;
        };
        _h._questions = (_m.questions.length : stdgo.GoUInt16);
        _h._answers = (_m.answers.length : stdgo.GoUInt16);
        _h._authorities = (_m.authorities.length : stdgo.GoUInt16);
        _h._additionals = (_m.additionals.length : stdgo.GoUInt16);
        var _compressionOff = (_b.length : stdgo.GoInt);
        var _msg = _h._pack(_b);
        var _compression = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        for (_i => _ in _m.questions) {
            var _err:stdgo.Error = (null : stdgo.Error);
            {
                {
                    var __tmp__ = _m.questions[(_i : stdgo.GoInt)]._pack(_msg, _compression, _compressionOff);
                    _msg = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("packing Question" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
                };
            };
        };
        for (_i => _ in _m.answers) {
            var _err:stdgo.Error = (null : stdgo.Error);
            {
                {
                    var __tmp__ = _m.answers[(_i : stdgo.GoInt)]._pack(_msg, _compression, _compressionOff);
                    _msg = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("packing Answer" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
                };
            };
        };
        for (_i => _ in _m.authorities) {
            var _err:stdgo.Error = (null : stdgo.Error);
            {
                {
                    var __tmp__ = _m.authorities[(_i : stdgo.GoInt)]._pack(_msg, _compression, _compressionOff);
                    _msg = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("packing Authority" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
                };
            };
        };
        for (_i => _ in _m.additionals) {
            var _err:stdgo.Error = (null : stdgo.Error);
            {
                {
                    var __tmp__ = _m.additionals[(_i : stdgo.GoInt)]._pack(_msg, _compression, _compressionOff);
                    _msg = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("packing Additional" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
                };
            };
        };
        return { _0 : _msg, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function pack( _m:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Message.Message>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Message.Message> = _m;
        return _m.appendPack((new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (512 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    static public function unpack( _m:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Message.Message>, _msg:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _m:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Message.Message> = _m;
        var _p:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser = ({} : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser);
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            {
                var __tmp__ = _p.start(_msg);
                _m.header = __tmp__._0?.__copy__();
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        {
            {
                var __tmp__ = _p.allQuestions();
                _m.questions = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        {
            {
                var __tmp__ = _p.allAnswers();
                _m.answers = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        {
            {
                var __tmp__ = _p.allAuthorities();
                _m.authorities = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        {
            {
                var __tmp__ = _p.allAdditionals();
                _m.additionals = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        return (null : stdgo.Error);
    }
    @:embedded
    public static function _pack( __self__:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Message.Message):{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoUInt16; } return __self__._pack();
}
