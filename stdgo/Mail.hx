package stdgo;
var errHeaderNotPresent(get, set) : stdgo.Error;
private function get_errHeaderNotPresent():stdgo.Error return stdgo._internal.net.mail.Mail_errheadernotpresent.errHeaderNotPresent;
private function set_errHeaderNotPresent(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.mail.Mail_errheadernotpresent.errHeaderNotPresent = (v : stdgo.Error);
        return v;
    }
@:structInit @:using(stdgo.net.mail.Mail.Message_static_extension) abstract Message(stdgo._internal.net.mail.Mail_message.Message) from stdgo._internal.net.mail.Mail_message.Message to stdgo._internal.net.mail.Mail_message.Message {
    public var header(get, set) : Header;
    function get_header():Header return this.header;
    function set_header(v:Header):Header {
        this.header = v;
        return v;
    }
    public var body(get, set) : stdgo._internal.io.Io_reader.Reader;
    function get_body():stdgo._internal.io.Io_reader.Reader return this.body;
    function set_body(v:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        this.body = v;
        return v;
    }
    public function new(?header:Header, ?body:stdgo._internal.io.Io_reader.Reader) this = new stdgo._internal.net.mail.Mail_message.Message(header, body);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.mail.Mail.Address_static_extension) abstract Address(stdgo._internal.net.mail.Mail_address.Address) from stdgo._internal.net.mail.Mail_address.Address to stdgo._internal.net.mail.Mail_address.Address {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var address(get, set) : String;
    function get_address():String return this.address;
    function set_address(v:String):String {
        this.address = (v : stdgo.GoString);
        return v;
    }
    public function new(?name:String, ?address:String) this = new stdgo._internal.net.mail.Mail_address.Address((name : stdgo.GoString), (address : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.mail.Mail.AddressParser_static_extension) abstract AddressParser(stdgo._internal.net.mail.Mail_addressparser.AddressParser) from stdgo._internal.net.mail.Mail_addressparser.AddressParser to stdgo._internal.net.mail.Mail_addressparser.AddressParser {
    public var wordDecoder(get, set) : stdgo._internal.mime.Mime_worddecoder.WordDecoder;
    function get_wordDecoder():stdgo._internal.mime.Mime_worddecoder.WordDecoder return this.wordDecoder;
    function set_wordDecoder(v:stdgo._internal.mime.Mime_worddecoder.WordDecoder):stdgo._internal.mime.Mime_worddecoder.WordDecoder {
        this.wordDecoder = (v : stdgo.Ref<stdgo._internal.mime.Mime_worddecoder.WordDecoder>);
        return v;
    }
    public function new(?wordDecoder:stdgo._internal.mime.Mime_worddecoder.WordDecoder) this = new stdgo._internal.net.mail.Mail_addressparser.AddressParser((wordDecoder : stdgo.Ref<stdgo._internal.mime.Mime_worddecoder.WordDecoder>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.mail.Mail.T_addrParser_static_extension) @:dox(hide) abstract T_addrParser(stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser) from stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser to stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser {
    public var _s(get, set) : String;
    function get__s():String return this._s;
    function set__s(v:String):String {
        this._s = (v : stdgo.GoString);
        return v;
    }
    public var _dec(get, set) : stdgo._internal.mime.Mime_worddecoder.WordDecoder;
    function get__dec():stdgo._internal.mime.Mime_worddecoder.WordDecoder return this._dec;
    function set__dec(v:stdgo._internal.mime.Mime_worddecoder.WordDecoder):stdgo._internal.mime.Mime_worddecoder.WordDecoder {
        this._dec = (v : stdgo.Ref<stdgo._internal.mime.Mime_worddecoder.WordDecoder>);
        return v;
    }
    public function new(?_s:String, ?_dec:stdgo._internal.mime.Mime_worddecoder.WordDecoder) this = new stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser((_s : stdgo.GoString), (_dec : stdgo.Ref<stdgo._internal.mime.Mime_worddecoder.WordDecoder>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_debugT = stdgo._internal.net.mail.Mail_t_debugt.T_debugT;
typedef Header = stdgo._internal.net.mail.Mail_header.Header;
@:dox(hide) typedef T_charsetError = stdgo._internal.net.mail.Mail_t_charseterror.T_charsetError;
typedef MessagePointer = stdgo._internal.net.mail.Mail_messagepointer.MessagePointer;
class Message_static_extension {

}
typedef AddressPointer = stdgo._internal.net.mail.Mail_addresspointer.AddressPointer;
class Address_static_extension {
    static public function string(_a:Address):String {
        final _a = (_a : stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>);
        return stdgo._internal.net.mail.Mail_address_static_extension.Address_static_extension.string(_a);
    }
}
typedef AddressParserPointer = stdgo._internal.net.mail.Mail_addressparserpointer.AddressParserPointer;
class AddressParser_static_extension {
    static public function parseList(_p:AddressParser, _list:String):stdgo.Tuple<Array<Address>, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.mail.Mail_addressparser.AddressParser>);
        final _list = (_list : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.mail.Mail_addressparser_static_extension.AddressParser_static_extension.parseList(_p, _list);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function parse(_p:AddressParser, _address:String):stdgo.Tuple<Address, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.mail.Mail_addressparser.AddressParser>);
        final _address = (_address : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.mail.Mail_addressparser_static_extension.AddressParser_static_extension.parse(_p, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_addrParserPointer = stdgo._internal.net.mail.Mail_t_addrparserpointer.T_addrParserPointer;
@:dox(hide) class T_addrParser_static_extension {
    static public function _decodeRFC2047Word(_p:T_addrParser, _s:String):stdgo.Tuple.Tuple3<String, Bool, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.mail.Mail_t_addrparser_static_extension.T_addrParser_static_extension._decodeRFC2047Word(_p, _s);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _consumeComment(_p:T_addrParser):stdgo.Tuple<String, Bool> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser>);
        return {
            final obj = stdgo._internal.net.mail.Mail_t_addrparser_static_extension.T_addrParser_static_extension._consumeComment(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _skipCFWS(_p:T_addrParser):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser>);
        return stdgo._internal.net.mail.Mail_t_addrparser_static_extension.T_addrParser_static_extension._skipCFWS(_p);
    }
    static public function _len(_p:T_addrParser):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser>);
        return stdgo._internal.net.mail.Mail_t_addrparser_static_extension.T_addrParser_static_extension._len(_p);
    }
    static public function _empty(_p:T_addrParser):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser>);
        return stdgo._internal.net.mail.Mail_t_addrparser_static_extension.T_addrParser_static_extension._empty(_p);
    }
    static public function _peek(_p:T_addrParser):std.UInt {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser>);
        return stdgo._internal.net.mail.Mail_t_addrparser_static_extension.T_addrParser_static_extension._peek(_p);
    }
    static public function _skipSpace(_p:T_addrParser):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser>);
        stdgo._internal.net.mail.Mail_t_addrparser_static_extension.T_addrParser_static_extension._skipSpace(_p);
    }
    static public function _consume(_p:T_addrParser, _c:std.UInt):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser>);
        final _c = (_c : stdgo.GoUInt8);
        return stdgo._internal.net.mail.Mail_t_addrparser_static_extension.T_addrParser_static_extension._consume(_p, _c);
    }
    static public function _consumeDisplayNameComment(_p:T_addrParser):stdgo.Tuple<String, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser>);
        return {
            final obj = stdgo._internal.net.mail.Mail_t_addrparser_static_extension.T_addrParser_static_extension._consumeDisplayNameComment(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _consumeAtom(_p:T_addrParser, _dot:Bool, _permissive:Bool):stdgo.Tuple<String, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser>);
        return {
            final obj = stdgo._internal.net.mail.Mail_t_addrparser_static_extension.T_addrParser_static_extension._consumeAtom(_p, _dot, _permissive);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _consumeQuotedString(_p:T_addrParser):stdgo.Tuple<String, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser>);
        return {
            final obj = stdgo._internal.net.mail.Mail_t_addrparser_static_extension.T_addrParser_static_extension._consumeQuotedString(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _consumePhrase(_p:T_addrParser):stdgo.Tuple<String, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser>);
        return {
            final obj = stdgo._internal.net.mail.Mail_t_addrparser_static_extension.T_addrParser_static_extension._consumePhrase(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _consumeAddrSpec(_p:T_addrParser):stdgo.Tuple<String, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser>);
        return {
            final obj = stdgo._internal.net.mail.Mail_t_addrparser_static_extension.T_addrParser_static_extension._consumeAddrSpec(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _consumeGroupList(_p:T_addrParser):stdgo.Tuple<Array<Address>, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser>);
        return {
            final obj = stdgo._internal.net.mail.Mail_t_addrparser_static_extension.T_addrParser_static_extension._consumeGroupList(_p);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _parseAddress(_p:T_addrParser, _handleGroup:Bool):stdgo.Tuple<Array<Address>, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser>);
        return {
            final obj = stdgo._internal.net.mail.Mail_t_addrparser_static_extension.T_addrParser_static_extension._parseAddress(_p, _handleGroup);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _parseSingleAddress(_p:T_addrParser):stdgo.Tuple<Address, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser>);
        return {
            final obj = stdgo._internal.net.mail.Mail_t_addrparser_static_extension.T_addrParser_static_extension._parseSingleAddress(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _parseAddressList(_p:T_addrParser):stdgo.Tuple<Array<Address>, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser>);
        return {
            final obj = stdgo._internal.net.mail.Mail_t_addrparser_static_extension.T_addrParser_static_extension._parseAddressList(_p);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_debugTPointer = stdgo._internal.net.mail.Mail_t_debugtpointer.T_debugTPointer;
@:dox(hide) class T_debugT_static_extension {
    static public function printf(_d:T_debugT, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _format = (_format : stdgo.GoString);
        stdgo._internal.net.mail.Mail_t_debugt_static_extension.T_debugT_static_extension.printf(_d, _format, ...[for (i in _args) i]);
    }
}
typedef HeaderPointer = stdgo._internal.net.mail.Mail_headerpointer.HeaderPointer;
class Header_static_extension {
    static public function addressList(_h:Header, _key:String):stdgo.Tuple<Array<Address>, stdgo.Error> {
        final _key = (_key : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.mail.Mail_header_static_extension.Header_static_extension.addressList(_h, _key);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function date(_h:Header):stdgo.Tuple<stdgo._internal.time.Time_time.Time, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.mail.Mail_header_static_extension.Header_static_extension.date(_h);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function get(_h:Header, _key:String):String {
        final _key = (_key : stdgo.GoString);
        return stdgo._internal.net.mail.Mail_header_static_extension.Header_static_extension.get(_h, _key);
    }
}
@:dox(hide) typedef T_charsetErrorPointer = stdgo._internal.net.mail.Mail_t_charseterrorpointer.T_charsetErrorPointer;
@:dox(hide) class T_charsetError_static_extension {
    static public function error(_e:T_charsetError):String {
        return stdgo._internal.net.mail.Mail_t_charseterror_static_extension.T_charsetError_static_extension.error(_e);
    }
}
/**
    * 
    * Package mail implements parsing of mail messages.
    * 
    * For the most part, this package follows the syntax as specified by RFC 5322 and
    * extended by RFC 6532.
    * Notable divergences:
    *   - Obsolete address formats are not parsed, including addresses with
    *     embedded route information.
    *   - The full range of spacing (the CFWS syntax element) is not supported,
    *     such as breaking addresses across lines.
    *   - No unicode normalization is performed.
    *   - The special characters ()[]:;@\, are allowed to appear unquoted in names.
    *   - A leading From line is permitted, as in mbox format (RFC 4155).
    * 
**/
class Mail {
    /**
        * ReadMessage reads a message from r.
        * The headers are parsed, and the body of the message will be available
        * for reading from msg.Body.
    **/
    static public inline function readMessage(_r:stdgo._internal.io.Io_reader.Reader):stdgo.Tuple<Message, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.mail.Mail_readmessage.readMessage(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * ParseDate parses an RFC 5322 date string.
    **/
    static public inline function parseDate(_date:String):stdgo.Tuple<stdgo._internal.time.Time_time.Time, stdgo.Error> {
        final _date = (_date : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.mail.Mail_parsedate.parseDate(_date);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * ParseAddress parses a single RFC 5322 address, e.g. "Barry Gibbs <bg@example.com>"
    **/
    static public inline function parseAddress(_address:String):stdgo.Tuple<Address, stdgo.Error> {
        final _address = (_address : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.mail.Mail_parseaddress.parseAddress(_address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * ParseAddressList parses the given string as a list of addresses.
    **/
    static public inline function parseAddressList(_list:String):stdgo.Tuple<Array<Address>, stdgo.Error> {
        final _list = (_list : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.mail.Mail_parseaddresslist.parseAddressList(_list);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
