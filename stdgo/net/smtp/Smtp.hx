package stdgo.net.smtp;
typedef Auth = stdgo._internal.net.smtp.Smtp_auth.Auth;
typedef ServerInfo = stdgo._internal.net.smtp.Smtp_serverinfo.ServerInfo;
typedef Client = stdgo._internal.net.smtp.Smtp_client.Client;
typedef ServerInfoPointer = stdgo._internal.net.smtp.Smtp_serverinfopointer.ServerInfoPointer;
typedef ClientPointer = stdgo._internal.net.smtp.Smtp_clientpointer.ClientPointer;
/**
    * Package smtp implements the Simple Mail Transfer Protocol as defined in RFC 5321.
    * It also implements the following extensions:
    * 
    * 	8BITMIME  RFC 1652
    * 	AUTH      RFC 2554
    * 	STARTTLS  RFC 3207
    * 
    * Additional extensions may be handled by clients.
    * 
    * The smtp package is frozen and is not accepting new features.
    * Some external packages provide more functionality. See:
    * 
    * 	https://godoc.org/?q=smtp
**/
class Smtp {
    /**
        * PlainAuth returns an Auth that implements the PLAIN authentication
        * mechanism as defined in RFC 4616. The returned Auth uses the given
        * username and password to authenticate to host and act as identity.
        * Usually identity should be the empty string, to act as username.
        * 
        * PlainAuth will only send the credentials if the connection is using TLS
        * or is connected to localhost. Otherwise authentication will fail with an
        * error, without sending the credentials.
    **/
    static public inline function plainAuth(_identity:stdgo.GoString, _username:stdgo.GoString, _password:stdgo.GoString, _host:stdgo.GoString):stdgo._internal.net.smtp.Smtp_auth.Auth return stdgo._internal.net.smtp.Smtp_plainauth.plainAuth(_identity, _username, _password, _host);
    /**
        * CRAMMD5Auth returns an Auth that implements the CRAM-MD5 authentication
        * mechanism as defined in RFC 2195.
        * The returned Auth uses the given username and secret to authenticate
        * to the server using the challenge-response mechanism.
    **/
    static public inline function cRAMMD5Auth(_username:stdgo.GoString, _secret:stdgo.GoString):stdgo._internal.net.smtp.Smtp_auth.Auth return stdgo._internal.net.smtp.Smtp_crammd5auth.cRAMMD5Auth(_username, _secret);
    /**
        * Dial returns a new Client connected to an SMTP server at addr.
        * The addr must include a port, as in "mail.example.com:smtp".
    **/
    static public inline function dial(_addr:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>; var _1 : stdgo.Error; } return stdgo._internal.net.smtp.Smtp_dial.dial(_addr);
    /**
        * NewClient returns a new Client using an existing connection and host as a
        * server name to be used when authenticating.
    **/
    static public inline function newClient(_conn:stdgo._internal.net.Net_conn.Conn, _host:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>; var _1 : stdgo.Error; } return stdgo._internal.net.smtp.Smtp_newclient.newClient(_conn, _host);
    /**
        * SendMail connects to the server at addr, switches to TLS if
        * possible, authenticates with the optional mechanism a if possible,
        * and then sends an email from address from, to addresses to, with
        * message msg.
        * The addr must include a port, as in "mail.example.com:smtp".
        * 
        * The addresses in the to parameter are the SMTP RCPT addresses.
        * 
        * The msg parameter should be an RFC 822-style email with headers
        * first, a blank line, and then the message body. The lines of msg
        * should be CRLF terminated. The msg headers should usually include
        * fields such as "From", "To", "Subject", and "Cc".  Sending "Bcc"
        * messages is accomplished by including an email address in the to
        * parameter but not including it in the msg headers.
        * 
        * The SendMail function and the net/smtp package are low-level
        * mechanisms and provide no support for DKIM signing, MIME
        * attachments (see the mime/multipart package), or other mail
        * functionality. Higher-level packages exist outside of the standard
        * library.
    **/
    static public inline function sendMail(_addr:stdgo.GoString, _a:Auth, _from:stdgo.GoString, _to:stdgo.Slice<stdgo.GoString>, _msg:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return stdgo._internal.net.smtp.Smtp_sendmail.sendMail(_addr, _a, _from, _to, _msg);
}
