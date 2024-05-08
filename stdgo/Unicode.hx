package stdgo;
/**
    Package unicode provides data and functions to test some properties of
    Unicode code points.
**/
private var __go2hxdoc__package : Bool;
final maxRune : StdTypes.Int = stdgo._internal.unicode.Unicode.maxRune;
final replacementChar : StdTypes.Int = stdgo._internal.unicode.Unicode.replacementChar;
final maxASCII : StdTypes.Int = stdgo._internal.unicode.Unicode.maxASCII;
final maxLatin1 : StdTypes.Int = stdgo._internal.unicode.Unicode.maxLatin1;
final upperCase : haxe.UInt64 = stdgo._internal.unicode.Unicode.upperCase;
final lowerCase = stdgo._internal.unicode.Unicode.lowerCase;
final titleCase = stdgo._internal.unicode.Unicode.titleCase;
final maxCase = stdgo._internal.unicode.Unicode.maxCase;
final upperLower : StdTypes.Int = stdgo._internal.unicode.Unicode.upperLower;
final version : String = stdgo._internal.unicode.Unicode.version;
var turkishCase(get, set) : stdgo._internal.unicode.Unicode.SpecialCase;
private function get_turkishCase():stdgo._internal.unicode.Unicode.SpecialCase return stdgo._internal.unicode.Unicode.turkishCase;
private function set_turkishCase(v:stdgo._internal.unicode.Unicode.SpecialCase):stdgo._internal.unicode.Unicode.SpecialCase {
        stdgo._internal.unicode.Unicode.turkishCase = v;
        return v;
    }
var azeriCase(get, set) : stdgo._internal.unicode.Unicode.SpecialCase;
private function get_azeriCase():stdgo._internal.unicode.Unicode.SpecialCase return stdgo._internal.unicode.Unicode.azeriCase;
private function set_azeriCase(v:stdgo._internal.unicode.Unicode.SpecialCase):stdgo._internal.unicode.Unicode.SpecialCase {
        stdgo._internal.unicode.Unicode.azeriCase = v;
        return v;
    }
