package stdgo.encoding.xml;
var header : stdgo.GoString = ("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n" : stdgo.GoString);
var hTMLEntity(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>;
private function get_hTMLEntity():stdgo.GoMap<stdgo.GoString, stdgo.GoString> return stdgo._internal.encoding.xml.Xml_htmlentity.hTMLEntity;
private function set_hTMLEntity(v:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        stdgo._internal.encoding.xml.Xml_htmlentity.hTMLEntity = v;
        return v;
    }
var hTMLAutoClose(get, set) : stdgo.Slice<stdgo.GoString>;
private function get_hTMLAutoClose():stdgo.Slice<stdgo.GoString> return stdgo._internal.encoding.xml.Xml_htmlautoclose.hTMLAutoClose;
private function set_hTMLAutoClose(v:stdgo.Slice<stdgo.GoString>):stdgo.Slice<stdgo.GoString> {
        stdgo._internal.encoding.xml.Xml_htmlautoclose.hTMLAutoClose = v;
        return v;
    }
typedef Marshaler = stdgo._internal.encoding.xml.Xml_marshaler.Marshaler;
typedef MarshalerAttr = stdgo._internal.encoding.xml.Xml_marshalerattr.MarshalerAttr;
typedef Unmarshaler = stdgo._internal.encoding.xml.Xml_unmarshaler.Unmarshaler;
typedef UnmarshalerAttr = stdgo._internal.encoding.xml.Xml_unmarshalerattr.UnmarshalerAttr;
typedef TokenReader = stdgo._internal.encoding.xml.Xml_tokenreader.TokenReader;
typedef Encoder = stdgo._internal.encoding.xml.Xml_encoder.Encoder;
typedef UnsupportedTypeError = stdgo._internal.encoding.xml.Xml_unsupportedtypeerror.UnsupportedTypeError;
typedef TagPathError = stdgo._internal.encoding.xml.Xml_tagpatherror.TagPathError;
typedef SyntaxError = stdgo._internal.encoding.xml.Xml_syntaxerror.SyntaxError;
typedef Name = stdgo._internal.encoding.xml.Xml_name.Name;
typedef Attr = stdgo._internal.encoding.xml.Xml_attr.Attr;
typedef StartElement = stdgo._internal.encoding.xml.Xml_startelement.StartElement;
typedef EndElement = stdgo._internal.encoding.xml.Xml_endelement.EndElement;
typedef ProcInst = stdgo._internal.encoding.xml.Xml_procinst.ProcInst;
typedef Decoder = stdgo._internal.encoding.xml.Xml_decoder.Decoder;
typedef UnmarshalError = stdgo._internal.encoding.xml.Xml_unmarshalerror.UnmarshalError;
typedef Token = stdgo._internal.encoding.xml.Xml_token.Token;
typedef CharData = stdgo._internal.encoding.xml.Xml_chardata.CharData;
typedef Comment = stdgo._internal.encoding.xml.Xml_comment.Comment;
typedef Directive = stdgo._internal.encoding.xml.Xml_directive.Directive;
typedef EncoderPointer = stdgo._internal.encoding.xml.Xml_encoderpointer.EncoderPointer;
typedef UnsupportedTypeErrorPointer = stdgo._internal.encoding.xml.Xml_unsupportedtypeerrorpointer.UnsupportedTypeErrorPointer;
typedef TagPathErrorPointer = stdgo._internal.encoding.xml.Xml_tagpatherrorpointer.TagPathErrorPointer;
typedef SyntaxErrorPointer = stdgo._internal.encoding.xml.Xml_syntaxerrorpointer.SyntaxErrorPointer;
typedef NamePointer = stdgo._internal.encoding.xml.Xml_namepointer.NamePointer;
typedef AttrPointer = stdgo._internal.encoding.xml.Xml_attrpointer.AttrPointer;
typedef StartElementPointer = stdgo._internal.encoding.xml.Xml_startelementpointer.StartElementPointer;
typedef EndElementPointer = stdgo._internal.encoding.xml.Xml_endelementpointer.EndElementPointer;
typedef ProcInstPointer = stdgo._internal.encoding.xml.Xml_procinstpointer.ProcInstPointer;
typedef DecoderPointer = stdgo._internal.encoding.xml.Xml_decoderpointer.DecoderPointer;
typedef UnmarshalErrorPointer = stdgo._internal.encoding.xml.Xml_unmarshalerrorpointer.UnmarshalErrorPointer;
typedef TokenPointer = stdgo._internal.encoding.xml.Xml_tokenpointer.TokenPointer;
typedef CharDataPointer = stdgo._internal.encoding.xml.Xml_chardatapointer.CharDataPointer;
typedef CommentPointer = stdgo._internal.encoding.xml.Xml_commentpointer.CommentPointer;
typedef DirectivePointer = stdgo._internal.encoding.xml.Xml_directivepointer.DirectivePointer;
/**
    * Package xml implements a simple XML 1.0 parser that
    * understands XML name spaces.
**/
class Xml {
    /**
        * Marshal returns the XML encoding of v.
        * 
        * Marshal handles an array or slice by marshaling each of the elements.
        * Marshal handles a pointer by marshaling the value it points at or, if the
        * pointer is nil, by writing nothing. Marshal handles an interface value by
        * marshaling the value it contains or, if the interface value is nil, by
        * writing nothing. Marshal handles all other data by writing one or more XML
        * elements containing the data.
        * 
        * The name for the XML elements is taken from, in order of preference:
        *   - the tag on the XMLName field, if the data is a struct
        *   - the value of the XMLName field of type Name
        *   - the tag of the struct field used to obtain the data
        *   - the name of the struct field used to obtain the data
        *   - the name of the marshaled type
        * 
        * The XML element for a struct contains marshaled elements for each of the
        * exported fields of the struct, with these exceptions:
        *   - the XMLName field, described above, is omitted.
        *   - a field with tag "-" is omitted.
        *   - a field with tag "name,attr" becomes an attribute with
        *     the given name in the XML element.
        *   - a field with tag ",attr" becomes an attribute with the
        *     field name in the XML element.
        *   - a field with tag ",chardata" is written as character data,
        *     not as an XML element.
        *   - a field with tag ",cdata" is written as character data
        *     wrapped in one or more <![CDATA[ ... ]]> tags, not as an XML element.
        *   - a field with tag ",innerxml" is written verbatim, not subject
        *     to the usual marshaling procedure.
        *   - a field with tag ",comment" is written as an XML comment, not
        *     subject to the usual marshaling procedure. It must not contain
        *     the "--" string within it.
        *   - a field with a tag including the "omitempty" option is omitted
        *     if the field value is empty. The empty values are false, 0, any
        *     nil pointer or interface value, and any array, slice, map, or
        *     string of length zero.
        *   - an anonymous struct field is handled as if the fields of its
        *     value were part of the outer struct.
        *   - a field implementing Marshaler is written by calling its MarshalXML
        *     method.
        *   - a field implementing encoding.TextMarshaler is written by encoding the
        *     result of its MarshalText method as text.
        * 
        * If a field uses a tag "a>b>c", then the element c will be nested inside
        * parent elements a and b. Fields that appear next to each other that name
        * the same parent will be enclosed in one XML element.
        * 
        * If the XML name for a struct field is defined by both the field tag and the
        * struct's XMLName field, the names must match.
        * 
        * See MarshalIndent for an example.
        * 
        * Marshal will return an error if asked to marshal a channel, function, or map.
    **/
    static public inline function marshal(_v:stdgo.AnyInterface):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.encoding.xml.Xml_marshal.marshal(_v);
    /**
        * MarshalIndent works like Marshal, but each XML element begins on a new
        * indented line that starts with prefix and is followed by one or more
        * copies of indent according to the nesting depth.
    **/
    static public inline function marshalIndent(_v:stdgo.AnyInterface, _prefix:stdgo.GoString, _indent:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.encoding.xml.Xml_marshalindent.marshalIndent(_v, _prefix, _indent);
    /**
        * NewEncoder returns a new encoder that writes to w.
    **/
    static public inline function newEncoder(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Ref<stdgo._internal.encoding.xml.Xml_encoder.Encoder> return stdgo._internal.encoding.xml.Xml_newencoder.newEncoder(_w);
    /**
        * Unmarshal parses the XML-encoded data and stores the result in
        * the value pointed to by v, which must be an arbitrary struct,
        * slice, or string. Well-formed data that does not fit into v is
        * discarded.
        * 
        * Because Unmarshal uses the reflect package, it can only assign
        * to exported (upper case) fields. Unmarshal uses a case-sensitive
        * comparison to match XML element names to tag values and struct
        * field names.
        * 
        * Unmarshal maps an XML element to a struct using the following rules.
        * In the rules, the tag of a field refers to the value associated with the
        * key 'xml' in the struct field's tag (see the example above).
        * 
        *   - If the struct has a field of type []byte or string with tag
        *     ",innerxml", Unmarshal accumulates the raw XML nested inside the
        *     element in that field. The rest of the rules still apply.
        * 
        *   - If the struct has a field named XMLName of type Name,
        *     Unmarshal records the element name in that field.
        * 
        *   - If the XMLName field has an associated tag of the form
        *     "name" or "namespace-URL name", the XML element must have
        *     the given name (and, optionally, name space) or else Unmarshal
        *     returns an error.
        * 
        *   - If the XML element has an attribute whose name matches a
        *     struct field name with an associated tag containing ",attr" or
        *     the explicit name in a struct field tag of the form "name,attr",
        *     Unmarshal records the attribute value in that field.
        * 
        *   - If the XML element has an attribute not handled by the previous
        *     rule and the struct has a field with an associated tag containing
        *     ",any,attr", Unmarshal records the attribute value in the first
        *     such field.
        * 
        *   - If the XML element contains character data, that data is
        *     accumulated in the first struct field that has tag ",chardata".
        *     The struct field may have type []byte or string.
        *     If there is no such field, the character data is discarded.
        * 
        *   - If the XML element contains comments, they are accumulated in
        *     the first struct field that has tag ",comment".  The struct
        *     field may have type []byte or string. If there is no such
        *     field, the comments are discarded.
        * 
        *   - If the XML element contains a sub-element whose name matches
        *     the prefix of a tag formatted as "a" or "a>b>c", unmarshal
        *     will descend into the XML structure looking for elements with the
        *     given names, and will map the innermost elements to that struct
        *     field. A tag starting with ">" is equivalent to one starting
        *     with the field name followed by ">".
        * 
        *   - If the XML element contains a sub-element whose name matches
        *     a struct field's XMLName tag and the struct field has no
        *     explicit name tag as per the previous rule, unmarshal maps
        *     the sub-element to that struct field.
        * 
        *   - If the XML element contains a sub-element whose name matches a
        *     field without any mode flags (",attr", ",chardata", etc), Unmarshal
        *     maps the sub-element to that struct field.
        * 
        *   - If the XML element contains a sub-element that hasn't matched any
        *     of the above rules and the struct has a field with tag ",any",
        *     unmarshal maps the sub-element to that struct field.
        * 
        *   - An anonymous struct field is handled as if the fields of its
        *     value were part of the outer struct.
        * 
        *   - A struct field with tag "-" is never unmarshaled into.
        * 
        * If Unmarshal encounters a field type that implements the Unmarshaler
        * interface, Unmarshal calls its UnmarshalXML method to produce the value from
        * the XML element.  Otherwise, if the value implements
        * encoding.TextUnmarshaler, Unmarshal calls that value's UnmarshalText method.
        * 
        * Unmarshal maps an XML element to a string or []byte by saving the
        * concatenation of that element's character data in the string or
        * []byte. The saved []byte is never nil.
        * 
        * Unmarshal maps an attribute value to a string or []byte by saving
        * the value in the string or slice.
        * 
        * Unmarshal maps an attribute value to an Attr by saving the attribute,
        * including its name, in the Attr.
        * 
        * Unmarshal maps an XML element or attribute value to a slice by
        * extending the length of the slice and mapping the element or attribute
        * to the newly created value.
        * 
        * Unmarshal maps an XML element or attribute value to a bool by
        * setting it to the boolean value represented by the string. Whitespace
        * is trimmed and ignored.
        * 
        * Unmarshal maps an XML element or attribute value to an integer or
        * floating-point field by setting the field to the result of
        * interpreting the string value in decimal. There is no check for
        * overflow. Whitespace is trimmed and ignored.
        * 
        * Unmarshal maps an XML element to a Name by recording the element
        * name.
        * 
        * Unmarshal maps an XML element to a pointer by setting the pointer
        * to a freshly allocated value and then mapping the element to that value.
        * 
        * A missing element or empty attribute value will be unmarshaled as a zero value.
        * If the field is a slice, a zero value will be appended to the field. Otherwise, the
        * field will be set to its zero value.
    **/
    static public inline function unmarshal(_data:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.AnyInterface):stdgo.Error return stdgo._internal.encoding.xml.Xml_unmarshal.unmarshal(_data, _v);
    /**
        * CopyToken returns a copy of a Token.
    **/
    static public inline function copyToken(_t:Token):stdgo._internal.encoding.xml.Xml_token.Token return stdgo._internal.encoding.xml.Xml_copytoken.copyToken(_t);
    /**
        * NewDecoder creates a new XML parser reading from r.
        * If r does not implement io.ByteReader, NewDecoder will
        * do its own buffering.
    **/
    static public inline function newDecoder(_r:stdgo._internal.io.Io_reader.Reader):stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> return stdgo._internal.encoding.xml.Xml_newdecoder.newDecoder(_r);
    /**
        * NewTokenDecoder creates a new XML parser using an underlying token stream.
    **/
    static public inline function newTokenDecoder(_t:TokenReader):stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> return stdgo._internal.encoding.xml.Xml_newtokendecoder.newTokenDecoder(_t);
    /**
        * EscapeText writes to w the properly escaped XML equivalent
        * of the plain text data s.
    **/
    static public inline function escapeText(_w:stdgo._internal.io.Io_writer.Writer, _s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return stdgo._internal.encoding.xml.Xml_escapetext.escapeText(_w, _s);
    /**
        * Escape is like EscapeText but omits the error return value.
        * It is provided for backwards compatibility with Go 1.0.
        * Code targeting Go 1.1 or later should use EscapeText.
    **/
    static public inline function escape(_w:stdgo._internal.io.Io_writer.Writer, _s:stdgo.Slice<stdgo.GoUInt8>):Void stdgo._internal.encoding.xml.Xml_escape.escape(_w, _s);
}
