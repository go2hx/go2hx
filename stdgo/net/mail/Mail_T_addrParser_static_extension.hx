package stdgo.net.mail;
class T_addrParser_static_extension {
    static public function _decodeRFC2047Word(_p:T_addrParser, _s:String):stdgo.Tuple.Tuple3<String, Bool, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.mail.Mail_T_addrParser_static_extension.T_addrParser_static_extension._decodeRFC2047Word(_p, _s);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _consumeComment(_p:T_addrParser):stdgo.Tuple<String, Bool> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser>);
        return {
            final obj = stdgo._internal.net.mail.Mail_T_addrParser_static_extension.T_addrParser_static_extension._consumeComment(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _skipCFWS(_p:T_addrParser):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser>);
        return stdgo._internal.net.mail.Mail_T_addrParser_static_extension.T_addrParser_static_extension._skipCFWS(_p);
    }
    static public function _len(_p:T_addrParser):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser>);
        return stdgo._internal.net.mail.Mail_T_addrParser_static_extension.T_addrParser_static_extension._len(_p);
    }
    static public function _empty(_p:T_addrParser):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser>);
        return stdgo._internal.net.mail.Mail_T_addrParser_static_extension.T_addrParser_static_extension._empty(_p);
    }
    static public function _peek(_p:T_addrParser):std.UInt {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser>);
        return stdgo._internal.net.mail.Mail_T_addrParser_static_extension.T_addrParser_static_extension._peek(_p);
    }
    static public function _skipSpace(_p:T_addrParser):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser>);
        stdgo._internal.net.mail.Mail_T_addrParser_static_extension.T_addrParser_static_extension._skipSpace(_p);
    }
    static public function _consume(_p:T_addrParser, _c:std.UInt):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser>);
        final _c = (_c : stdgo.GoUInt8);
        return stdgo._internal.net.mail.Mail_T_addrParser_static_extension.T_addrParser_static_extension._consume(_p, _c);
    }
    static public function _consumeDisplayNameComment(_p:T_addrParser):stdgo.Tuple<String, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser>);
        return {
            final obj = stdgo._internal.net.mail.Mail_T_addrParser_static_extension.T_addrParser_static_extension._consumeDisplayNameComment(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _consumeAtom(_p:T_addrParser, _dot:Bool, _permissive:Bool):stdgo.Tuple<String, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser>);
        return {
            final obj = stdgo._internal.net.mail.Mail_T_addrParser_static_extension.T_addrParser_static_extension._consumeAtom(_p, _dot, _permissive);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _consumeQuotedString(_p:T_addrParser):stdgo.Tuple<String, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser>);
        return {
            final obj = stdgo._internal.net.mail.Mail_T_addrParser_static_extension.T_addrParser_static_extension._consumeQuotedString(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _consumePhrase(_p:T_addrParser):stdgo.Tuple<String, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser>);
        return {
            final obj = stdgo._internal.net.mail.Mail_T_addrParser_static_extension.T_addrParser_static_extension._consumePhrase(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _consumeAddrSpec(_p:T_addrParser):stdgo.Tuple<String, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser>);
        return {
            final obj = stdgo._internal.net.mail.Mail_T_addrParser_static_extension.T_addrParser_static_extension._consumeAddrSpec(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _consumeGroupList(_p:T_addrParser):stdgo.Tuple<Array<Address>, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser>);
        return {
            final obj = stdgo._internal.net.mail.Mail_T_addrParser_static_extension.T_addrParser_static_extension._consumeGroupList(_p);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _parseAddress(_p:T_addrParser, _handleGroup:Bool):stdgo.Tuple<Array<Address>, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser>);
        return {
            final obj = stdgo._internal.net.mail.Mail_T_addrParser_static_extension.T_addrParser_static_extension._parseAddress(_p, _handleGroup);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _parseSingleAddress(_p:T_addrParser):stdgo.Tuple<Address, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser>);
        return {
            final obj = stdgo._internal.net.mail.Mail_T_addrParser_static_extension.T_addrParser_static_extension._parseSingleAddress(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _parseAddressList(_p:T_addrParser):stdgo.Tuple<Array<Address>, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser>);
        return {
            final obj = stdgo._internal.net.mail.Mail_T_addrParser_static_extension.T_addrParser_static_extension._parseAddressList(_p);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
