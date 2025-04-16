package stdgo.net.mail;
var errHeaderNotPresent(get, set) : stdgo.Error;
private function get_errHeaderNotPresent():stdgo.Error return stdgo._internal.net.mail.Mail_errheadernotpresent.errHeaderNotPresent;
private function set_errHeaderNotPresent(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.mail.Mail_errheadernotpresent.errHeaderNotPresent = v;
        return v;
    }
typedef Message = stdgo._internal.net.mail.Mail_message.Message;
typedef Address = stdgo._internal.net.mail.Mail_address.Address;
typedef AddressParser = stdgo._internal.net.mail.Mail_addressparser.AddressParser;
typedef Header = stdgo._internal.net.mail.Mail_header.Header;
typedef MessagePointer = stdgo._internal.net.mail.Mail_messagepointer.MessagePointer;
typedef AddressPointer = stdgo._internal.net.mail.Mail_addresspointer.AddressPointer;
typedef AddressParserPointer = stdgo._internal.net.mail.Mail_addressparserpointer.AddressParserPointer;
typedef HeaderPointer = stdgo._internal.net.mail.Mail_headerpointer.HeaderPointer;
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
    static public inline function readMessage(_r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.net.mail.Mail_message.Message>; var _1 : stdgo.Error; } return stdgo._internal.net.mail.Mail_readmessage.readMessage(_r);
    /**
        * ParseDate parses an RFC 5322 date string.
    **/
    static public inline function parseDate(_date:stdgo.GoString):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : stdgo.Error; } return stdgo._internal.net.mail.Mail_parsedate.parseDate(_date);
    /**
        * ParseAddress parses a single RFC 5322 address, e.g. "Barry Gibbs <bg@example.com>"
    **/
    static public inline function parseAddress(_address:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>; var _1 : stdgo.Error; } return stdgo._internal.net.mail.Mail_parseaddress.parseAddress(_address);
    /**
        * ParseAddressList parses the given string as a list of addresses.
    **/
    static public inline function parseAddressList(_list:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>>; var _1 : stdgo.Error; } return stdgo._internal.net.mail.Mail_parseaddresslist.parseAddressList(_list);
}
