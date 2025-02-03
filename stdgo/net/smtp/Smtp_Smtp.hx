package stdgo.net.smtp;
/**
    Package smtp implements the Simple Mail Transfer Protocol as defined in RFC 5321.
    It also implements the following extensions:
    
    	8BITMIME  RFC 1652
    	AUTH      RFC 2554
    	STARTTLS  RFC 3207
    
    Additional extensions may be handled by clients.
    
    The smtp package is frozen and is not accepting new features.
    Some external packages provide more functionality. See:
    
    	https://godoc.org/?q=smtp
**/
class Smtp {
    /**
        PlainAuth returns an Auth that implements the PLAIN authentication
        mechanism as defined in RFC 4616. The returned Auth uses the given
        username and password to authenticate to host and act as identity.
        Usually identity should be the empty string, to act as username.
        
        PlainAuth will only send the credentials if the connection is using TLS
        or is connected to localhost. Otherwise authentication will fail with an
        error, without sending the credentials.
    **/
    static public inline function plainAuth(_identity:String, _username:String, _password:String, _host:String):Auth {
        final _identity = (_identity : stdgo.GoString);
        final _username = (_username : stdgo.GoString);
        final _password = (_password : stdgo.GoString);
        final _host = (_host : stdgo.GoString);
        return stdgo._internal.net.smtp.Smtp_plainAuth.plainAuth(_identity, _username, _password, _host);
    }
    /**
        CRAMMD5Auth returns an Auth that implements the CRAM-MD5 authentication
        mechanism as defined in RFC 2195.
        The returned Auth uses the given username and secret to authenticate
        to the server using the challenge-response mechanism.
    **/
    static public inline function cRAMMD5Auth(_username:String, _secret:String):Auth {
        final _username = (_username : stdgo.GoString);
        final _secret = (_secret : stdgo.GoString);
        return stdgo._internal.net.smtp.Smtp_cRAMMD5Auth.cRAMMD5Auth(_username, _secret);
    }
    /**
        Dial returns a new Client connected to an SMTP server at addr.
        The addr must include a port, as in "mail.example.com:smtp".
    **/
    static public inline function dial(_addr:String):stdgo.Tuple<Client, stdgo.Error> {
        final _addr = (_addr : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.smtp.Smtp_dial.dial(_addr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        NewClient returns a new Client using an existing connection and host as a
        server name to be used when authenticating.
    **/
    static public inline function newClient(_conn:stdgo._internal.net.Net_Conn.Conn, _host:String):stdgo.Tuple<Client, stdgo.Error> {
        final _host = (_host : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.smtp.Smtp_newClient.newClient(_conn, _host);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        SendMail connects to the server at addr, switches to TLS if
        possible, authenticates with the optional mechanism a if possible,
        and then sends an email from address from, to addresses to, with
        message msg.
        The addr must include a port, as in "mail.example.com:smtp".
        
        The addresses in the to parameter are the SMTP RCPT addresses.
        
        The msg parameter should be an RFC 822-style email with headers
        first, a blank line, and then the message body. The lines of msg
        should be CRLF terminated. The msg headers should usually include
        fields such as "From", "To", "Subject", and "Cc".  Sending "Bcc"
        messages is accomplished by including an email address in the to
        parameter but not including it in the msg headers.
        
        The SendMail function and the net/smtp package are low-level
        mechanisms and provide no support for DKIM signing, MIME
        attachments (see the mime/multipart package), or other mail
        functionality. Higher-level packages exist outside of the standard
        library.
    **/
    static public inline function sendMail(_addr:String, _a:Auth, _from:String, _to:Array<String>, _msg:Array<std.UInt>):stdgo.Error {
        final _addr = (_addr : stdgo.GoString);
        final _from = (_from : stdgo.GoString);
        final _to = ([for (i in _to) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        final _msg = ([for (i in _msg) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.smtp.Smtp_sendMail.sendMail(_addr, _a, _from, _to, _msg);
    }
}
