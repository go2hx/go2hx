package stdgo.net.mail;
/**
    /|*
    Package mail implements parsing of mail messages.
    
    For the most part, this package follows the syntax as specified by RFC 5322 and
    extended by RFC 6532.
    Notable divergences:
      - Obsolete address formats are not parsed, including addresses with
        embedded route information.
      - The full range of spacing (the CFWS syntax element) is not supported,
        such as breaking addresses across lines.
      - No unicode normalization is performed.
      - The special characters ()[]:;@\, are allowed to appear unquoted in names.
      - A leading From line is permitted, as in mbox format (RFC 4155).
    *|/
**/
class Mail {
    /**
        ReadMessage reads a message from r.
        The headers are parsed, and the body of the message will be available
        for reading from msg.Body.
    **/
    static public inline function readMessage(_r:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<Message, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.mail.Mail_readMessage.readMessage(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ParseDate parses an RFC 5322 date string.
    **/
    static public inline function parseDate(_date:String):stdgo.Tuple<stdgo._internal.time.Time_Time.Time, stdgo.Error> {
        final _date = (_date : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.mail.Mail_parseDate.parseDate(_date);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ParseAddress parses a single RFC 5322 address, e.g. "Barry Gibbs <bg@example.com>"
    **/
    static public inline function parseAddress(_address:String):stdgo.Tuple<Address, stdgo.Error> {
        final _address = (_address : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.mail.Mail_parseAddress.parseAddress(_address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ParseAddressList parses the given string as a list of addresses.
    **/
    static public inline function parseAddressList(_list:String):stdgo.Tuple<Array<Address>, stdgo.Error> {
        final _list = (_list : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.mail.Mail_parseAddressList.parseAddressList(_list);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
