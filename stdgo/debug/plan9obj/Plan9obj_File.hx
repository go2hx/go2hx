package stdgo.debug.plan9obj;
@:structInit @:using(stdgo.debug.plan9obj.Plan9obj.File_static_extension) abstract File(stdgo._internal.debug.plan9obj.Plan9obj_File.File) from stdgo._internal.debug.plan9obj.Plan9obj_File.File to stdgo._internal.debug.plan9obj.Plan9obj_File.File {
    public var fileHeader(get, set) : FileHeader;
    function get_fileHeader():FileHeader return this.fileHeader;
    function set_fileHeader(v:FileHeader):FileHeader {
        this.fileHeader = v;
        return v;
    }
    public var sections(get, set) : Array<Section>;
    function get_sections():Array<Section> return [for (i in this.sections) i];
    function set_sections(v:Array<Section>):Array<Section> {
        this.sections = ([for (i in v) (i : stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_Section.Section>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_Section.Section>>);
        return v;
    }
    public var _closer(get, set) : stdgo._internal.io.Io_Closer.Closer;
    function get__closer():stdgo._internal.io.Io_Closer.Closer return this._closer;
    function set__closer(v:stdgo._internal.io.Io_Closer.Closer):stdgo._internal.io.Io_Closer.Closer {
        this._closer = v;
        return v;
    }
    public function new(?fileHeader:FileHeader, ?sections:Array<Section>, ?_closer:stdgo._internal.io.Io_Closer.Closer) this = new stdgo._internal.debug.plan9obj.Plan9obj_File.File(fileHeader, ([for (i in sections) (i : stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_Section.Section>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_Section.Section>>), _closer);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
