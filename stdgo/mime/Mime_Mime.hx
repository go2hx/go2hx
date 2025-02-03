package stdgo.mime;
/**
    Package mime implements parts of the MIME spec.
**/
class Mime {
    /**
        FormatMediaType serializes mediatype t and the parameters
        param as a media type conforming to RFC 2045 and RFC 2616.
        The type and parameter names are written in lower-case.
        When any of the arguments result in a standard violation then
        FormatMediaType returns the empty string.
    **/
    static public inline function formatMediaType(_t:String, _param:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):String {
        final _t = (_t : stdgo.GoString);
        final _param = (_param : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        return stdgo._internal.mime.Mime_formatMediaType.formatMediaType(_t, _param);
    }
    /**
        ParseMediaType parses a media type value and any optional
        parameters, per RFC 1521.  Media types are the values in
        Content-Type and Content-Disposition headers (RFC 2183).
        On success, ParseMediaType returns the media type converted
        to lowercase and trimmed of white space and a non-nil map.
        If there is an error parsing the optional parameter,
        the media type will be returned along with the error
        ErrInvalidMediaParameter.
        The returned map, params, maps from the lowercase
        attribute to the attribute value with its case preserved.
    **/
    static public inline function parseMediaType(_v:String):stdgo.Tuple.Tuple3<String, stdgo.GoMap<stdgo.GoString, stdgo.GoString>, stdgo.Error> {
        final _v = (_v : stdgo.GoString);
        return {
            final obj = stdgo._internal.mime.Mime_parseMediaType.parseMediaType(_v);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        TypeByExtension returns the MIME type associated with the file extension ext.
        The extension ext should begin with a leading dot, as in ".html".
        When ext has no associated type, TypeByExtension returns "".
        
        Extensions are looked up first case-sensitively, then case-insensitively.
        
        The built-in table is small but on unix it is augmented by the local
        system's MIME-info database or mime.types file(s) if available under one or
        more of these names:
        
        	/usr/local/share/mime/globs2
        	/usr/share/mime/globs2
        	/etc/mime.types
        	/etc/apache2/mime.types
        	/etc/apache/mime.types
        
        On Windows, MIME types are extracted from the registry.
        
        Text types have the charset parameter set to "utf-8" by default.
    **/
    static public inline function typeByExtension(_ext:String):String {
        final _ext = (_ext : stdgo.GoString);
        return stdgo._internal.mime.Mime_typeByExtension.typeByExtension(_ext);
    }
    /**
        ExtensionsByType returns the extensions known to be associated with the MIME
        type typ. The returned extensions will each begin with a leading dot, as in
        ".html". When typ has no associated extensions, ExtensionsByType returns an
        nil slice.
    **/
    static public inline function extensionsByType(_typ:String):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _typ = (_typ : stdgo.GoString);
        return {
            final obj = stdgo._internal.mime.Mime_extensionsByType.extensionsByType(_typ);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        AddExtensionType sets the MIME type associated with
        the extension ext to typ. The extension should begin with
        a leading dot, as in ".html".
    **/
    static public inline function addExtensionType(_ext:String, _typ:String):stdgo.Error {
        final _ext = (_ext : stdgo.GoString);
        final _typ = (_typ : stdgo.GoString);
        return stdgo._internal.mime.Mime_addExtensionType.addExtensionType(_ext, _typ);
    }
}
