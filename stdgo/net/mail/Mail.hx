package stdgo.net.mail;
var errHeaderNotPresent(get, set) : stdgo.Error;
private function get_errHeaderNotPresent():stdgo.Error return stdgo._internal.net.mail.Mail_errHeaderNotPresent.errHeaderNotPresent;
private function set_errHeaderNotPresent(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.mail.Mail_errHeaderNotPresent.errHeaderNotPresent = v;
        return v;
    }
@:structInit abstract Message(stdgo._internal.net.mail.Mail_Message.Message) from stdgo._internal.net.mail.Mail_Message.Message to stdgo._internal.net.mail.Mail_Message.Message {
    public var header(get, set) : Header;
    function get_header():Header return this.header;
    function set_header(v:Header):Header {
        this.header = v;
        return v;
    }
    public var body(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get_body():stdgo._internal.io.Io_Reader.Reader return this.body;
    function set_body(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this.body = v;
        return v;
    }
    public function new(?header:Header, ?body:stdgo._internal.io.Io_Reader.Reader) this = new stdgo._internal.net.mail.Mail_Message.Message(header, body);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.mail.Mail.Address_static_extension) abstract Address(stdgo._internal.net.mail.Mail_Address.Address) from stdgo._internal.net.mail.Mail_Address.Address to stdgo._internal.net.mail.Mail_Address.Address {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var address(get, set) : String;
    function get_address():String return this.address;
    function set_address(v:String):String {
        this.address = v;
        return v;
    }
    public function new(?name:String, ?address:String) this = new stdgo._internal.net.mail.Mail_Address.Address(name, address);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.mail.Mail.AddressParser_static_extension) abstract AddressParser(stdgo._internal.net.mail.Mail_AddressParser.AddressParser) from stdgo._internal.net.mail.Mail_AddressParser.AddressParser to stdgo._internal.net.mail.Mail_AddressParser.AddressParser {
    public var wordDecoder(get, set) : stdgo._internal.mime.Mime_WordDecoder.WordDecoder;
    function get_wordDecoder():stdgo._internal.mime.Mime_WordDecoder.WordDecoder return this.wordDecoder;
    function set_wordDecoder(v:stdgo._internal.mime.Mime_WordDecoder.WordDecoder):stdgo._internal.mime.Mime_WordDecoder.WordDecoder {
        this.wordDecoder = v;
        return v;
    }
    public function new(?wordDecoder:stdgo._internal.mime.Mime_WordDecoder.WordDecoder) this = new stdgo._internal.net.mail.Mail_AddressParser.AddressParser(wordDecoder);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.mail.Mail.T_addrParser_static_extension) abstract T_addrParser(stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser) from stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser to stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser {
    public var _s(get, set) : String;
    function get__s():String return this._s;
    function set__s(v:String):String {
        this._s = v;
        return v;
    }
    public var _dec(get, set) : stdgo._internal.mime.Mime_WordDecoder.WordDecoder;
    function get__dec():stdgo._internal.mime.Mime_WordDecoder.WordDecoder return this._dec;
    function set__dec(v:stdgo._internal.mime.Mime_WordDecoder.WordDecoder):stdgo._internal.mime.Mime_WordDecoder.WordDecoder {
        this._dec = v;
        return v;
    }
    public function new(?_s:String, ?_dec:stdgo._internal.mime.Mime_WordDecoder.WordDecoder) this = new stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser(_s, _dec);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T_debugT = stdgo._internal.net.mail.Mail_T_debugT.T_debugT;
typedef Header = stdgo._internal.net.mail.Mail_Header.Header;
typedef T_charsetError = stdgo._internal.net.mail.Mail_T_charsetError.T_charsetError;
class Address_static_extension {
    static public function string(_a:Address):String {
        return stdgo._internal.net.mail.Mail_Address_static_extension.Address_static_extension.string(_a);
    }
}
class AddressParser_static_extension {
    static public function parseList(_p:AddressParser, _list:String):stdgo.Tuple<Array<Address>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.mail.Mail_AddressParser_static_extension.AddressParser_static_extension.parseList(_p, _list);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function parse(_p:AddressParser, _address:String):stdgo.Tuple<Address, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.mail.Mail_AddressParser_static_extension.AddressParser_static_extension.parse(_p, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_addrParser_static_extension {
    static public function _decodeRFC2047Word(_p:T_addrParser, _s:String):stdgo.Tuple.Tuple3<String, Bool, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.mail.Mail_T_addrParser_static_extension.T_addrParser_static_extension._decodeRFC2047Word(_p, _s);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _consumeComment(_p:T_addrParser):stdgo.Tuple<String, Bool> {
        return {
            final obj = stdgo._internal.net.mail.Mail_T_addrParser_static_extension.T_addrParser_static_extension._consumeComment(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _skipCFWS(_p:T_addrParser):Bool {
        return stdgo._internal.net.mail.Mail_T_addrParser_static_extension.T_addrParser_static_extension._skipCFWS(_p);
    }
    static public function _len(_p:T_addrParser):StdTypes.Int {
        return stdgo._internal.net.mail.Mail_T_addrParser_static_extension.T_addrParser_static_extension._len(_p);
    }
    static public function _empty(_p:T_addrParser):Bool {
        return stdgo._internal.net.mail.Mail_T_addrParser_static_extension.T_addrParser_static_extension._empty(_p);
    }
    static public function _peek(_p:T_addrParser):std.UInt {
        return stdgo._internal.net.mail.Mail_T_addrParser_static_extension.T_addrParser_static_extension._peek(_p);
    }
    static public function _skipSpace(_p:T_addrParser):Void {
        stdgo._internal.net.mail.Mail_T_addrParser_static_extension.T_addrParser_static_extension._skipSpace(_p);
    }
    static public function _consume(_p:T_addrParser, _c:std.UInt):Bool {
        return stdgo._internal.net.mail.Mail_T_addrParser_static_extension.T_addrParser_static_extension._consume(_p, _c);
    }
    static public function _consumeDisplayNameComment(_p:T_addrParser):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.mail.Mail_T_addrParser_static_extension.T_addrParser_static_extension._consumeDisplayNameComment(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _consumeAtom(_p:T_addrParser, _dot:Bool, _permissive:Bool):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.mail.Mail_T_addrParser_static_extension.T_addrParser_static_extension._consumeAtom(_p, _dot, _permissive);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _consumeQuotedString(_p:T_addrParser):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.mail.Mail_T_addrParser_static_extension.T_addrParser_static_extension._consumeQuotedString(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _consumePhrase(_p:T_addrParser):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.mail.Mail_T_addrParser_static_extension.T_addrParser_static_extension._consumePhrase(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _consumeAddrSpec(_p:T_addrParser):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.mail.Mail_T_addrParser_static_extension.T_addrParser_static_extension._consumeAddrSpec(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _consumeGroupList(_p:T_addrParser):stdgo.Tuple<Array<Address>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.mail.Mail_T_addrParser_static_extension.T_addrParser_static_extension._consumeGroupList(_p);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _parseAddress(_p:T_addrParser, _handleGroup:Bool):stdgo.Tuple<Array<Address>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.mail.Mail_T_addrParser_static_extension.T_addrParser_static_extension._parseAddress(_p, _handleGroup);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _parseSingleAddress(_p:T_addrParser):stdgo.Tuple<Address, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.mail.Mail_T_addrParser_static_extension.T_addrParser_static_extension._parseSingleAddress(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _parseAddressList(_p:T_addrParser):stdgo.Tuple<Array<Address>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.mail.Mail_T_addrParser_static_extension.T_addrParser_static_extension._parseAddressList(_p);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
class T_debugT_static_extension {
    static public function printf(_d:T_debugT, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.net.mail.Mail_T_debugT_static_extension.T_debugT_static_extension.printf(_d, _format, ...[for (i in _args) i]);
    }
}
class Header_static_extension {
    static public function addressList(_h:Header, _key:String):stdgo.Tuple<Array<Address>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.mail.Mail_Header_static_extension.Header_static_extension.addressList(_h, _key);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function date(_h:Header):stdgo.Tuple<stdgo._internal.time.Time_Time.Time, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.mail.Mail_Header_static_extension.Header_static_extension.date(_h);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function get(_h:Header, _key:String):String {
        return stdgo._internal.net.mail.Mail_Header_static_extension.Header_static_extension.get(_h, _key);
    }
}
class T_charsetError_static_extension {
    static public function error(_e:T_charsetError):String {
        return stdgo._internal.net.mail.Mail_T_charsetError_static_extension.T_charsetError_static_extension.error(_e);
    }
}
/**
    /|*{
    	i_4212292 = 0
    	gotoNext = 4212300
    	_ = gotoNext == 4212300
    	_ = 0
    	LoopBreak = false
    	gotoNext = 4212307
    	_ = gotoNext == 4212307
    	if !LoopBreak {
    		gotoNext = 4212311
    		_ = gotoNext == 4212311
    		r_4212315, size_4212318 = utf8.DecodeRuneInString(p.s[i_4212292:])
    		_ = 0
    		gotoNext = 4212361
    		_ = gotoNext == 4212361
    		switch {
    		case size_4212318 == 1 && r_4212315 == 65533:
    			gotoNext = 4212372
    			_ = gotoNext == 4212372
    			return "", fmt.Errorf("mail: invalid utf-8 in address: %q", p.s)
    			gotoNext = 4212579
    		case size_4212318 == 0 || !isAtext(r_4212315, dot, permissive):
    			gotoNext = 4212482
    			_ = gotoNext == 4212482
    			LoopBreak = true
    			gotoNext = 4212307
    			gotoNext = 4212579
    		default:
    			gotoNext = 4212547
    			_ = gotoNext == 4212547
    			i_4212292 += size_4212318
    			gotoNext = 4212579
    		}
    		gotoNext = 4212307
    	} else {
    		gotoNext = 4212579
    	}
    	_ = gotoNext == 4212579
    	if i_4212292 == 0 {
    		gotoNext = 4212589
    		_ = gotoNext == 4212589
    		return "", errors.New("mail: invalid string")
    		gotoNext = 4212643
    	} else {
    		gotoNext = 4212643
    	}
    	_ = gotoNext == 4212643
    	atom, p.s = p.s[:i_4212292], p.s[i_4212292:]
    	if !permissive {
    		gotoNext = 4212688
    		_ = gotoNext == 4212688
    		if strings.HasPrefix(atom, ".") {
    			gotoNext = 4212724
    			_ = gotoNext == 4212724
    			return "", errors.New("mail: leading dot in atom")
    			gotoNext = 4212786
    		} else {
    			gotoNext = 4212786
    		}
    		_ = gotoNext == 4212786
    		if strings.Contains(atom, "..") {
    			gotoNext = 4212818
    			_ = gotoNext == 4212818
    			return "", errors.New("mail: double dot in atom")
    			gotoNext = 4212879
    		} else {
    			gotoNext = 4212879
    		}
    		_ = gotoNext == 4212879
    		if strings.HasSuffix(atom, ".") {
    			gotoNext = 4212911
    			_ = gotoNext == 4212911
    			return "", errors.New("mail: trailing dot in atom")
    			gotoNext = 4212976
    		} else {
    			gotoNext = 4212976
    		}
    		gotoNext = 4212976
    	} else {
    		gotoNext = 4212976
    	}
    	_ = gotoNext == 4212976
    	return atom, nil
    	gotoNext = -1
    }*|/
**/
class Mail {
    /**
        ReadMessage reads a message from r.
        The headers are parsed, and the body of the message will be available
        for reading from msg.Body.
    **/
    static public function readMessage(_r:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<Message, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.mail.Mail_readMessage.readMessage(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ParseDate parses an RFC 5322 date string.
    **/
    static public function parseDate(_date:String):stdgo.Tuple<stdgo._internal.time.Time_Time.Time, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.mail.Mail_parseDate.parseDate(_date);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ParseAddress parses a single RFC 5322 address, e.g. "Barry Gibbs <bg@example.com>"
    **/
    static public function parseAddress(_address:String):stdgo.Tuple<Address, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.mail.Mail_parseAddress.parseAddress(_address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ParseAddressList parses the given string as a list of addresses.
    **/
    static public function parseAddressList(_list:String):stdgo.Tuple<Array<Address>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.mail.Mail_parseAddressList.parseAddressList(_list);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
