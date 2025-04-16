package stdgo.html;
/**
    * Package html provides functions for escaping and unescaping HTML text.
**/
class Html {
    /**
        * EscapeString escapes special characters like "<" to become "&lt;". It
        * escapes only five such characters: <, >, &, ' and ".
        * UnescapeString(EscapeString(s)) == s always holds, but the converse isn't
        * always true.
    **/
    static public inline function escapeString(_s:stdgo.GoString):stdgo.GoString return stdgo._internal.html.Html_escapestring.escapeString(_s);
    /**
        * UnescapeString unescapes entities like "&lt;" to become "<". It unescapes a
        * larger range of entities than EscapeString escapes. For example, "&aacute;"
        * unescapes to "á", as does "&#225;" and "&#xE1;".
        * UnescapeString(EscapeString(s)) == s always holds, but the converse isn't
        * always true.
    **/
    static public inline function unescapeString(_s:stdgo.GoString):stdgo.GoString return stdgo._internal.html.Html_unescapestring.unescapeString(_s);
}
