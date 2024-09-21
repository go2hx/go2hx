package _internal.vendor.golang_dot_org.x.net.idna;
@:structInit class T_options {
    public var _transitional : Bool = false;
    public var _useSTD3Rules : Bool = false;
    public var _checkHyphens : Bool = false;
    public var _checkJoiners : Bool = false;
    public var _verifyDNSLength : Bool = false;
    public var _removeLeadingDots : Bool = false;
    public var _trie : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_idnaTrie.T_idnaTrie> = (null : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_idnaTrie.T_idnaTrie>);
    public var _fromPuny : (stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_Profile.Profile>, stdgo.GoString) -> stdgo.Error = null;
    public var _mapping : (stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_Profile.Profile>, stdgo.GoString) -> { var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; } = null;
    public var _bidirule : stdgo.GoString -> Bool = null;
    public function new(?_transitional:Bool, ?_useSTD3Rules:Bool, ?_checkHyphens:Bool, ?_checkJoiners:Bool, ?_verifyDNSLength:Bool, ?_removeLeadingDots:Bool, ?_trie:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_idnaTrie.T_idnaTrie>, ?_fromPuny:(stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_Profile.Profile>, stdgo.GoString) -> stdgo.Error, ?_mapping:(stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_Profile.Profile>, stdgo.GoString) -> { var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; }, ?_bidirule:stdgo.GoString -> Bool) {
        if (_transitional != null) this._transitional = _transitional;
        if (_useSTD3Rules != null) this._useSTD3Rules = _useSTD3Rules;
        if (_checkHyphens != null) this._checkHyphens = _checkHyphens;
        if (_checkJoiners != null) this._checkJoiners = _checkJoiners;
        if (_verifyDNSLength != null) this._verifyDNSLength = _verifyDNSLength;
        if (_removeLeadingDots != null) this._removeLeadingDots = _removeLeadingDots;
        if (_trie != null) this._trie = _trie;
        if (_fromPuny != null) this._fromPuny = _fromPuny;
        if (_mapping != null) this._mapping = _mapping;
        if (_bidirule != null) this._bidirule = _bidirule;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_options(_transitional, _useSTD3Rules, _checkHyphens, _checkJoiners, _verifyDNSLength, _removeLeadingDots, _trie, _fromPuny, _mapping, _bidirule);
    }
}
