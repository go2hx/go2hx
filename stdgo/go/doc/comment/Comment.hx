package stdgo.go.doc.comment;
typedef Block = stdgo._internal.go.doc.comment.Comment_block.Block;
typedef Text = stdgo._internal.go.doc.comment.Comment_text.Text;
typedef Doc = stdgo._internal.go.doc.comment.Comment_doc.Doc;
typedef LinkDef = stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef;
typedef Heading = stdgo._internal.go.doc.comment.Comment_heading.Heading;
typedef List = stdgo._internal.go.doc.comment.Comment_list.List;
typedef ListItem = stdgo._internal.go.doc.comment.Comment_listitem.ListItem;
typedef Paragraph = stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph;
typedef Code = stdgo._internal.go.doc.comment.Comment_code.Code;
typedef Link = stdgo._internal.go.doc.comment.Comment_link.Link;
typedef DocLink = stdgo._internal.go.doc.comment.Comment_doclink.DocLink;
typedef Parser = stdgo._internal.go.doc.comment.Comment_parser.Parser;
typedef Printer = stdgo._internal.go.doc.comment.Comment_printer.Printer;
typedef Plain = stdgo._internal.go.doc.comment.Comment_plain.Plain;
typedef Italic = stdgo._internal.go.doc.comment.Comment_italic.Italic;
typedef DocPointer = stdgo._internal.go.doc.comment.Comment_docpointer.DocPointer;
typedef LinkDefPointer = stdgo._internal.go.doc.comment.Comment_linkdefpointer.LinkDefPointer;
typedef HeadingPointer = stdgo._internal.go.doc.comment.Comment_headingpointer.HeadingPointer;
typedef ListPointer = stdgo._internal.go.doc.comment.Comment_listpointer.ListPointer;
typedef ListItemPointer = stdgo._internal.go.doc.comment.Comment_listitempointer.ListItemPointer;
typedef ParagraphPointer = stdgo._internal.go.doc.comment.Comment_paragraphpointer.ParagraphPointer;
typedef CodePointer = stdgo._internal.go.doc.comment.Comment_codepointer.CodePointer;
typedef LinkPointer = stdgo._internal.go.doc.comment.Comment_linkpointer.LinkPointer;
typedef DocLinkPointer = stdgo._internal.go.doc.comment.Comment_doclinkpointer.DocLinkPointer;
typedef ParserPointer = stdgo._internal.go.doc.comment.Comment_parserpointer.ParserPointer;
typedef PrinterPointer = stdgo._internal.go.doc.comment.Comment_printerpointer.PrinterPointer;
typedef PlainPointer = stdgo._internal.go.doc.comment.Comment_plainpointer.PlainPointer;
typedef ItalicPointer = stdgo._internal.go.doc.comment.Comment_italicpointer.ItalicPointer;
/**
    * 
    * Package comment implements parsing and reformatting of Go doc comments,
    * (documentation comments), which are comments that immediately precede
    * a top-level declaration of a package, const, func, type, or var.
    * 
    * Go doc comment syntax is a simplified subset of Markdown that supports
    * links, headings, paragraphs, lists (without nesting), and preformatted text blocks.
    * The details of the syntax are documented at https://go.dev/doc/comment.
    * 
    * To parse the text associated with a doc comment (after removing comment markers),
    * use a [Parser]:
    * 
    * 	var p comment.Parser
    * 	doc := p.Parse(text)
    * 
    * The result is a [*Doc].
    * To reformat it as a doc comment, HTML, Markdown, or plain text,
    * use a [Printer]:
    * 
    * 	var pr comment.Printer
    * 	os.Stdout.Write(pr.Text(doc))
    * 
    * The [Parser] and [Printer] types are structs whose fields can be
    * modified to customize the operations.
    * For details, see the documentation for those types.
    * 
    * Use cases that need additional control over reformatting can
    * implement their own logic by inspecting the parsed syntax itself.
    * See the documentation for [Doc], [Block], [Text] for an overview
    * and links to additional types.
    * 
**/
class Comment {
    /**
        * DefaultLookupPackage is the default package lookup
        * function, used when [Parser].LookupPackage is nil.
        * It recognizes names of the packages from the standard
        * library with single-element import paths, such as math,
        * which would otherwise be impossible to name.
        * 
        * Note that the go/doc package provides a more sophisticated
        * lookup based on the imports used in the current package.
    **/
    static public inline function defaultLookupPackage(_name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } return stdgo._internal.go.doc.comment.Comment_defaultlookuppackage.defaultLookupPackage(_name);
}
