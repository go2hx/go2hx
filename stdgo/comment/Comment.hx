package stdgo.comment;
class Block_static_extension {
    static public function _block(t:stdgo._internal.go.doc.comment.Comment_block.Block):Void {
        stdgo._internal.go.doc.comment.Comment_block_static_extension.Block_static_extension._block(t);
    }
}
@:forward abstract Block(stdgo._internal.go.doc.comment.Comment_block.Block) from stdgo._internal.go.doc.comment.Comment_block.Block to stdgo._internal.go.doc.comment.Comment_block.Block {
    @:from
    static function fromHaxeInterface(x:{ function _block():Void; }):Block {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Block = { _block : () -> x._block(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Text_static_extension {
    static public function _text(t:stdgo._internal.go.doc.comment.Comment_text.Text):Void {
        stdgo._internal.go.doc.comment.Comment_text_static_extension.Text_static_extension._text(t);
    }
}
@:forward abstract Text(stdgo._internal.go.doc.comment.Comment_text.Text) from stdgo._internal.go.doc.comment.Comment_text.Text to stdgo._internal.go.doc.comment.Comment_text.Text {
    @:from
    static function fromHaxeInterface(x:{ function _text():Void; }):Text {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Text = { _text : () -> x._text(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.go.doc.comment.Comment.T_htmlPrinter_static_extension) @:dox(hide) abstract T_htmlPrinter(stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter) from stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter to stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter {
    public var printer(get, set) : Printer;
    function get_printer():Printer return this.printer;
    function set_printer(v:Printer):Printer {
        this.printer = (v : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer>);
        return v;
    }
    public var _tight(get, set) : Bool;
    function get__tight():Bool return this._tight;
    function set__tight(v:Bool):Bool {
        this._tight = v;
        return v;
    }
    public function new(?printer:Printer, ?_tight:Bool) this = new stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter((printer : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer>), _tight);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.doc.comment.Comment.T_mdPrinter_static_extension) @:dox(hide) abstract T_mdPrinter(stdgo._internal.go.doc.comment.Comment_t_mdprinter.T_mdPrinter) from stdgo._internal.go.doc.comment.Comment_t_mdprinter.T_mdPrinter to stdgo._internal.go.doc.comment.Comment_t_mdprinter.T_mdPrinter {
    public var printer(get, set) : Printer;
    function get_printer():Printer return this.printer;
    function set_printer(v:Printer):Printer {
        this.printer = (v : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer>);
        return v;
    }
    public var _headingPrefix(get, set) : String;
    function get__headingPrefix():String return this._headingPrefix;
    function set__headingPrefix(v:String):String {
        this._headingPrefix = (v : stdgo.GoString);
        return v;
    }
    public var _raw(get, set) : stdgo._internal.bytes.Bytes_buffer.Buffer;
    function get__raw():stdgo._internal.bytes.Bytes_buffer.Buffer return this._raw;
    function set__raw(v:stdgo._internal.bytes.Bytes_buffer.Buffer):stdgo._internal.bytes.Bytes_buffer.Buffer {
        this._raw = v;
        return v;
    }
    public function new(?printer:Printer, ?_headingPrefix:String, ?_raw:stdgo._internal.bytes.Bytes_buffer.Buffer) this = new stdgo._internal.go.doc.comment.Comment_t_mdprinter.T_mdPrinter((printer : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer>), (_headingPrefix : stdgo.GoString), _raw);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.doc.comment.Comment.Doc_static_extension) abstract Doc(stdgo._internal.go.doc.comment.Comment_doc.Doc) from stdgo._internal.go.doc.comment.Comment_doc.Doc to stdgo._internal.go.doc.comment.Comment_doc.Doc {
    public var content(get, set) : Array<Block>;
    function get_content():Array<Block> return [for (i in this.content) i];
    function set_content(v:Array<Block>):Array<Block> {
        this.content = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_block.Block>);
        return v;
    }
    public var links(get, set) : Array<LinkDef>;
    function get_links():Array<LinkDef> return [for (i in this.links) i];
    function set_links(v:Array<LinkDef>):Array<LinkDef> {
        this.links = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef>>);
        return v;
    }
    public function new(?content:Array<Block>, ?links:Array<LinkDef>) this = new stdgo._internal.go.doc.comment.Comment_doc.Doc(([for (i in content) i] : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_block.Block>), ([for (i in links) (i : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.doc.comment.Comment.LinkDef_static_extension) abstract LinkDef(stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef) from stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef to stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef {
    public var text(get, set) : String;
    function get_text():String return this.text;
    function set_text(v:String):String {
        this.text = (v : stdgo.GoString);
        return v;
    }
    public var uRL(get, set) : String;
    function get_uRL():String return this.uRL;
    function set_uRL(v:String):String {
        this.uRL = (v : stdgo.GoString);
        return v;
    }
    public var used(get, set) : Bool;
    function get_used():Bool return this.used;
    function set_used(v:Bool):Bool {
        this.used = v;
        return v;
    }
    public function new(?text:String, ?uRL:String, ?used:Bool) this = new stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef((text : stdgo.GoString), (uRL : stdgo.GoString), used);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.doc.comment.Comment.Heading_static_extension) abstract Heading(stdgo._internal.go.doc.comment.Comment_heading.Heading) from stdgo._internal.go.doc.comment.Comment_heading.Heading to stdgo._internal.go.doc.comment.Comment_heading.Heading {
    public var text(get, set) : Array<Text>;
    function get_text():Array<Text> return [for (i in this.text) i];
    function set_text(v:Array<Text>):Array<Text> {
        this.text = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>);
        return v;
    }
    public function new(?text:Array<Text>) this = new stdgo._internal.go.doc.comment.Comment_heading.Heading(([for (i in text) i] : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.doc.comment.Comment.List_static_extension) abstract List(stdgo._internal.go.doc.comment.Comment_list.List) from stdgo._internal.go.doc.comment.Comment_list.List to stdgo._internal.go.doc.comment.Comment_list.List {
    public var items(get, set) : Array<ListItem>;
    function get_items():Array<ListItem> return [for (i in this.items) i];
    function set_items(v:Array<ListItem>):Array<ListItem> {
        this.items = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_listitem.ListItem>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.comment.Comment_listitem.ListItem>>);
        return v;
    }
    public var forceBlankBefore(get, set) : Bool;
    function get_forceBlankBefore():Bool return this.forceBlankBefore;
    function set_forceBlankBefore(v:Bool):Bool {
        this.forceBlankBefore = v;
        return v;
    }
    public var forceBlankBetween(get, set) : Bool;
    function get_forceBlankBetween():Bool return this.forceBlankBetween;
    function set_forceBlankBetween(v:Bool):Bool {
        this.forceBlankBetween = v;
        return v;
    }
    public function new(?items:Array<ListItem>, ?forceBlankBefore:Bool, ?forceBlankBetween:Bool) this = new stdgo._internal.go.doc.comment.Comment_list.List(([for (i in items) (i : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_listitem.ListItem>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.comment.Comment_listitem.ListItem>>), forceBlankBefore, forceBlankBetween);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.doc.comment.Comment.ListItem_static_extension) abstract ListItem(stdgo._internal.go.doc.comment.Comment_listitem.ListItem) from stdgo._internal.go.doc.comment.Comment_listitem.ListItem to stdgo._internal.go.doc.comment.Comment_listitem.ListItem {
    public var number(get, set) : String;
    function get_number():String return this.number;
    function set_number(v:String):String {
        this.number = (v : stdgo.GoString);
        return v;
    }
    public var content(get, set) : Array<Block>;
    function get_content():Array<Block> return [for (i in this.content) i];
    function set_content(v:Array<Block>):Array<Block> {
        this.content = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_block.Block>);
        return v;
    }
    public function new(?number:String, ?content:Array<Block>) this = new stdgo._internal.go.doc.comment.Comment_listitem.ListItem((number : stdgo.GoString), ([for (i in content) i] : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_block.Block>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.doc.comment.Comment.Paragraph_static_extension) abstract Paragraph(stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph) from stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph to stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph {
    public var text(get, set) : Array<Text>;
    function get_text():Array<Text> return [for (i in this.text) i];
    function set_text(v:Array<Text>):Array<Text> {
        this.text = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>);
        return v;
    }
    public function new(?text:Array<Text>) this = new stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph(([for (i in text) i] : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.doc.comment.Comment.Code_static_extension) abstract Code(stdgo._internal.go.doc.comment.Comment_code.Code) from stdgo._internal.go.doc.comment.Comment_code.Code to stdgo._internal.go.doc.comment.Comment_code.Code {
    public var text(get, set) : String;
    function get_text():String return this.text;
    function set_text(v:String):String {
        this.text = (v : stdgo.GoString);
        return v;
    }
    public function new(?text:String) this = new stdgo._internal.go.doc.comment.Comment_code.Code((text : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.doc.comment.Comment.Link_static_extension) abstract Link(stdgo._internal.go.doc.comment.Comment_link.Link) from stdgo._internal.go.doc.comment.Comment_link.Link to stdgo._internal.go.doc.comment.Comment_link.Link {
    public var auto(get, set) : Bool;
    function get_auto():Bool return this.auto;
    function set_auto(v:Bool):Bool {
        this.auto = v;
        return v;
    }
    public var text(get, set) : Array<Text>;
    function get_text():Array<Text> return [for (i in this.text) i];
    function set_text(v:Array<Text>):Array<Text> {
        this.text = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>);
        return v;
    }
    public var uRL(get, set) : String;
    function get_uRL():String return this.uRL;
    function set_uRL(v:String):String {
        this.uRL = (v : stdgo.GoString);
        return v;
    }
    public function new(?auto:Bool, ?text:Array<Text>, ?uRL:String) this = new stdgo._internal.go.doc.comment.Comment_link.Link(auto, ([for (i in text) i] : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>), (uRL : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.doc.comment.Comment.DocLink_static_extension) abstract DocLink(stdgo._internal.go.doc.comment.Comment_doclink.DocLink) from stdgo._internal.go.doc.comment.Comment_doclink.DocLink to stdgo._internal.go.doc.comment.Comment_doclink.DocLink {
    public var text(get, set) : Array<Text>;
    function get_text():Array<Text> return [for (i in this.text) i];
    function set_text(v:Array<Text>):Array<Text> {
        this.text = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>);
        return v;
    }
    public var importPath(get, set) : String;
    function get_importPath():String return this.importPath;
    function set_importPath(v:String):String {
        this.importPath = (v : stdgo.GoString);
        return v;
    }
    public var recv(get, set) : String;
    function get_recv():String return this.recv;
    function set_recv(v:String):String {
        this.recv = (v : stdgo.GoString);
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public function new(?text:Array<Text>, ?importPath:String, ?recv:String, ?name:String) this = new stdgo._internal.go.doc.comment.Comment_doclink.DocLink(([for (i in text) i] : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>), (importPath : stdgo.GoString), (recv : stdgo.GoString), (name : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.doc.comment.Comment.Parser_static_extension) abstract Parser(stdgo._internal.go.doc.comment.Comment_parser.Parser) from stdgo._internal.go.doc.comment.Comment_parser.Parser to stdgo._internal.go.doc.comment.Comment_parser.Parser {
    public var words(get, set) : Map<String, String>;
    function get_words():Map<String, String> return {
        final __obj__:Map<String, String> = [];
        for (key => value in this.words) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_words(v:Map<String, String>):Map<String, String> {
        this.words = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoString>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.GoString);
            };
            __obj__;
        };
        return v;
    }
    public var lookupPackage(get, set) : String -> stdgo.Tuple<String, Bool>;
    function get_lookupPackage():String -> stdgo.Tuple<String, Bool> return _0 -> this.lookupPackage(_0);
    function set_lookupPackage(v:String -> stdgo.Tuple<String, Bool>):String -> stdgo.Tuple<String, Bool> {
        this.lookupPackage = v;
        return v;
    }
    public var lookupSym(get, set) : (String, String) -> Bool;
    function get_lookupSym():(String, String) -> Bool return (_0, _1) -> this.lookupSym(_0, _1);
    function set_lookupSym(v:(String, String) -> Bool):(String, String) -> Bool {
        this.lookupSym = v;
        return v;
    }
    public function new(?words:Map<String, String>, ?lookupPackage:String -> stdgo.Tuple<String, Bool>, ?lookupSym:(String, String) -> Bool) this = new stdgo._internal.go.doc.comment.Comment_parser.Parser({
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoString>();
        for (key => value in words) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.GoString);
        };
        __obj__;
    }, lookupPackage, lookupSym);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.doc.comment.Comment.T_parseDoc_static_extension) @:dox(hide) abstract T_parseDoc(stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc) from stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc to stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc {
    public var parser(get, set) : Parser;
    function get_parser():Parser return this.parser;
    function set_parser(v:Parser):Parser {
        this.parser = (v : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_parser.Parser>);
        return v;
    }
    public var doc(get, set) : Doc;
    function get_doc():Doc return this.doc;
    function set_doc(v:Doc):Doc {
        this.doc = (v : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>);
        return v;
    }
    public var _links(get, set) : Map<String, LinkDef>;
    function get__links():Map<String, LinkDef> return {
        final __obj__:Map<String, LinkDef> = [];
        for (key => value in this._links) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__links(v:Map<String, LinkDef>):Map<String, LinkDef> {
        this._links = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef>);
            };
            __obj__;
        };
        return v;
    }
    public var _lines(get, set) : Array<String>;
    function get__lines():Array<String> return [for (i in this._lines) i];
    function set__lines(v:Array<String>):Array<String> {
        this._lines = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _lookupSym(get, set) : (String, String) -> Bool;
    function get__lookupSym():(String, String) -> Bool return (_0, _1) -> this._lookupSym(_0, _1);
    function set__lookupSym(v:(String, String) -> Bool):(String, String) -> Bool {
        this._lookupSym = v;
        return v;
    }
    public function new(?parser:Parser, ?doc:Doc, ?_links:Map<String, LinkDef>, ?_lines:Array<String>, ?_lookupSym:(String, String) -> Bool) this = new stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc((parser : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_parser.Parser>), (doc : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>), {
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef>>();
        for (key => value in _links) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef>);
        };
        __obj__;
    }, ([for (i in _lines) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), _lookupSym);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.doc.comment.Comment.T_span_static_extension) @:dox(hide) abstract T_span(stdgo._internal.go.doc.comment.Comment_t_span.T_span) from stdgo._internal.go.doc.comment.Comment_t_span.T_span to stdgo._internal.go.doc.comment.Comment_t_span.T_span {
    public var _start(get, set) : StdTypes.Int;
    function get__start():StdTypes.Int return this._start;
    function set__start(v:StdTypes.Int):StdTypes.Int {
        this._start = (v : stdgo.GoInt);
        return v;
    }
    public var _end(get, set) : StdTypes.Int;
    function get__end():StdTypes.Int return this._end;
    function set__end(v:StdTypes.Int):StdTypes.Int {
        this._end = (v : stdgo.GoInt);
        return v;
    }
    public var _kind(get, set) : T_spanKind;
    function get__kind():T_spanKind return this._kind;
    function set__kind(v:T_spanKind):T_spanKind {
        this._kind = v;
        return v;
    }
    public function new(?_start:StdTypes.Int, ?_end:StdTypes.Int, ?_kind:T_spanKind) this = new stdgo._internal.go.doc.comment.Comment_t_span.T_span((_start : stdgo.GoInt), (_end : stdgo.GoInt), _kind);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.doc.comment.Comment.Printer_static_extension) abstract Printer(stdgo._internal.go.doc.comment.Comment_printer.Printer) from stdgo._internal.go.doc.comment.Comment_printer.Printer to stdgo._internal.go.doc.comment.Comment_printer.Printer {
    public var headingLevel(get, set) : StdTypes.Int;
    function get_headingLevel():StdTypes.Int return this.headingLevel;
    function set_headingLevel(v:StdTypes.Int):StdTypes.Int {
        this.headingLevel = (v : stdgo.GoInt);
        return v;
    }
    public var headingID(get, set) : Heading -> String;
    function get_headingID():Heading -> String return _0 -> this.headingID(_0);
    function set_headingID(v:Heading -> String):Heading -> String {
        this.headingID = v;
        return v;
    }
    public var docLinkURL(get, set) : DocLink -> String;
    function get_docLinkURL():DocLink -> String return _0 -> this.docLinkURL(_0);
    function set_docLinkURL(v:DocLink -> String):DocLink -> String {
        this.docLinkURL = v;
        return v;
    }
    public var docLinkBaseURL(get, set) : String;
    function get_docLinkBaseURL():String return this.docLinkBaseURL;
    function set_docLinkBaseURL(v:String):String {
        this.docLinkBaseURL = (v : stdgo.GoString);
        return v;
    }
    public var textPrefix(get, set) : String;
    function get_textPrefix():String return this.textPrefix;
    function set_textPrefix(v:String):String {
        this.textPrefix = (v : stdgo.GoString);
        return v;
    }
    public var textCodePrefix(get, set) : String;
    function get_textCodePrefix():String return this.textCodePrefix;
    function set_textCodePrefix(v:String):String {
        this.textCodePrefix = (v : stdgo.GoString);
        return v;
    }
    public var textWidth(get, set) : StdTypes.Int;
    function get_textWidth():StdTypes.Int return this.textWidth;
    function set_textWidth(v:StdTypes.Int):StdTypes.Int {
        this.textWidth = (v : stdgo.GoInt);
        return v;
    }
    public function new(?headingLevel:StdTypes.Int, ?headingID:Heading -> String, ?docLinkURL:DocLink -> String, ?docLinkBaseURL:String, ?textPrefix:String, ?textCodePrefix:String, ?textWidth:StdTypes.Int) this = new stdgo._internal.go.doc.comment.Comment_printer.Printer((headingLevel : stdgo.GoInt), headingID, docLinkURL, (docLinkBaseURL : stdgo.GoString), (textPrefix : stdgo.GoString), (textCodePrefix : stdgo.GoString), (textWidth : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.doc.comment.Comment.T_commentPrinter_static_extension) @:dox(hide) abstract T_commentPrinter(stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter) from stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter to stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter {
    public var printer(get, set) : Printer;
    function get_printer():Printer return this.printer;
    function set_printer(v:Printer):Printer {
        this.printer = (v : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer>);
        return v;
    }
    public function new(?printer:Printer) this = new stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter((printer : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.doc.comment.Comment.T_textPrinter_static_extension) @:dox(hide) abstract T_textPrinter(stdgo._internal.go.doc.comment.Comment_t_textprinter.T_textPrinter) from stdgo._internal.go.doc.comment.Comment_t_textprinter.T_textPrinter to stdgo._internal.go.doc.comment.Comment_t_textprinter.T_textPrinter {
    public var printer(get, set) : Printer;
    function get_printer():Printer return this.printer;
    function set_printer(v:Printer):Printer {
        this.printer = (v : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer>);
        return v;
    }
    public var _long(get, set) : stdgo._internal.strings.Strings_builder.Builder;
    function get__long():stdgo._internal.strings.Strings_builder.Builder return this._long;
    function set__long(v:stdgo._internal.strings.Strings_builder.Builder):stdgo._internal.strings.Strings_builder.Builder {
        this._long = v;
        return v;
    }
    public var _prefix(get, set) : String;
    function get__prefix():String return this._prefix;
    function set__prefix(v:String):String {
        this._prefix = (v : stdgo.GoString);
        return v;
    }
    public var _codePrefix(get, set) : String;
    function get__codePrefix():String return this._codePrefix;
    function set__codePrefix(v:String):String {
        this._codePrefix = (v : stdgo.GoString);
        return v;
    }
    public var _width(get, set) : StdTypes.Int;
    function get__width():StdTypes.Int return this._width;
    function set__width(v:StdTypes.Int):StdTypes.Int {
        this._width = (v : stdgo.GoInt);
        return v;
    }
    public function new(?printer:Printer, ?_long:stdgo._internal.strings.Strings_builder.Builder, ?_prefix:String, ?_codePrefix:String, ?_width:StdTypes.Int) this = new stdgo._internal.go.doc.comment.Comment_t_textprinter.T_textPrinter((printer : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer>), _long, (_prefix : stdgo.GoString), (_codePrefix : stdgo.GoString), (_width : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef Plain = stdgo._internal.go.doc.comment.Comment_plain.Plain;
typedef Italic = stdgo._internal.go.doc.comment.Comment_italic.Italic;
@:dox(hide) typedef T_spanKind = stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind;
@:structInit @:using(stdgo.go.doc.comment.Comment.T__wrap___localname___score_6194_static_extension) @:dox(hide) abstract T__wrap___localname___score_6194(stdgo._internal.go.doc.comment.Comment_t__wrap___localname___score_6194.T__wrap___localname___score_6194) from stdgo._internal.go.doc.comment.Comment_t__wrap___localname___score_6194.T__wrap___localname___score_6194 to stdgo._internal.go.doc.comment.Comment_t__wrap___localname___score_6194.T__wrap___localname___score_6194 {
    public var _hi(get, set) : haxe.Int64;
    function get__hi():haxe.Int64 return this._hi;
    function set__hi(v:haxe.Int64):haxe.Int64 {
        this._hi = (v : stdgo.GoInt64);
        return v;
    }
    public var _lo(get, set) : haxe.Int64;
    function get__lo():haxe.Int64 return this._lo;
    function set__lo(v:haxe.Int64):haxe.Int64 {
        this._lo = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_hi:haxe.Int64, ?_lo:haxe.Int64) this = new stdgo._internal.go.doc.comment.Comment_t__wrap___localname___score_6194.T__wrap___localname___score_6194((_hi : stdgo.GoInt64), (_lo : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_htmlPrinterPointer = stdgo._internal.go.doc.comment.Comment_t_htmlprinterpointer.T_htmlPrinterPointer;
@:dox(hide) class T_htmlPrinter_static_extension {
    static public function _escape(_p:T_htmlPrinter, _out:stdgo._internal.bytes.Bytes_buffer.Buffer, _s:String):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter>);
        final _out = (_out : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        final _s = (_s : stdgo.GoString);
        stdgo._internal.go.doc.comment.Comment_t_htmlprinter_static_extension.T_htmlPrinter_static_extension._escape(_p, _out, _s);
    }
    static public function _text(_p:T_htmlPrinter, _out:stdgo._internal.bytes.Bytes_buffer.Buffer, _x:Array<Text>):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter>);
        final _out = (_out : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        final _x = ([for (i in _x) i] : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>);
        stdgo._internal.go.doc.comment.Comment_t_htmlprinter_static_extension.T_htmlPrinter_static_extension._text(_p, _out, _x);
    }
    static public function _block(_p:T_htmlPrinter, _out:stdgo._internal.bytes.Bytes_buffer.Buffer, _x:Block):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter>);
        final _out = (_out : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        stdgo._internal.go.doc.comment.Comment_t_htmlprinter_static_extension.T_htmlPrinter_static_extension._block(_p, _out, _x);
    }
    public static function _headingLevel(__self__:stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter):StdTypes.Int {
        return stdgo._internal.go.doc.comment.Comment_t_htmlprinter_static_extension.T_htmlPrinter_static_extension._headingLevel(__self__);
    }
    public static function _headingID(__self__:stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter, _0:Heading):String {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>);
        return stdgo._internal.go.doc.comment.Comment_t_htmlprinter_static_extension.T_htmlPrinter_static_extension._headingID(__self__, _0);
    }
    public static function _docLinkURL(__self__:stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter, _0:DocLink):String {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>);
        return stdgo._internal.go.doc.comment.Comment_t_htmlprinter_static_extension.T_htmlPrinter_static_extension._docLinkURL(__self__, _0);
    }
    public static function text(__self__:stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter, _0:Doc):Array<std.UInt> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>);
        return [for (i in stdgo._internal.go.doc.comment.Comment_t_htmlprinter_static_extension.T_htmlPrinter_static_extension.text(__self__, _0)) i];
    }
    public static function markdown(__self__:stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter, _0:Doc):Array<std.UInt> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>);
        return [for (i in stdgo._internal.go.doc.comment.Comment_t_htmlprinter_static_extension.T_htmlPrinter_static_extension.markdown(__self__, _0)) i];
    }
    public static function hTML(__self__:stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter, _0:Doc):Array<std.UInt> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>);
        return [for (i in stdgo._internal.go.doc.comment.Comment_t_htmlprinter_static_extension.T_htmlPrinter_static_extension.hTML(__self__, _0)) i];
    }
    public static function comment(__self__:stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter, _0:Doc):Array<std.UInt> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>);
        return [for (i in stdgo._internal.go.doc.comment.Comment_t_htmlprinter_static_extension.T_htmlPrinter_static_extension.comment(__self__, _0)) i];
    }
}
@:dox(hide) typedef T_mdPrinterPointer = stdgo._internal.go.doc.comment.Comment_t_mdprinterpointer.T_mdPrinterPointer;
@:dox(hide) class T_mdPrinter_static_extension {
    static public function _escape(_p:T_mdPrinter, _out:stdgo._internal.bytes.Bytes_buffer.Buffer, _s:String):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_mdprinter.T_mdPrinter>);
        final _out = (_out : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        final _s = (_s : stdgo.GoString);
        stdgo._internal.go.doc.comment.Comment_t_mdprinter_static_extension.T_mdPrinter_static_extension._escape(_p, _out, _s);
    }
    static public function _rawText(_p:T_mdPrinter, _out:stdgo._internal.bytes.Bytes_buffer.Buffer, _x:Array<Text>):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_mdprinter.T_mdPrinter>);
        final _out = (_out : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        final _x = ([for (i in _x) i] : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>);
        stdgo._internal.go.doc.comment.Comment_t_mdprinter_static_extension.T_mdPrinter_static_extension._rawText(_p, _out, _x);
    }
    static public function _text(_p:T_mdPrinter, _out:stdgo._internal.bytes.Bytes_buffer.Buffer, _x:Array<Text>):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_mdprinter.T_mdPrinter>);
        final _out = (_out : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        final _x = ([for (i in _x) i] : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>);
        stdgo._internal.go.doc.comment.Comment_t_mdprinter_static_extension.T_mdPrinter_static_extension._text(_p, _out, _x);
    }
    static public function _block(_p:T_mdPrinter, _out:stdgo._internal.bytes.Bytes_buffer.Buffer, _x:Block):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_mdprinter.T_mdPrinter>);
        final _out = (_out : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        stdgo._internal.go.doc.comment.Comment_t_mdprinter_static_extension.T_mdPrinter_static_extension._block(_p, _out, _x);
    }
    public static function _headingLevel(__self__:stdgo._internal.go.doc.comment.Comment_t_mdprinter.T_mdPrinter):StdTypes.Int {
        return stdgo._internal.go.doc.comment.Comment_t_mdprinter_static_extension.T_mdPrinter_static_extension._headingLevel(__self__);
    }
    public static function _headingID(__self__:stdgo._internal.go.doc.comment.Comment_t_mdprinter.T_mdPrinter, _0:Heading):String {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>);
        return stdgo._internal.go.doc.comment.Comment_t_mdprinter_static_extension.T_mdPrinter_static_extension._headingID(__self__, _0);
    }
    public static function _docLinkURL(__self__:stdgo._internal.go.doc.comment.Comment_t_mdprinter.T_mdPrinter, _0:DocLink):String {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>);
        return stdgo._internal.go.doc.comment.Comment_t_mdprinter_static_extension.T_mdPrinter_static_extension._docLinkURL(__self__, _0);
    }
    public static function text(__self__:stdgo._internal.go.doc.comment.Comment_t_mdprinter.T_mdPrinter, _0:Doc):Array<std.UInt> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>);
        return [for (i in stdgo._internal.go.doc.comment.Comment_t_mdprinter_static_extension.T_mdPrinter_static_extension.text(__self__, _0)) i];
    }
    public static function markdown(__self__:stdgo._internal.go.doc.comment.Comment_t_mdprinter.T_mdPrinter, _0:Doc):Array<std.UInt> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>);
        return [for (i in stdgo._internal.go.doc.comment.Comment_t_mdprinter_static_extension.T_mdPrinter_static_extension.markdown(__self__, _0)) i];
    }
    public static function hTML(__self__:stdgo._internal.go.doc.comment.Comment_t_mdprinter.T_mdPrinter, _0:Doc):Array<std.UInt> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>);
        return [for (i in stdgo._internal.go.doc.comment.Comment_t_mdprinter_static_extension.T_mdPrinter_static_extension.hTML(__self__, _0)) i];
    }
    public static function comment(__self__:stdgo._internal.go.doc.comment.Comment_t_mdprinter.T_mdPrinter, _0:Doc):Array<std.UInt> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>);
        return [for (i in stdgo._internal.go.doc.comment.Comment_t_mdprinter_static_extension.T_mdPrinter_static_extension.comment(__self__, _0)) i];
    }
}
typedef DocPointer = stdgo._internal.go.doc.comment.Comment_docpointer.DocPointer;
class Doc_static_extension {

}
typedef LinkDefPointer = stdgo._internal.go.doc.comment.Comment_linkdefpointer.LinkDefPointer;
class LinkDef_static_extension {

}
typedef HeadingPointer = stdgo._internal.go.doc.comment.Comment_headingpointer.HeadingPointer;
class Heading_static_extension {
    static public function defaultID(_h:Heading):String {
        final _h = (_h : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>);
        return stdgo._internal.go.doc.comment.Comment_heading_static_extension.Heading_static_extension.defaultID(_h);
    }
    static public function _block(_:Heading):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>);
        stdgo._internal.go.doc.comment.Comment_heading_static_extension.Heading_static_extension._block(_);
    }
}
typedef ListPointer = stdgo._internal.go.doc.comment.Comment_listpointer.ListPointer;
class List_static_extension {
    static public function blankBetween(_l:List):Bool {
        final _l = (_l : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List>);
        return stdgo._internal.go.doc.comment.Comment_list_static_extension.List_static_extension.blankBetween(_l);
    }
    static public function blankBefore(_l:List):Bool {
        final _l = (_l : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List>);
        return stdgo._internal.go.doc.comment.Comment_list_static_extension.List_static_extension.blankBefore(_l);
    }
    static public function _block(_:List):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List>);
        stdgo._internal.go.doc.comment.Comment_list_static_extension.List_static_extension._block(_);
    }
}
typedef ListItemPointer = stdgo._internal.go.doc.comment.Comment_listitempointer.ListItemPointer;
class ListItem_static_extension {

}
typedef ParagraphPointer = stdgo._internal.go.doc.comment.Comment_paragraphpointer.ParagraphPointer;
class Paragraph_static_extension {
    static public function _block(_:Paragraph):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>);
        stdgo._internal.go.doc.comment.Comment_paragraph_static_extension.Paragraph_static_extension._block(_);
    }
}
typedef CodePointer = stdgo._internal.go.doc.comment.Comment_codepointer.CodePointer;
class Code_static_extension {
    static public function _block(_:Code):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_code.Code>);
        stdgo._internal.go.doc.comment.Comment_code_static_extension.Code_static_extension._block(_);
    }
}
typedef LinkPointer = stdgo._internal.go.doc.comment.Comment_linkpointer.LinkPointer;
class Link_static_extension {
    static public function _text(_:Link):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_link.Link>);
        stdgo._internal.go.doc.comment.Comment_link_static_extension.Link_static_extension._text(_);
    }
}
typedef DocLinkPointer = stdgo._internal.go.doc.comment.Comment_doclinkpointer.DocLinkPointer;
class DocLink_static_extension {
    static public function defaultURL(_l:DocLink, _baseURL:String):String {
        final _l = (_l : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>);
        final _baseURL = (_baseURL : stdgo.GoString);
        return stdgo._internal.go.doc.comment.Comment_doclink_static_extension.DocLink_static_extension.defaultURL(_l, _baseURL);
    }
    static public function _text(_:DocLink):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>);
        stdgo._internal.go.doc.comment.Comment_doclink_static_extension.DocLink_static_extension._text(_);
    }
}
typedef ParserPointer = stdgo._internal.go.doc.comment.Comment_parserpointer.ParserPointer;
class Parser_static_extension {
    static public function parse(_p:Parser, _text:String):Doc {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_parser.Parser>);
        final _text = (_text : stdgo.GoString);
        return stdgo._internal.go.doc.comment.Comment_parser_static_extension.Parser_static_extension.parse(_p, _text);
    }
}
@:dox(hide) typedef T_parseDocPointer = stdgo._internal.go.doc.comment.Comment_t_parsedocpointer.T_parseDocPointer;
@:dox(hide) class T_parseDoc_static_extension {
    static public function _parseText(_d:T_parseDoc, _out:Array<Text>, _s:String, _autoLink:Bool):Array<Text> {
        final _d = (_d : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc>);
        final _out = ([for (i in _out) i] : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>);
        final _s = (_s : stdgo.GoString);
        return [for (i in stdgo._internal.go.doc.comment.Comment_t_parsedoc_static_extension.T_parseDoc_static_extension._parseText(_d, _out, _s, _autoLink)) i];
    }
    static public function _docLink(_d:T_parseDoc, _text:String, _before:String, _after:String):stdgo.Tuple<DocLink, Bool> {
        final _d = (_d : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc>);
        final _text = (_text : stdgo.GoString);
        final _before = (_before : stdgo.GoString);
        final _after = (_after : stdgo.GoString);
        return {
            final obj = stdgo._internal.go.doc.comment.Comment_t_parsedoc_static_extension.T_parseDoc_static_extension._docLink(_d, _text, _before, _after);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _parseLinkedText(_d:T_parseDoc, _text:String):Array<Text> {
        final _d = (_d : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc>);
        final _text = (_text : stdgo.GoString);
        return [for (i in stdgo._internal.go.doc.comment.Comment_t_parsedoc_static_extension.T_parseDoc_static_extension._parseLinkedText(_d, _text)) i];
    }
    static public function _list(_d:T_parseDoc, _lines:Array<String>, _forceBlankBefore:Bool):List {
        final _d = (_d : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc>);
        final _lines = ([for (i in _lines) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return stdgo._internal.go.doc.comment.Comment_t_parsedoc_static_extension.T_parseDoc_static_extension._list(_d, _lines, _forceBlankBefore);
    }
    static public function _paragraph(_d:T_parseDoc, _lines:Array<String>):Block {
        final _d = (_d : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc>);
        final _lines = ([for (i in _lines) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return stdgo._internal.go.doc.comment.Comment_t_parsedoc_static_extension.T_parseDoc_static_extension._paragraph(_d, _lines);
    }
    static public function _code(_d:T_parseDoc, _lines:Array<String>):Code {
        final _d = (_d : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc>);
        final _lines = ([for (i in _lines) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return stdgo._internal.go.doc.comment.Comment_t_parsedoc_static_extension.T_parseDoc_static_extension._code(_d, _lines);
    }
    static public function _heading(_d:T_parseDoc, _line:String):Block {
        final _d = (_d : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc>);
        final _line = (_line : stdgo.GoString);
        return stdgo._internal.go.doc.comment.Comment_t_parsedoc_static_extension.T_parseDoc_static_extension._heading(_d, _line);
    }
    static public function _oldHeading(_d:T_parseDoc, _line:String):Block {
        final _d = (_d : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc>);
        final _line = (_line : stdgo.GoString);
        return stdgo._internal.go.doc.comment.Comment_t_parsedoc_static_extension.T_parseDoc_static_extension._oldHeading(_d, _line);
    }
    static public function _lookupPkg(_d:T_parseDoc, _pkg:String):stdgo.Tuple<String, Bool> {
        final _d = (_d : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc>);
        final _pkg = (_pkg : stdgo.GoString);
        return {
            final obj = stdgo._internal.go.doc.comment.Comment_t_parsedoc_static_extension.T_parseDoc_static_extension._lookupPkg(_d, _pkg);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function parse(__self__:stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc, _0:String):Doc {
        final _0 = (_0 : stdgo.GoString);
        return stdgo._internal.go.doc.comment.Comment_t_parsedoc_static_extension.T_parseDoc_static_extension.parse(__self__, _0);
    }
}
@:dox(hide) typedef T_spanPointer = stdgo._internal.go.doc.comment.Comment_t_spanpointer.T_spanPointer;
@:dox(hide) class T_span_static_extension {

}
typedef PrinterPointer = stdgo._internal.go.doc.comment.Comment_printerpointer.PrinterPointer;
class Printer_static_extension {
    static public function text(_p:Printer, _d:Doc):Array<std.UInt> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer>);
        final _d = (_d : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>);
        return [for (i in stdgo._internal.go.doc.comment.Comment_printer_static_extension.Printer_static_extension.text(_p, _d)) i];
    }
    static public function comment(_p:Printer, _d:Doc):Array<std.UInt> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer>);
        final _d = (_d : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>);
        return [for (i in stdgo._internal.go.doc.comment.Comment_printer_static_extension.Printer_static_extension.comment(_p, _d)) i];
    }
    static public function _docLinkURL(_p:Printer, _link:DocLink):String {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer>);
        final _link = (_link : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>);
        return stdgo._internal.go.doc.comment.Comment_printer_static_extension.Printer_static_extension._docLinkURL(_p, _link);
    }
    static public function _headingID(_p:Printer, _h:Heading):String {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer>);
        final _h = (_h : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>);
        return stdgo._internal.go.doc.comment.Comment_printer_static_extension.Printer_static_extension._headingID(_p, _h);
    }
    static public function _headingLevel(_p:Printer):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer>);
        return stdgo._internal.go.doc.comment.Comment_printer_static_extension.Printer_static_extension._headingLevel(_p);
    }
    static public function markdown(_p:Printer, _d:Doc):Array<std.UInt> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer>);
        final _d = (_d : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>);
        return [for (i in stdgo._internal.go.doc.comment.Comment_printer_static_extension.Printer_static_extension.markdown(_p, _d)) i];
    }
    static public function hTML(_p:Printer, _d:Doc):Array<std.UInt> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer>);
        final _d = (_d : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>);
        return [for (i in stdgo._internal.go.doc.comment.Comment_printer_static_extension.Printer_static_extension.hTML(_p, _d)) i];
    }
}
@:dox(hide) typedef T_commentPrinterPointer = stdgo._internal.go.doc.comment.Comment_t_commentprinterpointer.T_commentPrinterPointer;
@:dox(hide) class T_commentPrinter_static_extension {
    static public function _indent(_p:T_commentPrinter, _out:stdgo._internal.bytes.Bytes_buffer.Buffer, _indent:String, _s:String):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter>);
        final _out = (_out : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        final _indent = (_indent : stdgo.GoString);
        final _s = (_s : stdgo.GoString);
        stdgo._internal.go.doc.comment.Comment_t_commentprinter_static_extension.T_commentPrinter_static_extension._indent(_p, _out, _indent, _s);
    }
    static public function _text(_p:T_commentPrinter, _out:stdgo._internal.bytes.Bytes_buffer.Buffer, _indent:String, _x:Array<Text>):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter>);
        final _out = (_out : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        final _indent = (_indent : stdgo.GoString);
        final _x = ([for (i in _x) i] : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>);
        stdgo._internal.go.doc.comment.Comment_t_commentprinter_static_extension.T_commentPrinter_static_extension._text(_p, _out, _indent, _x);
    }
    static public function _block(_p:T_commentPrinter, _out:stdgo._internal.bytes.Bytes_buffer.Buffer, _x:Block):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter>);
        final _out = (_out : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        stdgo._internal.go.doc.comment.Comment_t_commentprinter_static_extension.T_commentPrinter_static_extension._block(_p, _out, _x);
    }
    public static function _headingLevel(__self__:stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter):StdTypes.Int {
        return stdgo._internal.go.doc.comment.Comment_t_commentprinter_static_extension.T_commentPrinter_static_extension._headingLevel(__self__);
    }
    public static function _headingID(__self__:stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter, _0:Heading):String {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>);
        return stdgo._internal.go.doc.comment.Comment_t_commentprinter_static_extension.T_commentPrinter_static_extension._headingID(__self__, _0);
    }
    public static function _docLinkURL(__self__:stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter, _0:DocLink):String {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>);
        return stdgo._internal.go.doc.comment.Comment_t_commentprinter_static_extension.T_commentPrinter_static_extension._docLinkURL(__self__, _0);
    }
    public static function text(__self__:stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter, _0:Doc):Array<std.UInt> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>);
        return [for (i in stdgo._internal.go.doc.comment.Comment_t_commentprinter_static_extension.T_commentPrinter_static_extension.text(__self__, _0)) i];
    }
    public static function markdown(__self__:stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter, _0:Doc):Array<std.UInt> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>);
        return [for (i in stdgo._internal.go.doc.comment.Comment_t_commentprinter_static_extension.T_commentPrinter_static_extension.markdown(__self__, _0)) i];
    }
    public static function hTML(__self__:stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter, _0:Doc):Array<std.UInt> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>);
        return [for (i in stdgo._internal.go.doc.comment.Comment_t_commentprinter_static_extension.T_commentPrinter_static_extension.hTML(__self__, _0)) i];
    }
    public static function comment(__self__:stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter, _0:Doc):Array<std.UInt> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>);
        return [for (i in stdgo._internal.go.doc.comment.Comment_t_commentprinter_static_extension.T_commentPrinter_static_extension.comment(__self__, _0)) i];
    }
}
@:dox(hide) typedef T_textPrinterPointer = stdgo._internal.go.doc.comment.Comment_t_textprinterpointer.T_textPrinterPointer;
@:dox(hide) class T_textPrinter_static_extension {
    static public function _oneLongLine(_p:T_textPrinter, _out:stdgo._internal.strings.Strings_builder.Builder, _x:Array<Text>):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_textprinter.T_textPrinter>);
        final _out = (_out : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        final _x = ([for (i in _x) i] : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>);
        stdgo._internal.go.doc.comment.Comment_t_textprinter_static_extension.T_textPrinter_static_extension._oneLongLine(_p, _out, _x);
    }
    static public function _text(_p:T_textPrinter, _out:stdgo._internal.bytes.Bytes_buffer.Buffer, _indent:String, _x:Array<Text>):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_textprinter.T_textPrinter>);
        final _out = (_out : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        final _indent = (_indent : stdgo.GoString);
        final _x = ([for (i in _x) i] : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>);
        stdgo._internal.go.doc.comment.Comment_t_textprinter_static_extension.T_textPrinter_static_extension._text(_p, _out, _indent, _x);
    }
    static public function _block(_p:T_textPrinter, _out:stdgo._internal.bytes.Bytes_buffer.Buffer, _x:Block):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_textprinter.T_textPrinter>);
        final _out = (_out : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        stdgo._internal.go.doc.comment.Comment_t_textprinter_static_extension.T_textPrinter_static_extension._block(_p, _out, _x);
    }
    public static function _headingLevel(__self__:stdgo._internal.go.doc.comment.Comment_t_textprinter.T_textPrinter):StdTypes.Int {
        return stdgo._internal.go.doc.comment.Comment_t_textprinter_static_extension.T_textPrinter_static_extension._headingLevel(__self__);
    }
    public static function _headingID(__self__:stdgo._internal.go.doc.comment.Comment_t_textprinter.T_textPrinter, _0:Heading):String {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>);
        return stdgo._internal.go.doc.comment.Comment_t_textprinter_static_extension.T_textPrinter_static_extension._headingID(__self__, _0);
    }
    public static function _docLinkURL(__self__:stdgo._internal.go.doc.comment.Comment_t_textprinter.T_textPrinter, _0:DocLink):String {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>);
        return stdgo._internal.go.doc.comment.Comment_t_textprinter_static_extension.T_textPrinter_static_extension._docLinkURL(__self__, _0);
    }
    public static function text(__self__:stdgo._internal.go.doc.comment.Comment_t_textprinter.T_textPrinter, _0:Doc):Array<std.UInt> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>);
        return [for (i in stdgo._internal.go.doc.comment.Comment_t_textprinter_static_extension.T_textPrinter_static_extension.text(__self__, _0)) i];
    }
    public static function markdown(__self__:stdgo._internal.go.doc.comment.Comment_t_textprinter.T_textPrinter, _0:Doc):Array<std.UInt> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>);
        return [for (i in stdgo._internal.go.doc.comment.Comment_t_textprinter_static_extension.T_textPrinter_static_extension.markdown(__self__, _0)) i];
    }
    public static function hTML(__self__:stdgo._internal.go.doc.comment.Comment_t_textprinter.T_textPrinter, _0:Doc):Array<std.UInt> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>);
        return [for (i in stdgo._internal.go.doc.comment.Comment_t_textprinter_static_extension.T_textPrinter_static_extension.hTML(__self__, _0)) i];
    }
    public static function comment(__self__:stdgo._internal.go.doc.comment.Comment_t_textprinter.T_textPrinter, _0:Doc):Array<std.UInt> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>);
        return [for (i in stdgo._internal.go.doc.comment.Comment_t_textprinter_static_extension.T_textPrinter_static_extension.comment(__self__, _0)) i];
    }
}
typedef PlainPointer = stdgo._internal.go.doc.comment.Comment_plainpointer.PlainPointer;
class Plain_static_extension {
    static public function _text(_:Plain):Void {
        stdgo._internal.go.doc.comment.Comment_plain_static_extension.Plain_static_extension._text(_);
    }
}
typedef ItalicPointer = stdgo._internal.go.doc.comment.Comment_italicpointer.ItalicPointer;
class Italic_static_extension {
    static public function _text(_:Italic):Void {
        stdgo._internal.go.doc.comment.Comment_italic_static_extension.Italic_static_extension._text(_);
    }
}
@:dox(hide) typedef T_spanKindPointer = stdgo._internal.go.doc.comment.Comment_t_spankindpointer.T_spanKindPointer;
@:dox(hide) class T_spanKind_static_extension {

}
@:dox(hide) typedef T__wrap___localname___score_6194Pointer = stdgo._internal.go.doc.comment.Comment_t__wrap___localname___score_6194pointer.T__wrap___localname___score_6194Pointer;
@:dox(hide) class T__wrap___localname___score_6194_static_extension {

}
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
    static public inline function defaultLookupPackage(_name:String):stdgo.Tuple<String, Bool> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.go.doc.comment.Comment_defaultlookuppackage.defaultLookupPackage(_name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
