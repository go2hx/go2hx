package stdgo._internal.debug.gosym;
@:structInit @:using(stdgo._internal.debug.gosym.Gosym_linetable_static_extension.LineTable_static_extension) class LineTable {
    public var data : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var pC : stdgo.GoUInt64 = 0;
    public var line : stdgo.GoInt = 0;
    public var _mu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _version : stdgo._internal.debug.gosym.Gosym_t_version.T_version = ((0 : stdgo.GoInt) : stdgo._internal.debug.gosym.Gosym_t_version.T_version);
    public var _binary : stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder = (null : stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder);
    public var _quantum : stdgo.GoUInt32 = 0;
    public var _ptrsize : stdgo.GoUInt32 = 0;
    public var _textStart : stdgo.GoUInt64 = 0;
    public var _funcnametab : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _cutab : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _funcdata : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _functab : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _nfunctab : stdgo.GoUInt32 = 0;
    public var _filetab : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _pctab : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _nfiletab : stdgo.GoUInt32 = 0;
    public var _funcNames : stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>);
    public var _strings : stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>);
    public var _fileMap : stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32>);
    public function new(?data:stdgo.Slice<stdgo.GoUInt8>, ?pC:stdgo.GoUInt64, ?line:stdgo.GoInt, ?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_version:stdgo._internal.debug.gosym.Gosym_t_version.T_version, ?_binary:stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder, ?_quantum:stdgo.GoUInt32, ?_ptrsize:stdgo.GoUInt32, ?_textStart:stdgo.GoUInt64, ?_funcnametab:stdgo.Slice<stdgo.GoUInt8>, ?_cutab:stdgo.Slice<stdgo.GoUInt8>, ?_funcdata:stdgo.Slice<stdgo.GoUInt8>, ?_functab:stdgo.Slice<stdgo.GoUInt8>, ?_nfunctab:stdgo.GoUInt32, ?_filetab:stdgo.Slice<stdgo.GoUInt8>, ?_pctab:stdgo.Slice<stdgo.GoUInt8>, ?_nfiletab:stdgo.GoUInt32, ?_funcNames:stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>, ?_strings:stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>, ?_fileMap:stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32>) {
        if (data != null) this.data = data;
        if (pC != null) this.pC = pC;
        if (line != null) this.line = line;
        if (_mu != null) this._mu = _mu;
        if (_version != null) this._version = _version;
        if (_binary != null) this._binary = _binary;
        if (_quantum != null) this._quantum = _quantum;
        if (_ptrsize != null) this._ptrsize = _ptrsize;
        if (_textStart != null) this._textStart = _textStart;
        if (_funcnametab != null) this._funcnametab = _funcnametab;
        if (_cutab != null) this._cutab = _cutab;
        if (_funcdata != null) this._funcdata = _funcdata;
        if (_functab != null) this._functab = _functab;
        if (_nfunctab != null) this._nfunctab = _nfunctab;
        if (_filetab != null) this._filetab = _filetab;
        if (_pctab != null) this._pctab = _pctab;
        if (_nfiletab != null) this._nfiletab = _nfiletab;
        if (_funcNames != null) this._funcNames = _funcNames;
        if (_strings != null) this._strings = _strings;
        if (_fileMap != null) this._fileMap = _fileMap;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new LineTable(
data,
pC,
line,
_mu,
_version,
_binary,
_quantum,
_ptrsize,
_textStart,
_funcnametab,
_cutab,
_funcdata,
_functab,
_nfunctab,
_filetab,
_pctab,
_nfiletab,
_funcNames,
_strings,
_fileMap);
    }
}