var cc(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_cc():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.cc;
private function set_cc(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.cc = v;
        return v;
    }
var cf(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_cf():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.cf;
private function set_cf(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.cf = v;
        return v;
    }
var co(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_co():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.co;
private function set_co(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.co = v;
        return v;
    }
var cs(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_cs():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.cs;
private function set_cs(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.cs = v;
        return v;
    }
var digit(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_digit():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.digit;
private function set_digit(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.digit = v;
        return v;
    }
var nd(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_nd():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.nd;
private function set_nd(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.nd = v;
        return v;
    }
var letter(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_letter():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.letter;
private function set_letter(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.letter = v;
        return v;
    }
var l(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_l():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.l;
private function set_l(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.l = v;
        return v;
    }
var lm(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_lm():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.lm;
private function set_lm(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.lm = v;
        return v;
    }
var lo(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_lo():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.lo;
private function set_lo(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.lo = v;
        return v;
    }
var lower(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_lower():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.lower;
private function set_lower(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.lower = v;
        return v;
    }
var ll(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_ll():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.ll;
private function set_ll(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.ll = v;
        return v;
    }
var mark(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_mark():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.mark;
private function set_mark(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.mark = v;
        return v;
    }
var m(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_m():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.m;
private function set_m(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.m = v;
        return v;
    }
var mc(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_mc():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.mc;
private function set_mc(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.mc = v;
        return v;
    }
var me(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_me():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.me;
private function set_me(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.me = v;
        return v;
    }
var mn(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_mn():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.mn;
private function set_mn(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.mn = v;
        return v;
    }
var nl(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_nl():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.nl;
private function set_nl(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.nl = v;
        return v;
    }
var no(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_no():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.no;
private function set_no(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.no = v;
        return v;
    }
var number(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_number():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.number;
private function set_number(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.number = v;
        return v;
    }
var n(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_n():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.n;
private function set_n(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.n = v;
        return v;
    }
var other(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_other():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.other;
private function set_other(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.other = v;
        return v;
    }
var c(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_c():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.c;
private function set_c(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.c = v;
        return v;
    }
var pc(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_pc():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.pc;
private function set_pc(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.pc = v;
        return v;
    }
var pd(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_pd():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.pd;
private function set_pd(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.pd = v;
        return v;
    }
var pe(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_pe():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.pe;
private function set_pe(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.pe = v;
        return v;
    }
var pf(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_pf():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.pf;
private function set_pf(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.pf = v;
        return v;
    }
var pi(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_pi():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.pi;
private function set_pi(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.pi = v;
        return v;
    }
var po(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_po():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.po;
private function set_po(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.po = v;
        return v;
    }
var ps(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_ps():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.ps;
private function set_ps(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.ps = v;
        return v;
    }
var punct(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_punct():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.punct;
private function set_punct(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.punct = v;
        return v;
    }
var p(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_p():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.p;
private function set_p(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.p = v;
        return v;
    }
var sc(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_sc():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.sc;
private function set_sc(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.sc = v;
        return v;
    }
var sk(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_sk():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.sk;
private function set_sk(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.sk = v;
        return v;
    }
var sm(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_sm():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.sm;
private function set_sm(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.sm = v;
        return v;
    }
var so(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_so():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.so;
private function set_so(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.so = v;
        return v;
    }
var space(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_space():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.space;
private function set_space(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.space = v;
        return v;
    }
var z(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_z():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.z;
private function set_z(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.z = v;
        return v;
    }
var symbol(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_symbol():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.symbol;
private function set_symbol(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.symbol = v;
        return v;
    }
var s(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_s():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.s;
private function set_s(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.s = v;
        return v;
    }
var printRanges(get, set) : Array<stdgo._internal.unicode.Unicode.RangeTable>;
private function get_printRanges():Array<stdgo._internal.unicode.Unicode.RangeTable> return [for (i in stdgo._internal.unicode.Unicode.printRanges) i];
private function set_printRanges(v:Array<stdgo._internal.unicode.Unicode.RangeTable>):Array<stdgo._internal.unicode.Unicode.RangeTable> {
        stdgo._internal.unicode.Unicode.printRanges = ([for (i in v) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>>);
        return v;
    }
var title(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_title():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.title;
private function set_title(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.title = v;
        return v;
    }
var lt(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_lt():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.lt;
private function set_lt(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.lt = v;
        return v;
    }
var upper(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_upper():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.upper;
private function set_upper(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.upper = v;
        return v;
    }
var lu(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_lu():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.lu;
private function set_lu(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.lu = v;
        return v;
    }
var zl(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_zl():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.zl;
private function set_zl(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.zl = v;
        return v;
    }
var zp(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_zp():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.zp;
private function set_zp(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.zp = v;
        return v;
    }
var zs(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_zs():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.zs;
private function set_zs(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.zs = v;
        return v;
    }
var graphicRanges(get, set) : Array<stdgo._internal.unicode.Unicode.RangeTable>;
private function get_graphicRanges():Array<stdgo._internal.unicode.Unicode.RangeTable> return [for (i in stdgo._internal.unicode.Unicode.graphicRanges) i];
private function set_graphicRanges(v:Array<stdgo._internal.unicode.Unicode.RangeTable>):Array<stdgo._internal.unicode.Unicode.RangeTable> {
        stdgo._internal.unicode.Unicode.graphicRanges = ([for (i in v) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>>);
        return v;
    }
var categories(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>>;
private function get_categories():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>> return stdgo._internal.unicode.Unicode.categories;
private function set_categories(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>> {
        stdgo._internal.unicode.Unicode.categories = v;
        return v;
    }
var adlam(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_adlam():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.adlam;
private function set_adlam(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.adlam = v;
        return v;
    }
var ahom(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_ahom():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.ahom;
private function set_ahom(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.ahom = v;
        return v;
    }
var anatolian_Hieroglyphs(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_anatolian_Hieroglyphs():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.anatolian_Hieroglyphs;
private function set_anatolian_Hieroglyphs(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.anatolian_Hieroglyphs = v;
        return v;
    }
var arabic(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_arabic():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.arabic;
private function set_arabic(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.arabic = v;
        return v;
    }
var armenian(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_armenian():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.armenian;
private function set_armenian(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.armenian = v;
        return v;
    }
var avestan(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_avestan():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.avestan;
private function set_avestan(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.avestan = v;
        return v;
    }
var balinese(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_balinese():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.balinese;
private function set_balinese(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.balinese = v;
        return v;
    }
var bamum(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_bamum():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.bamum;
private function set_bamum(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.bamum = v;
        return v;
    }
var bassa_Vah(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_bassa_Vah():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.bassa_Vah;
private function set_bassa_Vah(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.bassa_Vah = v;
        return v;
    }
var batak(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_batak():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.batak;
private function set_batak(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.batak = v;
        return v;
    }
var bengali(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_bengali():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.bengali;
private function set_bengali(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.bengali = v;
        return v;
    }
var bhaiksuki(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_bhaiksuki():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.bhaiksuki;
private function set_bhaiksuki(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.bhaiksuki = v;
        return v;
    }
var bopomofo(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_bopomofo():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.bopomofo;
private function set_bopomofo(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.bopomofo = v;
        return v;
    }
var brahmi(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_brahmi():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.brahmi;
private function set_brahmi(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.brahmi = v;
        return v;
    }
var braille(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_braille():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.braille;
private function set_braille(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.braille = v;
        return v;
    }
var buginese(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_buginese():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.buginese;
private function set_buginese(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.buginese = v;
        return v;
    }
var buhid(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_buhid():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.buhid;
private function set_buhid(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.buhid = v;
        return v;
    }
var canadian_Aboriginal(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_canadian_Aboriginal():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.canadian_Aboriginal;
private function set_canadian_Aboriginal(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.canadian_Aboriginal = v;
        return v;
    }
var carian(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_carian():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.carian;
private function set_carian(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.carian = v;
        return v;
    }
var caucasian_Albanian(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_caucasian_Albanian():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.caucasian_Albanian;
private function set_caucasian_Albanian(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.caucasian_Albanian = v;
        return v;
    }
var chakma(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_chakma():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.chakma;
private function set_chakma(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.chakma = v;
        return v;
    }
var cham(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_cham():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.cham;
private function set_cham(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.cham = v;
        return v;
    }
var cherokee(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_cherokee():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.cherokee;
private function set_cherokee(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.cherokee = v;
        return v;
    }
var chorasmian(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_chorasmian():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.chorasmian;
private function set_chorasmian(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.chorasmian = v;
        return v;
    }
var common(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_common():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.common;
private function set_common(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.common = v;
        return v;
    }
var coptic(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_coptic():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.coptic;
private function set_coptic(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.coptic = v;
        return v;
    }
var cuneiform(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_cuneiform():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.cuneiform;
private function set_cuneiform(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.cuneiform = v;
        return v;
    }
var cypriot(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_cypriot():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.cypriot;
private function set_cypriot(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.cypriot = v;
        return v;
    }
var cypro_Minoan(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_cypro_Minoan():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.cypro_Minoan;
private function set_cypro_Minoan(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.cypro_Minoan = v;
        return v;
    }
var cyrillic(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_cyrillic():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.cyrillic;
private function set_cyrillic(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.cyrillic = v;
        return v;
    }
var deseret(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_deseret():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.deseret;
private function set_deseret(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.deseret = v;
        return v;
    }
var devanagari(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_devanagari():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.devanagari;
private function set_devanagari(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.devanagari = v;
        return v;
    }
var dives_Akuru(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_dives_Akuru():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.dives_Akuru;
private function set_dives_Akuru(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.dives_Akuru = v;
        return v;
    }
var dogra(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_dogra():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.dogra;
private function set_dogra(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.dogra = v;
        return v;
    }
var duployan(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_duployan():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.duployan;
private function set_duployan(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.duployan = v;
        return v;
    }
var egyptian_Hieroglyphs(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_egyptian_Hieroglyphs():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.egyptian_Hieroglyphs;
private function set_egyptian_Hieroglyphs(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.egyptian_Hieroglyphs = v;
        return v;
    }
var elbasan(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_elbasan():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.elbasan;
private function set_elbasan(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.elbasan = v;
        return v;
    }
var elymaic(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_elymaic():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.elymaic;
private function set_elymaic(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.elymaic = v;
        return v;
    }
var ethiopic(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_ethiopic():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.ethiopic;
private function set_ethiopic(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.ethiopic = v;
        return v;
    }
var georgian(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_georgian():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.georgian;
private function set_georgian(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.georgian = v;
        return v;
    }
var glagolitic(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_glagolitic():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.glagolitic;
private function set_glagolitic(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.glagolitic = v;
        return v;
    }
var gothic(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_gothic():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.gothic;
private function set_gothic(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.gothic = v;
        return v;
    }
var grantha(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_grantha():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.grantha;
private function set_grantha(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.grantha = v;
        return v;
    }
var greek(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_greek():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.greek;
private function set_greek(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.greek = v;
        return v;
    }
var gujarati(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_gujarati():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.gujarati;
private function set_gujarati(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.gujarati = v;
        return v;
    }
var gunjala_Gondi(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_gunjala_Gondi():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.gunjala_Gondi;
private function set_gunjala_Gondi(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.gunjala_Gondi = v;
        return v;
    }
var gurmukhi(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_gurmukhi():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.gurmukhi;
private function set_gurmukhi(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.gurmukhi = v;
        return v;
    }
var han(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_han():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.han;
private function set_han(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.han = v;
        return v;
    }
var hangul(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_hangul():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.hangul;
private function set_hangul(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.hangul = v;
        return v;
    }
var hanifi_Rohingya(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_hanifi_Rohingya():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.hanifi_Rohingya;
private function set_hanifi_Rohingya(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.hanifi_Rohingya = v;
        return v;
    }
var hanunoo(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_hanunoo():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.hanunoo;
private function set_hanunoo(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.hanunoo = v;
        return v;
    }
var hatran(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_hatran():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.hatran;
private function set_hatran(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.hatran = v;
        return v;
    }
var hebrew(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_hebrew():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.hebrew;
private function set_hebrew(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.hebrew = v;
        return v;
    }
var hiragana(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_hiragana():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.hiragana;
private function set_hiragana(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.hiragana = v;
        return v;
    }
var imperial_Aramaic(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_imperial_Aramaic():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.imperial_Aramaic;
private function set_imperial_Aramaic(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.imperial_Aramaic = v;
        return v;
    }
var inherited(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_inherited():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.inherited;
private function set_inherited(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.inherited = v;
        return v;
    }
var inscriptional_Pahlavi(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_inscriptional_Pahlavi():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.inscriptional_Pahlavi;
private function set_inscriptional_Pahlavi(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.inscriptional_Pahlavi = v;
        return v;
    }
var inscriptional_Parthian(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_inscriptional_Parthian():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.inscriptional_Parthian;
private function set_inscriptional_Parthian(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.inscriptional_Parthian = v;
        return v;
    }
var javanese(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_javanese():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.javanese;
private function set_javanese(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.javanese = v;
        return v;
    }
var kaithi(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_kaithi():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.kaithi;
private function set_kaithi(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.kaithi = v;
        return v;
    }
var kannada(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_kannada():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.kannada;
private function set_kannada(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.kannada = v;
        return v;
    }
var katakana(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_katakana():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.katakana;
private function set_katakana(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.katakana = v;
        return v;
    }
var kawi(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_kawi():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.kawi;
private function set_kawi(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.kawi = v;
        return v;
    }
var kayah_Li(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_kayah_Li():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.kayah_Li;
private function set_kayah_Li(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.kayah_Li = v;
        return v;
    }
var kharoshthi(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_kharoshthi():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.kharoshthi;
private function set_kharoshthi(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.kharoshthi = v;
        return v;
    }
var khitan_Small_Script(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_khitan_Small_Script():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.khitan_Small_Script;
private function set_khitan_Small_Script(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.khitan_Small_Script = v;
        return v;
    }
var khmer(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_khmer():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.khmer;
private function set_khmer(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.khmer = v;
        return v;
    }
var khojki(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_khojki():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.khojki;
private function set_khojki(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.khojki = v;
        return v;
    }
var khudawadi(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_khudawadi():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.khudawadi;
private function set_khudawadi(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.khudawadi = v;
        return v;
    }
var lao(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_lao():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.lao;
private function set_lao(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.lao = v;
        return v;
    }
var latin(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_latin():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.latin;
private function set_latin(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.latin = v;
        return v;
    }
var lepcha(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_lepcha():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.lepcha;
private function set_lepcha(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.lepcha = v;
        return v;
    }
var limbu(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_limbu():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.limbu;
private function set_limbu(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.limbu = v;
        return v;
    }
var linear_A(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_linear_A():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.linear_A;
private function set_linear_A(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.linear_A = v;
        return v;
    }
var linear_B(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_linear_B():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.linear_B;
private function set_linear_B(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.linear_B = v;
        return v;
    }
var lisu(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_lisu():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.lisu;
private function set_lisu(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.lisu = v;
        return v;
    }
var lycian(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_lycian():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.lycian;
private function set_lycian(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.lycian = v;
        return v;
    }
var lydian(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_lydian():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.lydian;
private function set_lydian(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.lydian = v;
        return v;
    }
var mahajani(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_mahajani():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.mahajani;
private function set_mahajani(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.mahajani = v;
        return v;
    }
var makasar(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_makasar():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.makasar;
private function set_makasar(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.makasar = v;
        return v;
    }
var malayalam(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_malayalam():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.malayalam;
private function set_malayalam(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.malayalam = v;
        return v;
    }
var mandaic(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_mandaic():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.mandaic;
private function set_mandaic(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.mandaic = v;
        return v;
    }
var manichaean(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_manichaean():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.manichaean;
private function set_manichaean(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.manichaean = v;
        return v;
    }
var marchen(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_marchen():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.marchen;
private function set_marchen(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.marchen = v;
        return v;
    }
var masaram_Gondi(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_masaram_Gondi():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.masaram_Gondi;
private function set_masaram_Gondi(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.masaram_Gondi = v;
        return v;
    }
var medefaidrin(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_medefaidrin():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.medefaidrin;
private function set_medefaidrin(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.medefaidrin = v;
        return v;
    }
var meetei_Mayek(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_meetei_Mayek():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.meetei_Mayek;
private function set_meetei_Mayek(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.meetei_Mayek = v;
        return v;
    }
var mende_Kikakui(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_mende_Kikakui():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.mende_Kikakui;
private function set_mende_Kikakui(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.mende_Kikakui = v;
        return v;
    }
var meroitic_Cursive(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_meroitic_Cursive():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.meroitic_Cursive;
private function set_meroitic_Cursive(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.meroitic_Cursive = v;
        return v;
    }
var meroitic_Hieroglyphs(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_meroitic_Hieroglyphs():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.meroitic_Hieroglyphs;
private function set_meroitic_Hieroglyphs(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.meroitic_Hieroglyphs = v;
        return v;
    }
var miao(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_miao():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.miao;
private function set_miao(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.miao = v;
        return v;
    }
var modi(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_modi():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.modi;
private function set_modi(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.modi = v;
        return v;
    }
var mongolian(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_mongolian():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.mongolian;
private function set_mongolian(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.mongolian = v;
        return v;
    }
var mro(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_mro():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.mro;
private function set_mro(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.mro = v;
        return v;
    }
var multani(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_multani():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.multani;
private function set_multani(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.multani = v;
        return v;
    }
var myanmar(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_myanmar():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.myanmar;
private function set_myanmar(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.myanmar = v;
        return v;
    }
var nabataean(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_nabataean():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.nabataean;
private function set_nabataean(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.nabataean = v;
        return v;
    }
var nag_Mundari(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_nag_Mundari():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.nag_Mundari;
private function set_nag_Mundari(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.nag_Mundari = v;
        return v;
    }
var nandinagari(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_nandinagari():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.nandinagari;
private function set_nandinagari(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.nandinagari = v;
        return v;
    }
var new_Tai_Lue(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_new_Tai_Lue():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.new_Tai_Lue;
private function set_new_Tai_Lue(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.new_Tai_Lue = v;
        return v;
    }
var newa(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_newa():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.newa;
private function set_newa(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.newa = v;
        return v;
    }
var nko(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_nko():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.nko;
private function set_nko(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.nko = v;
        return v;
    }
var nushu(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_nushu():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.nushu;
private function set_nushu(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.nushu = v;
        return v;
    }
var nyiakeng_Puachue_Hmong(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_nyiakeng_Puachue_Hmong():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.nyiakeng_Puachue_Hmong;
private function set_nyiakeng_Puachue_Hmong(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.nyiakeng_Puachue_Hmong = v;
        return v;
    }
var ogham(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_ogham():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.ogham;
private function set_ogham(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.ogham = v;
        return v;
    }
var ol_Chiki(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_ol_Chiki():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.ol_Chiki;
private function set_ol_Chiki(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.ol_Chiki = v;
        return v;
    }
var old_Hungarian(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_old_Hungarian():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.old_Hungarian;
private function set_old_Hungarian(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.old_Hungarian = v;
        return v;
    }
var old_Italic(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_old_Italic():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.old_Italic;
private function set_old_Italic(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.old_Italic = v;
        return v;
    }
var old_North_Arabian(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_old_North_Arabian():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.old_North_Arabian;
private function set_old_North_Arabian(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.old_North_Arabian = v;
        return v;
    }
var old_Permic(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_old_Permic():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.old_Permic;
private function set_old_Permic(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.old_Permic = v;
        return v;
    }
var old_Persian(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_old_Persian():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.old_Persian;
private function set_old_Persian(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.old_Persian = v;
        return v;
    }
var old_Sogdian(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_old_Sogdian():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.old_Sogdian;
private function set_old_Sogdian(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.old_Sogdian = v;
        return v;
    }
var old_South_Arabian(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_old_South_Arabian():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.old_South_Arabian;
private function set_old_South_Arabian(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.old_South_Arabian = v;
        return v;
    }
var old_Turkic(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_old_Turkic():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.old_Turkic;
private function set_old_Turkic(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.old_Turkic = v;
        return v;
    }
var old_Uyghur(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_old_Uyghur():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.old_Uyghur;
private function set_old_Uyghur(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.old_Uyghur = v;
        return v;
    }
var oriya(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_oriya():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.oriya;
private function set_oriya(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.oriya = v;
        return v;
    }
var osage(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_osage():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.osage;
private function set_osage(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.osage = v;
        return v;
    }
var osmanya(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_osmanya():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.osmanya;
private function set_osmanya(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.osmanya = v;
        return v;
    }
var pahawh_Hmong(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_pahawh_Hmong():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.pahawh_Hmong;
private function set_pahawh_Hmong(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.pahawh_Hmong = v;
        return v;
    }
var palmyrene(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_palmyrene():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.palmyrene;
private function set_palmyrene(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.palmyrene = v;
        return v;
    }
var pau_Cin_Hau(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_pau_Cin_Hau():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.pau_Cin_Hau;
private function set_pau_Cin_Hau(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.pau_Cin_Hau = v;
        return v;
    }
var phags_Pa(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_phags_Pa():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.phags_Pa;
private function set_phags_Pa(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.phags_Pa = v;
        return v;
    }
var phoenician(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_phoenician():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.phoenician;
private function set_phoenician(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.phoenician = v;
        return v;
    }
var psalter_Pahlavi(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_psalter_Pahlavi():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.psalter_Pahlavi;
private function set_psalter_Pahlavi(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.psalter_Pahlavi = v;
        return v;
    }
var rejang(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_rejang():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.rejang;
private function set_rejang(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.rejang = v;
        return v;
    }
var runic(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_runic():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.runic;
private function set_runic(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.runic = v;
        return v;
    }
var samaritan(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_samaritan():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.samaritan;
private function set_samaritan(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.samaritan = v;
        return v;
    }
var saurashtra(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_saurashtra():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.saurashtra;
private function set_saurashtra(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.saurashtra = v;
        return v;
    }
var sharada(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_sharada():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.sharada;
private function set_sharada(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.sharada = v;
        return v;
    }
var shavian(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_shavian():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.shavian;
private function set_shavian(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.shavian = v;
        return v;
    }
var siddham(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_siddham():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.siddham;
private function set_siddham(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.siddham = v;
        return v;
    }
var signWriting(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_signWriting():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.signWriting;
private function set_signWriting(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.signWriting = v;
        return v;
    }
var sinhala(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_sinhala():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.sinhala;
private function set_sinhala(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.sinhala = v;
        return v;
    }
var sogdian(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_sogdian():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.sogdian;
private function set_sogdian(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.sogdian = v;
        return v;
    }
var sora_Sompeng(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_sora_Sompeng():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.sora_Sompeng;
private function set_sora_Sompeng(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.sora_Sompeng = v;
        return v;
    }
var soyombo(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_soyombo():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.soyombo;
private function set_soyombo(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.soyombo = v;
        return v;
    }
var sundanese(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_sundanese():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.sundanese;
private function set_sundanese(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.sundanese = v;
        return v;
    }
var syloti_Nagri(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_syloti_Nagri():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.syloti_Nagri;
private function set_syloti_Nagri(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.syloti_Nagri = v;
        return v;
    }
var syriac(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_syriac():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.syriac;
private function set_syriac(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.syriac = v;
        return v;
    }
var tagalog(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_tagalog():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.tagalog;
private function set_tagalog(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.tagalog = v;
        return v;
    }
var tagbanwa(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_tagbanwa():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.tagbanwa;
private function set_tagbanwa(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.tagbanwa = v;
        return v;
    }
var tai_Le(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_tai_Le():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.tai_Le;
private function set_tai_Le(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.tai_Le = v;
        return v;
    }
var tai_Tham(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_tai_Tham():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.tai_Tham;
private function set_tai_Tham(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.tai_Tham = v;
        return v;
    }
var tai_Viet(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_tai_Viet():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.tai_Viet;
private function set_tai_Viet(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.tai_Viet = v;
        return v;
    }
var takri(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_takri():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.takri;
private function set_takri(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.takri = v;
        return v;
    }
var tamil(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_tamil():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.tamil;
private function set_tamil(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.tamil = v;
        return v;
    }
var tangsa(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_tangsa():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.tangsa;
private function set_tangsa(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.tangsa = v;
        return v;
    }
var tangut(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_tangut():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.tangut;
private function set_tangut(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.tangut = v;
        return v;
    }
var telugu(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_telugu():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.telugu;
private function set_telugu(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.telugu = v;
        return v;
    }
var thaana(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_thaana():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.thaana;
private function set_thaana(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.thaana = v;
        return v;
    }
var thai(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_thai():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.thai;
private function set_thai(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.thai = v;
        return v;
    }
var tibetan(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_tibetan():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.tibetan;
private function set_tibetan(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.tibetan = v;
        return v;
    }
var tifinagh(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_tifinagh():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.tifinagh;
private function set_tifinagh(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.tifinagh = v;
        return v;
    }
var tirhuta(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_tirhuta():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.tirhuta;
private function set_tirhuta(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.tirhuta = v;
        return v;
    }
var toto(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_toto():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.toto;
private function set_toto(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.toto = v;
        return v;
    }
var ugaritic(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_ugaritic():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.ugaritic;
private function set_ugaritic(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.ugaritic = v;
        return v;
    }
var vai(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_vai():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.vai;
private function set_vai(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.vai = v;
        return v;
    }
var vithkuqi(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_vithkuqi():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.vithkuqi;
private function set_vithkuqi(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.vithkuqi = v;
        return v;
    }
var wancho(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_wancho():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.wancho;
private function set_wancho(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.wancho = v;
        return v;
    }
var warang_Citi(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_warang_Citi():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.warang_Citi;
private function set_warang_Citi(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.warang_Citi = v;
        return v;
    }
var yezidi(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_yezidi():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.yezidi;
private function set_yezidi(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.yezidi = v;
        return v;
    }
var yi(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_yi():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.yi;
private function set_yi(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.yi = v;
        return v;
    }
var zanabazar_Square(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_zanabazar_Square():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.zanabazar_Square;
private function set_zanabazar_Square(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.zanabazar_Square = v;
        return v;
    }
var scripts(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>>;
private function get_scripts():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>> return stdgo._internal.unicode.Unicode.scripts;
private function set_scripts(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>> {
        stdgo._internal.unicode.Unicode.scripts = v;
        return v;
    }
var ascii_Hex_Digit(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_ascii_Hex_Digit():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.ascii_Hex_Digit;
private function set_ascii_Hex_Digit(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.ascii_Hex_Digit = v;
        return v;
    }
var bidi_Control(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_bidi_Control():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.bidi_Control;
private function set_bidi_Control(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.bidi_Control = v;
        return v;
    }
var dash(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_dash():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.dash;
private function set_dash(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.dash = v;
        return v;
    }
var deprecated(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_deprecated():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.deprecated;
private function set_deprecated(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.deprecated = v;
        return v;
    }
var diacritic(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_diacritic():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.diacritic;
private function set_diacritic(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.diacritic = v;
        return v;
    }
var extender(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_extender():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.extender;
private function set_extender(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.extender = v;
        return v;
    }
var hex_Digit(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_hex_Digit():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.hex_Digit;
private function set_hex_Digit(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.hex_Digit = v;
        return v;
    }
var hyphen(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_hyphen():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.hyphen;
private function set_hyphen(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.hyphen = v;
        return v;
    }
var ids_Binary_Operator(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_ids_Binary_Operator():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.ids_Binary_Operator;
private function set_ids_Binary_Operator(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.ids_Binary_Operator = v;
        return v;
    }
var ids_Trinary_Operator(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_ids_Trinary_Operator():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.ids_Trinary_Operator;
private function set_ids_Trinary_Operator(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.ids_Trinary_Operator = v;
        return v;
    }
var ideographic(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_ideographic():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.ideographic;
private function set_ideographic(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.ideographic = v;
        return v;
    }
var join_Control(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_join_Control():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.join_Control;
private function set_join_Control(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.join_Control = v;
        return v;
    }
var logical_Order_Exception(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_logical_Order_Exception():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.logical_Order_Exception;
private function set_logical_Order_Exception(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.logical_Order_Exception = v;
        return v;
    }
var noncharacter_Code_Point(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_noncharacter_Code_Point():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.noncharacter_Code_Point;
private function set_noncharacter_Code_Point(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.noncharacter_Code_Point = v;
        return v;
    }
var other_Alphabetic(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_other_Alphabetic():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.other_Alphabetic;
private function set_other_Alphabetic(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.other_Alphabetic = v;
        return v;
    }
var other_Default_Ignorable_Code_Point(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_other_Default_Ignorable_Code_Point():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.other_Default_Ignorable_Code_Point;
private function set_other_Default_Ignorable_Code_Point(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.other_Default_Ignorable_Code_Point = v;
        return v;
    }
var other_Grapheme_Extend(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_other_Grapheme_Extend():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.other_Grapheme_Extend;
private function set_other_Grapheme_Extend(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.other_Grapheme_Extend = v;
        return v;
    }
var other_ID_Continue(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_other_ID_Continue():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.other_ID_Continue;
private function set_other_ID_Continue(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.other_ID_Continue = v;
        return v;
    }
var other_ID_Start(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_other_ID_Start():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.other_ID_Start;
private function set_other_ID_Start(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.other_ID_Start = v;
        return v;
    }
var other_Lowercase(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_other_Lowercase():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.other_Lowercase;
private function set_other_Lowercase(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.other_Lowercase = v;
        return v;
    }
var other_Math(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_other_Math():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.other_Math;
private function set_other_Math(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.other_Math = v;
        return v;
    }
var other_Uppercase(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_other_Uppercase():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.other_Uppercase;
private function set_other_Uppercase(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.other_Uppercase = v;
        return v;
    }
var pattern_Syntax(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_pattern_Syntax():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.pattern_Syntax;
private function set_pattern_Syntax(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.pattern_Syntax = v;
        return v;
    }
var pattern_White_Space(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_pattern_White_Space():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.pattern_White_Space;
private function set_pattern_White_Space(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.pattern_White_Space = v;
        return v;
    }
var prepended_Concatenation_Mark(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_prepended_Concatenation_Mark():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.prepended_Concatenation_Mark;
private function set_prepended_Concatenation_Mark(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.prepended_Concatenation_Mark = v;
        return v;
    }
var quotation_Mark(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_quotation_Mark():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.quotation_Mark;
private function set_quotation_Mark(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.quotation_Mark = v;
        return v;
    }
var radical(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_radical():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.radical;
private function set_radical(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.radical = v;
        return v;
    }
var regional_Indicator(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_regional_Indicator():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.regional_Indicator;
private function set_regional_Indicator(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.regional_Indicator = v;
        return v;
    }
var sterm(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_sterm():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.sterm;
private function set_sterm(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.sterm = v;
        return v;
    }
var sentence_Terminal(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_sentence_Terminal():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.sentence_Terminal;
private function set_sentence_Terminal(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.sentence_Terminal = v;
        return v;
    }
var soft_Dotted(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_soft_Dotted():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.soft_Dotted;
private function set_soft_Dotted(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.soft_Dotted = v;
        return v;
    }
var terminal_Punctuation(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_terminal_Punctuation():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.terminal_Punctuation;
private function set_terminal_Punctuation(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.terminal_Punctuation = v;
        return v;
    }
var unified_Ideograph(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_unified_Ideograph():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.unified_Ideograph;
private function set_unified_Ideograph(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.unified_Ideograph = v;
        return v;
    }
var variation_Selector(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_variation_Selector():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.variation_Selector;
private function set_variation_Selector(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.variation_Selector = v;
        return v;
    }
var white_Space(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
private function get_white_Space():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.white_Space;
private function set_white_Space(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable {
        stdgo._internal.unicode.Unicode.white_Space = v;
        return v;
    }
var properties(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>>;
private function get_properties():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>> return stdgo._internal.unicode.Unicode.properties;
private function set_properties(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>> {
        stdgo._internal.unicode.Unicode.properties = v;
        return v;
    }
var caseRanges(get, set) : Array<stdgo._internal.unicode.Unicode.CaseRange>;
private function get_caseRanges():Array<stdgo._internal.unicode.Unicode.CaseRange> return [for (i in stdgo._internal.unicode.Unicode.caseRanges) i];
private function set_caseRanges(v:Array<stdgo._internal.unicode.Unicode.CaseRange>):Array<stdgo._internal.unicode.Unicode.CaseRange> {
        stdgo._internal.unicode.Unicode.caseRanges = ([for (i in v) i] : stdgo.Slice<stdgo._internal.unicode.Unicode.CaseRange>);
        return v;
    }
var foldCategory(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>>;
private function get_foldCategory():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>> return stdgo._internal.unicode.Unicode.foldCategory;
private function set_foldCategory(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>> {
        stdgo._internal.unicode.Unicode.foldCategory = v;
        return v;
    }
var foldScript(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>>;
private function get_foldScript():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>> return stdgo._internal.unicode.Unicode.foldScript;
private function set_foldScript(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>> {
        stdgo._internal.unicode.Unicode.foldScript = v;
        return v;
    }
abstract RangeTable(stdgo._internal.unicode.Unicode.RangeTable) from stdgo._internal.unicode.Unicode.RangeTable to stdgo._internal.unicode.Unicode.RangeTable {
    public var r16(get, set) : Array<stdgo._internal.unicode.Unicode.Range16>;
    function get_r16():Array<stdgo._internal.unicode.Unicode.Range16> return [for (i in this.r16) i];
    function set_r16(v:Array<stdgo._internal.unicode.Unicode.Range16>):Array<stdgo._internal.unicode.Unicode.Range16> {
        this.r16 = ([for (i in v) i] : stdgo.Slice<stdgo._internal.unicode.Unicode.Range16>);
        return v;
    }
    public var r32(get, set) : Array<stdgo._internal.unicode.Unicode.Range32>;
    function get_r32():Array<stdgo._internal.unicode.Unicode.Range32> return [for (i in this.r32) i];
    function set_r32(v:Array<stdgo._internal.unicode.Unicode.Range32>):Array<stdgo._internal.unicode.Unicode.Range32> {
        this.r32 = ([for (i in v) i] : stdgo.Slice<stdgo._internal.unicode.Unicode.Range32>);
        return v;
    }
    public var latinOffset(get, set) : StdTypes.Int;
    function get_latinOffset():StdTypes.Int return this.latinOffset;
    function set_latinOffset(v:StdTypes.Int):StdTypes.Int {
        this.latinOffset = v;
        return v;
    }
    public function new(?r16:Array<stdgo._internal.unicode.Unicode.Range16>, ?r32:Array<stdgo._internal.unicode.Unicode.Range32>, ?latinOffset:StdTypes.Int) this = new stdgo._internal.unicode.Unicode.RangeTable(([for (i in r16) i] : stdgo.Slice<stdgo._internal.unicode.Unicode.Range16>), ([for (i in r32) i] : stdgo.Slice<stdgo._internal.unicode.Unicode.Range32>), latinOffset);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Range16(stdgo._internal.unicode.Unicode.Range16) from stdgo._internal.unicode.Unicode.Range16 to stdgo._internal.unicode.Unicode.Range16 {
    public var lo(get, set) : std.UInt;
    function get_lo():std.UInt return this.lo;
    function set_lo(v:std.UInt):std.UInt {
        this.lo = v;
        return v;
    }
    public var hi(get, set) : std.UInt;
    function get_hi():std.UInt return this.hi;
    function set_hi(v:std.UInt):std.UInt {
        this.hi = v;
        return v;
    }
    public var stride(get, set) : std.UInt;
    function get_stride():std.UInt return this.stride;
    function set_stride(v:std.UInt):std.UInt {
        this.stride = v;
        return v;
    }
    public function new(?lo:std.UInt, ?hi:std.UInt, ?stride:std.UInt) this = new stdgo._internal.unicode.Unicode.Range16(lo, hi, stride);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Range32(stdgo._internal.unicode.Unicode.Range32) from stdgo._internal.unicode.Unicode.Range32 to stdgo._internal.unicode.Unicode.Range32 {
    public var lo(get, set) : std.UInt;
    function get_lo():std.UInt return this.lo;
    function set_lo(v:std.UInt):std.UInt {
        this.lo = v;
        return v;
    }
    public var hi(get, set) : std.UInt;
    function get_hi():std.UInt return this.hi;
    function set_hi(v:std.UInt):std.UInt {
        this.hi = v;
        return v;
    }
    public var stride(get, set) : std.UInt;
    function get_stride():std.UInt return this.stride;
    function set_stride(v:std.UInt):std.UInt {
        this.stride = v;
        return v;
    }
    public function new(?lo:std.UInt, ?hi:std.UInt, ?stride:std.UInt) this = new stdgo._internal.unicode.Unicode.Range32(lo, hi, stride);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract CaseRange(stdgo._internal.unicode.Unicode.CaseRange) from stdgo._internal.unicode.Unicode.CaseRange to stdgo._internal.unicode.Unicode.CaseRange {
    public var lo(get, set) : std.UInt;
    function get_lo():std.UInt return this.lo;
    function set_lo(v:std.UInt):std.UInt {
        this.lo = v;
        return v;
    }
    public var hi(get, set) : std.UInt;
    function get_hi():std.UInt return this.hi;
    function set_hi(v:std.UInt):std.UInt {
        this.hi = v;
        return v;
    }
    public var delta(get, set) : stdgo._internal.unicode.Unicode.T_d;
    function get_delta():stdgo._internal.unicode.Unicode.T_d return this.delta;
    function set_delta(v:stdgo._internal.unicode.Unicode.T_d):stdgo._internal.unicode.Unicode.T_d {
        this.delta = v;
        return v;
    }
    public function new(?lo:std.UInt, ?hi:std.UInt, ?delta:stdgo._internal.unicode.Unicode.T_d) this = new stdgo._internal.unicode.Unicode.CaseRange(lo, hi, delta);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_foldPair(stdgo._internal.unicode.Unicode.T_foldPair) from stdgo._internal.unicode.Unicode.T_foldPair to stdgo._internal.unicode.Unicode.T_foldPair {
    public var from(get, set) : std.UInt;
    function get_from():std.UInt return this.from;
    function set_from(v:std.UInt):std.UInt {
        this.from = v;
        return v;
    }
    public var to(get, set) : std.UInt;
    function get_to():std.UInt return this.to;
    function set_to(v:std.UInt):std.UInt {
        this.to = v;
        return v;
    }
    public function new(?from:std.UInt, ?to:std.UInt) this = new stdgo._internal.unicode.Unicode.T_foldPair(from, to);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef SpecialCase = stdgo._internal.unicode.Unicode.SpecialCase;
typedef T_d = stdgo._internal.unicode.Unicode.T_d;
class Unicode {
    /**
        IsDigit reports whether the rune is a decimal digit.
    **/
    static public function isDigit(r:StdTypes.Int):Bool {
        return stdgo._internal.unicode.Unicode.isDigit(r);
    }
    /**
        IsGraphic reports whether the rune is defined as a Graphic by Unicode.
        Such characters include letters, marks, numbers, punctuation, symbols, and
        spaces, from categories L, M, N, P, S, Zs.
    **/
    static public function isGraphic(r:StdTypes.Int):Bool {
        return stdgo._internal.unicode.Unicode.isGraphic(r);
    }
    /**
        IsPrint reports whether the rune is defined as printable by Go. Such
        characters include letters, marks, numbers, punctuation, symbols, and the
        ASCII space character, from categories L, M, N, P, S and the ASCII space
        character. This categorization is the same as IsGraphic except that the
        only spacing character is ASCII space, U+0020.
    **/
    static public function isPrint(r:StdTypes.Int):Bool {
        return stdgo._internal.unicode.Unicode.isPrint(r);
    }
    /**
        IsOneOf reports whether the rune is a member of one of the ranges.
        The function "In" provides a nicer signature and should be used in preference to IsOneOf.
    **/
    static public function isOneOf(ranges:Array<RangeTable>, r:StdTypes.Int):Bool {
        final ranges = ([for (i in ranges) i] : stdgo.Slice<stdgo.Ref<RangeTable>>);
        return stdgo._internal.unicode.Unicode.isOneOf(ranges, r);
    }
    /**
        In reports whether the rune is a member of one of the ranges.
    **/
    static public function in_(r:StdTypes.Int, ranges:haxe.Rest<RangeTable>):Bool {
        return stdgo._internal.unicode.Unicode.in_(r, ...ranges);
    }
    /**
        IsControl reports whether the rune is a control character.
        The C (Other) Unicode category includes more code points
        such as surrogates; use Is(C, r) to test for them.
    **/
    static public function isControl(r:StdTypes.Int):Bool {
        return stdgo._internal.unicode.Unicode.isControl(r);
    }
    /**
        IsLetter reports whether the rune is a letter (category L).
    **/
    static public function isLetter(r:StdTypes.Int):Bool {
        return stdgo._internal.unicode.Unicode.isLetter(r);
    }
    /**
        IsMark reports whether the rune is a mark character (category M).
    **/
    static public function isMark(r:StdTypes.Int):Bool {
        return stdgo._internal.unicode.Unicode.isMark(r);
    }
    /**
        IsNumber reports whether the rune is a number (category N).
    **/
    static public function isNumber(r:StdTypes.Int):Bool {
        return stdgo._internal.unicode.Unicode.isNumber(r);
    }
    /**
        IsPunct reports whether the rune is a Unicode punctuation character
        (category P).
    **/
    static public function isPunct(r:StdTypes.Int):Bool {
        return stdgo._internal.unicode.Unicode.isPunct(r);
    }
    /**
        IsSpace reports whether the rune is a space character as defined
        by Unicode's White Space property; in the Latin-1 space
        this is
        
        	'\t', '\n', '\v', '\f', '\r', ' ', U+0085 (NEL), U+00A0 (NBSP).
        
        Other definitions of spacing characters are set by category
        Z and property Pattern_White_Space.
    **/
    static public function isSpace(r:StdTypes.Int):Bool {
        return stdgo._internal.unicode.Unicode.isSpace(r);
    }
    /**
        IsSymbol reports whether the rune is a symbolic character.
    **/
    static public function isSymbol(r:StdTypes.Int):Bool {
        return stdgo._internal.unicode.Unicode.isSymbol(r);
    }
    /**
        Is reports whether the rune is in the specified table of ranges.
    **/
    static public function is_(rangeTab:RangeTable, r:StdTypes.Int):Bool {
        return stdgo._internal.unicode.Unicode.is_(rangeTab, r);
    }
    /**
        IsUpper reports whether the rune is an upper case letter.
    **/
    static public function isUpper(r:StdTypes.Int):Bool {
        return stdgo._internal.unicode.Unicode.isUpper(r);
    }
    /**
        IsLower reports whether the rune is a lower case letter.
    **/
    static public function isLower(r:StdTypes.Int):Bool {
        return stdgo._internal.unicode.Unicode.isLower(r);
    }
    /**
        IsTitle reports whether the rune is a title case letter.
    **/
    static public function isTitle(r:StdTypes.Int):Bool {
        return stdgo._internal.unicode.Unicode.isTitle(r);
    }
    /**
        To maps the rune to the specified case: UpperCase, LowerCase, or TitleCase.
    **/
    static public function to(_case:StdTypes.Int, r:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.unicode.Unicode.to(_case, r);
    }
    /**
        ToUpper maps the rune to upper case.
    **/
    static public function toUpper(r:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.unicode.Unicode.toUpper(r);
    }
    /**
        ToLower maps the rune to lower case.
    **/
    static public function toLower(r:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.unicode.Unicode.toLower(r);
    }
    /**
        ToTitle maps the rune to title case.
    **/
    static public function toTitle(r:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.unicode.Unicode.toTitle(r);
    }
    /**
        SimpleFold iterates over Unicode code points equivalent under
        the Unicode-defined simple case folding. Among the code points
        equivalent to rune (including rune itself), SimpleFold returns the
        smallest rune > r if one exists, or else the smallest rune >= 0.
        If r is not a valid Unicode code point, SimpleFold(r) returns r.
        
        For example:
        
        	SimpleFold('A') = 'a'
        	SimpleFold('a') = 'A'
        
        	SimpleFold('K') = 'k'
        	SimpleFold('k') = '\u212A' (Kelvin symbol, K)
        	SimpleFold('\u212A') = 'K'
        
        	SimpleFold('1') = '1'
        
        	SimpleFold(-2) = -2
    **/
    static public function simpleFold(r:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.unicode.Unicode.simpleFold(r);
    }
}
