package stdgo._internal.go.doc;
@:structInit @:using(stdgo._internal.go.doc.Doc_note_static_extension.Note_static_extension) class Note {
    public var pos : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var end : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var uID : stdgo.GoString = "";
    public var body : stdgo.GoString = "";
    public function new(?pos:stdgo._internal.go.token.Token_pos.Pos, ?end:stdgo._internal.go.token.Token_pos.Pos, ?uID:stdgo.GoString, ?body:stdgo.GoString) {
        if (pos != null) this.pos = pos;
        if (end != null) this.end = end;
        if (uID != null) this.uID = uID;
        if (body != null) this.body = body;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Note(pos, end, uID, body);
    }
}
